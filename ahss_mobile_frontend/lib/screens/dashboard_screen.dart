import 'package:ahss_mobile_frontend/components/dashboard_drawer.dart';
import 'package:ahss_mobile_frontend/components/the_container.dart';
import 'package:ahss_mobile_frontend/static_files.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  static String id = 'DashboardScreen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    // final DashboardArguments args = ModalRoute.of(context).settings.arguments;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    double forty = MediaQuery.of(context).size.width * 0.4;

    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        title: Image(
          height: 28,
          image: AssetImage(
            'assets/images/logo.png',
          ),
          fit: BoxFit.contain,
        ),
        backgroundColor: kPrimary,
        centerTitle: true,
      ),
      drawer: DashboardDrawer(),
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TheContainer(
                      size: forty,
                      backgroundColor: kPrimary,
                      shadeColor: kBlueShade,
                      themeColor: kBlue,
                      title: 'TEMPERATURE',
                      radius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                      ),
                    ),
                    TheContainer(
                      size: forty,
                      backgroundColor: kPrimary,
                      shadeColor: kBlueShade,
                      themeColor: kBlue,
                      title: 'HUMIDITY',
                      radius: BorderRadius.only(
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TheContainer(
                      size: forty,
                      backgroundColor: kPrimary,
                      shadeColor: kBlueShade,
                      themeColor: kBlue,
                      title: 'TEMPERATURE',
                    ),
                    TheContainer(
                      size: forty,
                      backgroundColor: kPrimary,
                      shadeColor: kRedShade,
                      themeColor: kRed,
                      title: 'HUMIDITY',
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TheContainer(
                      size: forty,
                      backgroundColor: kPrimary,
                      shadeColor: kRedShade,
                      themeColor: kRed,
                      title: 'TEMPERATURE',
                      radius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    TheContainer(
                      size: forty,
                      backgroundColor: kPrimary,
                      shadeColor: kBlueShade,
                      themeColor: kBlue,
                      title: 'HUMIDITY',
                      radius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
class DashboardArguments {
  final int studentId;
  final String studentName;

  DashboardArguments({this.studentId, this.studentName});
}

class DashboardButton extends StatelessWidget {
  final Function function;
  final String title;
  final IconData iconData;
  final double height;

  const DashboardButton(
      {Key key, this.function, this.title, this.iconData, this.height = 160})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: this.height,
      minWidth: 160,
      elevation: 1.0,
      highlightElevation: 1.0,
      onPressed: function,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey.shade800,
      textColor: Colors.white70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 35,
          ),
          SizedBox(height: 20.0),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
