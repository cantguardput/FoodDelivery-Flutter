import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddelevery/components/my_button.dart';
import 'package:fooddelevery/components/my_cart_tile.dart';
import 'package:fooddelevery/models/restaurant.dart';
import 'package:fooddelevery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context){
    return Consumer<Restaurant>(builder: (context, restaurant, child ){
      final userCart = restaurant.cart;
      return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title :const Text("Are sure you want to clear the cart ? "),
                        actions: [
                          TextButton(onPressed: () => Navigator.pop(context),

                          child: const Text("Cancel)"),
                          ),

                          TextButton(onPressed: (){
                            Navigator.pop(context);
                            restaurant.clearCart();

                          }, child: const Text("Yex)"),
                          ),
                        ],
                      ),

                  );
                },
                icon: const Icon(Icons.delete),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty ?
                      Expanded(child : Center
                        (child: const Text("Cart is Empty...."),
                      ),
                      ):
                  Expanded(child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder:(context, index) {
                      final cartItem = userCart[index];
                      return MyCartTile(cartItem: cartItem);
                  },
                  )
                  ),
                ],
               ),
            ),
            
            MyButton(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) =>const PaymentPage(),
                  ),
                ),
                text: "Go to CheckOut"),
            const SizedBox(height: 25),
          ],
        ),
        );
      },
    );
  }
}