import 'package:flutter/material.dart';
import 'buy_vana_app.dart';
import 'core/resources/shared_pref/shared_pref_keys.dart';
import 'core/resources/shared_pref/shared_preferences.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await checkIfLoggedInUser();
  runApp(const BuyVanaApp());
}

bool isLoggedInUser = false;

checkIfLoggedInUser() async {
  String? userToken = await SharedPref.getString(SharedPrefKeys.token);
  if (userToken != null && userToken.isNotEmpty) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}

