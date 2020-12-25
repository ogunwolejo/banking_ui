import 'package:flutter/material.dart';

class Indicators extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndicatorState();
  }
}

class _IndicatorState extends State<Indicators> {
  List indicators = [
    {'no': 1, 'bool': false},
    {'no': 2, 'bool': false},
    {'no': 3, 'bool': false},
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...indicators.map(
                (e) {
                  return GestureDetector(
                    //key: UniqueKey(),
                    onTap: () {
                      setState(() {
                        indicator = !indicator;
                      });
                    },
                    child: Container(
                      key: UniqueKey(),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      constraints: BoxConstraints(
                        maxHeight: 10,
                        maxWidth: 10,
                      ),
                      decoration: BoxDecoration(
                        color:
                            indicator ? Color(0XFFE0D8ED) : Color(0XFF4018A8),
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ).toList(growable: true)
            ],
          ),
        ),
      ),
    );
  }

  bool indicator = false;
}

/***
 * InkWell(
                  key: UniqueKey(),
                  onTap: () => onTapIndicator(e),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    constraints: BoxConstraints(
                      maxHeight: 10,
                      maxWidth: 10,
                    ),
                    decoration: BoxDecoration(
                      color: indicator ? Color(0XFF4018A8) : Color(0XFFE0D8ED),
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }).toList()
 */
