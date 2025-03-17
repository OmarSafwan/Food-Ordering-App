import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Components/button.dart';
import 'Screens/menu.dart';
import 'Screens/checkout.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),
      debugShowCheckedModeBanner: false,

                                                            //routes for buttons
    routes: {
      '/menu':(context) =>  Menu(),
      '/checkout': (context) => checkout(),
                                                            //routes for buttons
    },
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(


    appBar: AppBar(backgroundColor: Colors.orange,
    leading: Icon(Icons.food_bank),
    title: Text('Ordering System'),
  ),


      body:
          Stack(children: <Widget>[


          // Background image
          Container(
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('lib/assets/ww.jpg'),
            fit: BoxFit.cover,)
          )
          ),


            Column(
                children: [
            SizedBox(height: 40,),
                  //title
            Center(child :Text('Fast and Food',
              style: GoogleFonts.dmSerifDisplay(
              fontSize: 50,)
            )
            ),


            //subtitle

             Center(child :Text('Feel the taste of the best Burgers in Town!',),
             ),


            Padding(padding: EdgeInsets.all(280)),


            Center(
                child : Button(
                  color: Colors.orange,
                  text: 'Order',
                  onTap: () {                       //go to menu
                  Navigator.pushNamed(context, '/menu');
                },)
            ),
            ] //Column children
            ),
]
          )

      );

  }
}