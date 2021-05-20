import 'package:flutter/material.dart';

class Sobre extends StatefulWidget {
  const Sobre({Key key}) : super(key: key);

  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end:
            Alignment(0, 1.0), // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xffE1E1E1),
              Color(0xff508eea)
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  width: 100,
                  height: 100,
                  child: Image.asset("images/sobre.png")
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                  child: Text(
                    "Sobre",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900
                    ),
                  )
                ),
              ),
              Container(
                width: 370,
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Projeto musical para crianças, jovens e adultos.",
                          style: TextStyle(
                            fontSize: 25,
                            fontStyle: FontStyle.italic
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Um projeto de escola musical para crianças, jovens e adultos que visa o aprendizado básico e intermediário de instrumentos musicais variados.",
                          style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: BackButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}
