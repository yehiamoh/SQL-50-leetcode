/*
 
 Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, then divide that number by the total number of players.
 
 The result format is in the following example.
 
 */
-- Write your PostgreSQL query statement below





SELECT ROUND(
   --calculate the percentage of user logged in in the next day
    1.0 * COUNT(player_id) / 
    (SELECT COUNT(DISTINCT player_id) FROM Activity), 2
) AS fraction
FROM Activity
-- here we checked if we have a record that have event date equals to the 
--first login + 1 (next day) which is the min of event dates then this user exists
WHERE (player_id, event_date) IN (
    SELECT player_id, MIN(event_date) + 1
    FROM Activity
    GROUP BY player_id
);
