-- SELECT user_id
-- FROM comments
-- GROUP BY user_id

-- SELECT MAX( id )
-- FROM comments

-- SELECT MIN( id )
-- FROM comments

-- SELECT AVG( id )
-- FROM comments

-- SELECT COUNT( id )
-- FROM comments

-- SELECT SUM( id )
-- FROM comments

-- SELECT user_id, MAX(id)
-- FROM comments
-- GROUP BY user_id

-- SELECT user_id, COUNT(id)
-- FROM comments
-- GROUP BY user_id

-- when ever counting, NULL values are not counted
-- SELECT COUNT( user_id )
-- FROM photos

-- to include NULL values use *
-- SELECT COUNT(*)
-- FROM photos

-- SELECT user_id, COUNT(*)
-- FROM comments
-- GROUP BY user_id

-- get a count of comments per photo
-- SELECT photo_id, count(*)
-- FROM comments
-- GROUP BY photo_id

-- get a count of comments per photo where photo_id < 3 and photo has more than 2 comments
-- SELECT photo_id, COUNT(*)
-- FROM comments
-- -- filter all rows
-- WHERE photo_id < 3
-- GROUP BY photo_id
-- -- used for filtering rows in each group
-- HAVING COUNT(*) > 2


-- find users where the user has commented on the first 2 photos and the users added more than 2 comments on these4 photos
SELECT user_id, COUNT(*)
FROM comments
-- filter all rows
WHERE photo_id < 50
GROUP BY user_id
-- used for filtering rows in each group
HAVING COUNT(*) > 20