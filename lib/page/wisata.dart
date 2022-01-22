import 'package:flutter/material.dart';

class Wisata extends StatefulWidget{
  @override
  _Wisata createState()=>_Wisata();
}

class _Wisata extends State<Wisata>{

  String alterTextInput = "";

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Card(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(3)),
              Text(
                "Wisata Gili Trawangan",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18
                ),
              ),
              Padding(padding: EdgeInsets.all(3)),
              Row(
                children: [
                  Expanded(
                    child: Image.network("https://www.golomboktour.com/wp-content/uploads/2020/02/Wisata-ke-Gili-Trawangan-Gili-Meno-dan-Gili-Air-di-Pulau-Lombok.jpg")
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Expanded(
                    flex: 3,
                    child: Text("Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terdapat di sebelah barat laut Lombok. Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan",
                    style: TextStyle(
                      fontSize: 12 
                    ),
                    )
                  )
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Masukkan Tanggapan Anda"
                ),
                onChanged: (value){
                  setState(() {
                    this.alterTextInput = value;
                  });
                },
              )
            ],
          )
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 100,
                child: Card(
                  child: Text(
                    this.alterTextInput,
                    style: TextStyle(
                      color: Colors.brown
                    ),
                  ),
                ),
              )
            )
          ],
        )
      ],
    );
  }
}