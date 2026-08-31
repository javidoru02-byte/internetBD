CREATE TABLE product_type(
    id SERIAL PRIMARY KEY,
    type_name VARCHAR(100) NOT NULL
);

CREATE TABLE product_category(
    id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

CREATE TABLE product_brand(
    id SERIAL PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

CREATE TABLE product_model(
    id SERIAL PRIMARY KEY,
    brand_id INTEGER REFERENCES product_brand(id) NOT NULL,
    model_name VARCHAR(100) NOT NULL
);

CREATE TABLE client(
      id SERIAL PRIMARY KEY,
      client_name VARCHAR(100) NOT NULL,
      email VARCHAR(100) NOT NULL
 );

CREATE TABLE product(
    id SERIAL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description VARCHAR(100),
    price DECIMAL(10, 2) NOT NULL,
    type_id INTEGER REFERENCES product_type(id) NOT NULL,
    category_id INTEGER REFERENCES product_category(id) NOT NULL,
    model_id INTEGER REFERENCES product_model(id) NOT NULL
 );

CREATE TABLE storage(
    id SERIAL PRIMARY KEY,
    city VARCHAR(100) NOT NULL,
    storage_name VARCHAR(100) NOT NULL
 );

CREATE TABLE storage_product(
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES product(id) NOT NULL,
    storage_id INTEGER REFERENCES storage(id) NOT NULL,
    quantity INTEGER NOT NULL
);

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    client_id INTEGER REFERENCES client(id) NOT NULL,
    order_date DATE NOT NULL,
    is_paid BOOLEAN NOT NULL
);

CREATE TABLE orders_product(
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES product(id) NOT NULL,
    order_id INTEGER REFERENCES orders(id) NOT NULL,
    quantity INTEGER NOT NULL
);