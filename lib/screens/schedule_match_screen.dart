import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/dropdown.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/constants.dart';
import 'package:wp_arena_flutter/screens/event_screen_created.dart';

import 'event_screen.dart';

class ScheduleMatchScreen extends StatefulWidget {
  static String id = 'schedule_match_screen';
  ScheduleMatchScreen({Key? key, required this.game, required this.imageUrl})
      : super(key: key);
  final String game;
  final String imageUrl;

  @override
  _ScheduleMatchScreenState createState() => _ScheduleMatchScreenState();
}

class _ScheduleMatchScreenState extends State<ScheduleMatchScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final dateController = TextEditingController();
  final eventTimeController = TextEditingController();
  final eventRulesController = TextEditingController();
  final playerCountController = TextEditingController();

  String _selectedGender = 'Partida privada';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Cadastro de partida",
          style: kGreetingTextStyle,
        ),
        leading: BackButton(
          color: kWhite,
        ),
      ),
      backgroundColor: kBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: SafeArea(
          child: ListView(children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  // Input(
                  //   enabled: true,
                  //   hintText: 'Nome da partida',
                  //   errorMessage: 'Por favor, digite o nome da partida.',
                  //   nameController: nameController,
                  // ),
                  TextFormField(
                    controller: nameController,
                    maxLines: 1,
                    enabled: true,
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      filled: false,
                      fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                      contentPadding: EdgeInsets.all(16),
                      // contentPadding: EdgeInsets.all(16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kWhite, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kWhite, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                      ),
                      hintText: 'Nome da partida',
                    ),
                    validator: (value) {
                      if ((value == null || value.isEmpty)) {
                        return 'Por favor, digite o nome da partida.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child:
                            // Input(
                            //   enabled: true,
                            //   hintText: 'Data',
                            //   errorMessage: 'Por favor, digite a data da partida.',
                            //   nameController: dateController,
                            // ),
                            TextFormField(
                          controller: dateController,
                          maxLines: 1,
                          enabled: true,
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            filled: false,
                            fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                            contentPadding: EdgeInsets.all(16),
                            // contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kBlue, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintStyle: TextStyle(
                              color: kWhite,
                              fontSize: 14,
                            ),
                            hintText: 'Data',
                          ),
                          validator: (value) {
                            if ((value == null || value.isEmpty)) {
                              return 'Por favor, digite a data da partida.';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child:
                            // Input(
                            //   enabled: true,
                            //   hintText: 'Hora',
                            //   errorMessage: 'Por favor, digite a hora da partida.',
                            //   nameController: eventTimeController,
                            // ),
                            TextFormField(
                          controller: eventTimeController,
                          maxLines: 1,
                          enabled: true,
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            filled: false,
                            fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                            contentPadding: EdgeInsets.all(16),
                            // contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kBlue, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintStyle: TextStyle(
                              color: kWhite,
                              fontSize: 14,
                            ),
                            hintText: 'Hora',
                          ),
                          validator: (value) {
                            if ((value == null || value.isEmpty)) {
                              return 'Por favor, digite a hora da partida.';
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  // Input(
                  //   enabled: true,
                  //   maxLines: 8,
                  //   hintText: 'Regras',
                  //   errorMessage: 'Por favor, descreva as regras do jogo.',
                  //   nameController: eventRulesController,
                  // ),
                  TextFormField(
                    controller: eventRulesController,
                    maxLines: 8,
                    enabled: true,
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      filled: false,
                      fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                      contentPadding: EdgeInsets.all(16),
                      // contentPadding: EdgeInsets.all(16),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kBlue, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kWhite, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kWhite, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintStyle: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                      ),
                      hintText: 'Regras',
                    ),
                    validator: (value) {
                      if ((value == null || value.isEmpty)) {
                        return 'Por favor, descreva as regras do jogo.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child:
                            // Input(
                            //   enabled: true,
                            //   hintText: 'Nº de jogadores',
                            //   errorMessage:
                            //       'Por favor, digite o número de jogadores na partida.',
                            //   nameController: playerCountController,
                            // ),
                            TextFormField(
                          controller: playerCountController,
                          maxLines: 1,
                          enabled: true,
                          style: TextStyle(
                            color: kWhite,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            filled: false,
                            fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                            contentPadding: EdgeInsets.all(16),
                            // contentPadding: EdgeInsets.all(16),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kBlue, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kWhite, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 1.0),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintStyle: TextStyle(
                              color: kWhite,
                              fontSize: 14,
                            ),
                            hintText: 'Nº de jogadores',
                          ),
                          validator: (value) {
                            if ((value == null || value.isEmpty)) {
                              return 'Por favor, digite o número de jogadores na partida.';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Dropdown(
                          items: [
                            'Partida privada',
                            'Sim',
                            'Não',
                          ],
                          onChanged: ((newValue) {
                            setState(
                                () => {_selectedGender = newValue.toString()});
                          }),
                          selectedGender: _selectedGender,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      height: 48,
                      width: 450,
                      child: ElevatedButton(
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EventScreenCreated(
                                heroTag: 'tag',
                                imageUrl: widget.imageUrl,
                                eventName: nameController.text,
                                eventTime: eventTimeController.text,
                                playerCount: playerCountController.text,
                                game: widget.game,
                                tag1: 'ONLINE',
                                tag2: 'COMPETITIVO',
                                private: _selectedGender == 'Sim' ? true : false
                              ),
                            ),
                          ),
                        },
                        child: Text(
                          'CONFIMAR',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return kPink;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
