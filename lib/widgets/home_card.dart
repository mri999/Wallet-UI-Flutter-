import 'package:flutter/material.dart';
import 'package:master_card_ui/constants/colors.dart';
import 'package:master_card_ui/constants/size.dart';
import 'package:master_card_ui/widgets/card_widget.dart';
import 'package:master_card_ui/widgets/services.dart';
import 'package:master_card_ui/widgets/header.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);

    return Scaffold(
      body: Container(
        color: AppColors.primaryWhite,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: height / 8,
                child: Header(),
              ),
              Expanded(child: CardWidget()),
              Expanded(child: Services())
            ],
          ),
        ),
      ),
    );
  }
}