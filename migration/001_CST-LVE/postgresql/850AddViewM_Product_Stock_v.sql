-- View: m_product_stock_v

DROP VIEW m_product_stock_v;

CREATE OR REPLACE VIEW m_product_stock_v AS 
SELECT 
	ms.isactive,
	ms.created,
	ms.createdby,
	ms.updated,
	ms.updatedby,
	mp.m_product_id,
	mp.value,
	mp.help,
	ms.qtyonhand - ms.qtyreserved AS qtyavailable,
	ms.qtyonhand,
	ms.qtyreserved,
	ms.qtyordered,
	mp.description,
	mw.name AS warehouse,
	mw.m_warehouse_id,
	mw.ad_client_id,
	mw.ad_org_id,
	mp.documentnote,
	--	Dixon Martinez 
	--	Add Column for patches
	ml.M_Locator_ID
	--	End Dixon Martinez
FROM m_storage ms
JOIN m_product mp ON ms.m_product_id = mp.m_product_id
JOIN m_locator ml ON ms.m_locator_id = ml.m_locator_id
JOIN m_warehouse mw ON ml.m_warehouse_id = mw.m_warehouse_id
ORDER BY mw.name;

ALTER TABLE m_product_stock_v
  OWNER TO adempiere;

