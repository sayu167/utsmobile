import 'package:flutter/material.dart';


class OutputAPK extends StatelessWidget {

  OutputAPK({@required this.pajak, @required this.sumbangan, @required this.tempo});
  final int pajak;
  final int sumbangan;
  final int tempo;

  @override
  Widget build(BuildContext context) {
    double total;
    double dendaTerlambat;
    if (tempo==3){
      dendaTerlambat = (pajak*0.25*0.25)+sumbangan;
      total = pajak + sumbangan + dendaTerlambat;
    }
    if (tempo==6){
      dendaTerlambat = (pajak*0.25*0.5)+sumbangan;
      total = pajak + sumbangan + dendaTerlambat;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
        bottom: PreferredSize(
            child: Container(
              color:Colors.white,
              height: 4.0,
            ),
            preferredSize: null
        ),
      ),
      body: Container(
        child:Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                padding: EdgeInsets.only(left:20, right: 15, top: 15, bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text('Total Bayar Pajak Anda Adalah', textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.w500,),),
                      padding: EdgeInsets.only(left:70, right: 70),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          )
                      ),
                    ),
                    Text(
                      "Pajak Kendaraan Bermotor : ${pajak} ",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                    Text(
                      "SWKLDJJ: ${sumbangan} ",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                    Text(
                      "Denda: ${dendaTerlambat} ",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                    Text(
                      "Total Pembayaran : ${total} ",
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),

      bottomSheet: Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          color: Colors.orange,
          child: Text('KEMBALI',
            style: TextStyle(
                fontSize: 20
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}