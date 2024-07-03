DROP TABLE IF EXISTS Todo;
CREATE TABLE Todo (
                      ID INT AUTO_INCREMENT PRIMARY KEY,
                      USERNAME VARCHAR(50),
                      DESCRIPTION VARCHAR(255),
                      TARGET_DATE DATE,
                      DONE BOOLEAN
);
