import 'package:crypto_coins_list/features/crypto_list/widgets/crypto_coin_tile.dart';
import 'package:flutter/material.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoListScreen> createState() {
    return _CryptoListScreenState();
  }

}

class _CryptoListScreenState extends State<CryptoListScreen> {

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(

      body: 
        ListView.separated(
          separatorBuilder: (context, index) => Divider(color: theme.dividerColor,),
          itemCount: 10,
          itemBuilder: (context, i) { 
            const coinName = 'Bitcoin';
            const coinSubtitle = 'Bitcoin subtitle';

            return CryptoCoinTile(coinName: coinName, theme: theme, coinSubtitle: coinSubtitle);
          },
        ),

        


    );
  }
}

