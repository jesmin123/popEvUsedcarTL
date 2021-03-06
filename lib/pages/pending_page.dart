import 'package:evalutor_app/constants/app_font_style.dart';
import 'package:evalutor_app/constants/colors.dart';
import 'package:evalutor_app/constants/dimen.dart';
import 'package:evalutor_app/constants/strings.dart';
import 'package:evalutor_app/widgets/pending_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PendingPage extends StatefulWidget {
  @override
  _PendingPageState createState() => _PendingPageState();
}

class _PendingPageState extends State<PendingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: PRIMARY_COLOR,
            )),
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Pending Cases",
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: LINE_HEIGHT,),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 15,
                    shrinkWrap: true,
                    itemBuilder: (context, int index){
                      return PendingWidget();
                    }
                )
              ],
            ),
          )
      ),
    );
  }
}
