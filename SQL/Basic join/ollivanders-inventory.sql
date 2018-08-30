-- MySQL
-- Harry Potter and his friends are at Ollivander's with Ron, finally replacing
-- Charlie's old broken wand.

-- Hermione decides the best way to choose is by determining the minimum number
-- of gold galleons needed to buy each non-evil wand of high power and
-- age. Write a query to print the id, age, coins_needed, and power of the wands
-- that Ron's interested in, sorted in order of descending power. If more than
-- one wand has same power, sort the result in order of descending age.


SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM wands AS w
JOIN wands_property AS wp
    ON w.code = wp.code
WHERE wp.is_evil = 0
AND w.coins_needed = (SELECT
    MIN(coins_needed)
FROM wands
WHERE code = w.code
AND power = w.power)
GROUP BY w.id,
         wp.age,
         w.coins_needed,
         w.power
ORDER BY w.power DESC, wp.age DESC;

