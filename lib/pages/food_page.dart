import 'package:deliveryapp/components/my_button.dart';
import 'package:deliveryapp/models/food.dart';
import 'package:deliveryapp/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    // initialized selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                          color: Color.fromARGB(255, 72, 83, 83),
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
                          color: const Color.fromARGB(255, 101, 114, 115)
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
                          color: const Color.fromARGB(255, 55, 55, 60),
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
                              value: widget.selectedAddons[addon],
                              onChanged: (value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
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
                  onTap: () => addToCart(widget.food, widget.selectedAddons),
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
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.secondary),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}
