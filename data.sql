/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES
(1, 'Agumon', '2020-02-03', 0, TRUE, 10.23),
(2, 'Gabumon', '2018-11-15', 2, TRUE, 8.0),
(3, 'Pikachu', '2021-01-07', 1, FALSE, 15.04),
(4, 'Devimon', '2017-05-12', 5, TRUE, 11.0);

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES
(5, 'Charmander', '2020-02-08', 0, false, -11),
(6, 'Plantmon', '2021-11-15', 2, true, -5.7),
(7, 'Squirtle', '1993-04-02', 3, false, -12.13),
(8, 'Angemon', '2005-06-12', 1, true, -45),
(9, 'Boarmon', '2005-06-07', 7, true, 20.4),
(10, 'Blossom', '1998-10-13', 3, true, 17),
(11, 'Ditto', '2022-05-14', 4, true, 22);
