/*Retrieving the database from both the tables*/
select* from db1.netflix;
select* from db2.genre_details;

/*Checking for number of rows in both the tables*/
select count(*) from db1.netflix;    /*there are 584 rows in netflix table*/
select count(*) from db2.genre_details;  /*there are 19 rows in genre_details table*/

/* Setting the date in a format that SQL understands*/
Alter table db1.netflix
Add column New_date date;
/*This statement will add new column to the table*/

update db1.netflix
set new_date=str_to_date(left( premiere_date,10),"%d-%m-%Y");

/*count of distinct languages*/
select count(distinct language)
from db1.netflix;
/*There are total 38 distinct languages*/

/*comparison of most popular language used*/
select language,count(language) as no_of_languages
from db1.netflix
group by language
order by no_of_languages desc;
/* english is the most popular language among other languages*/

/* IMDB Score range*/
select max(imdbscore) as max_score,min(imdbscore) as min_score,round(avg(imdbscore),2) as avg_score
from db1.netflix;

select language,count(language) as preferred_language,round(avg(runtime),2) as avg_time,round(avg(IMDBScore),2) as avg_score
from db1.netflix
group by language
having count(language)>=1
order by avg_score desc,avg_time desc;
/*There are two languages khmer and tamil whose avg_score is highest(7.2)*/

/*Comparison of popular Genres*/
select n.genre_id,g.genre,count(genre) as popular_genres
from netflix n,genre_details g
where n.genreID=g.genreID
group by genre
having count(genre)>=1
order by popular_genres desc;
/*Approximately 159 movies are documentary and 19 are horror movies*/

select g.genre,n.imdbscore
from netflix n,genre_details g
where n.genreID=g.genreID
group by genre
order by imdbscore desc;
/* Historical  movies has a higher imdb score of 6.9*/

select* from
(
select title,genreid,imdbscore,
dense_rank()over(order by imdbscore desc) as rnk
from db1.netflix) as derived_table
where rnk=1;
/*Title 'A life on our planet' ranked 1 and has imdbscore of 9*/

/* comparison of films release year*/
select year(new_date),count(year(new_date)) as no_of_movies
from db1.netflix
group by year(new_date)
having count(year(new_date))>=1
order by year(new_date) desc;
/* Around 72 more movies are released in the year 2021 as compared to 2020*/













