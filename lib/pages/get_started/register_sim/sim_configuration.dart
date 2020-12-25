import 'package:flutter/material.dart';

class SimConfiguration extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SimConfigurationState();
  }
  // _SimConfigurationState createState() => _SimConfigurationState();
}

class _SimConfigurationState extends State<SimConfiguration> {
  int sim_count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [sim('09031846448', 01)],
        ),
        Column(
          children: [sim('09031846448', 02)],
        ),
      ],
    );
  }

  Widget sim(String sim_number, num sim_count) => GestureDetector(
        key: UniqueKey(),
        onTap: onTapGesture,
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.sim_card,
                    size: 80,
                    color: border_visible
                        ? Color(0XFF4010C0)
                        : Color(0XFF4010C0).withOpacity(0.1),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: Text(
                      'SIM ${sim_count}',
                      style: TextStyle(
                        color: border_visible
                            ? Color(0XFF4010C0)
                            : Color(0XFF4010C0).withOpacity(0.1),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '$sim_number',
                    style: TextStyle(
                      color: border_visible
                          ? Color(0XFF4010C0)
                          : Color(0XFF4010C0).withOpacity(0.1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
            border: Border.all(
                color: Color(0XFF4010C0),
                style: border_visible ? BorderStyle.solid : BorderStyle.none,
                width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );

  bool border_visible = false; // checking if border is visible
  // onTap using gesture widget
  void onTapGesture() {
    setState(() {
      if (sim_count >= 2) {
        sim_count = 0;
      }

      if (sim_count < 2) {
        print(sim_count);
        setState(() {
          sim_count++;
          border_visible = !border_visible;
        });
      }
      //border_visible = !border_visible;
    });
  }
}
