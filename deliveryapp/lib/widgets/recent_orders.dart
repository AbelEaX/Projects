import 'package:flutter/material.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({super.key});

  @override
  Widget build(BuildContext context) {
    var currentUser;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w600, letterSpacing: 1.2),
          ),
        ),
        Container(
          height: 120,
          color: Colors.blue,
          child: ListView.builder(
            itemCount: currentUser.orders.length,
            itemBuilder: (BuildContext context, int index) {
              return;
            },
          ),
        )
      ],

      //padding: EdgeInsets.symmetric(horizontal: 20.0),
    );
  }
}
