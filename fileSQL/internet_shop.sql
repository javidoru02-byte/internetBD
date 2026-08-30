-- CREATE TABLE product_type(
--     id SERIAL PRIMARY KEY,
--     type_name VARCHAR(100) NOT NULL
-- );

--  CREATE TABLE product_categories(
--     id SERIAL PRIMARY KEY,
--     categories_name VARCHAR(100) NOT NULL
--  );

--  CREATE TABLE product_brand(
--     id SERIAL PRIMARY KEY,
--     brand_name VARCHAR(100) NOT NULL
--  );

--   CREATE TABLE product_model(
--     id SERIAL PRIMARY KEY,
--     model_name VARCHAR(100) NOT NULL
--  );

-- CREATE TABLE client(
--      id SERIAL PRIMARY KEY,
--      name VARCHAR(100) NOT NULL,
--      email VARCHAR(100) NOT NULL
-- );


-- CREATE TABLE product(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     description TEXT,
--     price DECIMAL(10, 2),
--     typeId INTEGER REFERENCES product_type(id) NOT NULL,
--     categoryId INTEGER REFERENCES product_categories(id) NOT NULL,
--     brandId INTEGER REFERENCES product_brand(id) NOT NULL,
--     modelId INTEGER REFERENCES product_model(id) NOT NULL
-- );

-- CREATE TABLE storage(
--     id SERIAL PRIMARY KEY,
--     city VARCHAR(100) NOT NULL,
--     storage_name VARCHAR(100) NOT NULL
-- );

-- CREATE TABLE storage_product(
--     id SERIAL PRIMARY KEY,
--     productId INTEGER REFERENCES product(id) NOT NULL,
--     storageId INTEGER REFERENCES storage(id) NOT NULL,
--     quantity INTEGER NOT NULL    
-- );

-- CREATE TABLE orders(
--     id SERIAL PRIMARY KEY,
--     productId INTEGER REFERENCES product(id) NOT NULL,
--     clientId INTEGER REFERENCES client(id) NOT NULL

-- );