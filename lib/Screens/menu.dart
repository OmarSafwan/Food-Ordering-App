import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_projct/Components/button.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow[600],
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),

      body: Stack(children: <Widget>[
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/wwe.jpg'),
                    fit: BoxFit.cover)
            )
        ),
        SingleChildScrollView(
        child: Column(
          children: [                                             // Best Seller
            Padding(
              padding: EdgeInsets.all(15),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best Seller!',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Button(
                        color: Colors.orange,
                        text: 'Buy 10\$',
                        onTap: () {Navigator.pushNamed(context, '/checkout');
                           },
                      ),
                    ],
                  ),

                  Container(
                    width: 110,
                    height: 110,
                    child: Image.asset('lib/assets/sand2.png'),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Divider(
              thickness: 10,
              color: Colors.orange,
            ),
            Divider(
              thickness: 10,
              color: Colors.orange,
            ),

            SizedBox(height: 20),

            // Normal Menu

            Container(
              child: Text(
                'Menu Items',
                style: GoogleFonts.dmSerifDisplay(fontSize: 30),
              ),
            ),

            SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildMenuItem(
                    title: 'Double Cheese',
                    price: '9.99\$',
                    rating: '4.8',
                    imagePath: 'lib/assets/sand2.png',
                  ),
                  _buildMenuItem(
                    title: 'Fried Chicken',
                    price: '4.99\$',
                    rating: '4.4',
                    imagePath: 'lib/assets/sand4.png',
                  ),
                  _buildMenuItem(
                    title: 'Beef Burger',
                    price: '9.99\$',
                    rating: '4.2',
                    imagePath: 'lib/assets/sand1.png',
                  ),
                  _buildMenuItem(
                    title: 'Burger',
                    price: '7.99\$',
                    rating: '4.1',
                    imagePath: 'lib/assets/sand3.png',
                  ),

                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    ]
      )
    );
  }

  Widget _buildMenuItem({
    required String title,
    required String price,
    required String rating,
    required String imagePath,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(title,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          ),


          Container(
            width: 180,
            height: 180,
            child: Image.asset(imagePath),
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(price, style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              SizedBox(width: 20),
              Row(
                children: [
                  Text(rating, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Icon(Icons.star, color: Colors.yellowAccent),
                ],
              ),
            ],
          ),

          SizedBox(height: 10),

          Button(
            color: Colors.yellowAccent,
            text: 'Buy',
            onTap: () {Navigator.pushNamed(context, '/checkout');},
          ),
        ],),
    );
  }
}
