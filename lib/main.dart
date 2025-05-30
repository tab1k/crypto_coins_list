import 'package:flutter/material.dart';

import 'package:crypto_coins_list/features/crypto_list/crypto_list.dart';
import 'package:crypto_coins_list/features/crypto_detail/crypto_detail.dart';


void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My First Flutter App',

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        dividerColor: Colors.black12,
        appBarTheme: AppBarTheme(color: Colors.white),

        textTheme: TextTheme(

          bodyMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          bodySmall: TextStyle(
            fontSize: 14,
          ),

        ),

      ),

      initialRoute: '/',

      routes: {
        '/' : (context) => const CryptoListScreen(title: 'Главная'),
        '/coin' : (context) => CryptoDetailScreen(),
      },

    );
  }
}



