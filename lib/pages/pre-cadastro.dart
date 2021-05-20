import 'package:flutter/material.dart';

class PreCadastro extends StatefulWidget {
  const PreCadastro({Key key}) : super(key: key);

  @override
  _PreCadastroState createState() => _PreCadastroState();
}

class _PreCadastroState extends State<PreCadastro> {
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
                    child: Image.asset("images/pre-cadastro.png")
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                  child: Text(
                    "Pré Cadastro",
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
                    Text(
                      "Nome do aluno",
                      style: TextStyle(
                          fontSize: 20
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                        ),
                        width: 350,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ],
                )
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
