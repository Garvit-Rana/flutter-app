import 'package:flutter/material.dart';
import 'category_route.dart';
/*class Helo extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child:Container(
        color: Colors.cyan,
        height: 400.0,
        width: 300.0,
        child:Center(

            child:Text("heelo ram ram",style:TextStyle(
          fontSize: 40.0,
        ),),
      ),
      ),

    );
  }
}
*/


class Homy extends StatelessWidget{

  @override
  Widget build(BuildContext context)
  {
    return(MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "unit converter",
      home: Categoryroute(),

    ));
  }
}


void main() {
  runApp(Homy(),);
}
