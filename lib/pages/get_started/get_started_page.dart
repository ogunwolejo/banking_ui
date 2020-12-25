import 'package:flutter/material.dart';
import 'package:project/pages/get_started/indicators.dart';
import 'package:project/pages/get_started/register_sim/register_sim.dart';

class GetStartedPage extends StatelessWidget {
  static String startedPageRoute = "get_started_page";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0XFFE0D8ED).withOpacity(0.1),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Freedom of Banking at  \n your finger tips.',
                    style: TextStyle(
                      color: Color(0XFF4010C0),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
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
          Indicators(),
          Container(
            width: double.maxFinite,
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
    Navigator.pushNamed(_, RegisterSim.Register_sim_route);
  }
}
