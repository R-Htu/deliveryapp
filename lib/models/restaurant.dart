import 'food.dart';

class Restaurant {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Cheeseburger",
        description:
            "A juicy beef with melted cheddar, lettuce, tomato and a hint of onion an pickle.",
        imagePath: "lib/images/burgers/cheese_burger.jpg",
        price: 8.99,
        availableAddons: [
          Addon(name: "Extra cheese", price: 0.99),
          Addon(name: "Bacon", price: 1.99),
          Addon(name: "Avocado", price: 2.99)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "BBQ Bacon Burger",
        description:
            "Smoky BBQ sauce, crispy bacon, and rings make this beeff burger a savory delight.",
        imagePath: "lib/images/burgers/bbq_burger.jpg",
        price: 10.99,
        availableAddons: [
          Addon(name: "Grilled Onions", price: 0.99),
          Addon(name: "Jalpaenos", price: 1.49),
          Addon(name: "Extra BBQ Sauce", price: 1.99)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "Veggie Burger",
        description:
            "A hearty veggie patty topped with fresh avocado, lettuce, and tomato, served on a whole.",
        imagePath: "lib/images/burgers/vege_burger.jpg",
        price: 9.99,
        availableAddons: [
          Addon(name: "Vegan Cheese", price: 0.99),
          Addon(name: "Grilled Mushrooms", price: 1.49),
          Addon(name: "Hummus Spread", price: 1.99)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "Aloha Burger",
        description:
            "A char-grilled chicken breast topped with a slice of grilled pineapple, Swiss cheese and...",
        imagePath: "lib/images/burgers/aloha_burger.jpg",
        price: 9.49,
        availableAddons: [
          Addon(name: "Teriyaki Glaze", price: 0.99),
          Addon(name: "Extra Pineapple", price: 0.99),
          Addon(name: "Bacon", price: 1.49)
        ],
        category: FoodCategory.burgers),
    Food(
        name: "Blue Moon Burger",
        description:
            "This burger is a blue cheese lover's dream. It features a succulent ground beef patty...",
        imagePath: "lib/images/burgers/bluemoon_burger.jpg",
        price: 9.49,
        availableAddons: [
          Addon(name: "Sauteed Mushrooms", price: 0.99),
          Addon(name: "Fried Egg", price: 1.49),
          Addon(name: "Spicy Mayo", price: 0.99)
        ],
        category: FoodCategory.burgers),

    //Salad
    Food(
        name: "Caesar Salad",
        description:
            "Crisp romaine lettuce, parmesan cheese, croutons, and Caesar dressing.",
        imagePath: "lib/images/salads/caesar_salad.jpg",
        price: 7.99,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 0.99),
          Addon(name: "Anchovies", price: 1.49),
          Addon(name: "Extra Parmeson", price: 1.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "Greek Salad",
        description:
            "Tomatoes, cucubers, red onions, olives, feta cheese with olive oil and herbs.",
        imagePath: "lib/images/salads/greek_salad.jpg",
        price: 8.49,
        availableAddons: [
          Addon(name: "Feta Cheese", price: 0.99),
          Addon(name: "Kalamata Olives", price: 1.49),
          Addon(name: "Grilled Shrimp", price: 1.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "Quinoa Salad",
        description:
            "Quinoa mixed with cucumber totmatoes, bell peppers and a lemon vinaigrette.",
        imagePath: "lib/images/salads/quinoa_salad.jpg",
        price: 9.99,
        availableAddons: [
          Addon(name: "Avocado", price: 1.99),
          Addon(name: "Feta Cheese", price: 1.49),
          Addon(name: "Extra Parmeson", price: 1.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "Asian Sesame Salad",
        description:
            "Delight in the flavors of the East with this sesame-infused salad. It includes mixed great...",
        imagePath: "lib/images/salads/asiansesame_salad.jpg",
        price: 9.99,
        availableAddons: [
          Addon(name: "Mandarin Oranges", price: 0.99),
          Addon(name: "Almond Slivers", price: 1.49),
          Addon(name: "Extra Terikari Chicken", price: 1.99)
        ],
        category: FoodCategory.salads),
    Food(
        name: "South West Chicken Salad",
        description:
            "This colorful salad combines the zesty flavors of the Southwest. It's loaded with mixed ...",
        imagePath: "lib/images/salads/caesar_salad.jpg",
        price: 9.99,
        availableAddons: [
          Addon(name: "Sour Cream", price: 0.99),
          Addon(name: "Pico de Gallo", price: 1.49),
          Addon(name: "Guamole", price: 1.99)
        ],
        category: FoodCategory.salads),
    // sides
    Food(
        name: "Sweet Potato Fries",
        description: "Crispy sweet potato fries with a touch of salt.",
        imagePath: "lib/images/sides/sweet_potato_side.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Cheese Sauce", price: 0.99),
          Addon(name: "Truffle Oil", price: 1.49),
          Addon(name: "Cajun Spice", price: 1.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "Onion Rings",
        description: "Golden and crispy onion rings, perfect for dipping.",
        imagePath: "lib/images/sides/onion_rings_side.jpg",
        price: 3.99,
        availableAddons: [
          Addon(name: "Ranch Dip", price: 0.99),
          Addon(name: "Spicy Mayo", price: 1.49),
          Addon(name: "Parmesan Dust", price: 1.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "Garlic Bread",
        description:
            "Warm and toasty garlic bread, topped with melted butter and parsley",
        imagePath: "lib/images/sides/garlic_bread_side.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Extra Garlic", price: 0.99),
          Addon(name: "Mozzaella Cheese", price: 1.49),
          Addon(name: "Marinara Dip", price: 1.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "Loaded Sweet Potato Fries",
        description:
            "Savory sweet potato fries loaded with melted cheese, smoky bacon bits and a dollop of...",
        imagePath: "lib/images/sides/loadedfries_side.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Sour Cream", price: 0.99),
          Addon(name: "Bacon Bits", price: 1.49),
          Addon(name: "Green Onions", price: 1.99)
        ],
        category: FoodCategory.sides),
    Food(
        name: "Crispy Mac & Cheese Bites",
        description:
            "Golden brown, bite_sized mac and cheese balls, perfect for on-the-go snacking. SErved with....",
        imagePath: "lib/images/sides/mac_side.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Bacon Bits", price: 0.99),
          Addon(name: "Jalapeno Slices", price: 1.49),
          Addon(name: "Sriracha Drizzle", price: 0.99)
        ],
        category: FoodCategory.sides),

    //Desserts
    Food(
        name: "Chocolate Brownie",
        description:
            "Rich and fudgy chocolate brownie, with chunks of chocolate",
        imagePath: "lib/images/desserts/brownie_dessert.jpg",
        price: 5.99,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 0.99),
          Addon(name: "Hot Fudge", price: 1.49),
          Addon(name: "Whipped Cream", price: 1.99)
        ],
        category: FoodCategory.desserts),
    Food(
        name: "Cheesecake",
        description:
            "Creamy cheesecake on a graham cracker crust with a berry compote",
        imagePath: "lib/images/desserts/mars_bar_dessert.jpeg",
        price: 6.99,
        availableAddons: [
          Addon(name: "Strawberry Topping", price: 0.99),
          Addon(name: "Blueberry Compote", price: 1.49),
          Addon(name: "Chocolate Chips", price: 1.99)
        ],
        category: FoodCategory.desserts),
    Food(
        name: "Apple Pie",
        description:
            "Classic apple pie with a flaky crust and a cinnamon-spiced apple filling.",
        imagePath: "lib/images/desserts/apple_pie_dessert.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Vanilla Ice Cream", price: 0.99),
          Addon(name: "Caramel Sauce", price: 1.49),
          Addon(name: "Whipped Cream", price: 1.99)
        ],
        category: FoodCategory.desserts),

