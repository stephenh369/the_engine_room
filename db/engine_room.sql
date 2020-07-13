DROP TABLE IF EXISTS cars;
DROP TABLE IF EXISTS manufacturers;

CREATE TABLE manufacturers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    manufacturer INT REFERENCES manufacturers(id) ON DELETE CASCADE,
    model VARCHAR(255),
    condition VARCHAR(255),
    type VARCHAR(255),
    year VARCHAR(255),
    engine VARCHAR(255),
    transmission VARCHAR(255),
    fuel_type VARCHAR(255),
    description VARCHAR(255),
    stock INT,
    buy_price INT,
    sell_price INT
);