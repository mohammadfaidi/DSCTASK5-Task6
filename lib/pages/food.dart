
import 'package:dsctask6/pages/info.dart';
import 'package:flutter/material.dart';

class food extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<food> {
  List photo = [
    {
      "img": "images/mamol.jpg",
      "limit": "كمية",
      "pricee": "سعر 1 كغم 30 شيقل",
      "namee": "معمول"
    },
    {
      "img": "images/kubah.jpg",
      "limit": "كمية",
      "pricee": "سعر 1 كغم 40 شيقل",
      "namee": "كبة"
    },
    {
      "img": "images/yalnge.jpg",
      "limit": "كمية",
      "pricee": "سعر 1 كغم 35 شيقل",
      "namee": "يالنجي"
    },
    {
      "img": "images/moajnat.jpg",
      "limit": "كمية",
      "pricee": "سعر 1 كغم 50 شيقل",
      "namee": "معحنات"
    },
    {
      "img": "images/shoso.jpg",
      "limit": "كمية",
      "pricee": "سعر 1 كغم 50 شيقل",
      "namee": "ششبورك"
    },
  ];
  List number = ['1', '2', '3', '4', '5', '6'];

  List number2 = ['1', '1', '1', '1', '1', '1'];
//List number2 = ['abd', 'moh', 'ma', 'max', 'mad', 'hell'];
  // String selectedNu = '1';
  // String selectedNu2 = '1';
  // String selectedNu3 = '1';
  // String selectedNu4 = '1';
  // String selectedNu5 = '1';

  Color b = Colors.black;
  Color r = Colors.redAccent;
  Color b1 = Colors.blue;
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "مطبخ عربي",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 8,
          backgroundColor: Colors.blue[800],
          centerTitle: true,      
            actions: [
         IconButton(icon: Icon(Icons.directions_bike), onPressed: (){}),
        //IconButton(icon: Icon(Icons.food_bank_sharp), onPressed: (){}),
        PopupMenuButton(itemBuilder: (BuildContext context){
          return [
            PopupMenuItem(child: Text("رقم المنتج لمعمول :1")),
            PopupMenuItem(child: Text("رقم المنتج لكبة :2")),
            PopupMenuItem(child: Text("رفم المنتج ليالنجي :3 ")),
             PopupMenuItem(child: Text("رقم المنتج لمعجنات :4 ")),
             PopupMenuItem(child: Text("رقم المنتج لششبرك :5")),


          ];

        }),


        ],
           
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amberAccent,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 220,
                                height: 150,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  image: DecorationImage(
                                    image: AssetImage(photo[index]["img"]),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      DropdownButton(
                                        items: number.map((no) {
                                          return DropdownMenuItem(
                                            child: Text(no),
                                            value: no,
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          setState(() {                                            
                                            number2[index] = value;
                                          });
                                        },
                                        value: number2[index],
                                      ),
                                      Text(
                                       photo[index]["limit"],
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    photo[index]["pricee"],
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(height: 20),
                                  Row(children: [
                                    IconButton(
                                        icon: Icon(Icons.shopping_cart),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Data()));
                                        }),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Data()));
                                      },
                                      color: Colors.blue,
                                      child: Text(
                                        "طلب المنتج",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ]),
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          photo[index]["namee"],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: photo.length));
  }
}

//   Widget myCard(
//       {String img, String limt, String price, String name, int index}) {
//     return Card(
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.amberAccent,
//         ),
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     width: 220,
//                     height: 150,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.rectangle,
//                       image: DecorationImage(
//                         image: AssetImage(img),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           DropdownButton(
//                             items: number.map((no) {
//                               return DropdownMenuItem(
//                                 child: Text(no),
//                                 value: no,
//                               );
//                             }).toList(),
//                             onChanged: (value) {
//                               setState(() {
//                                 //  selectedNu = value;
//                                 number2[index] = value;
//                               });
//                             },
//                             value: number2[index],
//                           ),
//                           Text(
//                             "$limt",
//                             style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                         ],
//                       ),
//                       Text(
//                         "$price",
//                         style: TextStyle(
//                             fontSize: 15,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black),
//                       ),
//                       SizedBox(height: 20),
//                       Row(children: [
//                         IconButton(
//                             icon: Icon(Icons.shopping_cart),
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => Data()));
//                             }),
//                         RaisedButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Data()));
//                           },
//                           color: Colors.blue,
//                           child: Text(
//                             "طلب المنتج",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ]),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Text(
//               "$name ",
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }










