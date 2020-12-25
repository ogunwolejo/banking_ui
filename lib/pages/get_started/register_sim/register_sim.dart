import 'package:flutter/material.dart';
import 'package:project/pages/dashboard/main_dashboard.dart';
import 'package:project/pages/get_started/register_sim/sim_configuration.dart';

class RegisterSim extends StatelessWidget {
  static String Register_sim_route = "RegisterSim";
  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Choose your registered sim',
                    style: TextStyle(
                      color: Color(0XFF4010C0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome to the the best angle for baning in all nation \nwe hope u will have the perfect time banking with us as we aid to be of assistant to you. ',
                    style: TextStyle(
                      color: Color(0XFF4018A8).withOpacity(0.3),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  SimConfiguration(),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Welcome to the the best angle for baning in all nation \nwe hope u will have the perfect time banking with us as we aid to be of assistant to you. ',
                    style: TextStyle(
                      color: Color(0XFF000000).withOpacity(0.6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            width: double.maxFinite,
            height: 50,
            child: RaisedButton(
              onPressed: () => onPressButton(context),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0XFFC0B8C8),
                ),
              ),
              color: Color(0XFF4018A8),
            ),
          ),
        ],
      ),
    );
  }

  /*the button navuage to the sim registeration page */
  void onPressButton(_) {
    Navigator.pushNamed(_, DashBoard.dashboard_route);
  }
}
