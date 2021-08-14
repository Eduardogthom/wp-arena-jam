import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/components/submit_button.dart';
import 'package:wp_arena_flutter/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 80.0),
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/logo_column.png'),
                          width: 175,
                        ),
                        SizedBox(height: 30.0),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              text:
                                  "Frase de efeito muito daora aqui de até 3 linhas",
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.w600,
                                color: kWhite,
                                fontFamily: 'Montserrat',
                              )),
                        ),
                        SizedBox(height: 20.0),
                        Input(
                          enabled: true,
                          hintText: 'Email',
                          errorMessage: 'Por favor, digite seu email.',
                          prefixIcon: Icons.email,
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Input(
                          enabled: true,
                          hintText: 'Senha',
                          errorMessage: 'Por favor, digite sua senha.',
                          prefixIcon: Icons.lock,
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        SubmitButton(
                          formKey: _formKey,
                          labelText: 'LOGIN',
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        "Esqueci minha senha",
                        style: TextStyle(
                          color: kWhite,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                  Row(
                    children: [
                      Text("Não possui conta?",
                          style: TextStyle(
                            color: kWhite,
                            fontFamily: 'Montserrat',
                          )),
                      TextButton(
                        child: Text("Cadastre-se aqui",
                            style: TextStyle(
                              color: kWhite,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            )),
                        onPressed: () => {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
