CREATE TABLE DAF(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE FeesRange (
    id INT AUTO_INCREAMENT PRIMARY KEY,
    daf_id INT,
    fee_range JSON NOT NULL,
    fee_type ENUM('percentage', 'fixed') NOT NULL,
    effective_date DATE NOT NULL,
    description TEXT,
    FOREIGN KEY (daf_id) REFERENCES DAF(id)
);