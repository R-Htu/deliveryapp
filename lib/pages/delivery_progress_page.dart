import 'package:deliveryapp/components/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery in progress...'),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }
}

//Custom Bottom Nav Bar - Message /Call deliver
Widget _buildBottomNavBar(BuildContext context) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
    padding: const EdgeInsets.all(25),
    child: Row(
      children: [
        //profile pic of driver
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ),
        const SizedBox(
          width: 10,
        ),

        //deliver details
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ruth Nhkum",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            Text(
              "Driver",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            )
          ],
        ),

        //message button
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.message),
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          ],
        )

        //call button
      ],
    ),
  );
}
