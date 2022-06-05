import 'dart:math';

import 'package:clima/ImgClima.dart';
import 'package:flutter/material.dart';

class FraClima extends StatefulWidget {
  FraClima({Key? key}) : super(key: key);

  @override
  State<FraClima> createState() => _MexClimaState();
}

class _MexClimaState extends State<FraClima> {
  ImagenClima img = ImagenClima();
  late int temp;
  late String imagen;
  bool Cambios = false;
  @override
  void initState() {
    super.initState();

    condicion();
  }

  void condicion() {
    setState(() {
      temp = Random().nextInt(36);
      var estado = 0;
      if (temp <= 10) {
        estado = 5;
      } else if (temp > 10 && temp < 30) {
        estado = Random().nextInt(60) + 30;
      } else if (temp >= 30) {
        estado = 100;
      }
      imagen = img.getImagen(estado);
    });
  }

  void fToC() {
    setState(() {
      var conversion = (temp - 32) / 1.8;
      temp = conversion.toInt();
    });
  }

  void cToF() {
    setState(() {
      var conversion = (temp * 1.8) + 32;
      temp = conversion.toInt();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(children: [
            const Text('Francia:', style: TextStyle(fontSize: 30),),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    '$temp°', style: const TextStyle(fontSize: 27),
                  ),
                  Image.network(imagen, width: 100.0)
                ],
              ),
            ),
            const Text('Cambio de C° A F°', style: TextStyle(fontSize: 20),),
            Switch(
                value: Cambios,
                onChanged: (isOn) {
                  setState(() {
                    Cambios = isOn;
                  });
                  if (Cambios == false) {
                    fToC();
                  } else {
                    cToF();
                  }
                })
          ]),
        ),
      ),
    );
  }
}
