import 'dart:html';

import 'package:flutter/material.dart';
import 'package:posttes4_004_fayza/page.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fayza Virdana Addiza"),
        backgroundColor: Color(0xffc1bddc),
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Color(0xff000000),
        ),
      ),
      backgroundColor: Color(0xff687189),
      body: ListView(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Column(
            children: [
              Text(
                "\nCity Car Rental \nSamarinda",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1e2534),
                ),
              ),
              Text(
                "\nBerdiri sejak 2017. \nMelayani penyewaan mobil lepas kunci, \nuntuk penyewaan mobil dan driver \nharap hubungi lebih lanjut.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xfff5f4f9),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: lebar,
                          height: tinggi / 2,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/toyota agya matic.jpg")),
                          ),
                        ),
                        Container(
                          width: lebar,
                          height: tinggi / 2,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/honda jazz matic.jpg")),
                          ),
                        ),
                        Container(
                          width: lebar,
                          height: tinggi / 2,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/toyota avanza matic.jpg")),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      order(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ]),
      ]),
    );
  }
}

class order extends StatefulWidget {
  const order({Key? key}) : super(key: key);

  @override
  State<order> createState() => _orderState();
}

class _orderState extends State<order> {
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      width: lebar / 2,
      height: 70,
      margin: EdgeInsets.only(top: 10, bottom: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color(0xfff5f4f9), borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(Icons.car_rental),
        title: Text("Order Now"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return page();
            }),
          );
        },
      ),
    );
  }
}
