import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RecentStateTransactions();
  }
}

class RecentStateTransactions extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    // TODO: implement build
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Container(
        padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // combing the icons and activity togther, icons and type of transaction and date
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: theme.accentColor.withOpacity(0.3),
                  ),
                  child: Icon(Icons.money),
                ),
                SizedBox(width: 7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cash Withdrawal',
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '2000-10-24',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),

            // the amount
            Text(
              '\$ 22.60',
              style: TextStyle(
                color: theme.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ],
        ),
      );
    });
  }
}
