CREATE EXTERNAL TABLE `carros-trusted`(
  `nome` string COMMENT '', 
  `placa` string COMMENT '', 
  `modelo_carro` string COMMENT '', 
  `cor_carro` string COMMENT '', 
  `total_multas` int COMMENT '', 
  `genero` string COMMENT '', 
  `endereco` string COMMENT '', 
  `cidade` string COMMENT '', 
  `ultima_multa` date COMMENT '', 
  `ultima_multa_endere�o` string COMMENT '')
PARTITIONED BY ( 
  `estado` string COMMENT '')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat'
LOCATION
  's3://722687989925-trusted/'
TBLPROPERTIES (
  'classification'='parquet')
