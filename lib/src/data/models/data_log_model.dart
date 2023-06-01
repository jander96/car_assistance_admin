import 'package:car_assistance_admin/src/presenter/models/log_model.dart';

class LogUserNetwork {
  final String affiliateId;
  final String userId;
  final String dateTime;

  LogUserNetwork(
      {required this.affiliateId,
      required this.userId,
      required this.dateTime});

  factory LogUserNetwork.fromJson(Map<String, dynamic> mapJson) =>
      LogUserNetwork(
          affiliateId: mapJson['affiliate_id'],
          userId: mapJson['user_id'],
          dateTime: mapJson['date_time']);
}

extension LogUserNetworkExtension on LogUserNetwork {
  LogUser toDomain() =>
      LogUser(affiliateId: affiliateId, userId: userId, dateTime: dateTime);
}
