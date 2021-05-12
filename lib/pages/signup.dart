import 'package:dsctask6/pages/food.dart';
import 'package:flutter/material.dart';
 

 
	
 
class SignUp extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<SignUp> {
 bool visbility = true ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("SignUp",style: TextStyle(fontWeight: FontWeight.bold),),
        elevation: 8,
        backgroundColor: Colors.blue[800],
      centerTitle: true,
      //leading: Icon(Icons.person),
    //actions: [
      //Icon(Icons.person),
   // ],

      ),
      backgroundColor: Colors.yellow[200],
  body: SingleChildScrollView(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
      child:Column(
        children: <Widget>[
          //Text("SignUp",style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35)),
                SizedBox(height:30),

        Image.asset("images/log.png",width:MediaQuery.of(context).size.width*.5,height: MediaQuery.of(context).size.height*.3,),
        //Text("Sign Up",style:TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.blue[800]),),
        SizedBox(height:30),
        
    customTextFied("UserName",false,Icon(Icons.person)),
    SizedBox(height:30),

    customTextFied("email",false,Icon(Icons.email)),
    SizedBox(height:30),
    customTextFied("password",visbility,Icon(Icons.lock)),
        SizedBox(height:30),

        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>food()
          
          )
          
          );

        }, 
        
        
        child:       Text("Create Account",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),),
        ],

      ),
    
    
    ),
  ),
    );



    
 }

 Widget customTextFied(hint,obsecure,icon){
return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextFormField(
          obscureText: obsecure,
          decoration: InputDecoration(
            hintText: '$hint',
           // suffixIcon: IconButton(icon: ob, onPressed: onPressed),
            prefixIcon: icon,
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
            ),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10)
            ),
            

          ),
      validator: (value){
        if (value.isEmpty){
          return "Email is Empty";
        }
        
      }
      

    ),
  );

}

}
