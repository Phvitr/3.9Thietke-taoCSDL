create database QuanlyBanHang;

use QuanLyBanHang;

CREATE TABLE Customer (
    cID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cName VARCHAR(50),
    cAge INT(3)
);
CREATE TABLE Orders (
    oID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cID INT NOT NULL,
    oDate DATETIME,
    oTotalPrice INT,
    FOREIGN KEY (cID)
        REFERENCES Customer (cID)
);
CREATE TABLE Product (
    pID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pName VARCHAR(50),
    pPrice INT
);
CREATE TABLE OrderDetail (
    oID INT NOT NULL,
    pID INT NOT NULL,
    odQTY INT,
    FOREIGN KEY (oID)
        REFERENCES Orders (oID),
    FOREIGN KEY (pID)
        REFERENCES Product (pID)
);
