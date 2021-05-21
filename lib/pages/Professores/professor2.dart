import 'package:flutter/material.dart';

class Professor2 extends StatefulWidget {
  const Professor2({Key key}) : super(key: key);

  @override
  _Professor2State createState() => _Professor2State();
}

class _Professor2State extends State<Professor2> {
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
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: Container(
                    child: Text(
                      "Professor 2",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    width: 150,
                    height: 150,
                    child: Image.asset("images/pessoa2.png")
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
                          "Professora de musica a quase 4 anos. Começou como aluna em 2015 e em 2017 se tornou profesora.",
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
                          "Dá aulas de bateria e baixo. Seus horarios de aulas são das 8 da manhã até às 19 da noite, na Terca e Quinta",
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                    child: Text(
                      "Contato",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center
                    ),
                  ),
                  width: 150,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xff5B73F1),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Colors.black, spreadRadius: 1.5)
                    ]
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
