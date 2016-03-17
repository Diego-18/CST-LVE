/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 * Contributors:                                                              *
 * Colin Rooney (croo) Patch 1605368 Fixed Payment Terms & Only due           *
 *****************************************************************************/
package org.compiere.apps.form;

import java.awt.BorderLayout;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import javax.swing.AbstractButton;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JScrollPane;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.plaf.ColorUIResource;

import org.compiere.apps.ADialog;
import org.compiere.apps.AEnv;
import org.compiere.apps.ConfirmPanel;
import org.compiere.apps.IProcessParameter;
import org.compiere.apps.ProcessCtl;
import org.compiere.apps.ProcessParameterPanel;
import org.compiere.grid.ed.VComboBox;
import org.compiere.grid.ed.VDate;
import org.compiere.minigrid.IDColumn;
import org.compiere.minigrid.MiniTable;
import org.compiere.model.MCurrency;
import org.compiere.model.X_C_PaySelection;
import org.compiere.plaf.CompiereColor;
import org.compiere.process.ProcessInfo;
import org.compiere.swing.CLabel;
import org.compiere.swing.CPanel;
import org.compiere.swing.CTextField;
import org.compiere.util.ASyncProcess;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;
import org.compiere.util.Trx;
import org.compiere.util.TrxRunnable;
import org.compiere.util.ValueNamePair;
import org.jdesktop.swingx.JXTaskPane;
import org.jdesktop.swingx.plaf.basic.BasicTaskPaneUI;
import org.spin.minigrid.CheckBoxHeaderRendered;


/**
 *  Create Manual Payments From (AP) Invoices or (AR) Credit Memos.
 *  Allows user to select Invoices for payment.
 *  When Processed, PaySelection is created
 *  and optionally posted/generated and printed
 *
 *  @author Jorg Janke
 *  @version $Id: VPaySelect.java,v 1.2 2008/07/11 08:20:12 cruiz Exp $
 */
public class VPaySelect extends PaySelect implements FormPanel, ActionListener, TableModelListener, ASyncProcess, ItemListener
{
	/** @todo withholding */
	private CPanel panel = new CPanel();

