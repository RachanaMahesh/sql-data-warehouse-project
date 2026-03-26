TRUNCATE TABLE bronze.crm_cust_info;
-- BULK INSERT bronze.crm_cust_info
-- FROM "D:\SQL\sql-data-warehouse-project\datasets\source_crm\cust_info.CSV"
-- with (
-- 	firstrow = 2,
-- 	fieldterminator = ',',
-- 	TABLOCK
-- );

COPY bronze.crm_cust_info
FROM 'D:/SQL/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

TRUNCATE TABLE bronze.crm_prd_info;
COPY bronze.crm_prd_info
FROM 'D:/SQL/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);


TRUNCATE TABLE bronze.crm_sales_details;
COPY bronze.crm_sales_details
FROM 'D:/SQL/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

TRUNCATE TABLE bronze.erp_loc_a101;
COPY bronze.erp_loc_a101
FROM 'D:/SQL/sql-data-warehouse-project/datasets/source_erp/loc_a101.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

TRUNCATE TABLE bronze.erp_cust_az12;
COPY bronze.erp_cust_az12
FROM 'D:/SQL/sql-data-warehouse-project/datasets/source_erp/cust_az12.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

TRUNCATE TABLE bronze.erp_px_cat_g1v2;
COPY bronze.erp_px_cat_g1v2
FROM 'D:/SQL/sql-data-warehouse-project/datasets/source_erp/px_cat_g1v2.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);
