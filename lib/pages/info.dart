     import 'package:flutter/material.dart';
    class Data  extends StatefulWidget {  
      @override  
      _State createState() => _State();  
    }  
      
    class _State extends State<Data > {  
      @override  
      Widget build(BuildContext context) {  
        return Directionality(
          textDirection: TextDirection.rtl,
                  child: Scaffold(  
              appBar: AppBar(  
                title: Text('املئ المعلومات المطلوبة'),  
                centerTitle: true,
              ),  
              body: SingleChildScrollView(
                              child: Padding(  
                    padding: EdgeInsets.all(15),  
                    child: Column(  
                      children: <Widget>[  
                        Padding(  
                          padding: EdgeInsets.all(15),  
                          
                          child: TextField(  
                            
                            decoration: InputDecoration(  
                              border: OutlineInputBorder(),  
                              labelText: 'الاسم الكامل',  
                              hintText: 'الاسم',  
                            ),  
                          ),  
                        ),  
                         Padding(  
                          padding: EdgeInsets.all(15),  
                          child: TextField(  
                            decoration: InputDecoration(  
                              border: OutlineInputBorder(),  
                              labelText: 'الرقم الاول ',  
                              hintText: 'الرقم',  
                            ),  
                          ),  
                        ),
                         Padding(  
                          padding: EdgeInsets.all(15),  
                          child: TextField(  
                            decoration: InputDecoration(  
                              border: OutlineInputBorder(),  
                              labelText: 'الرقم التاني',  
                              hintText: 'الرقم',  
                            ),  
                          ),  
                        ),
                         Padding(  
                          padding: EdgeInsets.all(15),  
                          child: TextField(  
                            decoration: InputDecoration(  
                              border: OutlineInputBorder(),  
                              labelText: 'العنوان(منطقة-شارع)', 
                              hintText: 'Enter Your Name', 
                            ),  
                          ),  
                        ),
                        Text("طريقة الدفع عند الاستلام",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("رسوم التوصيل بمقدار 10 شيقل",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        RaisedButton(  
                          textColor: Colors.white,  
                          color: Colors.blue,  
                          child: Text('ارسال الطلب '),  
                          onPressed: (){},  
                        )  
                      ],  
                    )  
                ),
              )  
          ),
        );  
      }  
    }  