	/**
	 *	Initialize Panel
	 *  @param WindowNo window
	 *  @param frame frame
	 */
	public void init (int WindowNo, FormFrame frame)
	{
		log.info("");
		m_WindowNo = WindowNo;
		m_frame = frame;
		try
		{
			jbInit();
			dynInit();
			frame.getContentPane().add(commandPanel, BorderLayout.SOUTH);
			frame.getContentPane().add(mainPanel, BorderLayout.CENTER);
		}
		catch(Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
	}	//	init
	
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	//
	private CPanel mainPanel = new CPanel();
	private BorderLayout mainLayout = new BorderLayout();
	private CPanel parameterPanel = new CPanel();
	private CLabel labelBankAccount = new CLabel();
	private VComboBox fieldBankAccount = new VComboBox();
	private GridBagLayout parameterLayout = new GridBagLayout();
	private CLabel labelBankBalance = new CLabel();
	private CLabel labelCurrency = new CLabel();
	private CLabel labelBalance = new CLabel();
	
	//2014-07-25 Drop Only Due CheckBox
	//private VCheckBox onlyDue = new VCheckBox();	
	//End Carlos Parada
	
	private CLabel labelBPartner = new CLabel();
	private VComboBox fieldBPartner = new VComboBox();
	private CLabel labelDtype = new CLabel();
	private VComboBox fieldDtype = new VComboBox();
	private JLabel dataStatus = new JLabel();
	private JScrollPane dataPaneDoc = new JScrollPane();
	private MiniTable miniTable = new MiniTable(this);
//	private MiniTable miniTable = new MiniTable();
	
	private CPanel commandPanel = new CPanel();
	private JButton bCancel = ConfirmPanel.createCancelButton(true);
	private JButton bGenerate = ConfirmPanel.createProcessButton(true);
	private FlowLayout commandLayout = new FlowLayout();
	private JButton bRefresh = ConfirmPanel.createRefreshButton(true);
	private CLabel labelPayDate = new CLabel();
	private VDate fieldPayDate = new VDate();
	private CLabel labelPaymentRule = new CLabel();
	private VComboBox fieldPaymentRule = new VComboBox();
	
	// Carlos Parada Add Payment Description
	private CLabel labelDescription = new CLabel();
	private CTextField fieldDescription = new CTextField(50);
	// End Carlos Parada
	
	
	 
	/**
	 * 2014-07-23 
	 * Add Collapsible panel to Parameters
	 * Add Minitable For Payment Request
	 * JScrollPane For Payment Request Panel
	 * General Data Panel
	 * Arraylist Selected Payment Request
	 * Arraylist Selected Payment Request Line
	 */
	
	private JXTaskPane parameterCollapsiblePanel = new JXTaskPane();
	//2015-05-25 Carlos Parada Replace Minitable for MinitableHeaderCheck
	private MiniTable miniTablePR = new MiniTable(this);
//	private MiniTable miniTablePR = new MiniTable();
	//End Carlos Parada 
	private JScrollPane dataPanePR = new JScrollPane();
	private CPanel dataPane = new CPanel();
	private CLabel lblPaymentRequest = new CLabel();
	private VComboBox fieldPaymentRequest =new VComboBox();
	private int m_CurrentRowPR =-1;
	
	
	
	private Properties ctx = Env.getCtx();
	/**
	 * End Carlos Parada
	 */
	
	/**
	 *  Static Init
	 *  @throws Exception
	 */
	private void jbInit() throws Exception
	{
		
	
		CompiereColor.setBackground(panel);
		//
		mainPanel.setLayout(mainLayout);
		parameterPanel.setLayout(parameterLayout);
		//
		labelBankAccount.setText(Msg.translate(ctx, "C_BankAccount_ID"));
		fieldBankAccount.addActionListener(this);
		labelBPartner.setText(Msg.translate(ctx, "C_BPartner_ID"));
		fieldBPartner.addActionListener(this);
		bRefresh.addActionListener(this);
		

		labelDtype.setText(Msg.translate(ctx, "C_DocType_ID"));
		fieldDtype.addActionListener(this);
				
		
		labelPayDate.setText(Msg.translate(ctx, "PayDate"));
		labelPaymentRule.setText(Msg.translate(ctx, "PaymentRule"));
		fieldPaymentRule.addActionListener(this);
		//
		labelBankBalance.setText(Msg.translate(ctx, "CurrentBalance"));
		labelBalance.setText("0");
		//2014-07-25 Carlos Parada Drop Only Due
		//onlyDue.setText(Msg.getMsg(ctx, "OnlyDue"));
		//End Carlos Parada
		
		dataStatus.setText(" ");
		//
		bGenerate.addActionListener(this);
		bCancel.addActionListener(this);
		//
		
		//Carlos Parada Initialize Payment Description
		labelDescription.setText(Msg.translate(ctx, "Description"));
		fieldDescription.setText("");
		//End Carlos Parada
		
		lblPaymentRequest.setText(Msg.translate(ctx, "LVE_PaymentRequest_ID"));
		fieldPaymentRequest.addActionListener(this);
		
		parameterCollapsiblePanel.add(parameterPanel);
		parameterCollapsiblePanel.setTitle(Msg.translate(ctx, "Parameter"));
		parameterCollapsiblePanel.setUI(new BasicTaskPaneUI());
		parameterCollapsiblePanel.getContentPane().setBackground(new ColorUIResource(251,248,241));
		parameterCollapsiblePanel.getContentPane().setForeground(new ColorUIResource(251,0,0));
		parameterCollapsiblePanel.setCollapsed(false);
		
		mainPanel.add(parameterCollapsiblePanel, BorderLayout.NORTH);
		
		parameterPanel.add(labelBankAccount,  new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldBankAccount,   new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 5, 5, 5), 0, 0));

