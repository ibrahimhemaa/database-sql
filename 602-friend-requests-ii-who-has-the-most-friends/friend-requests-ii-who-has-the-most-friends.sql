WITH id1 AS (
  SELECT requester_id AS id, COUNT(*) AS cnt
  FROM RequestAccepted
  GROUP BY requester_id
),
id2 AS (
  SELECT accepter_id AS id, COUNT(*) AS cnt
  FROM RequestAccepted
  GROUP BY accepter_id
),
cnt_a AS (
  SELECT 
    ISNULL(x.id, y.id) AS id,
    ISNULL(x.cnt, 0) + ISNULL(y.cnt, 0) AS num
  FROM 
    id1 x 
  FULL OUTER JOIN 
    id2 y 
  ON 
    x.id = y.id
)
SELECT top 1 *
FROM cnt_a
ORDER BY num DESC