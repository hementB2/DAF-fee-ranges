INSERT INTO DAF (name, description) VALUES
('DAF A', 'Description for DAF A'),
('DAF B', 'Description for DAF B');

INSERT INTO FeeRange (daf_id, fee_range, fee_type, effective_date, description) VALUES
(1, '{"min": 0, "max": 25000}', 'percentage', '2024-01-01', 'Fee range for DAF A from $0 to $25,000'),
(1, '{"min": 25001, "max": 100000}', 'fixed', '2024-01-01', 'Fee range for DAF A from $25,001 to $100,000'),
(2, '{"min": 0, "max": 50000}', 'percentage', '2024-01-01', 'Fee range for DAF B from $0 to $50,000');