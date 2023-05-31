import 'package:car_assistance_admin/src/data/models/data_user_model.dart';

import '../../presenter/models/user_model.dart';
import '../datasource/network_datasource.dart';

class UserRepository {
  final NetworkDataSource _dataSource;
  UserRepository() : _dataSource = NetworkDataSource();
  Future<List<AppUser>> getAllUser() {
    return _dataSource
        .getAllUser()
        .then((list) => list.map((user) => user.toDomain()).toList());
  }

  Future<void> deleteUser(String userId) {
    return _dataSource.deleteUser(userId);
  }
}
