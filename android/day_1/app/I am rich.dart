import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(

        backgroundColor: Colors.teal,

        body: SafeArea(
          child: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage:AssetImage('images/bar.png'),
                ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Emmanuel Walton',style:TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),),
              ),
              Text('Flutter Developer',style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'SourceCode',
                letterSpacing: 2.5
                ),),
              SizedBox(
                height: 20,
                width: 160,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),

              Card(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),

                child: ListTile(
                  leading:Icon(Icons.phone,
                    size: 20,
                    color: Colors.teal,),
                  title: Text('+233 53 200 8746',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal,
                ),
                  ),
              ),
              ),
                SizedBox(
                  width: double.infinity,
                  height: 10,

                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                  child: ListTile(
                    leading:Icon(Icons.email,
                      size: 20,
                      color: Colors.teal,
                    ),
                    title:Text('waltonelijah@yahoo.com',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal

                      ),)

                  ),
                  ),
              ],
              ),
          )

          ),
          
          ),
        ),


  );
}
