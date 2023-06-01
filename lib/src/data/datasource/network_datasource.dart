import 'package:car_assistance_admin/src/data/backend_sevice/firebase_service.dart';

import '../models/data_affiliate_model.dart';
import '../models/data_log_model.dart';
import '../models/data_user_model.dart';

class NetworkDataSource {
  final FirebaseService _backendService;
  NetworkDataSource() : _backendService = FirebaseService();

  Future<List<AffiliateNetwork>> getAllAffiliate() {
    return _backendService.getAllAffiliate();
  }

  Future<void> saveAffiliate(AffiliateNetwork affiliate) {
    return _backendService.saveAffiliate(affiliate);
  }

  Future<void> deleteAffiliate(String affiliateId) {
    return _backendService.deleteAffiliate(affiliateId);
  }

  Future<List<UserNetwork>> getAllUser() {
    return _backendService.getAllUser();
  }

  Future<void> deleteUser(String userId) {
    return _backendService.deleteUser(userId);
  }

  Future<List<LogUserNetwork>> getLog(String affiliateId) {
    return _backendService.getLog(affiliateId);
  }
}
