import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/models/food.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.food.name),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stack to overlay color and image
            Stack(
              children: [
                // Food image (background)
                Container(
                  width: double.infinity,
                  height: 250, // Set the height of the background image
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(20)),
                    image: DecorationImage(
                      image: AssetImage(widget.food.imagePath),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black
                            .withOpacity(0.5), // Darken image with opacity
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    widget.food.imagePath,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Food name
                  Text(
                    widget.food.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 37, 71, 98),
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Food price
                  Text(
                    '\$${widget.food.price.toStringAsFixed(2)}', // Format price to 2 decimal points
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors
                          .red, // Change this to Colors.blue if you prefer blue
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Food description
                  Text(
                    widget.food.description,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 33, 67, 68)
                          .withOpacity(0.7),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                    thickness: 1.5,
                  ),
                  const SizedBox(height: 20),

                  // Add-ons title
                  Text(
                    "Add-ons",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 37, 71, 98),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Add-ons List in a card-like design
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: widget.food.availableAddons.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text(
                            '\$${addon.price.toStringAsFixed(2)}', // Format price to 2 decimal points
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          value: false,
                          onChanged: (value) {},
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              text: "Add To Cart",
              onTap: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 74, 67, 67), // Or a color of your choice
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
