part of common;

enum UserRole {
  @JsonValue('superAdmin')
  superAdmin,
  @JsonValue('admin')
  admin,
  @JsonValue('manager')
  manager,
  @JsonValue('sales')
  sales,
  @JsonValue('merchandiser')
  merchandiser,
  @JsonValue('supervisor')
  supervisor,
  @JsonValue('operator')
  operator,
  @JsonValue('user')
  user,
}
