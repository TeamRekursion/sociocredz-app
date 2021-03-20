import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sociocredz/presentation/animations/show_up.dart';
import 'package:sociocredz/presentation/screens/main/all_trasactions_screen.dart';
import 'package:sociocredz/presentation/screens/main/qr_screen.dart';
import 'package:sociocredz/presentation/themes/theme.dart';
import 'package:sociocredz/presentation/widgets/sociocredz.dart';
import 'package:sociocredz/presentation/widgets/transaction.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: radius4,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hello,",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Rithik Jain",
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      child: SvgPicture.asset(
                        "assets/images/qr.svg",
                        height: 35,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QRScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 160,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.all(4),
                      child: SvgPicture.asset(
                        "assets/images/bg.svg",
                        fit: BoxFit.cover,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: radius12,
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                color: Colors.white,
                              ),
                              SizedBox(width: 6),
                              Text(
                                "Current Wallet Balance",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "69.0",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                ),
                              ),
                              SizedBox(width: 8),
                              SocioCredz(21),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: red,
                  borderRadius: radius12,
                ),
              ),
              SizedBox(height: 24),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 16),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: radius12,
                ),
                child: Container(
                  margin: EdgeInsets.all(24),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.swap_horiz, color: orange, size: 32),
                          SizedBox(width: 8),
                          Text(
                            "Recent Transactions",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Column(
                          children: [
                            Transaction(
                              title: "CK Store",
                              description: "City Centre Mall",
                              isExpense: false,
                              amount: 200,
                            ),
                            SizedBox(height: 4),
                            Divider(thickness: 1.5),
                          ],
                        ),
                      ),
                      SizedBox(height: 32),
                      Container(
                        alignment: Alignment.center,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => AllTransactionsScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "View All Transactions",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(Icons.navigate_next, color: orange)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
