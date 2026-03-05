
CREATE DATABASE Banking_system_db;

USE Banking_system_db;

CREATE TABLE accounts(
        account_id INT auto_increment PRIMARY KEY,
        customer_name VARCHAR(100) NOT NULL,             
        account_type enum('savings', 'checkings'),
        balance DECIMAL(15,2) DEFAULT 0.00,
        status enum('Active', 'Frozen', 'Closed') DEFAULT 'Active'
);


CREATE TABLE transactions(
        transactions_id INT auto_increment PRIMARY KEY,
        account_id INT,
        account DECIMAL(15,2) NOT NULL,
        transaction_type enum('Deposit', 'Withdraw', 'Transfer') NOT NULL,
        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);



