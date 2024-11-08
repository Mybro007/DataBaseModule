CREATE TABLE IF NOT EXISTS Employee (
    id SERIAL PRIMARY KEY,        
    name VARCHAR(20) NOT NULL,    
    department VARCHAR(20) NOT NULL, 
    manager_id INT REFERENCES Employee(id) ON DELETE SET NULL 
);