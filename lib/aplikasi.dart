import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Output.dart';
import 'about_me.dart';

class InputAPK extends StatefulWidget {
  @override
  _InputAPKState createState() => _InputAPKState();
}

class _InputAPKState extends State<InputAPK> {
  int pkb = 0;
  int swdkllj = 0;
  int bulan = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          leading: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: Text('PAJAK KENDARAANKU'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_outline),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfil()),
                );
              },
            )
          ],
          bottom: PreferredSize(
              child: Container(
                color:Colors.white,
                height: 4.0,
              ),
              preferredSize: null
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child:
                Image.asset('images/pol.png', width: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),

              Container(
                padding: EdgeInsets.all(12),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Text('MENGHITUNG DENDA PAJAK', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
                    Text('KENDARAAN BERMOTOR', style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
                     ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                color: Colors.orange,
                child: Text('MASUKAN INPUTAN ANGKA :', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
              ),

              Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              pkb = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 7,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "PKB",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(50.0) ),
                              hintText: 'PKB'
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              swdkllj = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 7,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "SWDKLLJ",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(50.0) ),
                              hintText: 'SWDKLLJ'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              bulan = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          decoration: InputDecoration(
                              labelText: "BULAN",
                              border: OutlineInputBorder( borderRadius: BorderRadius.circular(50.0) ),
                              hintText: 'BULAN'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
              ),

              Container(
                //height: double.infinity,
                margin: EdgeInsets.only(left: 70,right: 70,bottom: 20),

                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OutputAPK(pajak: pkb, sumbangan: swdkllj, tempo: bulan)),
                    );
                  },
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  color: Colors.white,

                  child: Text(
                    'HITUNG',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 45,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text(
              'Since@2020',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ),
          //elevation: 0,
        ),
      );
  }
}