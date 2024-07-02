import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:fooddelevery/models/cart_item.dart';
import 'package:fooddelevery/models/food.dart';
import 'package:intl/intl.dart';



class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [

    //Food
    Food(
      name: "Cheese Burgers",
      description: "Classic beef patty topped with melted cheese, lettuce, and tomato in a toasted bun ",
      imagePath: "lib/images/burgers/Burgers cheese.jpg",
      price: 50000,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name: "Beef Burgers",
      description: "Succulent beef patty with lettuce, tomato, cheese, and special sauce in a toasted bun.",
      imagePath: "lib/images/burgers/beef.jpg",
      price: 45000,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name: "Chiken Burgers",
      description: "Juicy grilled chicken patty with lettuce, tomato, and mayo in a toasted bun. ",
      imagePath: "lib/images/burgers/chicken.jpg",
      price: 40000,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name: "Double Meat Cheese Burge",
      description: "",
      imagePath: "lib/images/burgers/Burgers.jpg",
      price: 65000,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),
    Food(
      name: "Steak Burgers",
      description: "A jucy",
      imagePath: "lib/images/burgers/Burgers cheese.jpg",
      price: 40000,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 5000),
        Addon(name: "Meat", price: 10000),
      ],
    ),

    //drinks
    Food(
      name: "Cappuccino",
      description: " Hot cappuccino with a rich, frothy top",
      imagePath: "lib/images/drinks/cappuccino.png",
      price: 30000,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 2000),
      ],
    ),
    Food(
      name: "Oreo Shake",
      description: "Creamy milkshake blended with Oreo cookies",
      imagePath: "lib/images/drinks/Oreo.png",
      price: 25000,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 2000),
      ],

    ),
    Food(
      name: "Fresh orange juice",
      description: "Freshly squeezed orange juice.  y",
      imagePath: "lib/images/drinks/fresh orange.png",
      price: 20000,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 2000),
      ],
    ),
    Food(
      name: "ice tea lemon",
      description: "Refreshing iced tea with a hint of lemon",
      imagePath: "lib/images/drinks/ice tea lemon.png",
      price: 15000,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 2000),
      ],
    ),
    Food(
      name: "coca cola",
      description: "A jucy",
      imagePath: "lib/images/drinks/coca cola.png",
      price: 40000,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 2000),
      ],
    ),

    //desert
    Food(
      name: "Chocolate brownies",
      description: "Rich and fudgy chocolate brownies. ",
      imagePath: "lib/images/dessert/Chocolate brownies.png",
      price: 25000,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "More Coklat", price: 10000),
      ],
    ),
    Food(
      name: "Cinnamon Apple Pie",
      description: "Warm apple pie with a hint of cinnamon.  ",
      imagePath: "lib/images/dessert/Cinnamon Apple.png",
      price: 30000,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "More Pie", price: 5000),
      ],
    ),
    Food(
      name: "Sundae Chocolate",
      description: " Soft serve ice cream topped with chocolate syrup and sprinkles.",
      imagePath: "lib/images/dessert/sundee.png",
      price: 20000,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "More Ice Cream", price: 5000),
      ],
    ),
    Food(
      name: "Ice Cream",
      description: "Assorted flavors available.  ",
      imagePath: "lib/images/dessert/ice.png",
      price: 15000,
      category: FoodCategory.Desert,
      availableAddons: [
        Addon(name: "more flavors", price: 5000),
      ],
    ),


    //sides
    Food(
      name: "Fish and chips",
      description: "Crispy golden fries served with a side of ketchup.",
      imagePath: "lib/images/sides/fish_and_chips_side.png",
      price: 50000,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "more chips", price: 10000),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy fried onion rings served with a side of ranch dipping sauce. ",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 25000,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "More Rings", price: 5000),
      ],
    ),
    Food(
      name: "Mac and Cheeese",
      description: "Creamy macaroni pasta with a rich cheese sauce.",
      imagePath: "lib/images/sides/mac_cheeese_side.png",
      price: 35000,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 5000),
      ],
    ),
    Food(
      name: "Fried Fries",
      description: "Crispy golden fries served with a side of ketchup",
      imagePath: "lib/images/sides/loadedfries_side.png",
      price: 20000,
      category: FoodCategory.Sides,
      availableAddons: [
        Addon(name: "More Fries", price: 5000),
      ],
    ),
  ];
  final List<CartItem> _cart = [];
  String _deliveryAddress = 'Ganet';

  // getter
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    }
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }
   double getTotalPrice(){
    double total = 0.0;

    for (CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
   }

   int getTotalItemCount(){
    int totalItemCount =0;
    for(CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
   }

   void clearCart(){
    _cart.clear();
    notifyListeners();
   }
   void updateDeliveryAddress(String newAddress){
    _deliveryAddress = newAddress;
    notifyListeners();
   }

   String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt..");
    receipt.writeln();

    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("_____________");

    for (final cartItem in _cart){
      receipt.writeln(
        "Rp.${ cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );
      if (cartItem.selectedAddons.isEmpty){
        receipt.writeln(" Add-ons: Rp.${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("_____________");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Items: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivering to " + deliveryAddress);
    return receipt.toString();
   }

   String  _formatPrice(double price){
    return " Rp. ${price.toStringAsFixed(2)}";
   }
  String  _formatAddons(List<Addon>addons){
    return addons.map((addon) => "Rp.${addon.name} (Rp.${ _formatPrice(addon.price)}) " ).join(",");
  }
}