import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
    
}
class MyAppState extends State<MyApp> {
double _inputUser = 0;
double _kelvin = 0;
double _reamur = 0;
  final inputController = TextEditingController() ;

void perhitunganSuhu(){ 
_inputUser = double.parse(inputController.text);
_kelvin = _inputUser + 273;
_reamur = (4/5) * _inputUser;
}
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: TextFormField(
                 controller: inputController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                    signed: false,
                  ),
                  decoration: InputDecoration(hintText: 'Masukan Suhu Dalam'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                        child: Text("Suhu dalam Kelvin"),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
                        child: Text("$_kelvin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Text("Suhu dalam Reamur"),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text("$_reamur",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: new RaisedButton(
                  child: new Text("Hitung",
                      style: new TextStyle(
                        color: Colors.white,
                      )),
                  colorBrightness: Brightness.dark,
                  onPressed: () {
                    setState(() {
                      perhitunganSuhu();
                    });
                  },
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
