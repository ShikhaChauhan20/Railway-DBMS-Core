USE railway_database;

CREATE TABLE Stations (
    station_id INT PRIMARY KEY,
    station_name VARCHAR(100) NOT NULL
);

CREATE TABLE Trains (
    train_no INT PRIMARY KEY,
    train_name VARCHAR(100) NOT NULL,
    source_stn_id INT,
    dest_stn_id INT,
    FOREIGN KEY (source_stn_id) REFERENCES Stations(station_id),
    FOREIGN KEY (dest_stn_id) REFERENCES Stations(station_id)
);

CREATE TABLE Seats (
    seat_id INT PRIMARY KEY AUTO_INCREMENT,
    train_no INT,
    seat_number INT,
    status ENUM('Available', 'Booked') DEFAULT 'Available',
    FOREIGN KEY (train_no) REFERENCES Trains(train_no)
);