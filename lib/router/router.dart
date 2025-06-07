import 'package:crypto_coins_list/features/%20crypto_add/view/view.dart';
import 'package:crypto_coins_list/features/crypto_auth/sign_in/view/view.dart';
import 'package:crypto_coins_list/features/crypto_detail/view/view.dart';
import 'package:crypto_coins_list/features/crypto_home/view/view.dart';
import 'package:crypto_coins_list/features/crypto_list/view/view.dart';
import 'package:crypto_coins_list/features/crypto_messages/view/crypto_message_screen.dart';
import 'package:crypto_coins_list/features/crypto_messages_detail/view/crypto_messages_detail_screen.dart';

final routes = {
  '/' : (context) => const CryptoHomeScreen(title: 'Главная',),
  '/sign_in' : (context) => CryptoSignInScreen(title: 'Вход'),
  '/create' : (context) => CryptoAddScreen(title: 'Создать'),

  '/list' : (context) => CryptoListScreen(title: 'Список'),
  '/coin' : (context) => CryptoDetailScreen(),

  '/messages' : (context) => CryptoMessageScreen(),
  '/message_detail' : (context) => CryptoMessagesDetailScreen(),
};