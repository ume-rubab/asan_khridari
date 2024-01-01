import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
   double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Color(0xffF5FBFB),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.05,),
              Container(
                height: height * 0.08,
                color: Colors.white,
                child: Center(child: Text("Admin dashboard",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.blue),)),
                
              ),
               SizedBox(height: height * 0.05,),
                    Container(
                      height: height* 0.1,
                      width: width * 0.8,
                     
                      decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_outlined),
                          suffixIcon:  Icon(Icons.tune_rounded),
                          hintText: "search products...",
                          
                           border: OutlineInputBorder(
                               borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50)
                           ),
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.05,),
                    Row(children:
                    [
                      SizedBox(width: width*0.05,),
                       Text("ProductList"),
                       Spacer(),
                       ElevatedButton(onPressed: (){},
                        child: Text("Add Product"),
                       ),
                       SizedBox(width: width*0.02,),
                       ],)
              ]
              )
              )
              )
              );
  }
}