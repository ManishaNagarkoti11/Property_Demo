
import 'package:flutter/material.dart';
import 'package:property_demo/screen/selected_image.dart';
import 'package:property_demo/details/property_detail.dart';
import 'package:property_demo/screen/navigationbar.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int imageIndex=0;
  final List<String> image = [
    'images/house1.jpg',
    'images/house4.jpg',
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Property",style: TextStyle(letterSpacing: 1.5,fontSize: 35.0,color: Colors.white,fontWeight: FontWeight.bold),),
                        SizedBox(width: 80.0,),
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
                    //alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top:106,left: 300),
                    //height: 200,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10.0),
                      color: Colors.transparent,
                    ),
                    child:Row(
                      children: [
                        Icon(Icons.calendar_today_outlined,color: Colors.white,),
                        SizedBox(width: 10.0,),
                        Text("20/08/18",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 75,
                    margin: EdgeInsets.only(top:220,left: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left:10.0,top: 10.0,right: 7.0,bottom: 12.0),
                        child: Text("VACANT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    height: 100,
                    width: 360,
                    margin: EdgeInsets.only(top:250,left: 50.0,right: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child:Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top:12.0,left: 10.0),
                          child: Column(
                            children: [
                              Text("The Latitude Condo",style: TextStyle(color: Colors.black54,fontSize: 24.0,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10.0,),
                              Text("Rental date: 5th Monthly",style: TextStyle(color: Colors.grey),),
                              SizedBox(height:5.0),
                              Text("Block 12, Level 6, Unit 9",style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 5.0,),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(topRight:Radius.circular(10.0) ,bottomRight:Radius.circular(10.0)),
                          ),

                          width: 98.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("View",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:24),),
                              Text("More",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:24),)
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
            Container(
              margin: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(text: TextSpan(style: TextStyle(fontSize: 20.0,letterSpacing: 1.6,color: Colors.red,fontWeight: FontWeight.bold),
                  children: [TextSpan(text: "Most Popular"),
                  WidgetSpan(child: Icon(Icons.arrow_drop_down_outlined,color: Colors.red,))]),),
                  RichText(text: TextSpan(style: TextStyle(fontSize: 20.0,letterSpacing: 1.6,color: Colors.red,fontWeight: FontWeight.bold),
                      children: [TextSpan(text: "View"),
                        WidgetSpan(child: Icon(Icons.arrow_right_sharp,color: Colors.red,))]),),
                ],
              ),
            ),
            PropertyDetail(),
          ],
      ),
      bottomNavigationBar:NavigationBar(),

    );
  }
}
