import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  //const FourthPage({super.key});
   TextEditingController usernameController = new TextEditingController();
   TextEditingController passwordController = new TextEditingController();

   var usernameValue = "";
   var passwordValue = "";

  // for statefull ito
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow ,
        body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
          //horizontal: 20   or .only (left:100)   or   all


          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center ,
            children: <Widget>[

                // scale: 5,  for image.network
              Image.asset('assets/images/minionn.png' ,
                height: 200 ,
                width: 200 ,
              ) ,

               Text("VERIFICASHOONN" ,
                  style: TextStyle(
                            fontSize: 30,
                            // fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                  ),
             ),

              TextField(controller: usernameController  ,
                        //controller: usernameController,
                        decoration:InputDecoration(
                          //inputdecoration for the inside na of etxtfield
                            hint: Text("Username"),
                            icon: Icon(Icons.person) ,
                            fillColor: Colors.amberAccent ,

                            border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20) ,

                            )
                        ),
              ) ,
              SizedBox(height: 10,),

              TextField(controller: passwordController  ,
                //controller: passwordController,
                decoration:InputDecoration(
                  //inputdecoration for the inside na of etxtfield
                    hint: Text("Password"),
                    icon: Icon(Icons.password) ,
                    fillColor: Colors.amberAccent ,

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20) ,

                    )
                ),
              ) ,


              SizedBox(height: 20,) ,
              ElevatedButton(onPressed: (){
               // u insert ur backend here this need argument na coz its bleeding
               // print(usernameController.text)  print pa nga pero what if no
                setState(() {

                  // Text("username: " $usernameController);

                });

             }, child: Text("Login",
                style: TextStyle(
                        fontSize: 20
                ),
              ) ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber ,
                  foregroundColor: Colors.black


                ),
             ),

            // usernameValue = usernameController.text;
            // passwordValue = passwordController.text;

              Text("Username"),
              Text("Password"),

        //     var variable1 = "World";
        // var variable2 = "Hello ";
        //     print(variable2 + variable1); // Output: Hello World



            ],
            //children

          ),
        ),
    );
  }
}
