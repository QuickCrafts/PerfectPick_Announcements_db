CREATE DATABASE IF NOT EXISTS DB_Ads;
USE DB_Ads;

CREATE TABLE Companies (
  id_company INT AUTO_INCREMENT PRIMARY KEY,
  name_company VARCHAR(255) NOT NULL,
  email_company VARCHAR(255) NOT NULL
);

CREATE TABLE Ads (
  id_ad INT AUTO_INCREMENT PRIMARY KEY,
  name_ad VARCHAR(255) NOT NULL,
  ad_url VARCHAR(255) NOT NULL,
  start_date_ad VARCHAR(255) NOT NULL,
  end_date_ad VARCHAR(255) NOT NULL,
  create_date_ad VARCHAR(255) NOT NULL,
  description_ad VARCHAR(255) DEFAULT NULL,
  published_ad BOOLEAN NOT NULL,
  id_company INT NOT NULL,
  FOREIGN KEY (id_company) REFERENCES Companies(id_company)
);



CREATE TABLE PAYMENTS (
  id_payment INT AUTO_INCREMENT PRIMARY KEY,
  id_ad INT NOT NULL,
  amount_payment INT NOT NULL,
  created_time VARCHAR(255) NOT NULL,
  status_payment ENUM('CREATED','PAID','CANCELED') NOT NULL,
  FOREIGN KEY (id_ad) REFERENCES Ads(id_ad)
);

CREATE TABLE MercadoPago_Data (
  -- id_reference VARCHAR(255) PRIMARY KEY,
  id_reference INT AUTO_INCREMENT PRIMARY KEY,
  id_payment INT NOT NULL,
  -- status_payment ENUM('CREATED','PAID','CANCELED') NOT NULL,
  status_payment VARCHAR(255) NOT NULL,
  FOREIGN KEY (id_payment) REFERENCES PAYMENTS(id_payment)
);

CREATE TABLE Users_ads (
  id_ad INT NOT NULL,
  id_user INT NOT NULL,
  primary key(id_ad , id_user),
  FOREIGN KEY (id_ad) REFERENCES Ads(id_ad)
);