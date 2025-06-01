import 'package:crypto_coins_list/features/%20crypto_add/view/view.dart';
import 'package:crypto_coins_list/features/crypto_auth/sign_in/view/view.dart';
import 'package:crypto_coins_list/features/crypto_detail/view/view.dart';
import 'package:crypto_coins_list/features/crypto_home/view/view.dart';
import 'package:crypto_coins_list/features/crypto_list/view/view.dart';

final routes = {
  '/' : (context) => const CryptoHomeScreen(title: 'Главная',),
  '/sign_in' : (context) => CryptoSignInScreen(title: 'Вход'),
  '/create' : (context) => CryptoAddScreen(title: 'Создать'),

  '/list' : (context) => CryptoListScreen(title: 'Список'),
  '/coin' : (context) => CryptoDetailScreen(),
};