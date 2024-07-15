-- Query 1: To Retrieve the top ten DAF fees for a given DAF account size (e.g., $25,000)
SELECT d.name, f.fee_range, f.fee_type, f.description
FROM DAF d
JOIN FeeRange f ON d.id = f.daf_id
WHERE JSON_EXTRACT(f.fee_range, '$.min') <= 25000
AND JSON_EXTRACT(f.fee_range, '$.max') >= 25000
ORDER BY f.fee_type DESC
LIMIT 10;

-- Query 2: To List all DAF fees ranked from highest to lowest
SELECT d.name, f.fee_range, f.fee_type, f.description
FROM DAF d
JOIN FeeRange f ON d.id = f.daf_id
ORDER BY CASE 
            WHEN f.fee_type = 'percentage' THEN 1
            WHEN f.fee_type = 'fixed' THEN 2
         END DESC, f.fee_range DESC;