import 'package:crypto_coins_list/features/%20crypto_add/view/crypto_add_screen.dart';
import 'package:crypto_coins_list/features/crypto_home/%20widgets/home_page_appBar.dart';
import 'package:crypto_coins_list/features/crypto_home/%20widgets/home_page_content.dart';
import 'package:flutter/material.dart';
import 'package:crypto_coins_list/features/crypto_auth/sign_in/view/crypto_sign_in_screen.dart';
import 'package:crypto_coins_list/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_coins_list/features/crypto_messages/view/crypto_message_screen.dart';
import 'package:crypto_coins_list/widgets/main_navigation_bar.dart'; // путь к файлу с навигационной панелью


class PageItem {
  final String title;
  final Widget page;

  PageItem({required this.title, required this.page});
}

class CryptoHomeScreen extends StatefulWidget {
  const CryptoHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoHomeScreen> createState() => _CryptoHomeScreenState();
}

class _CryptoHomeScreenState extends State<CryptoHomeScreen> {
  int _currentPageIndex = 0;

  final List<PageItem> _pages = [
    PageItem(
      title: 'Главная',
      page: HomePageContent(),
    ),
    PageItem(
      title: 'Список',
      page: CryptoListScreen(title: 'Список'),
    ),
    PageItem(
      title: 'Создать',
      page: CryptoAddScreen(title: 'Создать записку.'),
    ),
    PageItem(
      title: 'Сообщения',
      page: CryptoMessageScreen(),
    ),
    PageItem(
      title: 'Вход',
      page: CryptoSignInScreen(title: 'Вход'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final currentPage = _pages[_currentPageIndex];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // например, высота
        child: HomePageAppbar(),
      ),
   

      body: currentPage.page,
      
      bottomNavigationBar: MainNavigationBar(
        currentIndex: _currentPageIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
    );
  }
}
