CREATE EXTERNAL TABLE `carros_business`(
  `regiao` string COMMENT '', 
  `sum(total_multas)` int COMMENT '')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://722687989925-business/'
TBLPROPERTIES (
  'classification'='parquet')
