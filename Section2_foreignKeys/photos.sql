CREATE TABLE photos (
	id SERIAL PRIMARY KEY,
	url VARCHAR(200),
	user_id INTEGER REFERENCES users( id )
);

-- INSERT INTO photos ( url, user_id )
-- VALUES
-- -- 	( 'http://one.jpeg', 4 )
-- 	( 'http://two.jpeg', 1 ),
-- 	( 'http://three.jpeg', 1 ),
-- 	( 'http://four.jpeg',  1 ),
-- 	( 'http://five.jpeg',  2 ),
-- 	( 'http://six.jpeg',   3 ),
-- 	( 'http://seven.jpeg', 4 );

-- select * from photos
-- where user_id = 4

-- select url, username from photos
-- join users on users.id = photos.user_id