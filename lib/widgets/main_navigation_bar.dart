import 'package:flutter/material.dart';

class MainNavigationBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onDestinationSelected;

  const MainNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
  });

  @override
  Widget build(BuildContext context) {

    return NavigationBar(
      indicatorColor: Colors.white,
      backgroundColor: Colors.white,
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: 'Главная',
        ),
        NavigationDestination(
          icon: Icon(Icons.list_outlined),
          label: 'Список',
        ),
        NavigationDestination(
          icon: Icon(Icons.add_circle_outlined),
          label: 'Создать',
        ),
        NavigationDestination(
          icon: Icon(Icons.message_outlined),
          label: 'Сообщения',
        ),
        NavigationDestination(
          icon: Icon(Icons.login_rounded),
          label: 'Вход',
        ),
      ],
    );
  }
}
