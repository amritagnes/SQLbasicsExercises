SELECT * FROM Movies;

SELECT mov_name,mov_year FROM Movies;--Query to find the name and year of the movies--

SELECT mov_year FROM Movies WHERE mov_name="American Beauty";--Query to find the year when American Beauty was released--

SELECT mov_name FROM Movies WHERE mov_year=1999;--Query to find the movie which was released in the year 1999--

SELECT mov_name FROM Movies WHERE mov_year<1998;--Query to find movies released before 1998--

SELECT mov_name,rev_name FROM Movies;--Query to return name of all reviewers and name of all movies --

SELECT mov_name as COLUMN From Movies UNION SELECT rev_name as COLUMN From Movies;--two columns as a list--

SELECT rev_name From Movies WHERE rev_stars>=7;--Query to find all reviewers who have rated 7 or more to their rating--

SELECT mov_name FROM Movies WHERE rev_stars ISNULL;--Query to find all movies that have no ratings--

SELECT mov_name FROM Movies WHERE mov_id in (905,907,917);--Query to find the titles of the movies with ID 905,907,917--

SELECT mov_name,mov_year FROM Movies WHERE mov_name="Boogie Nights";--Query to find the list of all those movies with year which include the words Boogie Nights--