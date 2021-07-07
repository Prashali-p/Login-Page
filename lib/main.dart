import 'package:flutter/material.dart';
import 'package:flutter_ap/Bar.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'Second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.blue,
      ),
      home: MyCustomForm()
    );
  }
}
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Scaffold(
          body: Stack(

            fit: StackFit.expand,
            children: <Widget>[

              Image(image: AssetImage('images/fore.jpeg'),
                fit: BoxFit.cover,
              ),

              Positioned(

                top: 85,
                child: Text('Welcome',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[100],
                  fontSize: 60
                ),),
              ),
              Positioned(

                top: 150,
                child: Text('Back!',style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[100],
                    fontSize: 60
                ),),
              ),








              Scaffold(
                backgroundColor: Colors.black54,

                body: DraggableScrollableSheet(
                    builder:(context,controller)=>Container(
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
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            SizedBox(height: 100,),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',

                                labelStyle: TextStyle(
                                  color: Colors.deepPurple[100],
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold
                                ),
                                prefixIcon: Icon(Icons.account_circle,color: Colors.deepPurple[100],),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightGreenAccent)
                                ),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 5,),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: Colors.deepPurple[100],
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold
                                ),
                                prefixIcon: Icon(Icons.lock,color: Colors.deepPurple[100]),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.lightGreenAccent)
                                ),
                              ),

                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 30,),


                            ElevatedButton(
                              onPressed: () {

                                if (_formKey.currentState!.validate()) {

                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                                }
                              },
                              style: ButtonStyle(
                                backgroundColor:MaterialStateProperty.all<Color>(Colors.deepPurple),
                              ),
                              child: Center(child: Text('Login')),
                            ),
                            SizedBox(height: 10,),
                             Center(
                               child: Text('or',style: TextStyle(color: Colors.purple),),
                             ),
                            SizedBox(height: 10,),
                             Center(
                               child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all<Color>(Colors.deepPurple),
                                  ),

                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second()));



                                  },   child: Text('Create Account',style: TextStyle(color: Colors.white),
                            )),
                             ),
                            SizedBox(height: 20,),

                            Center(
                              child: SignInButton(
                                Buttons.Google,
                                text: "Sign up with Google",
                                onPressed: () {



                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )



                ),
              )












            ],
          ),
        )
    );
  }
}