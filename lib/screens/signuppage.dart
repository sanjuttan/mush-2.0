import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';





class signuppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomPadding: false,
    body: Container(padding: EdgeInsets.only(top: 30,),
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
    )
    , child : Column(
      children: <Widget>[

        SizedBox(height: 30,),
        Text(' MUSHROOM ',textAlign: TextAlign.center, style: TextStyle(color: Colors.white,
            fontSize: 35,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),),

        SizedBox(height: 20,width: 100,),

        Expanded(
          child: Container( padding: EdgeInsets.only(top: 20.0,),
            height: 20, width: 500, decoration: BoxDecoration(
         color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
       ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Text(' LETS GET STARTED ! ',textAlign: TextAlign.center, style: TextStyle(color: Colors.black,
                  fontSize: 20,fontWeight: FontWeight.w800,fontStyle: FontStyle.normal),),
              Container(
                margin: EdgeInsets.only (left: 40.0,right: 10.0,bottom: 10,top: 30),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),Container(
                margin: EdgeInsets.only (left: 40.0,right: 10.0,bottom: 10,top: 10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),Container(
                margin: EdgeInsets.only (left: 40.0,right: 10.0,bottom: 10,top: 10),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "+91",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only (left: 40.0,right: 10.0,top: 12),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),Container(
                margin: EdgeInsets.only (left: 40.0,right: 10.0,bottom: 10,top: 15),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "confirm password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Text('By creating an account you agree to our '
                  ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black,
                  fontSize: 10,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),),
              SizedBox(height: 10,),
                Text('Terms of service and Privacy policy '
                ,textAlign: TextAlign.center, style: TextStyle(color: Colors.black,
                    fontSize: 10,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal),),

              Expanded(
                  child:  Container(margin: EdgeInsets.only( left: 20.0, top: 40.0),
                      height: 70,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),

                      ),
                      child: ButtonTheme( minWidth:250.0 ,

                          height: 50.0,  child: Center(child: RaisedButton( color: Colors.green[900],
                              child: Text("CONTINUE", style: TextStyle(color: Colors.white,fontSize: 13, fontWeight: FontWeight.bold),),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ;
                              }),
                              );}),)
                      )
                  )  )  ],
          ),
          ))
            ],
          ),));



  }}