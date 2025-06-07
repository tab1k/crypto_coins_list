


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageAppbar extends StatelessWidget {
  const HomePageAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: SingleChildScrollView(

        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              
              child: Container(
                width: double.infinity,
                  child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/user.png'),
                        ),

                        SizedBox(width: 12),

                        Text('Войти'),
                      ],
                    ),
                    SvgPicture.asset(
                      'assets/svg/notifications.svg',
                      width: 24,
                      height: 24,
                    ),
                  ],
                  
                ),
              )
              
            )
          ],
        ),
      )
    );
  }
}