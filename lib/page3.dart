// import 'package:flutter/material.dart';
//
// class ThirdPage extends StatelessWidget {
//   const ThirdPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.pink,
//         title: Text('Acitivty 1 Page'),
//         style: TextStyle(
//                 color: Colors.white)
//       ),
//
//       body: SingleChildScrollView(
//           child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//
//             children: [],
//           ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';


class ThirdPage  extends StatefulWidget {
  // alt enter stateles to make it stateful
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  TextEditingController SizeChanger = new TextEditingController();

  // with changin variable dapat naka stateful
  // no neeed to repeat style as long as its same variable
  // she rerun the state



  var textmenustyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: Colors.blue ,
  );

  var menuContSize = 80.0 ;
  var textValue = "Post 1";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 1 Page"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dashboard",
            style: TextStyle(
                      fontSize: 40,
            ),
          ),
          TextField(
            controller: SizeChanger,
          ),
          ElevatedButton(onPressed: (){
            //setstae help to update the value
            setState(() {
              // menuContSize = SizeChanger.text   not going to work bcoz its string need to double it
                  menuContSize = double.parse (SizeChanger.text);
                  textValue = SizeChanger.text;
            });
          }, child: Text("Press Me")
          ),



          Row(
            children: [
              Container(
                  width: menuContSize,
                  color: Colors.green,
                  child: Center(child: Text("Menu 1",
                    style: textmenustyle,
                    // style: TextStyle(
                    //       fontSize: 30,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.blue ,
                    // ),
                  )
                  )
              ),
              Container(
                  width: menuContSize,
                  color: Colors.pink,
                  child: Center(child: Text("Menu 2",
                    style: textmenustyle,
                  )
                  )
              ),
              Container(
                  width: menuContSize,
                  color: Colors.amberAccent,
                  child: Center(child: Text("Menu 3",
                    style: textmenustyle,
                  )
                  )
              )
            ],
          ),

          // Example: A full-width button inside a padding wrapper
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.amber,
            child: Center(
              child: Text("Login"),
            ),
          ),
          // // Example: A container that takes all available vertical space
          // Container(
          //   height: double.infinity,
          //   color: Colors.amber,
          //   child: Center(
          //     child: Text("Full Height Section"),
          //   ),
          // ) ,


// + or $

          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" The size is: " + textValue,
                  style: TextStyle(
                      fontSize: 30
                  ),
                ),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec facilisis libero. Aliquam tellus massa, elementum a accumsan nec, vehicula eget magna. Vestibulum auctor tempus nulla eu scelerisque. Quisque sed viverra diam. Nam vehicula ac turpis in eleifend. Nullam porta efficitur lacus, ac rutrum nunc mattis ut. Donec maximus vulputate eros, ac ullamcorper risus sagittis sed.")
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Post 2", style: TextStyle(fontSize: 30),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec facilisis libero. Aliquam tellus massa, elementum a accumsan nec, vehicula eget magna. Vestibulum auctor tempus nulla eu scelerisque. Quisque sed viverra diam. Nam vehicula ac turpis in eleifend. Nullam porta efficitur lacus, ac rutrum nunc mattis ut. Donec maximus vulputate eros, ac ullamcorper risus sagittis sed.")
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Post 3", style: TextStyle(fontSize: 30),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec facilisis libero. Aliquam tellus massa, elementum a accumsan nec, vehicula eget magna. Vestibulum auctor tempus nulla eu scelerisque. Quisque sed viverra diam. Nam vehicula ac turpis in eleifend. Nullam porta efficitur lacus, ac rutrum nunc mattis ut. Donec maximus vulputate eros, ac ullamcorper risus sagittis sed.")
              ],
            ),
          ),


        ],

      ),
    );
  }
}
