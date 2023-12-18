SET @database   = "maxify"; 
SET @old_prefix = "nvd_"; 
SET @new_prefix = "maxify_";
   SELECT
    CONCAT(
        "RENAME TABLE ",
        TABLE_NAME,
        " TO ",
        CONCAT(@new_prefix, TRIM(LEADING @old_prefix FROM TABLE_NAME)),
        ';'
    ) AS "SQL" FROM information_schema.TABLES WHERE TABLE_SCHEMA = @database;
