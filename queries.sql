-- Join the two tables so that every column and record appears, regardless of if there is not an owner_id. Your output should look like this:
SELECT * FROM owners
FULL OUTER JOIN vehicles
ON owners.id = vehicles.owner_id;

-- Count the number of cars for each owner. Display the owners first_name, last_name and count of vehicles. 
SELECT first_name, last_name, COUNT(owner_id) FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
ORDER BY first_name;

-- Count the number of cars for each owner and display the average price for each of the cars as integers. Display the owners first_name, last_name, average price and count of vehicles
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(owner_id) FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY (first_name, last_name) HAVING COUNT (owner_id) > 1 AND ROUND (AVG(price)) > 1000
ORDER BY first_name DESC;
