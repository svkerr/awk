DROP TABLE IF EXISTS aerolink_tab;
CREATE EXTERNAL TABLE aerolink_tab
(
   eventid STRING,
   auditid STRING,
   auditstr STRING,
   auditdate STRING,
   dataid STRING,
   subtype STRING,
   userid STRING,
   performerid STRING 
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LOCATION '/user/flume/aerolink/';
