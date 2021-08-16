import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/components/submit_button.dart';
import 'package:wp_arena_flutter/constants.dart';
import 'package:wp_arena_flutter/screens/home_screen.dart';
import 'package:wp_arena_flutter/screens/sign_in_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
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
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 80.0),
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
                              text: "Agende e compartilhe jogos online",
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.w600,
                                color: kWhite,
                                fontFamily: 'Montserrat',
                              )),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: Input(
                            hintText: 'Email',
                            enabled: true,
                            prefixIcon: Icons.email,
                            errorMessage: 'Por favor, digite seu email.',
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          child: Input(
                            hintText: 'Senha',
                            enabled: true,
                            prefixIcon: Icons.lock,
                            errorMessage: 'Por favor, digite sua senha.',
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                            height: 50.0,
                            width: 450.0,
                            child: SubmitButton(
                              labelText: 'Login',
                              formKey: _formKey,
                              userName: 'Oie',
                            )),
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
                      SizedBox(
                        width: 7.0,
                      ),
                      TextButton(
                        child: Text("Cadastre-se aqui",
                            style: TextStyle(
                              color: kWhite,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            )),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          ),
                        },
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
