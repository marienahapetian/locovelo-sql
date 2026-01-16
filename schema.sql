CREATE DATABASE locovelo;

CREATE TABLE clients (id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
surname VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
subscribed DATE NOT NULL
);

CREATE TABLE bikes (id INT AUTO_INCREMENT PRIMARY KEY,
brand VARCHAR(255) NOT NULL,
type ENUM('electrical','city'),
size VARCHAR(255),
hourly_rate DECIMAL(5,2) NOT NULL,
state ENUM('new','good','used') DEFAULT ('new'),
available ENUM('yes','no') DEFAULT('yes')
);

CREATE TABLE bookings(id INT AUTO_INCREMENT PRIMARY KEY,
client_id INT,
bike_id INT,
start DATETIME NOT NULL,
end DATETIME NOT NULL,
to_pay DECIMAL(5,2) NOT NULL,
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (bike_id) REFERENCES bikes(id)
);