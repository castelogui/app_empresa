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
                      fontWeight: FontWeight.w900,
                    ),
                  )
                ),
              ),
              Container(
                width: 350,
                height: 330,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Nome e Sobrenome
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nome",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      style: TextStyle(
                                        fontSize: 20
                                      ),
                                      decoration: new InputDecoration.collapsed(
                                          hintText: 'Nome'
                                      ),
                                    ),
                                  ),
                                  width: 150,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ),
                        Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sobrenome",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                            fontSize: 20
                                        ),
                                        decoration: new InputDecoration.collapsed(
                                            hintText: 'Sobrenome'
                                        ),
                                      ),
                                    ),
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Data de Nascimento",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: -1.5
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        decoration: new InputDecoration.collapsed(
                                            hintText: 'DD/MM/AAAA'
                                        ),
                                        keyboardType: TextInputType.datetime,
                                      ),
                                    ),
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Container(
                            child: Column(
                              children: [
                                Text(
                                  "Ja fez aula?",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Radio(
                                            value: 'sim',
                                            groupValue: null,
                                            onChanged: null
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.white
                                          ),
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      Text("Sim"),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Radio(
                                              value: 'nao',
                                              groupValue: null,
                                              onChanged: null
                                          ),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(100),
                                              color: Colors.white
                                          ),
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                      Text("Não")
                                    ]
                                  ),
                                )
                              ],
                            )
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                decoration: new InputDecoration.collapsed(
                                    hintText: 'e-mail'
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                            width: 350,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                          child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dias de Aula",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Radio(
                                                value: '1',
                                                groupValue: null,
                                                onChanged: null
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: Colors.white
                                            ),
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        Text(
                                          "Seg e Qua",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Radio(
                                                value: '2',
                                                groupValue: null,
                                                onChanged: null
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(100),
                                                color: Colors.white
                                            ),
                                            width: 20,
                                            height: 20,
                                          ),
                                        ),
                                        Text(
                                          "Ter e Qui",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600
                                          ),
                                        )
                                      ]
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Text(
                  "Horários de aulas a combinar com o professor depois da finalização da matricula.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                    child: Text(
                        "Enviar",
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
