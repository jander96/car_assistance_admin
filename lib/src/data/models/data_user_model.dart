

import '../../presenter/models/user_model.dart';

class UserNetwork {
  final String? id;
  final String? uid;
  final String? displayName;
  final String? email;
  final bool? emailVerified;
  final bool? isAnonymous;
  final String? phoneNumber;
  final String? photoURL;
  final String? refreshToken;

  UserNetwork(
      {this.id,
      this.uid,
      this.displayName,
      this.email,
      this.emailVerified,
      this.isAnonymous,
      this.phoneNumber,
      this.photoURL,
      this.refreshToken});
  factory UserNetwork.fromJsonMap(String id, Map<String, dynamic> jsonMap) => UserNetwork(
      id: id,
      uid: jsonMap["uid"],
      displayName: jsonMap["display_name"],
      email: jsonMap["email"],
      emailVerified: jsonMap["email_verified"],
      isAnonymous: jsonMap["is_anonymous"],
      phoneNumber: jsonMap["phone_number"],
      photoURL: jsonMap["photo_url"],
      refreshToken: jsonMap["refresh_token"]);

  Map<String, dynamic> toMapJson() {
    return {
      "uid": uid,
      "display_name": displayName,
      "email": email,
      "email_verified": emailVerified,
      "is_anonymous": isAnonymous,
      "phone_number": phoneNumber,
      "photo_url": photoURL,
      "refresh_token": refreshToken
    };
  }

  static UserNetwork fromDomain(AppUser user) => UserNetwork(
      id: user.id,
      uid: user.uid,
      displayName: user.username,
      email: user.email,
      emailVerified: user.emailVerified,
      isAnonymous: user.isAnonymous,
      phoneNumber: user.phoneNumber,
      photoURL: user.photoURL,
      refreshToken: user.refreshToken);
}

extension UserNetworkExtension on UserNetwork {
  AppUser toDomain() {
    return AppUser(
        id: id ?? "",
        uid: uid ?? "",
        username: displayName ?? "User",
        email: email ?? "",
        phoneNumber: phoneNumber ?? "",
        emailVerified: emailVerified ?? false,
        isAnonymous: isAnonymous ?? false,
        photoURL: photoURL ??
            "https://th.bing.com/th/id/R.70539295fbd82cf866d02ccacaee6cba?rik=K%2f40F0IUYGEEHA&pid=ImgRaw&r=0",
        refreshToken: refreshToken ?? "");
  }
}