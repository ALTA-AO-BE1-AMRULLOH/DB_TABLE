CREATE TABLE user (
    user_id int auto_increment PRIMARY KEY,
    name char(255),
    password char (50)
);
CREATE TABLE film (
    film_id int auto_increment PRIMARY KEY,
    film_name char (50),
    publish_date datetime
);
CREATE TABLE category (
    category_id int auto_increment PRIMARY KEY,
    category_name char (50)
);
CREATE TABLE artist (
    artist_id int auto_increment PRIMARY KEY,
    artist_name char (50),
    artist_dob datetime
);
CREATE TABLE category_film (
    category_id int,
    film_id int,
    FOREIGN KEY (category_id) REFERENCES (category_id)
    FOREIGN KEY (film_id) REFERENCES (film_id)
    PRIMARY KEY (category_id, film_id)
);
CREATE TABLE cast (
    artist_id int,
    film_id int,
    FOREIGN KEY (artist_id) REFERENCES (artist_id)
    FOREIGN KEY (film_id) REFERENCES (film_id)
    PRIMARY KEY (artist_id, film_id)
);
CREATE TABLE daftar_nonton (
    customer_id int,
    film_id int,
    tanggal_nonton datetime,
    FOREIGN KEY (customer_id) REFERENCES (customer_id)
    FOREIGN KEY (film_id) REFERENCES (film_id)
    PRIMARY KEY (customer_id, film_id)
);