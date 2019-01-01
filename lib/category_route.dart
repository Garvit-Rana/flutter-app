import 'package:flutter/material.dart';
import 'category.dart';
import 'unit.dart';
class Categoryroute extends StatelessWidget {
  static const categoryn = <String>[
    'length',
    'area',
    'volume',
    'mass',
    'time',
    'digital storage',
    'energy'
  ];

 static const icono=[
   Icons.linear_scale,
   Icons.layers,
   Icons.assistant,
   Icons.music_video,
   Icons.alarm,
   Icons.add_a_photo,
   Icons.email,
 ];

  static const base = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _builde(List<Widget> categories) {
    return (ListView.builder(
      itemBuilder: (BuildContext context, int ind) => categories[ind],
      itemCount: categories.length,
    ));
  }

  List<Unit> retrieve(String num){
    return List.generate(10,(int i){
      i+=1;
      return Unit(
        name: '$num unit $i',
        conversion: i.toDouble(),
      );

    });

  }

  @override
  Widget build(BuildContext context) {
    final categorie = <Category>[];
    for (var i = 0; i < categoryn.length; i++) {
      categorie.add(Category(
        name: categoryn[i],
        color: base[i],
        iconLocation: icono[i],
        units:retrieve(categoryn[i]),
      ));
    }

    final listview = Container(
      color: Colors.green[100],
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _builde(categorie),
    );
    final appbar = AppBar(

      elevation: 0.0,
      title:Text('Unit converter',style:TextStyle(
        color: Colors.black,
        fontSize: 40.0,

      )),

    centerTitle: true,
      backgroundColor: Colors.green[100],
    );
    return Scaffold(
      appBar: appbar,
      body: listview,
    );
  }
}
