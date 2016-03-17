/******************************************************************************
 * Copyright (C) 2009 Low Heng Sin                                            *
 * Copyright (C) 2009 Idalica Corporation                                     *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.compiere.apps.form;

import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.beans.PropertyChangeEvent;
import java.beans.VetoableChangeListener;
import java.util.ArrayList;
import java.util.logging.Level;

import javax.swing.JButton;

import org.adempiere.exceptions.FillMandatoryException;
import org.compiere.apps.ADialog;
import org.compiere.apps.ConfirmPanel;
import org.compiere.grid.ed.VCheckBox;
import org.compiere.grid.ed.VComboBox;
import org.compiere.grid.ed.VLookup;
import org.compiere.model.MLookup;
import org.compiere.model.MLookupFactory;
import org.compiere.model.MOrder;
import org.compiere.model.MRMA;
import org.compiere.model.MSysConfig;
import org.compiere.swing.CLabel;
import org.compiere.swing.CTextField;
import org.compiere.util.CLogger;
import org.compiere.util.DisplayType;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 * Generate Shipment (manual) view class
 * @author Dixon Martinez, dmartinez@erpcya.com, ERPCyA http://www.erpcya.com Agu 26, 2015, 20:20:50 PM, 
 * 				<li>Support for Auto Query
 */
public class VInOutGen extends InOutGen implements FormPanel, ActionListener, VetoableChangeListener
{
	private VGenPanel panel;
	
