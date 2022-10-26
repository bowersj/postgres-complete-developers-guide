CREATE TABLE photos (
    id SERIAL PRIMARY KEY,
    url VARCHAR(200),

    -- deletes all rows in the where clause as well as all other rows that reference the deleted rows.
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE 

    -- deletes all rows in the where clause and sets all other rows that references to NULL
    -- user_id INTEGER REFERENCES users(id) ON DELETE SET NULL

    -- deletes all rows in the where clause and sets all other rows that references to DEFAULT
    -- user_id INTEGER REFERENCES users(id) ON DELETE SET DEFAULT
);