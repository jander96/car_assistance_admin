import '../../presenter/models/affiliate_model.dart';

class AffiliateNetwork {
  final String id;
  final String name;
  final String? openTime;
  final String? closeTime;
  final bool isFullTimeService;
  final String phoneNumber;
  final double rating;
  final double lat;
  final double long;
  final String address;
  final List<String> services;
  final String state;

  AffiliateNetwork(
      {required this.id,
      required this.name,
      required this.openTime,
      required this.closeTime,
      required this.isFullTimeService,
      required this.phoneNumber,
      required this.rating,
      required this.lat,
      required this.long,
      required this.address,
      required this.services,
      required this.state});

  factory AffiliateNetwork.fromJson(String id, Map<String, dynamic> json) =>
      AffiliateNetwork(
        id: id,
        name: json['name'] as String,
        openTime: json['open_time'] as String?,
        closeTime: json['close_time'] as String?,
        isFullTimeService: json['is_full_time_service'] as bool,
        phoneNumber: json['phone_number'] as String,
        rating: (json['rating'] as num).toDouble(),
        lat: (json['lat'] as num).toDouble(),
        long: (json['long'] as num).toDouble(),
        address: json['address'] as String,
        services: (json['services'] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        state: json['state'] as String,
      );

  Map<String, dynamic> affiliateNetworkToJson(AffiliateNetwork affiliate) =>
      <String, dynamic>{
        'id': affiliate.id,
        'name': affiliate.name,
        'open_time': affiliate.openTime,
        'close_time': affiliate.closeTime,
        'is_full_time_service': affiliate.isFullTimeService,
        'phone_number': affiliate.phoneNumber,
        'rating': affiliate.rating,
        'lat': affiliate.lat,
        'long': affiliate.long,
        'address': affiliate.address,
        'services': affiliate.services,
        'state': affiliate.state,
      };

  static AffiliateNetwork fromDomain(Affiliate affiliate) => AffiliateNetwork(
      id: affiliate.id,
      name: affiliate.name,
      openTime: affiliate.openTime,
      closeTime: affiliate.closeTime,
      isFullTimeService: affiliate.isFullTimeService,
      phoneNumber: affiliate.phoneNumber,
      rating: affiliate.rating,
      lat: affiliate.lat,
      long: affiliate.long,
      address: affiliate.address,
      services: affiliate.services,
      state: affiliate.state);
}

extension AffilateExtensions on AffiliateNetwork {
  Affiliate toDomain() => Affiliate(
      id: id,
      name: name,
      openTime: openTime,
      closeTime: closeTime,
      isFullTimeService: isFullTimeService,
      phoneNumber: phoneNumber,
      rating: rating,
      lat: lat,
      long: long,
      address: address,
      services: services,
      state: state);
}
