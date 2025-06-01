
import 'package:flutter/material.dart';


class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
    required this.theme,
    required this.coinSubtitle,
  });

  final String coinName;
  final ThemeData theme;
  final String coinSubtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('assets/images/bitcoin.png', height: 35, width: 35),
      title: Text(coinName, style: theme.textTheme.bodyMedium,),
      subtitle: Text(coinSubtitle, style: theme.textTheme.bodySmall,),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        Navigator.of(context).pushNamed(
          '/coin', 
          arguments: {
            'coinName': coinName,
            'coinSubtitle': coinSubtitle,
          },
        );
      },
    );
  }
}