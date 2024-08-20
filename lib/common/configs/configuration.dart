import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:our_love/di/di.dart';
import 'package:our_love/services/http/http.service.dart';
import 'package:our_love/services/storages/app_storage.dart';
import 'package:flutter/material.dart';

bool isSamsungKeyboard = false;

class AppConfiguration {
  AppConfiguration._();

  static final AppConfiguration instance = AppConfiguration._();

  Future<void> init() async {
    configureDependencies();
    WidgetsFlutterBinding.ensureInitialized();
    await AppStorage.instance.init();
    await Firebase.initializeApp();
    HttpService.instance.init();
  }
}
