import 'package:car_assistance_admin/src/data/models/data_affiliate_model.dart';

import '../../presenter/models/affiliate_model.dart';
import '../datasource/network_datasource.dart';

class AffiliateRepository {
  final NetworkDataSource _dataSource;
  AffiliateRepository() : _dataSource = NetworkDataSource();

  Future<List<Affiliate>> getAllAffiliate() {
    return _dataSource
        .getAllAffiliate()
        .then((list) => list.map((network) => network.toDomain()).toList());
  }

  Future<void> saveAffiliate(Affiliate affiliate) {
    return _dataSource.saveAffiliate(AffiliateNetwork.fromDomain(affiliate));
  }

  Future<void> deleteAffiliate(String affiliateId) {
    return _dataSource.deleteAffiliate(affiliateId);
  }
}
