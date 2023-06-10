/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-12-31';
SELECT name FROM animals WHERE neutered = TRUE AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;
SELECT * FROM animals WHERE neutered = TRUE;
SELECT * FROM animals WHERE name <> 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

BEGIN WORK;
UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals;
SELECT * FROM animals;
ROLLBACK;
SELECT * FROM animals;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT deletion;
UPDATE animals SET weight_kg = weight_kg * -1;
SELECT * FROM animals;
ROLLBACK TO SAVEPOINT deletion;
UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;
SELECT * FROM animals;
COMMIT;
SELECT * FROM animals;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT neutered, SUM(escape_attempts) AS total_escape_attempts FROM animals GROUP BY neutered ORDER BY total_escape_attempts DESC;
SELECT species, MIN(weight_kg), MAX(weight_kg) FROM animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
SELECT animals.name FROM animals JOIN species ON animals.species_id = species.id WHERE species.name = 'Pokemon';
SELECT owners.full_name, animals.name FROM owners LEFT JOIN animals ON owners.id = animals.owner_id;
SELECT species.name, COUNT(animals.id) FROM species LEFT JOIN animals ON species.id = animals.species_id GROUP BY species.name;
SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id JOIN species ON animals.species_id = species.id WHERE owners.full_name = 'Jennifer Orwell' AND species.name = 'Digimon';
SELECT animals.name FROM animals JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
SELECT owners.full_name, subquery.animal_count FROM owners JOIN (SELECT owner_id, COUNT(*) as animal_count FROM animals GROUP BY owner_id ORDER BY animal_count DESC LIMIT 1) subquery ON owners.id = subquery.owner_id;


-- Who was the last animal seen by William Tatcher?
SELECT animals.name
FROM visits 
JOIN animals ON visits.animal_id = animals.id
WHERE visits.vet_id = (SELECT id FROM vets WHERE name = 'William Tatcher')
ORDER BY visits.visit_date DESC
LIMIT 1;

-- How many different animals did Stephanie Mendez see?
SELECT COUNT(DISTINCT animals.id)
FROM visits 
JOIN animals ON visits.animal_id = animals.id
WHERE visits.vet_id = (SELECT id FROM vets WHERE name = 'Stephanie Mendez');

-- List all vets and their specialties, including vets with no specialties.
SELECT vets.name, species.name
FROM vets 
LEFT JOIN specializations ON vets.id = specializations.vet_id
LEFT JOIN species ON specializations.species_id = species.id;

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT animals.name
FROM visits 
JOIN animals ON visits.animal_id = animals.id
WHERE visits.vet_id = (SELECT id FROM vets WHERE name = 'Stephanie Mendez')
AND visits.visit_date BETWEEN '2020-04-01' AND '2020-08-30';

-- What animal has the most visits to vets?
SELECT animals.name
FROM visits 
JOIN animals ON visits.animal_id = animals.id
GROUP BY animals.name
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Who was Maisy Smith's first visit?
SELECT animals.name
FROM visits 
JOIN animals ON visits.animal_id = animals.id
WHERE visits.vet_id = (SELECT id FROM vets WHERE name = 'Maisy Smith')
ORDER BY visits.visit_date ASC
LIMIT 1;

-- Details for the most recent visit: animal information, vet information, and date of visit.
SELECT animals.name AS animal_name, vets.name AS vet_name, visits.visit_date
FROM visits 
JOIN animals ON visits.animal_id = animals.id
JOIN vets ON visits.vet_id = vets.id
ORDER BY visits.visit_date DESC
LIMIT 1;

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT(*)
FROM visits 
JOIN animals ON visits.animal_id = animals.id
WHERE NOT EXISTS (
  SELECT 1
  FROM specializations 
  WHERE specializations.vet_id = visits.vet_id AND specializations.species_id = animals.species_id
);

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.
SELECT species.name
FROM visits 
JOIN animals ON visits.animal_id = animals.id
JOIN species ON animals.species_id = species.id
WHERE visits.vet_id = (SELECT id FROM vets WHERE name = 'Maisy Smith')
GROUP BY species.name
ORDER BY COUNT(*) DESC
LIMIT 1;
