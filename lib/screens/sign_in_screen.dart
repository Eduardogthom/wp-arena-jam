import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/components/avatar_button.dart';
import 'package:wp_arena_flutter/components/dropdown.dart';
import 'package:wp_arena_flutter/components/input.dart';
import 'package:wp_arena_flutter/components/submit_button.dart';
import 'package:wp_arena_flutter/constants.dart';

class SignInScreen extends StatefulWidget {
  static String id = 'sign_in_screen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  String _selectedGender = 'Selecione seu gênero';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBlack,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "Cadastro de usuário",
          style: kGreetingTextStyle,
        ),
        leading: BackButton(
          color: kWhite,
        ),
      ),
      backgroundColor: kBlack,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AvatarButton(
                        labelText: "Selecionar avatar",
                        onTap: () {},
                        foregroundImage: AssetImage('images/users/user_6.png'))
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Input(
                  enabled: true,
                  hintText: 'Email',
                  errorMessage: 'Por favor, digite seu email.',
                  prefixIcon: Icons.email,
                  nameController: nameController,
                  hiddenText: false,
                ),
                SizedBox(
                  height: 16,
                ),
                Input(
                  enabled: true,
                  hintText: 'Data de nascimento',
                  errorMessage: 'Por favor, digite sua data de nascimento.',
                  prefixIcon: Icons.calendar_today,
                  hiddenText: false,
                ),
                SizedBox(
                  height: 16,
                ),
                Input(
                  enabled: true,
                  hintText: 'Senha',
                  errorMessage: 'Por favor, digite sua senha.',
                  prefixIcon: Icons.lock,
                  hiddenText: true,
                ),
                SizedBox(
                  height: 16,
                ),
                Dropdown(
                  selectedGender: _selectedGender,
                  items: [
                    'Selecione seu gênero',
                    'Feminino',
                    'Masculino',
                    'Outro',
                    'Prefiro não informar'
                  ],
                  onChanged: ((newValue) {
                    setState(() => {_selectedGender = newValue.toString()});
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SubmitButton(
                    formKey: _formKey,
                    labelText: 'CADASTRAR',
                    userName: nameController.text,
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
