import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'unit.dart';
import 'converter_route.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(units != null),
        super(key: key);
  void navg(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.greenAccent,
          title: Text(
            name,
            style:Theme.of(context).textTheme.display1,
          ),
        centerTitle: true,

        ),
        body: ConverterRoute(
          color:color,
          name:name,
          units:units,
        ),

resizeToAvoidBottomPadding: false,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return (Material(
      color: Colors.transparent,
      child: Container(
        height: 100.0,
        child: InkWell(
          borderRadius: BorderRadius.circular(50.0),
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print("tapped");
            navg(context);
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                  iconLocation,
                  size: 60.0,
                ),
              ),
              Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
