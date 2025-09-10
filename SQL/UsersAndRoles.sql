CREATE TABLE usersRoles (
  userId INTEGER NOT NULL,
  roleId INTEGER NOT NULL,
  FOREIGN KEY(userId) REFERENCES users(id),
  FOREIGN KEY(roleId) REFERENCES roles(id),
  PRIMARY KEY (userId, roleId)
)