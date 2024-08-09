# Write your MySQL query statement below
#
WITH FirstLogin AS (
    SELECT
        player_id,
        MIN(event_date) AS first_login_date
    FROM
        Activity
    GROUP BY
        player_id
),
ConsecutiveLogins AS (
    SELECT
        DISTINCT a.player_id
    FROM
        Activity a
    JOIN
        FirstLogin fl
    ON
        a.player_id = fl.player_id
    WHERE
        DATEDIFF(a.event_date, fl.first_login_date) = 1
)
SELECT
    ROUND(COUNT(cl.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM
    ConsecutiveLogins cl;
