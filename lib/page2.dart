//
//   //aslennn
//
//   import 'package:flutter/material.dart';
//
//   class SecondPage extends StatefulWidget {
//     //alt + enter stateless to show import
//
//     //u should comma every widget
//     const SecondPage({super.key});
//
//     @override
//     State<SecondPage> createState() => _SecondPageState();
//   }
//   //state of the current page
//   //first class is the one qho initiates the flutter
//
//   class _SecondPageState extends State<SecondPage> {
//
//   //method is babaw sa override
//
//   ImageStack(imageFile, textValue) => Stack (
//     alignment: Alignment.bottomLeft,
//           children: [
//     Image.asset(
//     imageFile,
//     height: 100,
//     width: 150,
//   ),
//       Text(textValue,
//           style: TextStyle(
//               color: Colors.white
//           ),
//       ),
//       ],
//   );
//
//     @override
//     Widget build(BuildContext context) {
//       return Scaffold (
//
//
//         appBar: AppBar(
//           title: Text("Facebook Ngani"),
//           backgroundColor: Colors.white,
//           foregroundColor: Colors.black,
//           elevation: 0,
//         ),
//
//
//
//         body: SingleChildScrollView(
//           // alt + enter to wrap with row ang center
//           // child is the property column is the widget
//           // row and column can have many child
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               //scroll view part
//               SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                 child: Row (
//                   children: [
//                     SizedBox(height: 10),
//                     SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                       // Stack (
//                       //
//                       //   children: [
//                     ImageStack("assets/images/pic3.jpg" , "MEOW") ,
//                             ImageStack("assets/images/pic2.jpg" , "MEOW2") ,
//                             ImageStack("assets/images/pic1.jpg" , "MEOW3") ,
//
//                           ],
//                         )
//                     ),
//
//
//                     SizedBox(height: 20,
//                     ),
//                   ],
//                 ),
//
//
//
//
//               Image.asset('assets/images/cat.jpg' ,
//               height: 100 ,
//               width: 200 ,
//               ) ,
//
//               Image.asset('assets/images/pic2.jpg' ,
//                 height: 200 ,
//                 width: 200 ,
//               ) ,
//
//               Image.asset('assets/images/pic3.jpg' ,
//                 height: 500 ,
//                 width: 300 ,
//               ) ,
//
//               Image.asset('assets/images/pic3.jpg' ,
//                 height: 200 ,
//                 width: 200 ,
//               ) ,
//               // Image.network('')
//
//
//               Row(
//                 children: [
//
//                   Container(
//                     height: 50,
//                     width: 150 ,
//                     color: Colors.blue ,
//                     child: Center(
//                         child: Text("Hello",
//                           // alt + enter the widget to automatically wrap it with unsa is ur choice
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20 ,
//                           ),
//                         )
//                     ),
//
//                   ),
//                   Container(
//                     height: 50,
//                     width: 150 ,
//                     color: Colors.green ,
//                     child: Center(
//                         child: Text("World",
//                           // alt + enter the widget to automatically wrap it with unsa is ur choice
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20 ,
//                           ),
//                         )
//                     ),
//
//                   ),
//                 ],
//               ) ,
//               Row(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 150 ,
//                     color: Colors.pink ,
//                     child: Center(
//                         child: Text("Hello",
//                           // alt + enter the widget to automatically wrap it with unsa is ur choice
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20 ,
//                           ),
//                         )
//                     ),
//
//                   ),
//                   Container(
//                     height: 50,
//                     width: 150 ,
//                     color: Colors.red ,
//                     child: Center(
//                         child: Text("World",
//                           // alt + enter the widget to automatically wrap it with unsa is ur choice
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20 ,
//                           ),
//                         )
//                     ),
//
//                   ),
//                 ],
//               ) ,
//               Row(
//                 children: [
//                   Container(
//                     height: 50,
//                     width: 150 ,
//                     color: Colors.green ,
//                     child: Center(
//                         child: Text("Hello",
//                           // alt + enter the widget to automatically wrap it with unsa is ur choice
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20 ,
//                           ),
//                         )
//                     ),
//
//                   ),
//                   Container(
//                     height: 50,
//                     width: 150 ,
//                     color: Colors.blue  ,
//                     child: Center(
//                         child: Text("World",
//                           // alt + enter the widget to automatically wrap it with unsa is ur choice
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20 ,
//                           ),
//                         )
//                     ),
//
//                   ),
//                 ],
//               ) ,
//
//             ],
//             // ] square bracket is a variable is a array/list of item
//           )
//         ),
//       );
//
//     }
//   }
//
//
//
//
// //dakme
import 'package:flutter/material.dart';
import 'package:samplee/page3.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}



class _SecondPageState extends State<SecondPage> {

  starRenderer(int starRating) => Row (
    children: [
      for(int x = 1 ; x <=starRating; x++ )
        Icon(Icons.star, color: Colors.yellow,),

      for (int x=1; x <= 5-starRating; x++)
        Icon(Icons.star)
    ],
  );





  ImageStack(imageFile, textValue) =>
      Stack(
        alignment: Alignment.bottomLeft,

        children: [

          Image.asset(
            imageFile,
            height: 150,
            width: 100,
          ),

          //suggested by gemini coz why have space something
          //height: 100,
          //width: 150,
          //fit: BoxFit.cover,

          Text(textValue,
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ], //children close

      );


  //post stack version

  PostDaw(profile,
      name,
      caption,
      postImg,
      starRating,) =>
      // column kay aron pasunod and dili stack kay column ngani
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 20,),