/*
import 'package:dsctask6/pages/info.dart';
import 'package:flutter/material.dart';
 

 
	
 
class food extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<food> {
   List photo = [
    {"img": "images/mamol.jpg","limit":"كمية","pricee":"سعر 1 كغم 30 شيقل","namee":"معمول"},
    {"img": "images/kubah.jpg","limit":"كمية","pricee":"سعر 1 كغم 40 شيقل","namee":"كبة"},
    {"img": "images/yalnge.jpg","limit":"كمية","pricee":"سعر 1 كغم 35 شيقل","namee":"يالنجي"},
    {"img": "images/moajnat.jpg","limit":"كمية","pricee":"سعر 1 كغم 50 شيقل","namee":"معحنات"},
    {"img": "images/shoso.jpg","limit":"كمية","pricee":"سعر 1 كغم 50 شيقل","namee":"ششبورك"},
    
  
  ];
   List number = ['1','2','3','4','5','6'];

    List number2 = ['1','1','1','1','1','1'];

 String selectedNu = '1';
 String selectedNu2 = '1';
 String selectedNu3 = '1';
 String selectedNu4 = '1';
  String selectedNu5 = '1';

 var b = Colors.black;
 //var w = Colors.black;
 var r = Colors.redAccent;
 var b1 = Colors.blue;
 //var g = Colors.amberAccent;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("مطبخ عربي",style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 8,
        backgroundColor: Colors.blue[800],
      centerTitle: true,
      //leading: Icon(Icons.person),
    //actions: [
      //Icon(Icons.person),
   // ],

      ),
      backgroundColor: Colors.white,
  body: ListView.builder(itemBuilder: (context,index){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: myCard(img:photo[index]["img"] , limt:photo[index]["limit"] , price: photo[index]["pricee"], name: photo[index]["namee"]),
    );

  },itemCount:photo.length)


    );



    
 }

 
Widget myCard({String img,String limt , String price , String name,int index }){
return Card(
 child: Container(
width: MediaQuery.of(context).size.width,
height: 200,
decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Colors.amberAccent,
          
),
child: Column(
    children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
    //Container(
//child://Image.network('https://dlwaqty.com/storage/5790/0bcc41568a8f302ccd3c5196173a9b98_w750_h500.jpg',width: 220,height: 150,),
     
  //      Image.asset(img,width: 220,height: 150,),

    //),

Container(
  width: 220,
  height: 150,
  decoration: BoxDecoration(
	shape: BoxShape.rectangle,
	image: DecorationImage(
	  //image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
    //Image.asset(img),
    image:AssetImage(img),
	  fit: BoxFit.fill
	),
  ),
),
          Column(
            children: [
              Row(
                children: [

                  DropdownButton(items: number.map((no){



return DropdownMenuItem(child: 



Text(no),



value: no,

);

}

).toList(),
onChanged: (value){
    setState(() {
                //  selectedNu = value;
                number2[index]=value;



    });



},

//value: selectedNu,
value :number2[index],


),
                 // Text("$limt",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                 Text("$limt",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),

                ],
              ),
            Text("$price",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold,color:Colors.black),),
            SizedBox(height:20),
            Row(
              children:[
  IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){

    Navigator.push(context,MaterialPageRoute(builder: (context)=>Data()
          
          )
          
          );

         }
         
         
         ),
RaisedButton(onPressed: (){
 Navigator.push(context,MaterialPageRoute(builder: (context)=>Data()
          
          )
          
          );

},
color:Colors.blue,
child: Text("طلب المنتج",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
),
              ]
            ),
       
            ],
          )
],

          ),
        ),
       Text("$name ",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),),
    ],
),
 ),
);

}



}

*/
