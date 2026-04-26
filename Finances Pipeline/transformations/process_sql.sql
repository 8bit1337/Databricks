CREATE OR REFRESH STREAMING TABLE finances.bronze_statements.raw_statements AS
  SELECT *
  FROM STREAM read_files(
    '/Volumes/finances/bronze_statements/rowdata/bank/statement*.csv', 
    format => 'CSV',
    header => true
  );