    Food(
        name: "Red Velvet Lava Cake",
        description:
            "A deletabel red velvet cake with a wam gooey chocolate lava center served with a sc...",
        imagePath: "lib/images/desserts/banana_cake_dessert.jpg",
        price: 5.99,
        availableAddons: [
          Addon(name: "Raspberry", price: 0.99),
          Addon(name: "Cream Cheese Icing", price: 1.49),
          Addon(name: "Chocolate Sprinkles", price: 0.99)
        ],
        category: FoodCategory.desserts),
    Food(
        name: "Pavlova",
        description:
            "Delicate meringue-based dessert with a crispy outer shell and soft, marshmallow-like interior, topped with fresh whipped cream and seasonal fruits.",
        imagePath: "lib/images/desserts/pavlova_dessert.jpg",
        price: 5.99,
        availableAddons: [
          Addon(name: "Passion Fruit Syrup", price: 1.49),
          Addon(name: "Fresh Berries", price: 1.99),
          Addon(name: "Chocolate Shavings", price: 1.29)
        ],
        category: FoodCategory.desserts),

    //Drinks
    Food(
        name: "Lemonade",
        description:
            "Refreshing lemonade made with real lemons and a touch of sweetness.",
        imagePath: "lib/images/drinks/lime_drink.jpg",
        price: 2.99,
        availableAddons: [
          Addon(name: "Strawberry Flavor", price: 0.99),
          Addon(name: "Mint Leaves", price: 1.49),
          Addon(name: "Ginger Zest", price: 1.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Blueberry Juice",
        description:
            "A tangy and sweet blueberry juice, packed with antioxidants.",
        imagePath: "lib/images/drinks/blueberry_drink.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Lemon Slice", price: 0.99),
          Addon(name: "Honey Drizzle", price: 1.49),
          Addon(name: "Coconut Milk", price: 1.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Carrot Juice",
        description:
            "Freshly squeezed carrot juice, naturally sweet and packed with vitamins.",
        imagePath: "lib/images/drinks/carrot_drink.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Ginger Zest", price: 0.99),
          Addon(name: "Turmeric Boost", price: 1.49),
          Addon(name: "Mint Leaves", price: 1.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Watermelon Juice",
        description:
            "A cool, refreshing watermelon juice perfect for hot days.",
        imagePath: "lib/images/drinks/watermelon_drink.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Basil Seeds", price: 0.99),
          Addon(name: "Lime Twist", price: 1.49),
          Addon(name: "Chili Salt", price: 1.99)
        ],
        category: FoodCategory.drinks),
    Food(
        name: "Orange Juice",
        description:
            "Freshly squeezed orange juice, full of citrusy goodness and Vitamin C.",
        imagePath: "lib/images/drinks/orange_drink.jpg",
        price: 4.99,
        availableAddons: [
          Addon(name: "Pineapple Blend", price: 0.99),
          Addon(name: "Coconut Shavings", price: 1.49),
          Addon(name: "Mint Leaves", price: 1.99)
        ],
        category: FoodCategory.drinks),
  ];
  /* GETTERS */
  List<Food> get menu => _menu;

  /* 
   OPERATIONS 
   */

  //add to cart
  // remove from cart
  //get total price of items in cart
  //clear the cart

  /* 
    HELPERS
    
    */
  //generate a recept
  //format double value into money
  //format list of addons into a string summary
}
