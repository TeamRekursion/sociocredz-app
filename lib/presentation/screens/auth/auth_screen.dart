import 'package:flutter/material.dart';
import 'package:sociocredz/presentation/animations/show_up.dart';
import 'package:sociocredz/presentation/screens/main/container_screen.dart';
import 'package:sociocredz/presentation/themes/theme.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.maxFinite,
              child: Image.asset(
                "assets/images/landing.gif",
                fit: BoxFit.cover,
              ),
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                color: Colors.black,
              ),
            ),
            ShowUp(
              delay: Duration(milliseconds: 600),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 48),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Shop,\nEarn Points,\nDonate!",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 56),
                          MaterialButton(
                            height: 55,
                            minWidth: double.maxFinite,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ContainerScreen(),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            color: purple,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                  child:
                                      Image.asset("assets/images/g_logo.png"),
                                ),
                                SizedBox(width: 16),
                                Text(
                                  "Login with Google",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
