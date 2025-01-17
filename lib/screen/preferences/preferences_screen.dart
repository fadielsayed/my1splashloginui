import 'package:flutter/material.dart';
import 'package:my1splashloginui/constant.dart';
import 'package:my1splashloginui/screen/preferences/widget/attribute.dart';
import 'package:my1splashloginui/screen/preferences/widget/header.dart';
import 'package:my1splashloginui/screen/preferences/widget/name_and_number.dart';
import 'package:my1splashloginui/screen/preferences/widget/total_price.dart';
import 'package:my1splashloginui/widget/round_button.dart';

class PreferencesScreen extends StatelessWidget {
  final int index;

  PreferencesScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          
          child: Column(
            children: <Widget>[
              Header(index: index),
              NameAndNumber(index: index),
              Divider(
                color: mPrimaryTextColor.withOpacity(0.5),
              ),
              Attribute(
                title: 'Size',
                iconNames: [
                  'size1',
                  'size2',
                  'size3',
                ],
                alignment: Alignment.bottomLeft,
                check: 1,
              ),
              Divider(
                color: mPrimaryTextColor.withOpacity(0.5),
              ),
              Attribute(
                title: 'Sugar',
                iconNames: ['sugar1', 'sugar2', 'sugar3', 'sugar4'],
                check: 2,
              ),
              Divider(
                color: mPrimaryTextColor.withOpacity(0.5),
              ),
              Attribute(
                title: 'Additions',
                iconNames: ['additions1', 'additions2'],
                check: 2,
              ),
              Divider(
                color: mPrimaryTextColor.withOpacity(0.5),
              ),
              TotalPrice(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 16),
                child: RoundButton(
                  title: 'Add to cart',
                  press: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Preferences',
        style: TextStyle(
          color: mPrimaryTextColor,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mPrimaryTextColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

