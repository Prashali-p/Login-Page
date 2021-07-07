

import 'package:flutter/material.dart';
import 'package:flutter_ap/Bar.dart';
import 'package:flutter_ap/main.dart';


class Second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[



        Image(image: AssetImage('images/phool.jpeg'),
          fit: BoxFit.cover,),




        Scaffold(

          backgroundColor: Colors.black54,

          body: Stack(
            children: [




              DraggableScrollableSheet(
                builder:(context,controller)=>Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFF616161),
                              Color(0xFFD6D6D6),]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(200),
                            topRight: Radius.circular(0))),
                  child: SingleChildScrollView(
                    controller: controller,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 100,),


                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email Id',
                              labelStyle: TextStyle(
                                  color: Colors.yellow[300],
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                              ),
                              prefixIcon: Icon(Icons.account_circle,color: Colors.yellow[300]),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green)
                              ),),),


                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Create Password',
                              labelStyle: TextStyle(
                                  color: Colors.yellow[300],
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold
                              ),
                              prefixIcon: Icon(Icons.lock,color: Colors.yellow[300]),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.green)
                              ),),),
                          SizedBox(height: 20,),

                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color>(Colors.lightGreen),
                              ),

                              onPressed: (){



                              },   child: Text('Sign In',style: TextStyle(color: Colors.black),
                          )),

                          SizedBox(height: 20,),


                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color>(Colors.lightGreen),
                              ),

                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));


                              },   child: Text('Have Account?',style: TextStyle(color: Colors.black),
                          ))




                        ],
                      )),
              ),
                )
              )],
          ),
        )
      ],




    );
  }

}