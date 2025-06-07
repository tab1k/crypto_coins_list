
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> cards = [
      {
        'title' : 'Work & Travel - Путешествуй и зарабатывай!',
        'image': 'assets/images/work.webp',
        'color': Colors.green,
        'buttonText': 'Отправить заявку',
      },
      {
        'title': 'Программа Au Pair - Стань няней за границей!',
        'image': 'assets/images/home.webp',
        'color': Colors.blue,
        'buttonText': 'Подробнее',
      },
      {
        'title': 'Стажировки - Получи опыт и знания!',
        'image': 'assets/images/stage.webp',
        'color': Colors.orange,
        'buttonText': 'Узнать больше',
      },
    ];

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(

            child: Column(

              children: [

                SizedBox(
                  height: 180,
                  child: PageView.builder(
                    controller: PageController(
                      initialPage: 1,
                      viewportFraction: 0.9
                    ),
                    itemCount: cards.length,
                    itemBuilder: (context, index) {
                      final card = cards[index];
                      
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: card['color'],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Текст + кнопка
                                SizedBox(
                                  width: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        card['title'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white, // или другой контрастный цвет
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          foregroundColor: card['color'],
                                        ),
                                        child: Text(card['buttonText']),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // Картинка в правом верхнем углу
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: 100, // фиксированная высота
                                width: 100,  // фиксированная ширина
                                child: Image.asset(
                                  card['image'],
                                  fit: BoxFit.contain, // или BoxFit.cover, если хочешь заполнить, но обрезать
                                  errorBuilder: (context, error, stackTrace) =>
                                      Icon(Icons.error, color: Colors.red),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );

                    },
                  ),
                ),

                
                SizedBox(height: 16),

                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                  color: Colors.white,

                  child: Column(

                    children: [
                      
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200), // сероватая рамка
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.verified_user, color: Colors.red, size: 30), // замени на свою иконку
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Kindly verify your identity to unlock all the features of the app.",
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Portfolio Balance:',
                                      style: TextStyle(fontSize: 14, color: Colors.grey),
                                    ),

                                    SizedBox(width: 4),

                                    Icon(Icons.remove_red_eye, size: 14, color: Colors.grey)
                                  ],
                                ),

                                SizedBox(height: 4),

                                Text(
                                  '\$0.00',
                                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              Text(
                                'USD',
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                              Icon(Icons.arrow_drop_down, size: 16, color: Colors.black),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 15),
                      
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12), // внутренние отступы
                        decoration: BoxDecoration(
                          color: Colors.white, // белый фон
                          borderRadius: BorderRadius.circular(20), // скруглённые углы
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Icon(
                                    Icons.swap_horiz,
                                    color: Colors.blue[900]
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Buy/Sell'),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Icon(
                                    Icons.send,
                                    color: Colors.blue[900]
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Send'),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Icon(
                                    Icons.call_received,
                                    color: Colors.blue[900]
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Receive'),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    shape: BoxShape.circle,
                                  ),
                                  padding: EdgeInsets.all(12),
                                  child: Icon(
                                    Icons.credit_card,
                                    color: Colors.blue[900]
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text('Pay'),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 15),

                      Align(
                        alignment: Alignment.centerLeft, // Выравнивание по левому краю
                        child: Text(
                          'Portfolio',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),

                      SizedBox(height: 15),


                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey.shade200),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/bitcoin.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Bitcoin',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black, // или другой контрастный цвет
                                    ),
                                  ),
                                  
                                  Text(
                                    '\$50,023.03',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black, 
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          '0.235 BTC',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        )
                                      ),

                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.grey.shade200),
                                        ),
                                        child: Text(
                                          '+10%',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey.shade200),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/images/bitcoin.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Ethereum',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black, // или другой контрастный цвет
                                    ),
                                  ),
                                  
                                  Text(
                                    '\$250.89',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black, 
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),

                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          '0.935 ETH',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        )
                                      ),

                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.grey.shade200),
                                        ),
                                        child: Text(
                                          '-15%',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      Align(
                        alignment: Alignment.centerLeft, // Выравнивание по левому краю
                        child: Text(
                          'Trending',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),

                      Column(
                        children: List.generate(10, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 4),
                            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey.shade300),
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/bitcoin.png',
                                  width: 50,
                                  height: 50,
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Bitcoin'),
                                      Text('BTC'),
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\$50,023.03',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '+10%',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }),
                      )
                    // ENDED PAGE
                    ],
                  ),
                ),               
              ],
            ),
          ),
        ),
      ],
    );
  }
}