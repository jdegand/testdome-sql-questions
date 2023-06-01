CREATE PROCEDURE ParseMessages AS
BEGIN

  INSERT INTO notifications (id, message)
  SELECT id, data
  FROM messages
  WHERE type = 'notification';
  
  INSERT INTO alerts (id, shortMessage)
  SELECT id, SUBSTRING(data, 1, 15)
  FROM messages
  WHERE type = 'alert';
END;

-- https://stackoverflow.com/questions/68491239/testdome-sql-test-on-procedure