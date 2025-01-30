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
  ];
}