      Row(
        children: [
          Image.asset(
            profile,
            width: 55,
            height: 55,
          ),

          Text(
            name,
            style: TextStyle(
              // patakaaaa  backgroundColor: Colors.pinkAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),


        ],
      ),
      Text(
        caption,
        style: TextStyle(
          fontSize: 15,
        ),
      ),


      SizedBox(height: 10,),


      Image.asset(
        postImg,
        //width: 350,
        width: double.infinity, //if matic full coverage bes
        height: 200,
        fit: BoxFit.cover,
      ),

      SizedBox(height: 15,),


//for stars rating
      Row(
          children: [
            //Icon(Icons.star),
            starRenderer(starRating),
            Text(starRating.toString()),
          ]
      )


    ],


  );








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      //appbar for title
      appBar: AppBar(
        title: Text("Facebook Imitation"),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),

      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                SizedBox(height: 10,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageStack("assets/images/pic8.jpg",
                          "Maclab"),
                      ImageStack("assets/images/pic4.jpg",
                          "Outside UM"),
                      ImageStack("assets/images/pic9.jpg",
                          "Flag Pole"),
                    ],
                  ),

                ),


                PostDaw (
                  'assets/images/pic1.jpg',
                  'Dakme Tungtungsahur',
                  'A Day in my Life as a Pooper',
                  'assets/images/pic11.jpg',
                  2,
                ),
                PostDaw (
                  'assets/images/pic7.jpg',
                  'Darwina Pratapim',
                  'Ooopsss Ooppss OoooPppppSssss',
                  'assets/images/pic12.jpg',
                  3,
                ),
                PostDaw (
                  'assets/images/pic6.jpg',
                  'Yohoo Dito ang Tingin',
                  'Revive me Jett',
                  'assets/images/pic13.jpg',
                  5
                ),

                SizedBox(height: 20,),




                // // first line nga row
                // // how kaya // borderRadius: BorderRadius.circular(50),
                // Row(
                //   children: [
                //     SizedBox(width: 10,),
                //     Image.asset(
                //       'assets/images/pic1.jpg',
                //
                //       width: 55,
                //       height: 55,
                //     ),
                //
                //     //ana si ai ganioto daw
                //     //CircleAvatar(
                //     //       radius: 27.5,
                //     //       backgroundImage: AssetImage('assets/images/pic1.jpg'),
                //     //     ),
                //
                //     //before the big screen
                //     SizedBox(width: 10,),
                //
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Dakme Tungtungsahur',
                //           style: TextStyle(
                //             // patakaaaa  backgroundColor: Colors.pinkAccent,
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.pink,
                //           ),
                //         ),
                //         Text('A Day in my Life as a Pooper'
                //         ),
                //       ], //children
                //     ),
                //   ],
                // ),
                //
                // //wide screen na
                // SizedBox(height: 20,),
                // Image.asset(
                //   'assets/images/pic11.jpg',
                //   width: 350,
                //   //width: double.infinity,  if matic full coverage bes
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                //
                //
                //
                // SizedBox(height: 20,),
                //
                //
                // //2nd post
                // Row(
                //   children: [
                //     SizedBox(width: 10,),
                //     Image.asset(
                //       'assets/images/pic7.jpg',
                //
                //       width: 55,
                //       height: 55,
                //     ),
                //
                //     //before the big screen
                //     SizedBox(width: 10,),
                //
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Darwina Pratapim',
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.pink,
                //           ),
                //         ),
                //         Text('Ooopsss Ooppss OoooPppppSssss'
                //         ),
                //       ], //children
                //     ),
                //   ],
                // ),
                //
                // //wide screen na
                // SizedBox(height: 10,),
                // Image.asset(
                //   'assets/images/pic12.jpg',
                //   width: double.infinity,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                //
                //
                // SizedBox(height: 20,),
                //
                //
                // //3rd post
                // Row(
                //   children: [
                //     SizedBox(width: 10,),
                //     Image.asset(
                //       'assets/images/pic6.jpg',
                //
                //       width: 55,
                //       height: 55,
                //     ),
                //
                //     //before the big screen
                //     SizedBox(width: 10,),
                //
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           'Yohoo Dito ang Tingin',
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.pink,
                //           ),
                //         ),
                //         Text('Revive me Jett'
                //         ),
                //       ], //children
                //     ),
                //   ],
                // ),
                //
                // //wide screen na
                // SizedBox(height: 10,),
                // Image.asset(
                //   'assets/images/pic13.jpg',
                //   width: double.infinity,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),


                SizedBox(height: 20,),



                Image.asset(
                  'assets/images/cat.jpg',
                  height: 200,
                  width: 200,
                ),
                Image.asset(
                  'assets/images/pic2.jpg',
                  height: 200,
                  width: 200,
                ),
                Image.asset(
                  'assets/images/pic3.jpg',
                  height: 200,
                  width: 200,
                ),

                Image.asset(
                  'assets/images/pic3.jpg',
                  height: 200,
                  width: 200,
                ),
                Image.asset(
                  'assets/images/pic3.jpg',
                  height: 200,
                  width: 200,
                ),


                //will bring u to page 3 angas
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=> ThirdPage(

                          )
                      )
                  );

                }, child: Text("Page 3"
                ),
                ),


              ],
            ),
          )
      ),
    );
  }
}
