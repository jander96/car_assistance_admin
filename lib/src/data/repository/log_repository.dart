import 'package:car_assistance_admin/src/data/models/data_log_model.dart';

import '../../presenter/models/log_model.dart';
import '../datasource/network_datasource.dart';

class LogRepository {
  final NetworkDataSource _dataSource;
  LogRepository() : _dataSource = NetworkDataSource();

  Future<List<LogUser>> getLog(String affiliateId) {
    return _dataSource
        .getLog(affiliateId)
        .then((list) => list.map((log) => log.toDomain()).toList());
  }
}
