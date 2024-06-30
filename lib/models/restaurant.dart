import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu =[

    //Food
    Food(
      name:"Cheese Burgers",
      description : "Classic beef patty topped with melted cheese, lettuce, and tomato in a toasted bun ",
      imagePath : "lib/images/burgers/Burgers cheese.jpg",
      price: 50000,
      category: FoodCategory.Burgers,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Beef Burgers",
      description : "Succulent beef patty with lettuce, tomato, cheese, and special sauce in a toasted bun.",
      imagePath : "lib/images/burgers/beef.jpg",
      price: 45000,
      category: FoodCategory.Burgers,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Chiken Burgers",
      description : "Juicy grilled chicken patty with lettuce, tomato, and mayo in a toasted bun. ",
      imagePath : "lib/images/burgers/chicken.jpg",
      price: 40000,
      category: FoodCategory.Burgers,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Double Meat Cheese Burge",
      description : "",
      imagePath : "lib/images/burgers/Burgers.jpg",
      price: 65000,
      category: FoodCategory.Burgers,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Steak Burgers",
      description : "A jucy",
      imagePath : "lib/images/burgers/Burgers cheese.jpg",
      price: 40000,
      category: FoodCategory.Burgers,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),

    //drinks
    Food(
      name:"Cappuccino",
      description : " Hot cappuccino with a rich, frothy top",
      imagePath : "lib/images/drinks/cappuccino.png",
      price:30000,
      category: FoodCategory.Drinks,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Oreo Shake",
      description : "Creamy milkshake blended with Oreo cookies",
      imagePath : "lib/images/drinks/Oreo.png",
      price: 25000,
      category: FoodCategory.Drinks,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Fresh orange juice",
      description : "Freshly squeezed orange juice.  y",
      imagePath : "lib/images/drinks/fresh orange.png",
      price: 20000,
      category: FoodCategory.Drinks,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"ice tea lemon",
      description : "Refreshing iced tea with a hint of lemon",
      imagePath : "lib/images/drinks/ice tea lemon.png",
      price: 15000,
      category: FoodCategory.Drinks,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"coca cola",
      description : "A jucy",
      imagePath : "lib/images/drinks/coca cola.png",
      price: 40000,
      category: FoodCategory.Drinks,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),

    //desert
    Food(
      name:"Chocolate brownies",
      description : "Rich and fudgy chocolate brownies. ",
      imagePath : "lib/images/dessert/Chocolate brownies.png",
      price: 25000,
      category: FoodCategory.Desert,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Cinnamon Apple Pie",
      description : "Warm apple pie with a hint of cinnamon.  ",
      imagePath : "lib/images/dessert/Cinnamon Apple.png",
      price: 30000,
      category: FoodCategory.Desert,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Sundae Chocolate",
      description : " Soft serve ice cream topped with chocolate syrup and sprinkles.",
      imagePath : "lib/images/dessert/sundee.png",
      price: 20000,
      category: FoodCategory.Desert,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Ice Cream",
      description : "Assorted flavors available.  ",
      imagePath : "lib/images/dessert/ice.png",
      price: 15000,
      category: FoodCategory.Desert,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),


    //sides
    Food(
      name:"Fish and chips",
      description : "Crispy golden fries served with a side of ketchup.",
      imagePath : "lib/images/sides/fish_and_chips_side.png",
      price: 50000,
      category: FoodCategory.Sides,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Onion Rings",
      description : "Crispy fried onion rings served with a side of ranch dipping sauce. ",
      imagePath : "lib/images/sides/onion_rings_side.png",
      price: 25000,
      category: FoodCategory.Sides,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Mac and Cheeese",
      description : "Creamy macaroni pasta with a rich cheese sauce.",
      imagePath : "lib/images/sides/mac_cheeese_side.png",
      price: 35000,
      category: FoodCategory.Sides,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Fried Fries",
      description : "Crispy golden fries served with a side of ketchup",
      imagePath : "lib/images/sides/loadedfries_side.png",
      price: 20000,
      category: FoodCategory.Sides,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name:"Steak Burgers",
      description : "A jucy",
      imagePath : "lib/images/sides/Burgers cheese.png",
      price: 40000,
      category: FoodCategory.Sides,
      availableAddons:[
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),

  ];
  // getter
  List<Food> get menu => _menu;

  //operator
 //helpers

}