import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/helpers/header.dart';
import 'package:project/helpers/overall_Acct_balance_display.dart';
import 'package:project/pages/recent_transactions/recent_transaction.dart';

class DashBoard extends StatelessWidget {
  static String dashboard_route = "dashboard_route";
  String username = "Ramakrishnan";

  @override
  Widget build(context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Stack(
        children: [
          // the top blue part of the dashbaord and content
          Positioned.fill(
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.primaryColor,
              ),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // the header has a vertical margin of about 25
                  Header(
                    leadingIcon: Icons.menu,
                    message_count: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                            color: theme.backgroundColor.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          username,
                          style: TextStyle(
                            color: theme.backgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 2.0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OverAllAcountBalanceDisplay(acct_balance: 5999.0),
                        SizedBox(
                          height: 20,
                        ),

                        // the dashboard specific items
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DashBoardItems(Icons.keyboard_arrow_up_outlined,
                                'Pay', context),
                            DashBoardItems(Icons.keyboard_arrow_down_outlined,
                                'Recieve', context),
                            DashBoardItems(
                                Icons.description, 'Recieve', context),
                            DashBoardItems(
                                Icons.subject, 'Transactions', context),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // the top white part of the dashbaord, which contains the recent transactions
          Positioned.fill(
            top: 450,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(20, 20),
                topRight: Radius.elliptical(20, 20),
              ),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.backgroundColor,
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // the customize scroller
                    Center(
                      // to get the drag details
                      child: GestureDetector(
                        onVerticalDragUpdate: (dragDetails) {
                          print(dragDetails);
                        },
                        child: Container(
                          constraints: BoxConstraints(
                            maxHeight: 10,
                            minHeight: 7,
                            maxWidth: 60,
                            minWidth: 40,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: theme.accentColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Recent Transactions',
                      style: TextStyle(
                        color: theme.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Expanded(
                      flex: 1,
                      child: RecentTransactions(),
                    ),
                    //
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget DashBoardItems(IconData icon, String icon_text, BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        print(icon_text);
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            child: Container(
              color: Color(0xfff0E8f0),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    icon,
                    size: 40,
                    color: theme.primaryColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            icon_text,
            style: TextStyle(
              color: theme.backgroundColor.withOpacity(0.6),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
