import 'package:exommerce_app/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo
            Icon(
              Icons.shopping_bag,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 25,),
        
            //title
            Text(
              "Minimal Shop",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            //const SizedBox(height: 25,),
        
            //subtitle
            Text(
              "premium quality products",
              style: TextStyle(
                color: Colors.grey[100],
              ),
            ),
            const SizedBox(height: 25,),

            //button
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'), 
              child: const Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
