import 'package:flutter/material.dart';

class products extends StatefulWidget {
  const products({super.key});

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color(0xffF5FBFB),
      appBar: AppBar(title: const Text("Product Catalog"),backgroundColor: const Color(0xffF5FBFB)),
      body:  Column(
        children: [
          Center(
            child: Container(
              height: height * 0.1,
              width: width * 0.8,
             
              child: Row(children: [
              SizedBox(width: width * 0.02,),
             const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1542496658-e33a6d0d50f6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8d2F0Y2h8ZW58MHx8MHx8fDA%3D'),),
              SizedBox(width: width * 0.02,),
              Column(
                children: [
                  Text("Black watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  Text("99.99\$",style: TextStyle(color: Colors.cyan),)
                ],
              )
            ]),
            ),
          ),
          SizedBox(height: height * 0.05,),
          Text("Black watch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
          SizedBox(height: height * 0.05,),
          SizedBox(width: width * 0.8,child: ElevatedButton(onPressed: (){}, child: Text("Try in AR"),style: ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>(Colors.cyan)),),)
        ],
      ),



    );
  }
}