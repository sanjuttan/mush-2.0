import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_apprecheck/screens/signuppage.dart';
import 'package:flutter_apprecheck/styles/constants.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage() ,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
        body: Container(
         width: double.infinity,
         decoration: BoxDecoration(
         gradient: LinearGradient(
         begin: Alignment.topCenter,
         colors: [
         Colors.green[900],
         Colors.green[800],
         Colors.lightGreen[400]
              ]
         )
         ),

             child : Column( crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   mush(),

                     Text(
                       '',
                       style: kLabelStyle,
                     ),
                     SizedBox(height: 10.0),
                     Container(margin: EdgeInsets.only(left:20.0,right: 20.0 ),


                       alignment: Alignment.centerLeft,
                       decoration: BoxDecoration(
                         color: Color(0xFFFFFFFF),

                         borderRadius: BorderRadius.circular(30.0),
                         boxShadow: [
                           BoxShadow(
                             color: Colors.black12,
                             blurRadius: 6.0,
                             offset: Offset(0, 2),
                           ),
                         ],
                       ),
                       height: 60.0,
                       child: TextField(
                         keyboardType: TextInputType.emailAddress,
                         style: TextStyle(
                           color: Colors.black,
                           fontFamily: 'OpenSans',
                         ),
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           contentPadding: EdgeInsets.only(top: 14.0,),
                           prefixIcon: Icon(
                             Icons.email,
                             color: Colors.black,
                           ),
                           hintText: ' Email',
                           hintStyle: kHintTextStyle,
                         ),
                       ),
                     ),
                   Text(
                     '',
                     style: kLabelStyle,
                   ),
                   SizedBox(height: 10.0),
                   Container(margin: EdgeInsets.only(left:20.0,right: 20.0 ,),
                     alignment: Alignment.centerLeft,
                     decoration:BoxDecoration(
                       color: Color(0xFFFFFFFF),

                       borderRadius: BorderRadius.circular(30.0),
                       boxShadow: [
                         BoxShadow(
                           color: Colors.black12,
                           blurRadius: 6.0,
                           offset: Offset(0, 2),
                         ),
                       ],
                     ),
                     height: 60.0,
                     child: TextField(
                       obscureText: true,
                       style: TextStyle(
                         color: Colors.black87,
                         fontFamily: 'OpenSans',
                       ),
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         contentPadding: EdgeInsets.only(top: 14.0),
                         prefixIcon: Icon(
                           Icons.lock,
                           color: Colors.black,
                         ),
                         hintText: 'Enter your Password',
                         hintStyle: kHintTextStyle,
                       ),
                     ),
                   ),
                   Row(
                     children: <Widget>[
                       Expanded(
                         child:  Container( margin: EdgeInsets.only( left: 20.0, top: 40.0),
                           height: 46, width: 100,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(50),
                               color: Colors.black87
                           ),
                           child: Center(
                             child: Text("FORGOT PASSWORD", style: TextStyle(color: Colors.white,fontSize: 13, fontWeight: FontWeight.bold),),
                           ),
                         )),


                       Expanded(
                           child:  Container(margin: EdgeInsets.only( left: 20.0, top: 40.0),
                               height: 70,

                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(50),

                               ),
                               child: ButtonTheme( minWidth:130.0 ,

                                   height: 45.0,  child: Center(child: RaisedButton( color: Colors.black,
                                   child: Text("LOGIN", style: TextStyle(color: Colors.white,fontSize: 13, fontWeight: FontWeight.bold),),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(50.0),
                                   ),
                                   onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) {
                                     return ;
                                   }),
                                   );}),)
                               )
    )  )   ],
    ), SizedBox(height: 20,width: 100,),

        Expanded(
            child: Container( height: 20, width: 500, decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(0))
            ),

              child: Column(
              children: <Widget>[
                SizedBox(height: 30,),
                 Text(' OR CONNECT USING ', style: TextStyle(color: Colors.green),),
                Socialmedia(),

                Expanded(
                  child: Container( margin: EdgeInsets.only(left: 160,top: 10,),
                    height: 70, width: 500, decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(0),bottomLeft: Radius.circular(70))
                  ),

                 child: Column(children: <Widget>[
                   Row( children: <Widget>[
                     SizedBox(height: 30,),
                     Text(' create new ',textAlign: TextAlign.right, style: TextStyle(color: Colors.white,
                         fontSize: 12,fontWeight: FontWeight.w900),),
                       Container( padding: EdgeInsets.only(),
                           alignment: Alignment.centerLeft,


                        child: RaisedButton( color: Colors.black,
                                  child: Text("  MUSHROOM",textAlign: TextAlign.right ,style: TextStyle(color: Colors.green, fontSize:14.9,fontWeight: FontWeight.w900),),

                                  onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return signuppage() ;
                                  }),
                                  );}),)
                          ])
                      ])  ))])
                  ))],

                   )
                  ));



           }}

   class mush extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       AssetImage assetImage = AssetImage("images/hiclipart.png");
       Image image = Image(image: assetImage, width: 360.0, height: 110.0,);
       return Container(alignment: Alignment.center,
         child: image, margin: EdgeInsets.only(top: 80.0,bottom: 60),);
     }
   }
Widget Socialmedia() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildSocialBtn(
              () => print('Login with Facebook'),
          AssetImage(
            'assets/logos/facebook.jpg',
          ),
        ),
        _buildSocialBtn(
              () => print('Login with Google'),
          AssetImage(
            'assets/logos/google.jpg',
          ),
        ),
      ],
    ),
  );
}
Widget _buildSocialBtn(Function onTap, AssetImage logo) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: logo,
        ),
      ),
    ),
  );
}