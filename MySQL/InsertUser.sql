DELIMITER //
CREATE PROCEDURE insertUser(
    IN type VARCHAR(50),
    IN email VARCHAR(50)
)
BEGIN
    INSERT INTO users(email,userTypeId) VALUES (email, (SELECT id FROM userTypes WHERE userTypes.type = type));
END//
DELIMITER ;

-- don't need to add id to the insert since it is auto incremented 