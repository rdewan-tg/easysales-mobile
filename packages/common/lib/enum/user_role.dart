part of common;

enum UserRole {
  @JsonValue('SUPER_ADMIN')
  superAdmin,
  @JsonValue('ADMIN')
  admin,
  @JsonValue('MANAGER')
  manager,
  @JsonValue('SALES')
  sales,
  @JsonValue('MERCHANDISER')
  merchandiser,
  @JsonValue('SUPERVISOR')
  supervisor,
  @JsonValue('OPERATOR')
  operator,
  @JsonValue('USER')
  user,
  @JsonValue('GUEST')
  guest,
}
