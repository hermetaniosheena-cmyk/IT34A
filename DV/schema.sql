-- Table #3 users table
CREATE TABLE IF NOT EXISTS users(

    -- Primary key for users table
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    -- Initial user details
    user_email VARCHAR(255) UNIQUE NOT NULL,
    user_username VARCHAR(255) UNIQUE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_role ENUM('admin', 'manager','user') DEFAULT 'user',

    -- User created Timestamp default not null
    user_created_at TIMESTAMP 
        DEFAULT CURRENT_TIMESTAMP,
    
    -- User updated Timestamp
    user_updated_at TIMESTAMP 
        DEFAULT CURRENT_TIMESTAMP 
        ON UPDATE CURRENT_TIMESTAMP
    
);

  -- Insert statements for users table


  INSERT INTO users
(
    user_email,
    user_username,
    user_password,
    user_role
)
VALUES
(
    'admin@example.com',
    'admin',
    '1234',
    'admin'
),
(
    'manager@example.com',
    'manager',
    '1234',
    'manager'
),
(
    'user@example.com',
    'user',
    '1234',
    'user'
);