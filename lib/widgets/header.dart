import 'package:flutter/material.dart';
import 'package:master_card_ui/constants/colors.dart';
import 'package:master_card_ui/constants/size.dart';

class Header extends StatelessWidget {
  const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = SizeConfig.getWidth(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width / 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Wallet',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          Container(
            height: width / 6,
            width: width / 6,
            decoration: BoxDecoration(
              boxShadow: AppColors.neumorpShadow,
              shape: BoxShape.circle,
              color: AppColors.primaryWhite
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: AppColors.primaryWhite,
                      boxShadow: AppColors.neumorpShadow,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: (){},
                    child: Icon(Icons.notifications)
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}