import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:swipe_app/constants.dart';
import 'package:swipe_app/news_data.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradientStartColor,gradientEndColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3,0.7],
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        children: [
                          Text(
                            "Sports",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 44,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Trending     ",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: Color(0x7cdbf1ff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 550,
                      padding: EdgeInsets.only(left: 32),
                      child: Swiper(
                        itemCount: infos.length,
                        itemWidth: MediaQuery.of(context).size.width - 2*64,
                        layout: SwiperLayout.STACK,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(
                            activeSize: 20,
                            space: 8,
                          ),
                        ),
                        itemBuilder: (context,index){
                          return Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 100,),
                                  Card(
                                    color: Colors.white,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column(
                                        children: [
                                          SizedBox(height: 100,),
                                          Text(
                                              infos[index].category,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 20),
                                          Text(
                                            infos[index].headline,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: primaryTextColor,
                                              fontWeight: FontWeight.w900,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 15,),
                                          Text(
                                            infos[index].description,
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 13,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          SizedBox(height: 8,),
                                          Row(
                                            children: [
                                              Text(
                                                'Full article',
                                                style: TextStyle(
                                                  fontFamily: 'Avenir',
                                                  fontSize: 15,
                                                  color: Color(0xffe4979e),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                              Icon(Icons.arrow_forward,color: secondaryTextColor,),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Image.network(infos[index].iconImage,height: 220,),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
