import 'package:flutter/material.dart';
import 'constant.dart';
import 'data.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gradientEndColor,
        body: Container(
          child: SafeArea(
              child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Column(
                          children: <Widget>[
                            Text('Explore',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 44,
                                color: contentTextColor,
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            DropdownButton(
                              items: [
                                DropdownMenuItem(
                                  child: Text('Solar System',
                                    style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontSize: 24,
                                        color: const Color(0x7cdbf1ff),
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.left,
                                  ),
                                )
                              ],
                              onChanged: (value) {},
                            )
                          ],
                        )
                    ),
                    Container(
                      height: 500,
                      padding: const EdgeInsets.only(left: 32),
                      child: Swiper(
                          itemCount: planets.length,
                          itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                          layout: SwiperLayout.STACK,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    SizedBox(height: 100),
                                    Card(
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(32)),
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(32.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 100),
                                              Text(
                                                planets[index].name,
                                                style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 44,
                                            color: primaryTextColor,
                                            fontWeight: FontWeight.w900),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Solar System',
                                        style: TextStyle(
                                            fontFamily: 'Avenir',
                                            fontSize: 23,
                                            color: primaryTextColor,
                                            fontWeight: FontWeight.w500),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Know more',
                                            style: TextStyle(
                                                fontFamily: 'Avenir',
                                                fontSize: 18,
                                                color: secondaryTextColor,
                                                fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        Image.asset((planets[index].iconImage))
                      ],
                    );
                  }),
            )
          ])),
        ));
  }
}
