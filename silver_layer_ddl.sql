-- Tabelas Delta para o DMH

CREATE CATALOG IF NOT EXISTS iguacu_lakehouse;
CREATE DATABASE IF NOT EXISTS iguacu_lakehouse.01_bronze;

-- Criando a tabela delta
CREATE TABLE IF NOT EXISTS iguacu_lakehouse.01_bronze.dmh_asuncion (
  cota FLOAT,
  data_reading DATE,
  month INTEGER,
  year INTEGER,
  ingestion_date DATE
)
USING DELTA
PARTITIONED BY (year, month);

CREATE TABLE IF NOT EXISTS iguacu_lakehouse.01_bronze.dmh_ladario (
  cota FLOAT,
  data_reading DATE,
  month INTEGER,
  year INTEGER,
  ingestion_date DATE
)
USING DELTA
PARTITIONED BY (year, month);

-- Tabelas Delta para NASA POWER

-- Criando a tabela delta
CREATE TABLE IF NOT EXISTS iguacu_lakehouse.01_bronze.nasa_power_asuncion (
  DATE DATE,
  T2M DOUBLE,
  TS DOUBLE,
  RH2M DOUBLE,
  T2M_MIN DOUBLE,
  T2M_MAX DOUBLE,
  PRECTOT DOUBLE,
  MONTH INTEGER,
  YEAR INTEGER,
  INGESTION_DATE DATE
)
USING DELTA
PARTITIONED BY (YEAR, MONTH);

CREATE TABLE IF NOT EXISTS iguacu_lakehouse.01_bronze.nasa_power_ladario (
  DATE DATE,
  T2M DOUBLE,
  TS DOUBLE,
  RH2M DOUBLE,
  T2M_MIN DOUBLE,
  T2M_MAX DOUBLE,
  PRECTOT DOUBLE,
  MONTH INTEGER,
  YEAR INTEGER,
  INGESTION_DATE DATE
)
USING DELTA
PARTITIONED BY (YEAR, MONTH);

-- Tabela Delta para a ANA
CREATE TABLE IF NOT EXISTS iguacu_lakehouse.01_bronze.ana_ladario (
  Cota_01 DOUBLE,
  Cota_02 DOUBLE,
  Cota_03 DOUBLE,
  Cota_04 DOUBLE,
  Cota_05 DOUBLE,
  Cota_06 DOUBLE,
  Cota_07 DOUBLE,
  Cota_08 DOUBLE,
  Cota_09 DOUBLE,
  Cota_10 DOUBLE,
  Cota_11 DOUBLE,
  Cota_12 DOUBLE,
  Cota_13 DOUBLE,
  Cota_14 DOUBLE,
  Cota_15 DOUBLE,
  Cota_16 DOUBLE,
  Cota_17 DOUBLE,
  Cota_18 DOUBLE,
  Cota_19 DOUBLE,
  Cota_20 DOUBLE,
  Cota_21 DOUBLE,
  Cota_22 DOUBLE,
  Cota_23 DOUBLE,
  Cota_24 DOUBLE,
  Cota_25 DOUBLE,
  Cota_26 DOUBLE,
  Cota_27 DOUBLE,
  Cota_28 DOUBLE,
  Cota_29 DOUBLE,
  Cota_30 DOUBLE,
  Cota_31 DOUBLE,
  Data_Hora_Dado TIMESTAMP,
  Dia_Maxima INTEGER,
  Dia_Minima INTEGER,
  Maxima FLOAT,
  Minima FLOAT,
  Media FLOAT,
  month INTEGER,
  year INTEGER,
  ingestion_date DATE
)
USING DELTA
PARTITIONED BY (year, month);