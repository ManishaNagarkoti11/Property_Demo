import 'package:flutter/material.dart';
import 'package:property_demo/screen/selected_image.dart';
import 'package:property_demo/details/client_detail.dart';
class PropertyScreen extends StatefulWidget {
  @override
  _PropertyScreenState createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  int imageIndex=0;
  final List<String> image = [
  'images/house4.jpg',
  'images/house1.jpg',
  'images/house5.jpg',
  'images/house6.jpg',
  ];
  void _previousImage() {

  setState(() {
  imageIndex = imageIndex > 0 ? imageIndex - 1 : 0;
  });
  }
  void _nextImage() {
  setState(() {
  imageIndex = imageIndex < image.length-1 ? imageIndex+1 : imageIndex;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Center(
            child: Stack(
                children: [

                  Container(
                    height: 200.0,
                    width: double.infinity,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_outlined ,color: Colors.white,size: 40.0,),
                        Text("Details",style: TextStyle(letterSpacing: 1.5,fontSize: 35.0,color: Colors.white,fontWeight: FontWeight.bold),),
                        Icon(Icons.add_circle_outline,color: Colors.white,size: 40.0,)
                      ],
                    ),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(25.0),
                  ),

                  Container(
                    //margin: EdgeInsets.symmetric(vertical:100.0 ,horizontal: 20.0),
                    margin: EdgeInsets.fromLTRB(20.0, 100.0, 20.0,12.0),
                    height: 300,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(25.0),
                      image: DecorationImage(
                          image: AssetImage(image[imageIndex]),fit:BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    height: 90,
                    width: 210,
                    margin: EdgeInsets.only(top:250,left: 210.0,right: 0.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child:Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:12.0,left: 12.0),
                          child: Column(
                            children: [
                              Text("Master Bedroom",style: TextStyle(color: Colors.red,fontSize: 24.0,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5.0,),
                              Text("Main big double bedroom \n with landscape view",style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
          Container(
            child:  Positioned(
              top:380.0,
              left: 25.0,
              right: 25.0,
              child: SelectedPhoto(numberofDots:image.length,imageIndex:imageIndex),
            ),
          ),
          SizedBox(height: 12.0,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text("PREVIOUS",style:
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
                  onPressed: _previousImage,
                  elevation: 10,
                  color: Colors.blue,
                ),
                SizedBox(width: 20,),
                RaisedButton(
                  child: Text("NEXT",style:
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white)),
                  onPressed: _nextImage,
                  elevation: 10,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0,),
          ClientInformation(),
          SizedBox(height: 16.0,),
          Container(
            margin: EdgeInsets.only(left: 20.0,right: 20.0),
            height:60,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(40.0)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("View Agreement",style: TextStyle(color: Colors.white,fontSize: 24),),
                Icon(Icons.arrow_forward,color: Colors.white,)
              ],
            ),
          ),
           SizedBox(
             height: 18.0,
           ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Center(
            child: Ink(
            decoration: const ShapeDecoration(
            color: Colors.red,
            shape: CircleBorder(),
            ),
            child: IconButton(
            icon: Icon(Icons.phone,),
            color: Colors.white,
            onPressed: () {},
            ),
            ),
      ),
          ),
    ],
      ),
    );
  }
}
