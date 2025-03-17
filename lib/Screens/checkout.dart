import 'package:flutter/material.dart';

class checkout extends StatefulWidget {
  @override
  _checkoutState createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {

   int _selectedIndex = 0;
   void _onpick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Checkout'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text(
            'Thank you for your order!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            child: Image.asset('lib/assets/cat3.png'),
            
          ),
          SizedBox(height: 20),
          Text(
            'Your order will be ready for pickup in 20 minutes.',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),






    );
  }
}
