import 'package:flutter/material.dart';
import 'package:project/pages/dashboard/main_dashboard.dart';

// my routes
import 'package:project/pages/get_started/get_started_page.dart';
import 'package:project/pages/get_started/register_sim/register_sim.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       accentColor: Color(0xff7058c8), //lighter shade purple
       primaryColor: Color(0xff4010c0), // purple color
       backgroundColor: Color(0xfff0e8f0), // white
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        RegisterSim.Register_sim_route: (_) => RegisterSim(),
        DashBoard.dashboard_route: (_) => DashBoard(),
      },
      home: GetStartedPage(),
    );
  }
}
