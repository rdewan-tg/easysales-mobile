part of common;

enum UserRole {
  @JsonValue('superAdmin')
  superAdmin,
  @JsonValue('admin')
  admin,
  @JsonValue('manager')
  manager,
  @JsonValue('supervisor')
  supervisor,
  @JsonValue('operator')
  operator,
  @JsonValue('user')
  user
}