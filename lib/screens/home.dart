import 'package:imc/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:imc/main.dart';
import 'package:imc/widgets/left_bar.dart';
import 'package:imc/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculator IMC",
            style: TextStyle(
                color: HexColor('#FCC91C'), fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: HexColor('#1C1C1C'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 42,
                          fontWeight: FontWeight.w300,
                          color: HexColor('#FCC91C')),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Inaltime (cm)",
                        hintStyle: TextStyle(
                            fontSize: 42,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w300,
                          color: HexColor('#FCC91C')),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Greutate (kg)",
                        hintStyle: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Calculeaza!",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#FCC91C')),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  "10",
                  style: TextStyle(fontSize: 90, color: HexColor('#FCC91C')),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "Normal weight",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: HexColor('#FCC91C')),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              LeftBar(
                barWidth: 40,
              ),
              SizedBox(
                height: 20,
              ),
              LeftBar(
                barWidth: 70,
              ),
              SizedBox(
                height: 20,
              ),
              LeftBar(
                barWidth: 40,
              ),
              SizedBox(
                height: 20,
              ),
              RightBar(
                barWidth: 70,
              ),
              RightBar(
                barWidth: 40,
              ),
            ],
          ),
        ));
  }
}
