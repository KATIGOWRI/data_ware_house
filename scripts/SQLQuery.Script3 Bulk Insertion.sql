TRUNCATE TABLE broze.crm_cust_info;

BULK INSERT broze.crm_cust_info
FROM'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_crm\cust_info.CSV'
with(
    FIRSTROW=2,
	FIELDTERMINATOR = ',',
	TABLOCK
);


TRUNCATE TABLE broze.crm_prd_info;
BULK INSERT broze.crm_prd_info
FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_crm\prd_info.CSV'
with(
    FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);

TRUNCATE TABLE broze.crm_sales_details;
BULK INSERT broze.crm_sales_details
FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_crm\sales_details.CSV'
with(
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);
  
  TRUNCATE TABLE broze.erp_cust_az12;
BULK INSERT broze.erp_cust_az12
FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
with(
  FIRSTROW = 2,
  FIELDTERMINATOR = ',',
  TABLOCK
);
 
TRUNCATE TABLE broze.erp_px_cat_g1v2;
BULK INSERT broze.erp_px_cat_g1v2
FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
with(
   FIRSTROW=2,
   FIELDTERMINATOR = ',',
   TABLOCK
);

TRUNCATE TABLE broze.erp_loc_a101;
BULK INSERT broze.erp_loc_a101
FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_erp\LOC_A101.CSV'
with(
   FIRSTROW=2,
   FIELDTERMINATOR = ',',
   TABLOCK
);

SELECT * FROM broze.erp_loc_a101

