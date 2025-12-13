--Create a SQL DDL Script for all Csv Files
	---SECTION A: Tables are created for the first source system(CRM.CSV)
--1a).  
 IF OBJECT_ID('Bronze.crm_customer_info' ,'U') IS NOT NULL
		DROP TABLE Bronze.crm_customer_info;
	CREATE TABLE Bronze.crm_customer_info(
		cst_id INT,
		cst_key NVARCHAR(50),
		cst_firstname NVARCHAR(50),
		cst_lastname NVARCHAR(50),
		cst_material_status NVARCHAR(50),
		cst_GNDR NVARCHAR(50),
		cst_create_date DATE
	);

--1b).
	IF OBJECT_ID('Bronze.crn_prd_info' ,'U') IS NOT NULL
		DROP TABLE Bronze.crn_prd_info;
	CREATE TABLE Bronze.crm_prd_info(
		prd_id      INT,
		prd_key      NVARCHAR(50),
		prd_nm       NVARCHAR(50),
		prd_cost     INT,
		prd_line     NVARCHAR(50),
		prd_start_dt DATETIME,
		prd_end_dt   DATETIME
	);

--1c).
	IF OBJECT_ID('Bronze.crm_sales_details' ,'U') IS NOT NULL
		DROP TABLE Bronze.crm_sales_details;
	CREATE TABLE Bronze.crm_sales_details(
		sls_ord_num  NVARCHAR(50),
		sls_prd_key  NVARCHAR(50),
		sls_cust_id  INT,
		sls_order_dt INT,
		sls_ship_dt  INT,
		sls_due_dt   INT,
		sls_sales    INT,
		sls_quantity INT,
		sls_price INT
	);

	---for the second source system(ERP.CSV)
  --2a).
	IF OBJECT_ID('Bronze.erp_loca101' ,'U') IS NOT NULL
		DROP TABLE Bronze.erp_loca101;
	CREATE TABLE Bronze.erp_loca101(
		cid   NVARCHAR(50),
		cntry NVARCHAR(50)
	);

--2b).
	IF OBJECT_ID('Bronze.erp_cust_az12' ,'U') IS NOT NULL
		DROP TABLE Bronze.erp_cust_az12;
	CREATE TABLE Bronze.erp_cust_az12(
		cid   NVARCHAR(50),
		bdate DATE,
		gen   NVARCHAR(50)
	);

--2c).
	IF OBJECT_ID ('Bronze.erp_px_cat_g1v2' ,'U') IS NOT NULL
		DROP TABLE Bronze.erp_px_cat_g1v2;
	CREATE TABLE Bronze.erp_px_cat_g1v2(
		id               NVARCHAR(50),
		cat              NVARCHAR(50),
		subcat			 NVARCHAR(50),
		maintenance		 NVARCHAR(50),
	);

	--SECTION B: DML(DATA MANIPULATION LANGUAGE)
	/*This section shows how to insert a large/huge amount of data into a table in sql.This was done for each table in the DataWareHouse Datatabse*/

	--1).For the 'Bronze.crm_customer_info' Table;
	TRUNCATE TABLE Bronze.crm_customer_info;--This deletes the values in the table incase of errors or duplicates when inserting

	BULK INSERT Bronze.crm_customer_info
	FROM "C:\Users\Hp User\Documents\Downloads\SQL-with Baraa\sql-data-warehouse-project\datasets\source_crm\cust_info.csv"
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR =',',
		TABLOCK--VIEWS THE ENTIRE TABLE BEFORE LOADING IT
	);

	--2).For the 'Bronze.crm_sales_details' Table;
	TRUNCATE TABLE Bronze.crm_customer_info;

	BULK INSERT Bronze.crm_sales_details
	FROM "C:\Users\Hp User\Documents\Downloads\SQL-with Baraa\sql-data-warehouse-project\datasets\source_crm\sales_details.csv"
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR =',',
		TABLOCK
	);

	--3).For the 'Bronze.crm_prd_info' Table;
	TRUNCATE TABLE Bronze.crm_prd_info;

	BULK INSERT Bronze.crm_prd_info
	FROM "C:\Users\Hp User\Documents\Downloads\SQL-with Baraa\sql-data-warehouse-project\datasets\source_crm\prd_info.csv"
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR =',',
		TABLOCK
	);


	--4).For the 'Bronze.erp_cust_az12' Table;
	TRUNCATE TABLE Bronze.erp_cust_az12;

	BULK INSERT Bronze.erp_cust_az12
	FROM "C:\Users\Hp User\Documents\Downloads\SQL-with Baraa\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv"
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR =',',
		TABLOCK
	);


	--5).For the 'Bronze.erp_loca101' Table;
	TRUNCATE TABLE Bronze.erp_loca101;

	BULK INSERT Bronze.erp_loca101
	FROM "C:\Users\Hp User\Documents\Downloads\SQL-with Baraa\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv"
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR =',',
		TABLOCK
	);

	--6).For the Bronze.erp_px_cat_g1v2
	TRUNCATE TABLE  Bronze.erp_px_cat_g1v2;

	BULK INSERT  Bronze.erp_px_cat_g1v2
	FROM "C:\Users\Hp User\Documents\Downloads\SQL-with Baraa\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv"
	WITH (
		FIRSTROW=2,
		FIELDTERMINATOR =',',
		TABLOCK
	);




