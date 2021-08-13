import 'package:flutter/material.dart';
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
                              text:
                                  "Frase de efeito muito daora aqui de até 3 linhas",
                              style: TextStyle(
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w600,
                                  color: kWhite, 
                                  fontFamily: 'Montserrat',)),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            style: TextStyle(color: kWhite, fontFamily: 'Montserrat',),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kWhite, width: 1.0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kCrimson, width: 1.0),
                              ),
                              focusedErrorBorder:OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kCrimson, width: 1.0),
                              ) ,
                              prefixIcon: Icon(
                                Icons.person,
                                color: kWhite,
                                size: 25,
                              ),
                              hintText: "Usuário",
                              hintStyle: TextStyle(
                                  color: kWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',),
                            ),
                            validator: (value) {
                              print(value);
                              if (value == null || value.isEmpty) {
                                return 'Digite um usuário válido!';
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          child: TextFormField(
                            style: TextStyle(color: kWhite, fontFamily: 'Montserrat',),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kBlue, width: 1.0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kWhite, width: 1.0),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder:OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kCrimson, width: 1.0),
                              ) ,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: kWhite,
                                size: 25,
                              ),
                              hintText: "Senha",
                              hintStyle: TextStyle(
                                  color: kWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kCrimson, width: 1.0),
                              ),
                            ),
                            validator: (value) {
                              print(value);
                              if (value == null || value.isEmpty) {
                                return 'Digite uma senha!';
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Container(
                          height: 50.0,
                          width: 450.0,
                          child: ElevatedButton(
                            onPressed: () => {
                              if (_formKey.currentState!.validate())
                                {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Navigate!')),
                                  )
                                }
                            },
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500, 
                                  fontFamily: 'Montserrat',),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Theme.of(context)
                                        .colorScheme
                                        .primary
                                        .withOpacity(0.5);
                                  else if (states
                                      .contains(MaterialState.disabled))
                                    return Colors.green;
                                  return kPink; // Use the component's default.
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      child: Text(
                        "Esqueci minha senha",
                        style: TextStyle(color: kWhite,
                        fontFamily: 'Montserrat',),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                  Row(
                    children: [
                      Text("Não possui conta?",
                          style: TextStyle(color: kWhite, 
                          fontFamily: 'Montserrat',)),
                      SizedBox(
                        width: 7.0,
                      ),
                      TextButton(
                        child: Text("Cadastre-se aqui",
                            style: TextStyle(
                                color: kWhite, fontWeight: FontWeight.bold, 
                                fontFamily: 'Montserrat',)),
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
