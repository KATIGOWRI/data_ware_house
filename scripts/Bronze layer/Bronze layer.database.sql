CREATE OR ALTER procedure Broze.load_broze
AS 
BEGIN
	   DECLARE @Start_time Datetime, @end_time Datetime
	   Begin Try

		Print'======================================================================================================================================='
		print'Loading Bronze Layer';
		print'========================================================================================================================================'


		print'-----------------------------------------------------------------------------------------------------------------------------------------'
		print'Loding crm Tables';
		print'-----------------------------------------------------------------------------------------------------------------------------------------'

		SET @Start_time = getdate();
		Print '>>Truncating Tabel : broze.crm_cust_info';
		TRUNCATE TABLE  broze.crm_cust_info
		print'>>Bulk Inserting Data Into : broze.crm_cust_info';
		BULK INSERT broze.crm_cust_info
		FROM'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_crm\cust_info.CSV'
		with(
			FIRSTROW=2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @end_time = getdate();
		print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
		PRINT'>>------------------------------------------------------------------------------------'

		SET @START_TIME = GETDATE();
		Print '>>Truncating Tabel : broze.crm_prd_info';
		TRUNCATE TABLE broze.crm_prd_info;
		print'>>Bulk Inserting Data Into : broze.crm_prd_info';
		BULK INSERT broze.crm_prd_info
		FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_crm\prd_info.CSV'
		with(
			FIRSTROW = 2,
			FIELDTERMINATOR = ',',
			TABLOCK
		);
		SET @END_TIME = GETDATE();
		print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
		PRINT'>>------------------------------------------------------------------------------------'

		SET @START_TIME = GETDATE();
		Print '>>Truncating Tabel : broze.crm_sales_details';
		TRUNCATE TABLE broze.crm_sales_details;
		print'>>Bulk Inserting Data Into : broze.crm_sales_details';
		BULK INSERT broze.crm_sales_details
		FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_crm\sales_details.CSV'
		with(
		  FIRSTROW = 2,
		  FIELDTERMINATOR = ',',
		  TABLOCK
		  );
		Set @END_TIME = GETDATE();
		print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
		PRINT'>>------------------------------------------------------------------------------------'

		print'-----------------------------------------------------------------------------------------------------------------------------------------'
		print'Loding ERP Tables'
		print'-----------------------------------------------------------------------------------------------------------------------------------------'
	
		SET @START_TIME = GETDATE();
		Print '>>Truncating Tabel : broze.erp_cust_az12';
		TRUNCATE TABLE broze.erp_cust_az12;
		print'>>Bulk Inserting Data Into : broze.erp_cust_az12';
		BULK INSERT broze.erp_cust_az12
		FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
		with(
		  FIRSTROW = 2,
		  FIELDTERMINATOR = ',',
		  TABLOCK
		);
		SET @END_TIME = GETDATE();
		print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
		PRINT'>>------------------------------------------------------------------------------------'

		SET @START_TIME = GETDATE();
		Print '>>Truncating Tabel : broze.erp_px_cat_g1v2';
		TRUNCATE TABLE broze.erp_px_cat_g1v2;
		print'>>Bulk Inserting Data Into : broze.erp_px_cat_g1v2';
		BULK INSERT broze.erp_px_cat_g1v2
		FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
		with(
		   FIRSTROW=2,
		   FIELDTERMINATOR = ',',
		   TABLOCK
		);
		SET @END_TIME = GETDATE();
		print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
		PRINT'>>------------------------------------------------------------------------------------'

		SET @START_TIME = GETDATE();
		Print '>>Truncating Tabel : broze.erp_loc_a101';
		TRUNCATE TABLE broze.erp_loc_a101;
		print'>>Bulk Inserting Data Into : broze.erp_loc_a101';
		TRUNCATE TABLE broze.erp_loc_a101;
		BULK INSERT broze.erp_loc_a101
		FROM 'C:\Users\HP\Desktop\sql-data-warehouse-project\datasets\source_erp\LOC_A101.CSV'
		with(
		   FIRSTROW=2,
		   FIELDTERMINATOR = ',',
		   TABLOCK
		);
		SET @END_TIME = GETDATE();
		print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
		PRINT'>>------------------------------------------------------------------------------------'

	print'>> Load Duration:'+CAST(DATEDIFF(SECOND,@START_TIME,@END_TIME) AS NVARCHAR)+'SECOND'
	PRINT'>>------------------------------------------------------------------------------------'
  End Try
  Begin Catch
	Print'=========================================================================================='
	print'ERROR OCCURED DURING LODING BRONZE LAYER'
	Print'ERROR MESSAGE'+ERROR_MESSAGE();
	PRINT'ERROR MESSAGE'+CAST(ERROR_NUMBER() AS NVARCHAR);
	PRINT 'ERROR MESSAGE' + CAST(ERROR_STATE() AS NVARCHAR);
	PRINT'==============================================================================================='
  End Catch;
END;


