import 'package:flutter/material.dart';
import 'category.dart';
import 'unit.dart';


class Categoryroute extends StatefulWidget {

  @override
  createState()=>_CategoryrouteState();

}

class _CategoryrouteState extends State<Categoryroute>{

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
  final categorie = <Category>[];
  static const base = <ColorSwatch>[
    ColorSwatch(0xFF6AB7A8, {
      'highlight': Color(0xFF6AB7A8),
      'splash': Color(0xFF0ABC9B),
    }),
    ColorSwatch(0xFFFFD28E, {
      'highlight': Color(0xFFFFD28E),
      'splash': Color(0xFFFFA41C),
    }),
    ColorSwatch(0xFFFFB7DE, {
      'highlight': Color(0xFFFFB7DE),
      'splash': Color(0xFFF94CBF),
    }),
    ColorSwatch(0xFF8899A8, {
      'highlight': Color(0xFF8899A8),
      'splash': Color(0xFFA9CAE8),
    }),
    ColorSwatch(0xFFEAD37E, {
      'highlight': Color(0xFFEAD37E),
      'splash': Color(0xFFFFE070),
    }),
    ColorSwatch(0xFF81A56F, {
      'highlight': Color(0xFF81A56F),
      'splash': Color(0xFF7CC159),
    }),
    ColorSwatch(0xFFD7C0E2, {
      'highlight': Color(0xFFD7C0E2),
      'splash': Color(0xFFCA90E5),
    }),
    ColorSwatch(0xFFCE9A9A, {
      'highlight': Color(0xFFCE9A9A),
      'splash': Color(0xFFF94D56),
      'error': Color(0xFF912D2D),
    }),
  ];

  @override
  void initState(){
super.initState();
for (var i = 0; i < categoryn.length; i++) {
  categorie.add(Category(
    name: categoryn[i],
    color: base[i],
    iconLocation: icono[i],
    units:retrieve(categoryn[i]),
  ));
}


  }

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
