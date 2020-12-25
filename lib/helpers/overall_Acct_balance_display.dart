import 'package:flutter/material.dart';

//Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro a libero ratione eaque officia, accusamus consectetur ea rem quam non modi inventore doloremque temporibus. Distinctio ad animi explicabo alias incidunt?

class OverAllAcountBalanceDisplay extends StatelessWidget {
  final double acct_balance;
  const OverAllAcountBalanceDisplay({this.acct_balance, Key key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Overall Account Balance',
                style: TextStyle(
                  color: Color(0xff789098).withOpacity(1),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                '\$ $acct_balance',
                style: TextStyle(
                  color: Color(0xff4010c0),
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Color(0xff4010c0),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Expanded(
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit.Porro a libero ratione eaque officia, accusamus consectetur ea rem quam non modi inventore doloremque temporibus. Distinctio ad animi explicabo alias incidunt?',
                      style: TextStyle(
                        color: Color(0xff789098).withOpacity(1),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      color: Color(0xfff0e8f0),
    );
  }
}
