import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/dropdown.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/components/submit_button.dart';
import 'package:wp_arena_flutter/constants.dart';

class ScheduleMatchScreen extends StatefulWidget {
  static String id = 'schedule_match_screen';

  ScheduleMatchScreen({Key? key}) : super(key: key);

  @override
  _ScheduleMatchScreenState createState() => _ScheduleMatchScreenState();
}

class _ScheduleMatchScreenState extends State<ScheduleMatchScreen> {
  final _formKey = GlobalKey<FormState>();

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
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Input(
                  enabled: true,
                  hintText: 'Nome da partida',
                  errorMessage: 'Por favor, digite o nome da partida.',
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Input(
                        enabled: true,
                        hintText: 'Data',
                        errorMessage: 'Por favor, digite a data da partida.',
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Input(
                        enabled: true,
                        hintText: 'Hora',
                        errorMessage: 'Por favor, digite a hora da partida.',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Input(
                  enabled: true,
                  maxLines: 8,
                  hintText: 'Regras',
                  errorMessage: 'Por favor, descreva as regras do jogo.',
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Input(
                        enabled: true,
                        hintText: 'Nº de jogadores',
                        errorMessage:
                            'Por favor, digite o número de jogadores na partida.',
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
                  child: SubmitButton(
                    userName: '',
                    formKey: _formKey,
                    labelText: 'CADASTRAR',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
