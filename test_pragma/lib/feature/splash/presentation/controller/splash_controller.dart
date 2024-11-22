import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_pragma/app/routes/routes_enum.dart';

class SplashController extends ChangeNotifier {
  void initialize(BuildContext context) async {
    Future.delayed(const Duration(milliseconds: 4000), () async {
      log('Debe ir a la pantalla de landing');
      context.replaceNamed(Routes.landing.name);
    });
  }
}
