import 'package:flutter/material.dart';
class PropertyDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              elevation: 1.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Mark Villas",style: TextStyle(color: Colors.black54,fontSize: 24.0,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.0,),
                      Text("Rental date: 5th Monthly",style: TextStyle(color: Colors.grey),),
                      SizedBox(height:5.0),
                      Text("Block 12, Level 6, Unit 9",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text("Past due: 20 Apr 2018",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                  RaisedButton(
                  onPressed: (){},color: Colors.grey,child: Text("RENTED",style: TextStyle(
                      color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0,letterSpacing: 1.6
                  ),),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      //side: BorderSide(color: Colors.black54)
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Card(
              elevation: 1.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("East Aliview",style: TextStyle(color: Colors.black54,fontSize: 24.0,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.0,),
                      Text("Rental date: 5th Monthly",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text("Block 12, Level 6, Unit 9",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 5.0,),
                      Text("Past due: 20 Apr 2018",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                  RaisedButton(color: Colors.red,
                    onPressed: (){},
                    child: Text("VACANT",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18.0,letterSpacing: 1.6
                    ),),
                    shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );


  }
}
