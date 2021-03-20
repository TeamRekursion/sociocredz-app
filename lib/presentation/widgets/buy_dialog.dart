import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sociocredz/presentation/themes/theme.dart';
import 'package:sociocredz/presentation/widgets/sociocredz.dart';

class BuyDialog extends StatelessWidget {
  final String image;
  final int cost;
  final String desc;

  BuyDialog({this.image, this.cost, this.desc});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      content: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 3,
              child: Container(
                margin: EdgeInsets.all(12),
                child: SvgPicture.asset(image),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: radius12,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Text(
                      "Cost: $cost",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    SocioCredz(12),
                  ],
                ),
                MaterialButton(
                  height: 28,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  color: red,
                  child: Text(
                    "Contribute",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
