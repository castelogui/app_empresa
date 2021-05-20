import 'package:flutter/material.dart';
import 'package:app_empresa/pages/Professores/professor1.dart';
import 'package:app_empresa/pages/Professores/professor2.dart';

class Professores extends StatefulWidget {
  const Professores({Key key}) : super(key: key);

  @override
  _ProfessoresState createState() => _ProfessoresState();
}

class _ProfessoresState extends State<Professores> {
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
                    child: Image.asset("images/professores.png")
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                    child: Text(
                      "Professores",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900
                      ),
                    )
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Professor1()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            width: 180,
                            height: 180,
                            child: Image.asset("images/pessoa1.png")
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context) => Professor2()));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)
                          ),
                          width: 180,
                          height: 180,
                          child: Image.asset("images/pessoa2.png")
                      ),
                    )
                  ],
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
