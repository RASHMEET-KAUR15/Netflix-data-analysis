# Netflix-data-analysis

OBJECTIVE:-The objective of this project is to analyze the ratings by IMDB users amidst a vast genre of movies,premiered in different languages with different duration/runtime objective.

*To publish the findings based on the analysis carries out on the real dataset using SQL(Structured Query Language)

A)The first dataset consists of all the Netflix releases during the period of 2014-2021 along with their corresponding Genre ID,IMDB ratings,premiere dates and runtime.

B)The second dataset comprises of only two attributes: Genre ID and Genre names.

C)IMDB ratings are the votes given to every released movie by its registered users,Individual votes are then aggregated and summarised as a single score available on
the movie's main page.

D)First,we start by retrieving the data from both the tables using 'SELECT' statement so that we can know about the insights we can get out of the database.

E)Then, we count the number of rows contained in both the tables using 'COUNT' function.

F)Then,we use 'ALTER' command to add new column named 'new_date' that stores the date in format which sql will understand.

G)we use 'UPDATE' command to set the date using 'str_to_date' function.

H)Then,we use 'MAX','MIN' and 'AVG' function to determine IMDB range.

I)'DENSE_RANK()' function and 'ORDER BY CLAUSE' is used to determine top ranked movie.

Key takeways:-

1)There are 584 rows in 'NETFLIX' table and 19 rows in 'GENRE_DETAILS' table.

2)There are total 38 distinct languages used.

3)There are two languages 'KHMER' and'TAMIL' whose avg_score is highest(7.2)

4)Appoximately 159 movies are documentary and 19 movies are horror.

5)Title 'Historical' has ranked 1 and has imdbscore of 6.9.

6)Around 72 more movies are released in the year 2021 as compared to 2020.

7)'ENGLISH' is the most popular language among all other language.
