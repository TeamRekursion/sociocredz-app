import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sociocredz/presentation/animations/show_up.dart';
import 'package:sociocredz/presentation/themes/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _adIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ShowUp(
          delay: Duration(milliseconds: 300),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 24),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 125,
                    viewportFraction: 1,
                    onPageChanged: (index, _) {
                      setState(() {
                        _adIndex = index;
                      });
                    },
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(color: purple),
                          child: Center(
                            child: Text(
                              'ADvert',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: AnimatedSmoothIndicator(
                  activeIndex: _adIndex,
                  count: 5,
                  effect: WormEffect(
                    activeDotColor: red,
                    dotColor: grey,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