		parameterPanel.add(labelBankBalance,  new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(labelCurrency,  new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 0, 5, 5), 0, 0));

		parameterPanel.add(labelBalance,   new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));

		parameterPanel.add(labelDtype,   new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldDtype,    new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 5, 5, 5), 0, 0));	
			
		
		parameterPanel.add(lblPaymentRequest,   new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldPaymentRequest,    new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 5, 5, 5), 0, 0));
		
		parameterPanel.add(labelBPartner,   new GridBagConstraints(0, 2, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldBPartner,    new GridBagConstraints(1, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 5, 5, 5), 0, 0));	

		
		
		parameterPanel.add(labelPayDate,  new GridBagConstraints(2, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldPayDate,   new GridBagConstraints(3, 2, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.HORIZONTAL, new Insets(5, 5, 5, 5), 0, 0));

		parameterPanel.add(labelPaymentRule,  new GridBagConstraints(2, 3, 1, 1, 0.0, 0.0
			,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		parameterPanel.add(fieldPaymentRule,  new GridBagConstraints(3, 3, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));

		//2014-07-25 Carlos Parada Drop Only Due

		//parameterPanel.add(onlyDue,  new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
		//	,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		//End Carlos Parada

		//Carlos Parada Add Description to Parameter Panel
		parameterPanel.add(labelDescription,  new GridBagConstraints(0, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		
		parameterPanel.add(fieldDescription,  new GridBagConstraints(1, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		
		parameterPanel.add(bRefresh,    new GridBagConstraints(4, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0));
		
		//End Carlos Parada
		mainPanel.add(dataStatus, BorderLayout.SOUTH);
		
		// 2014-07-23 Carlos Parada Set Panel Payment Request

		dataPane.setLayout(new BorderLayout());
		dataPanePR.setPreferredSize(new Dimension(200, 200));
		
		dataPaneDoc.setPreferredSize(new Dimension(200, 200));
		dataPanePR.getViewport().add(miniTablePR, null);
		dataPaneDoc.getViewport().add(miniTable, null);
		
		dataPane.add(dataPanePR,BorderLayout.NORTH);
		dataPane.add(dataPaneDoc,BorderLayout.CENTER);
		mainPanel.add(dataPane, BorderLayout.CENTER);
		
		
		//End Carlos Parada

		commandPanel.setLayout(commandLayout);
		commandLayout.setAlignment(FlowLayout.RIGHT);
		commandLayout.setHgap(10);

		commandPanel.add(bCancel, null);
		commandPanel.add(bGenerate, null);
	}   //  jbInit

	/**
	 *  Dynamic Init.
	 *  - Load Bank Info
	 *  - Load BPartner
	 *  - Load Document Type
	 *  - Init Table
	 */
	private void dynInit()
	{
		ArrayList<BankInfo> bankAccountData = getBankAccountData();
		for(BankInfo bi : bankAccountData)
			fieldBankAccount.addItem(bi);

		if (fieldBankAccount.getItemCount() == 0)
			ADialog.error(m_WindowNo, panel, "VPaySelectNoBank");
		else
			fieldBankAccount.setSelectedIndex(0);
		
		ArrayList<KeyNamePair> bpartnerData = getBPartnerData();
		for(KeyNamePair pp : bpartnerData)
			fieldBPartner.addItem(pp);
		fieldBPartner.setSelectedIndex(0);
		
		ArrayList<KeyNamePair> docTypeData = getDocTypeData();
		for(KeyNamePair pp : docTypeData)
			fieldDtype.addItem(pp);
		
		ArrayList<KeyNamePair> paymentRequestData = getPaymentRequestData();
		for(KeyNamePair pp : paymentRequestData)
			fieldPaymentRequest.addItem(pp);
		
		// 2014-07-23 Carlos Parada 
		// Load Data for Table Payment Request 
		// Add Default Payment Request

		prepareTablePaymentRequest(miniTablePR);
		miniTablePR.getModel().addTableModelListener(this);
		
		//End Carlos Parada
		
		// 2014-07-28 Carlos Parada Change Prepare Table For Prepare Table Payment Request
		//prepareTable(miniTable);
		prepareTablePaymentRequestLine(miniTable);
		miniTable.getModel().addTableModelListener(this);
		// End Carlos Parada
		
		
		fieldPayDate.setMandatory(true);
		fieldPayDate.setValue(new Timestamp(System.currentTimeMillis()));
	}   //  dynInit

	/**
	 *  Load Bank Info - Load Info from Bank Account and valid Documents (PaymentRule)
	 */
	private void loadBankInfo()
	{
		BankInfo bi = (BankInfo)fieldBankAccount.getSelectedItem();
		if (bi == null)
			return;
		labelCurrency.setText(bi.Currency);
		
		MCurrency currency = MCurrency.get(ctx, bi.C_Currency_ID);
		currencyPrecision = currency.getStdPrecision();
		
		labelBalance.setText(m_format.format(bi.Balance));

		//  PaymentRule
		fieldPaymentRule.removeAllItems();
		
		ArrayList<ValueNamePair> paymentRuleData = getPaymentRuleData(bi);
		for(ValueNamePair vp : paymentRuleData)
			fieldPaymentRule.addItem(vp);
		fieldPaymentRule.setSelectedIndex(0);
	}   //  loadBankInfo

	/**
	 *  Query and create TableInfo
	 */
	private void loadTableInfo()
	{
		Timestamp payDate = (Timestamp)fieldPayDate.getValue();
		miniTable.setColorCompare(payDate);
		log.config("PayDate=" + payDate);
		
		BankInfo bi = (BankInfo)fieldBankAccount.getSelectedItem();
		
		ValueNamePair paymentRule = (ValueNamePair)fieldPaymentRule.getSelectedItem();
		KeyNamePair bpartner = new KeyNamePair((Integer)fieldBPartner.getValue(), fieldBPartner.getDisplay());//fieldBPartner.getSelectedItem();
		KeyNamePair paymentRequest =  new KeyNamePair((Integer)fieldPaymentRequest.getValue(), fieldPaymentRequest.getDisplay());//(KeyNamePair) fieldPaymentRequest.getSelectedItem();
		selectedPR.clear();
		selectedPRL.clear();
		selectedPR.add(-1);
		selectedPRL.put(-1,Env.ZERO);

		KeyNamePair docType = (KeyNamePair)fieldDtype.getSelectedItem();
		
		loadTableInfoPR(bi, payDate, paymentRule, bpartner,paymentRequest, miniTablePR, docType);
		loadTableInfoPRL( bpartner, miniTable);
		
		calculateSelection();
		parameterCollapsiblePanel.setCollapsed(true);
		
	}   //  loadTableInfo

	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose


	/**************************************************************************
	 *  ActionListener
	 *  @param e event
	 */
	public void actionPerformed (ActionEvent e)
	{
		//  Update Bank Info
		if (e.getSource() == fieldBankAccount)
			loadBankInfo();

		//  Generate PaySelection
		else if (e.getSource() == bGenerate)
		{
			generatePaySelect();
			dispose();
		}

		else if (e.getSource() == bCancel)
			dispose();

		//  Update Open Invoices
		//	Yamel Senih 2014-02-08, 11:55:20
		//	only refresh action button
		//	Old Code
		//	else if (e.getSource() == fieldBPartner || e.getSource() == bRefresh || e.getSource() == fieldDtype)
		else if (e.getSource() == bRefresh)
			loadTableInfo();
		else if (e.getSource() == fieldBPartner 
				//2014-07-23 Carlos Parada  Drop Document Type
				//|| e.getSource() == fieldDtype
				//End Carlos Parada
				|| e.getSource() == fieldBankAccount
				|| e.getSource() == fieldPayDate
				|| e.getSource() == fieldPaymentRule)
			miniTable.setRowCount(0);
		//	End Yamel Senih

	}   //  actionPerformed
	
	
	/**
	 *  Table Model Listener
	 *  @param e event
	 */
	public void tableChanged(TableModelEvent e)
	{
		//2014-07-26 Carlos Parada Filter Documents table 
		if (e.getColumn() == 0 && e.getSource().equals(miniTablePR.getModel())){
			if (miniTablePR.getDynamicSelectedRow()!=-1)
				m_CurrentRowPR = miniTablePR.getDynamicSelectedRow();
			else if (miniTablePR.getSelectedRow()!=-1)
				m_CurrentRowPR = miniTablePR.getSelectedRow();
			loadDocumentsTable();
		}
		
		if (e.getColumn() == PaySelect.C_PAY_AMT && e.getSource().equals(miniTable.getModel())){
			if (miniTable.getSelectedRow()!=-1){
				IDColumn id =(IDColumn) miniTable.getValueAt(miniTable.getSelectedRow(), 0);
				if (id.isSelected()){
					BigDecimal payAmt = (BigDecimal) miniTable.getValueAt(miniTable.getSelectedRow(), PaySelect.C_PAY_AMT);
					BigDecimal remainAmt = (BigDecimal) miniTable.getValueAt(miniTable.getSelectedRow(), PaySelect.C_PAY_PR_AMT);
					if (remainAmt!=null){
						if (remainAmt.setScale(currencyPrecision).subtract(payAmt.setScale(currencyPrecision)).setScale(currencyPrecision).compareTo(Env.ZERO.setScale(currencyPrecision))<0){
							ADialog.error(m_WindowNo, panel, "Error", Msg.parseTranslation(ctx, "@LVE_PaymentRequestLine_ID@ @Amuount@ < " + payAmt.toString()));
							miniTable.getModel().removeTableModelListener(this);
							miniTable.setValueAt(remainAmt,miniTable.getSelectedRow(), PaySelect.C_PAY_AMT);
							miniTable.getModel().addTableModelListener(this);
						}
					}
					if (payAmt!=null){
						selectedPRL.remove(id.getRecord_ID());
						selectedPRL.put(id.getRecord_ID(), payAmt);
					}
				}
			}
		}
		
		//End Carlos Parada
		
		if (e.getColumn() == 0 && e.getSource().equals(miniTable.getModel())) //Add Minitable Source Condition
			calculateSelection();
			
	}   //  valueChanged

	/**
	 *  Calculate selected rows.
	 *  - add up selected rows
	 */
	public void calculateSelection()
	{
		dataStatus.setText(calculateSelection(miniTable));
		//
		bGenerate.setEnabled(m_noSelected != 0);
	}   //  calculateSelection

	/**
	 *  Generate PaySelection
	 */
	private void generatePaySelect()
	{
		miniTable.stopEditor(true);
		if (miniTable.getRowCount() == 0)
			return;
		miniTable.setRowSelectionInterval(0,0);
		calculateSelection();
		if (m_noSelected == 0)
			return;

		try
		{
			Trx.run(new TrxRunnable() 
			{
				public void run(String trxName)
				{
					/**
					//	Generate Payment
					generatePaySelect(miniTable, (ValueNamePair) fieldPaymentRule.getSelectedItem(), 
							fieldPayDate.getTimestamp(), (BankInfo)fieldBankAccount.getSelectedItem(),
							//Carlos Parada Send Description to Method
							(fieldDescription.getValue()!=null?fieldDescription.getValue().toString():""));
							//End Carlos Parada
							 */
					//2014-07-29 Carlos Parada Generate Payment Selection From Payment Request line
					generatePaySelectFromPR(miniTable, (ValueNamePair) fieldPaymentRule.getSelectedItem(), 
							fieldPayDate.getTimestamp(), (BankInfo)fieldBankAccount.getSelectedItem(),
							(fieldDescription.getValue()!=null?fieldDescription.getValue().toString():""));
					
					//End Carlos Parada
				}
			});
		}
		catch (Exception e)
		{
			ADialog.error(m_WindowNo, panel, "Error", e.getLocalizedMessage());
			return;
		}
		//  Ask to Post it
		if (!ADialog.ask(m_WindowNo, panel, "VPaySelectGenerate?", "(" + m_ps.getName() + ")"))
			return;
		
		//  Prepare Process
		int AD_Proces_ID = 155;	//	C_PaySelection_CreatePayment
		ProcessInfo pi = new ProcessInfo (m_frame.getTitle(), AD_Proces_ID,
			X_C_PaySelection.Table_ID, m_ps.getC_PaySelection_ID());
		pi.setAD_User_ID (Env.getAD_User_ID(ctx));
		pi.setAD_Client_ID(Env.getAD_Client_ID(ctx));
		
		ProcessParameterPanel pp = new ProcessParameterPanel(m_WindowNo, pi);
		//	Execute Process
		ProcessCtl.process(this, m_WindowNo, (IProcessParameter) pp, pi, trx);
	//	ProcessCtl worker = new ProcessCtl(this, pi, trx);
	//	worker.start();     //  complete tasks in unlockUI
	}   //  generatePaySelect

	/**
	 *  Lock User Interface
	 *  Called from the Worker before processing
	 *  @param pi process info
	 */
	public void lockUI (ProcessInfo pi)
	{
		panel.setEnabled(false);
		m_isLocked = true;
	}   //  lockUI

	/**
	 *  Unlock User Interface.
	 *  Called from the Worker when processing is done
	 *  @param pi process info
	 */
	@SuppressWarnings("deprecation")
	public void unlockUI (ProcessInfo pi)
	{
	//	this.setEnabled(true);
	//	m_isLocked = false;
		//  Ask to Print it		//	Window is disposed
		if (!ADialog.ask(0, panel, "VPaySelectPrint?", "(" + pi.getSummary() + ")"))
			return;

		//  Start PayPrint
		int AD_Form_ID = 106;	//	Payment Print/Export
		FormFrame ff = new FormFrame();
		ff.openForm (AD_Form_ID);
		//	Set Parameter
		if (m_ps != null)
		{
			VPayPrint pp = (VPayPrint)ff.getFormPanel();
			pp.setPaySelection(m_ps.getC_PaySelection_ID());
		}
		//
		ff.pack();
		panel.setVisible(false);
                AEnv.addToWindowManager(ff);
		AEnv.showCenterScreen(ff);
		this.dispose();
	}   //  unlockUI

	/**
	 *  Is the UI locked (Internal method)
	 *  @return true, if UI is locked
	 */
	public boolean isUILocked()
	{
		return m_isLocked;
	}   //  isLoacked

	/**
	 *  Method to be executed async.
	 *  Called from the ASyncProcess worker
	 *  @param pi process info
	 */
	public void executeASync (ProcessInfo pi)
	{
		log.config("-");
	}   //  executeASync
	
	/**
	 * Load Documents Table From Payment Request 
	 * @author <a href="mailto:carlosparada@gmail.com">Carlos Parada</a> 26/07/2014, 16:47:08
	 * @return void
	 */
	public void loadDocumentsTable(){
		
		if (miniTablePR.getRowCount() > m_CurrentRowPR && m_CurrentRowPR !=-1){
			IDColumn col = (IDColumn)miniTablePR.getValueAt(m_CurrentRowPR, 0);
			
			if (col==null)
				return ;
			
			if (col.isSelected())
				selectedPR.add(col.getRecord_ID());
			else
				selectedPR.remove(col.getRecord_ID());
			
			miniTable.getModel().removeTableModelListener(this);
			if (miniTablePR.getDynamicSelectedRow()== -1){
				KeyNamePair bpartner = new KeyNamePair((Integer)fieldBPartner.getValue(), fieldBPartner.getDisplay());//(KeyNamePair)fieldBPartner.getSelectedItem();
				loadTableInfoPRL( bpartner, miniTable);
			}
			setValueFromBuffer(miniTable);
			miniTable.getModel().addTableModelListener(this);
		}
			
	}//loadDocumentsTable

	@Override
	public void itemStateChanged(ItemEvent e) {
		Object source = e.getSource();   		
		
		if (source instanceof AbstractButton == false) return;  
		
		CheckBoxHeaderRendered tableheader = (CheckBoxHeaderRendered)source;
		
		MiniTable table = (MiniTable)tableheader.getM_Table();
		
		boolean checked = e.getStateChange() == ItemEvent.SELECTED;
		m_frame.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		for(int x = 0, y = table.getRowCount(); x < y; x++)   
		{   
			table.setDynamicSelectedRow(x);
			IDColumn col = (IDColumn)table.getValueAt(x, 0);
			if (col.isSelected() != checked){
				col.setSelected(checked);
				table.setValueAt(col,x,0); 
			}
		} 
		
		table.setDynamicSelectedRow(-1);
		if (table.equals(miniTablePR) && table.getRowCount()>0){
			if (!checked){
				selectedPRL.clear();
				selectedPRL.put(-1,Env.ZERO);
			}
			KeyNamePair bpartner = new KeyNamePair((Integer)fieldBPartner.getValue(), fieldBPartner.getDisplay());//(KeyNamePair)fieldBPartner.getSelectedItem();
			loadTableInfoPRL( bpartner, miniTable);
			
		}
		m_frame.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
		
	}

}   //  VPaySelect
