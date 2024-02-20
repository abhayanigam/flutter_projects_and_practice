import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.green
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Get User Input"),
      ),
      body: Center(child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailText,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  // suffixText: "UserName Exist",
                  suffixIcon: IconButton(onPressed: () {  },
                    icon:  Icon(Icons.remove_red_eye),
                  ),
                  prefix: Icon(Icons.email),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.deepOrange,
                        width: 2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                          color: Colors.green,
                          width: 2
                      )
                  ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2
                        )
                    )
                  // border: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(21),
                  //   borderSide: BorderSide(
                  //     color: Colors.deepOrange
                  //   )
                  // )
                )
              ),
              Container(height: 11,),
              TextField(
                keyboardType: TextInputType.phone,
                controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      hintText: "Enter the password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(21),
                          borderSide: BorderSide(
                              color: Colors.deepOrange
                          )
                      )
                  )
              ),
              ElevatedButton(onPressed:(){
                String userEmail = emailText.text.toString();
                String password = passText.text.toString();
                
                print("Email: $userEmail, Password : $password");
              }, child: Text('Login'))
            ],
          ),),),
    );
  }
}
