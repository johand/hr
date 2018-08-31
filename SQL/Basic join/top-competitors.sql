-- MySQL
-- Julia just finished conducting a coding contest, and she needs your help
-- assembling the leaderboard! Write a query to print the respective hacker_id
-- and name of hackers who achieved full scores for more than one
-- challenge. Order your output in descending order by the total number of
-- challenges in which the hacker earned a full score. If more than one hacker
-- received full scores in same number of challenges, then sort them by
-- ascending hacker_id.


SELECT
    h.hacker_id,
    h.name
FROM hackers AS h

JOIN submissions AS s
    ON h.hacker_id = s.hacker_id

JOIN challenges AS c
    ON c.challenge_id = s.challenge_id

JOIN difficulty AS d
    ON d.difficulty_level = c.difficulty_level

WHERE d.score = s.score
GROUP BY h.hacker_id,
         h.name
HAVING COUNT(c.challenge_id) > 1
ORDER BY COUNT(c.challenge_id) DESC, h.hacker_id;
