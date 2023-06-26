import 'package:car_assistance_admin/src/presenter/screens/edition_page/edition_page.dart';
import 'package:car_assistance_admin/src/presenter/screens/logger_page/log_page.dart';
import 'package:car_assistance_admin/src/presenter/screens/nav_host.dart';
import 'package:car_assistance_admin/src/presenter/screens/user_details_page/user_details.dart';
import 'package:flutter/material.dart';

class RouteName {
  RouteName._();
  static const initialRoute = main;
  static const main = 'main';
  static const affiliateEditor = 'affiliate_editor';
  static const userDetails = 'user_details';
  static const log = 'log';
}

get appRoutes => {
      RouteName.main: (context) => const NavHost(),
      RouteName.affiliateEditor: (context) {
        final affiliate = _getArg<String>(context);
        return EditionPage(affiliate: affiliate,);
      },
      RouteName.userDetails: (context) => const UserDetails(),
      RouteName.log: (context) => const LogPage()
    };

T? _getArg<T>(BuildContext context) {
  return ModalRoute.of(context)?.settings.arguments as T?;
}
