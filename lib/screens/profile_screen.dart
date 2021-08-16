import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/avatar_button.dart';
import 'package:wp_arena_flutter/components/dropdown.dart';
import 'package:wp_arena_flutter/components/gradient_bottom_navigator.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/components/submit_button.dart';

import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String id = 'profile_screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  String _selectedGender = "Masculino";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Container(
                padding: const EdgeInsets.all(25.0),
                alignment: Alignment.center,
                child: Text(
                  "Meu perfil",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: kWhite,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              AvatarButton(
                                  onTap: () {},
                                  foregroundImage:
                                      AssetImage('images/users/user_6.png')),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ultima partida: ",
                                        style: TextStyle(
                                          color: kWhite,
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5.0),
                                        child: Text(
                                          "Nome: Bora pegar platina",
                                          style: TextStyle(
                                            color: kWhite,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5.0),
                                        child: Text(
                                          "Jogo: Muitos aplicaveis",
                                          style: TextStyle(
                                            color: kWhite,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, top: 5.0),
                                        child: Text(
                                          "Data: 14/08/2021 - 12:56",
                                          style: TextStyle(
                                            color: kWhite,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 45.0,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
                child: Container(
                  child: Input(
                    enabled: false,
                    hintText: 'marquinhos_hotrodas@hotmail.com',
                    errorMessage: 'Não necessário',
                    prefixIcon: Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
                child: Input(
                  enabled: false,
                  hintText: '04/05/1999',
                  errorMessage: 'Não necessário',
                  prefixIcon: Icons.calendar_today,
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Dropdown(
                      items: [
                        'Feminino',
                        'Masculino',
                        'Outro',
                        'Prefiro não informar'
                      ],
                      selectedGender: _selectedGender,
                      onChanged: ((newValue) {
                        setState(() => {_selectedGender = newValue.toString()});
                      }),
                    )),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: kWhite,
                  thickness: 0.8,
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Alterar senha",
                          style: TextStyle(
                              color: kWhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Input(
                              enabled: true,
                              hintText: 'Senha',
                              errorMessage: 'Por favor, digite sua nova senha.',
                              prefixIcon: Icons.lock,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Input(
                              enabled: true,
                              hintText: 'Confirmar senha',
                              errorMessage:
                                  'Por favor, confirme sua nova senha.',
                              prefixIcon: Icons.lock,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                                height: 50.0,
                                width: 450.0,
                                child: SubmitButton(
                                  formKey: _formKey,
                                  labelText: 'SALVAR',
                                  userName: '',
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GradientBottomNavigationBar(
        screenName: 'profile',
      ),
    );
  }
}
