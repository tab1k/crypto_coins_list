
import 'package:crypto_coins_list/router/router.dart';
import 'package:crypto_coins_list/ui/theme/theme.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My First Flutter App', 

      theme: theme,

      initialRoute: '/',

      routes: routes,
    );
  }
}



