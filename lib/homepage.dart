import 'package:asan_khridari/admin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.05,),
              Container(
                width: width * 0.8,
                height: height * 0.15,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("Asan Kharidari",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                    Text("Shop smart, shop effortlessly",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
                    )
                    
                  ],
                ),
              ),
              SizedBox(height: height * 0.025),
              Container(height: height*0.6,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://cdn.pixabay.com/photo/2016/11/22/19/08/hangers-1850082_1280.jpg'),fit: BoxFit.cover),color: Colors.black),),
              SizedBox(height:height* 0.05,),
               ElevatedButton(onPressed: (){}, child: Text("View Products")),
             
              SizedBox(height:height* 0.05,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin()));
              }, child: Text("Admin")),
            ],
          ),
        ),
      ),
    );
  }
}