	/**	Window No			*/
	private int         	m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VInOutGen.class);
	//

	private CLabel lWarehouse = new CLabel();
	private VLookup fWarehouse;
	private CLabel lBPartner = new CLabel();
	private VLookup fBPartner;	
	private CLabel     lDocType = new CLabel();
	private VComboBox  cmbDocType = new VComboBox();
	private CLabel     lDocAction = new CLabel();
	private VLookup    docAction;
	

	private VCheckBox checkAutoQuery = new VCheckBox();
	private static String SYSCONFIG_INFO_AUTO_QUERY = "INFO_AUTO_QUERY";
	
	private CLabel     lDocumentType = new CLabel();
	private VComboBox  cmbDocumentType = new VComboBox();
	private CLabel     lIsImmediateDelivery = new CLabel();
	private VComboBox  cmbIsImmediateDelivery = new VComboBox();
	private JButton bRefresh = ConfirmPanel.createRefreshButton(true);
	
	private boolean m_loadedOK = false;
	private boolean vetoableRefresh = false;
	
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
		Env.setContext(Env.getCtx(), m_WindowNo, "IsSOTrx", "Y");

		panel = new VGenPanel(this, WindowNo, frame);

		try
		{
			super.dynInit();
			dynInit();
			jbInit();
			m_loadedOK = true;
			if (checkAutoQuery.isSelected())
			{
				setFieldOldValues();
				executeQuery();
				vetoableRefresh = true;
			}
			else 
				vetoableRefresh = false;
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "init", ex);
		}
	}	//	init
	
	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose
	
	/**
	 *	Static Init.
	 *  <pre>
	 *  selPanel (tabbed)
	 *      fOrg, fBPartner
	 *      scrollPane & miniTable
	 *  genPanel
	 *      info
	 *  </pre>
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{		
		lWarehouse.setLabelFor(fWarehouse);
		lBPartner.setLabelFor(fBPartner);
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		lDocAction.setLabelFor(docAction);
		lDocAction.setText(Msg.translate(Env.getCtx(), "DocAction"));
		lDocType.setLabelFor(cmbDocType);
		lIsImmediateDelivery.setLabelFor(cmbIsImmediateDelivery);
		
		//
		checkAutoQuery.setText(Msg.getMsg(Env.getCtx(), "AutoRefresh"));
		checkAutoQuery.setToolTipText(Msg.getMsg(Env.getCtx(), "AutoRefresh"));
		checkAutoQuery.setName("AutoQuery");
		checkAutoQuery.setSelected(MSysConfig.getValue(SYSCONFIG_INFO_AUTO_QUERY,"Y",Env.getAD_Client_ID(Env.getCtx())).equals("Y"));  
		checkAutoQuery.addActionListener(this);
		//
		bRefresh.addActionListener(this);
		
		panel.getParameterPanel().setLayout(new GridBagLayout());

		GridBagConstraints  lWarehouseConstraint = new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints fWarehouseConstraint =  new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints lBPartnerConstraint =  new GridBagConstraints(2, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints fBPartnerConstraint =  new GridBagConstraints(3, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints lDocTypeConstraint =  new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints cmbDocTypeConstraint =  new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints lDocActionConstraint =  new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints docActionConstraint =  new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints lIsImmediateDeliveryConstraint =  new GridBagConstraints(2, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints cmbIsImmediateDeliveryConstraint =  new GridBagConstraints(3, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints lDocumentTypeConstraint =  new GridBagConstraints(4, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.EAST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		GridBagConstraints cmbDocumentTypeTargetConstraint =  new GridBagConstraints(5, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		
		GridBagConstraints autoRefreshConstraint =  new GridBagConstraints(1, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5,5,5,5), 0, 0);
		
        
		GridBagConstraints bRefreshConstraint =  new GridBagConstraints(4, 3, 1, 1, 0.0, 0.0
				,GridBagConstraints.CENTER, GridBagConstraints.NONE, new Insets(5, 5, 5, 5), 0, 0);

		
		panel.getParameterPanel().add(lWarehouse, lWarehouseConstraint);
		panel.getParameterPanel().add(fWarehouse, fWarehouseConstraint);
		panel.getParameterPanel().add(lBPartner, lBPartnerConstraint);
		panel.getParameterPanel().add(fBPartner, fBPartnerConstraint);
		panel.getParameterPanel().add(lDocType, lDocTypeConstraint);
		panel.getParameterPanel().add(cmbDocType, cmbDocTypeConstraint);
		
		panel.getParameterPanel().add(lDocumentType, lDocumentTypeConstraint);
		panel.getParameterPanel().add(cmbDocumentType, cmbDocumentTypeTargetConstraint);
		
		panel.getParameterPanel().add(lIsImmediateDelivery, lIsImmediateDeliveryConstraint );
		panel.getParameterPanel().add(cmbIsImmediateDelivery, cmbIsImmediateDeliveryConstraint );
		
		panel.getParameterPanel().add(lDocAction, lDocActionConstraint);
		panel.getParameterPanel().add(docAction, docActionConstraint);
		
		panel.getParameterPanel().add(bRefresh, bRefreshConstraint);
		
		panel.getParameterPanel().add(checkAutoQuery, autoRefreshConstraint);
	}	//	jbInit
	
	/**
	 *	Fill Picks.
	 *		Column_ID from C_Order
	 *  @throws Exception if Lookups cannot be initialized
	 */
	public void dynInit() throws Exception
	{
		//	C_OrderLine.M_Warehouse_ID
		MLookup orgL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2223, DisplayType.TableDir);
		fWarehouse = new VLookup ("M_Warehouse_ID", true, false, true, orgL);
		lWarehouse.setText(Msg.translate(Env.getCtx(), "M_Warehouse_ID"));
		fWarehouse.addVetoableChangeListener(this);
		setM_Warehouse_ID(fWarehouse.getValue());
		//   Document Action Prepared/ Completed
		MLookup docActionL = MLookupFactory.get(Env.getCtx(), m_WindowNo, 4324 /* M_InOut.DocStatus */, 
				DisplayType.List, Env.getLanguage(Env.getCtx()), "DocAction", 135 /* _Document Action */,
				false, "AD_Ref_List.Value IN ('CO','PR')");
		docAction = new VLookup("DocAction", true, false, true,docActionL);
		docAction.addVetoableChangeListener(this);
		docAction.setValue( "PR" );//@Trifon - Pre-select "Prepare"
		//		C_Order.C_BPartner_ID
		MLookup bpL = MLookupFactory.get (Env.getCtx(), m_WindowNo, 0, 2762, DisplayType.Search);
		fBPartner = new VLookup ("C_BPartner_ID", false, false, true, bpL);
		lBPartner.setText(Msg.translate(Env.getCtx(), "C_BPartner_ID"));
		fBPartner.addVetoableChangeListener(this);
		//Document Type Sales Order/Vendor RMA
		lDocType.setText(Msg.translate(Env.getCtx(), "C_DocType_ID"));
		cmbDocType.addItem(new KeyNamePair(MOrder.Table_ID, Msg.translate(Env.getCtx(), "Order")));
		cmbDocType.addItem(new KeyNamePair(MRMA.Table_ID, Msg.translate(Env.getCtx(), "VendorRMA")));
		cmbDocType.addActionListener(this);
		
		 //	
        lIsImmediateDelivery.setText(Msg.translate(Env.getCtx(), "IsImmediateDelivery"));
        cmbIsImmediateDelivery.addItem(new KeyNamePair(0, ""));
        cmbIsImmediateDelivery.addItem(new KeyNamePair(1, Msg.translate(Env.getCtx(), "yes")));
        cmbIsImmediateDelivery.addItem(new KeyNamePair(2, Msg.translate(Env.getCtx(), "no")));
        cmbIsImmediateDelivery.addActionListener(this);
		
        //	
        lDocumentType.setText(Msg.translate(Env.getCtx(), "C_DocTypeTarget_ID"));
        cmbDocumentType.addActionListener(this);
        //	Load Document Type
        loadDocumentType();

        panel.getStatusBar().setStatusLine(Msg.getMsg(Env.getCtx(), "InOutGenerateSel"));//@@
	}	//	fillPicks
	
	public void executeQuery()
	{
		KeyNamePair docTypeKNPair = (KeyNamePair)cmbDocType.getSelectedItem();
		//	Yamel Senih 2013-11-09, 10:56:09
		//	Add Document Type
		KeyNamePair documentTypeKNPair = (KeyNamePair)cmbDocumentType.getSelectedItem();
		if(documentTypeKNPair != null)
			m_C_DocTypeTarget_ID = documentTypeKNPair.getKey();
		else
			m_C_DocTypeTarget_ID = 0;
		
		KeyNamePair immDKNPair = (KeyNamePair)cmbIsImmediateDelivery.getSelectedItem();
		m_ImmediateDelivery = immDKNPair.getKey();
		
		//	End Yamel Senih
		executeQuery(docTypeKNPair, panel.getMiniTable());
	}   //  executeQuery
	
	/**
	 *	Action Listener
	 *  @param e event
	 */
	public void actionPerformed(ActionEvent e)
	{
		boolean triggerRefresh = false;
		
		if(!m_loadedOK)
			return;

		Object source = e.getSource();
		String cmd = e.getActionCommand();
		
		//  Trigger an update if any criteria change
		if (source instanceof VComboBox && ((VComboBox) source).getParent() instanceof VLookup)
		{
			source = ((VComboBox) source).getParent();
			VLookup vl = ((VLookup)source);
			//  Discard changes from mouse movements and keyboard entries
			//  Respond only to the Enter key which causes "comboBoxEdited"
			//  VLookups trigger multiple events in search mode. Reject 
			//  events that don't have changes from the last action.
			if(cmd.equals("comboBoxChanged"))		
			{
				if (!vl.hasChanged())
					return;
				else
					triggerRefresh = true;
			}
			else if(cmd.equals("comboBoxEdited"))
			{
				if (!vl.hasChanged())
				{
					vl.requestFocus();
					return;
				}
				triggerRefresh = true;
			}
		}
		else if (source instanceof CTextField)
		{
			CTextField tf = ((CTextField) source);
	
			if (tf.getParent() instanceof VLookup)
			{
				// Ignore it.  User typed into the VLookup text field.
				// Look for events form the VLookup VComboBox component
				// instead.
				return;
			}
			else if (tf.hasChanged())  //  The change may have come from another field
			{
				triggerRefresh = true;
			}
		}
		else if (e.getSource() instanceof VCheckBox)
		{
			//  Check box changes generally always cause a refresh
			//  Capture changes that don't 
			triggerRefresh = true;
			
			VCheckBox cb = (VCheckBox) e.getSource();
			if (cb.getName().equals("AutoQuery"))
			{
				vetoableRefresh = cb.isSelected();
				//  Only trigger a refresh if the check box is selected
				//if(!cb.isSelected())
				if(!vetoableRefresh)
				{
					return;
				}
			}
		}
		else if(cmd.equals("comboBoxChanged"))		
		{
			VComboBox vcb = (VComboBox) source;
			if (!vcb.hasChanged())
			{
				return;
			} else {
				triggerRefresh = true;
			}
		}
		else if(cmd.equals("comboBoxEdited"))
		{
			VComboBox vcb = (VComboBox) source;			
			if (!vcb.hasChanged())
			{
				vcb.requestFocus();
				return;
			}
			triggerRefresh = true;		
		}

		// Refresh if the autoquery feature is selected or the refresh button is clicked.
		if (e.getSource() == bRefresh 
				|| (checkAutoQuery.isSelected() 
						&& triggerRefresh))	{
			setFieldOldValues();
			executeQuery();
			return;
		}
		
		try
		{
			validate();
		}
		catch(Exception ex)
		{
			ADialog.error(m_WindowNo, this.panel, "Error", ex.getLocalizedMessage());
		}
	}	//	actionPerformed
	
	public void validate()
	{
		panel.saveSelection();
		
		if (getM_Warehouse_ID() <= 0)
		{
			throw new FillMandatoryException("M_Warehouse_ID");
		}
		
		ArrayList<Integer> selection = getSelection();
		if (selection != null
			&& selection.size() > 0
			&& isSelectionActive())	//	on selection tab
		{
			panel.generate();
		}
		else
		{
			if(!isSelectionActive())
				panel.dispose();
		}
	}

	/**
	 *	Vetoable Change Listener - requery
	 *  @param e event
	 */
	public void vetoableChange(PropertyChangeEvent e)
	{
		log.info(e.getPropertyName() + "=" + e.getNewValue());
		if (e.getPropertyName().equals("M_Warehouse_ID"))
			setM_Warehouse_ID(e.getNewValue());
		if (e.getPropertyName().equals("C_BPartner_ID"))
		{
			m_C_BPartner_ID = e.getNewValue();
			fBPartner.setValue(m_C_BPartner_ID);	//	display value
		}
		if(vetoableRefresh)
			executeQuery();
	}	//	vetoableChange
	
	/**************************************************************************
	 *	Generate Shipments
	 */
	public String generate()
	{
		KeyNamePair docTypeKNPair = (KeyNamePair)cmbDocType.getSelectedItem();
		String docActionSelected = (String)docAction.getValue();	
		return generate(panel.getStatusBar(), docTypeKNPair, docActionSelected);
	}	//	generateShipments
	
	/**
	 * Record outstanding changes by copying the current
	 * value to the oldValue on all fields
	 */
	protected void setFieldOldValues()
	{
		fWarehouse.set_oldValue();
		fBPartner.set_oldValue();
		docAction.set_oldValue();
		cmbDocType.set_oldValue();
		return;
	}
	

	/**
	 * Load Document Type
	 */
	private void loadDocumentType(){
		cmbDocumentType.removeAllItems();
		KeyNamePair docTypeKNPair = (KeyNamePair)cmbDocType.getSelectedItem();
		ArrayList<KeyNamePair> bpartnerData = getDocTypeData(docTypeKNPair.getKey());
		for(KeyNamePair pp : bpartnerData)
			cmbDocumentType.addItem(pp);
		cmbDocumentType.setSelectedIndex(0);
	}
}
