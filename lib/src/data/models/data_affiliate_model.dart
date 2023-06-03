import '../../presenter/models/affiliate_model.dart';

class AffiliateNetwork {
  final String id;
  final String name;
  final String imageUrl;
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
      required this.imageUrl,
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
        imageUrl: json['image_ulr'] as String,
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
  AffiliateNetwork copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? openTime,
    String? closeTime,
    bool? isFullTimeService,
    String? phoneNumber,
    double? rating,
    double? lat,
    double? long,
    String? address,
    List<String>? services,
    String? state,
  }) =>
      AffiliateNetwork(
          id: id ?? this.id,
          name: name ?? this.name,
          imageUrl: imageUrl ?? this.imageUrl,
          openTime: openTime ?? this.openTime,
          closeTime: closeTime ?? this.closeTime,
          isFullTimeService: isFullTimeService ?? this.isFullTimeService,
          phoneNumber: phoneNumber ?? this.phoneNumber,
          rating: rating ?? this.rating,
          lat: lat ?? this.lat,
          long: long ?? this.long,
          address: address ?? this.address,
          services: services ?? this.services,
          state: state ?? this.state);

  Map<String, dynamic> toMapJson() =>
      <String, dynamic>{
        'id': id,
        'name': name,
        'image_url' : imageUrl,
        'open_time': openTime,
        'close_time': closeTime,
        'is_full_time_service': isFullTimeService,
        'phone_number': phoneNumber,
        'rating': rating,
        'lat': lat,
        'long': long,
        'address': address,
        'services': services,
        'state': state,
      };

  static AffiliateNetwork fromDomain(Affiliate affiliate) => AffiliateNetwork(
      id: affiliate.id,
      name: affiliate.name,
      imageUrl: affiliate.imageUrl,
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
      imageUrl: imageUrl,
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
