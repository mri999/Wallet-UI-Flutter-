import 'package:flutter/material.dart';
import 'package:master_card_ui/constants/colors.dart';
import 'package:master_card_ui/constants/size.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    var height = SizeConfig.getWidth(context);

    List<String> texts = ['Send Money', 'Pay Bills', 'Account', 'Recharge'];
    int index = -1;

    List<Icon> icons = [
      Icon(
        Icons.arrow_upward,
        color: Colors.green[700],
        size: 30
      ),
      Icon(
        Icons.payment_outlined,
        size: 30
      ),
      Icon(
        Icons.account_balance_outlined,
        color: Colors.blue[700],
        size: 30
      ),
      Icon(
        Icons.receipt_sharp,
        color: Colors.deepOrange[300],
        size: 30
      )
    ];

    return Container(
        height: height * 0.8,
        width: width * 0.8,
        child: GridView.count(
            crossAxisCount: 2,
            children: texts.map((text) {
              index = index + 1;
              return Container(
                  child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: height / 4,
                      width: width / 4,
                      margin: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: height / 3,
                      width: width / 3,
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.primaryWhite,
                        boxShadow: AppColors.neumorpShadow,
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Column(children: [
                          InkWell(
                            onTap: () {},
                            child: icons[index],
                          ),
                          SizedBox(height: 10),
                          Text(
                            text,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ]),
                      )),
                ],
              ));
            }).toList()));
  }
}
