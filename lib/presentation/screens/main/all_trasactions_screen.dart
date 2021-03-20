import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:sociocredz/presentation/themes/theme.dart';
import 'package:sociocredz/presentation/widgets/transaction.dart';

class AllTransactionsScreen extends StatefulWidget {
  @override
  _AllTransactionsScreenState createState() => _AllTransactionsScreenState();
}

class _AllTransactionsScreenState extends State<AllTransactionsScreen> {
  bool _isCreditsExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          "All Transactions",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: radius12,
                ),
                child: ExpansionCard(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  trailing: Icon(
                    (_isCreditsExpanded)
                        ? Icons.expand_less
                        : Icons.expand_more,
                    color: Colors.black,
                  ),
                  onExpansionChanged: (value) {
                    setState(() {
                      _isCreditsExpanded = value;
                    });
                  },
                  title: Row(
                    children: [
                      Icon(Icons.swap_horiz, color: purple, size: 32),
                      SizedBox(width: 8),
                      Text(
                        "Credits",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: radius12,
                ),
                child: ExpansionCard(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  trailing: Icon(
                    (_isCreditsExpanded)
                        ? Icons.expand_less
                        : Icons.expand_more,
                    color: Colors.black,
                  ),
                  onExpansionChanged: (value) {
                    setState(() {
                      _isCreditsExpanded = value;
                    });
                  },
                  title: Row(
                    children: [
                      Icon(Icons.swap_horiz, color: red, size: 32),
                      SizedBox(width: 8),
                      Text(
                        "Expense",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          SizedBox(height: 32),
                          ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Column(
                              children: [
                                Transaction(
                                  title: "Tommy Hilfiger",
                                  description: "City Centre Mall",
                                  isExpense: true,
                                  amount: 145,
                                ),
                                SizedBox(height: 4),
                                Divider(thickness: 1.5),
                              ],
                            ),
                          ),
                          SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
