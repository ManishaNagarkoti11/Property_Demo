import 'package:flutter/material.dart';
class SelectedPhoto extends StatelessWidget {
  final int numberofDots;
  final int imageIndex;
  SelectedPhoto({this.numberofDots,this.imageIndex});
  Widget _inactivePhot0(){
   return Container(
     child: Padding(
       padding: const EdgeInsets.only(left:3.0,right: 3.0),
       child: Container(
         height: 12.0,
         width: 12.0,
         decoration:BoxDecoration(
           //color: Colors.white,
           border: Border.all(color: Colors.red),
           borderRadius: BorderRadius.circular(5.0)
         ),
         // decoration: BoxDecoration(
         //   color: Colors.white,
         //   borderRadius: BorderRadius.circular(5.0),
         //
         // ),
       ),
     ),
   );
  }
  Widget _activePhot0(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left:5.0,right: 5.0),
        child: Container(
          height: 12.0,
          width: 12.0,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.red),
            // boxShadow: [BoxShadow(
            //   color: Colors.grey,
            //   blurRadius: 2.0,
            // )],
          ),
        ),
      ),
    );
  }
  List<Widget>_buildDots(){
    List<Widget> dots=[];
    for (int i=0;i<numberofDots;i++){
     dots.add(
       i==imageIndex?_activePhot0():_inactivePhot0()
     );
    }
    return dots;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: _buildDots(),
            ),
        );
      }
    }
