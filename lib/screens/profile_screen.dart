import 'package:flutter/material.dart';

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
                              Column(
                                children: [
                                  CircleAvatar(
                                    foregroundImage:
                                        AssetImage('images/users/user_6.png'),
                                    radius: 45.0,
                                  ),
                                  TextButton(
                                    onPressed: () => {},
                                    child: Text("Alterar avatar"),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  child: TextField(
                    enabled: false,
                    style: TextStyle(
                      color: kWhite,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kGray, width: 1.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.mail,
                        color: kGray,
                        size: 25,
                      ),
                      hintText: "marquinhos_hotrodas@hotmail.com",
                      hintStyle: TextStyle(
                        color: kGray,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),SizedBox(
                            height: 15.0,
                          ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
                child: Container(
                  child: TextField(
                    enabled: false,
                    style: TextStyle(
                      color: kWhite,
                      fontFamily: 'Montserrat',
                    ),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(196, 196, 196, 0.2),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: kGray, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_today_outlined,
                          color: kGray,
                          size: 25,
                        ),
                        hintText: "14/08/1990",
                        hintStyle: TextStyle(
                          color: kGray,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Montserrat',
                        ),
                        contentPadding: EdgeInsets.only(left: 20.0),
                        prefixText: " "),
                  ),
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
                  child: DropdownButton(
                    value: _selectedGender,
                    underline: SizedBox(),
                    items: <String>[
                      'Feminino',
                      'Masculino',
                      'Outro',
                      'Prefiro não informar'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(value),
                        ),
                      );
                    }).toList(),
                    onChanged: ((newValue) {
                      setState(() => {_selectedGender = newValue.toString()});
                    }),
                    hint: SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Selecione seu gênero",
                        style: TextStyle(color: kWhite, fontFamily: 'Montserrat'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    dropdownColor: kBlack,
                    style: TextStyle(color: kWhite, fontFamily: 'Montserrat'),
                    isExpanded: true,
                    iconEnabledColor: kWhite,
                    icon: Container(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.arrow_drop_down),
                    )),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:25.0),
                child: Divider(
                  color: kWhite,
                  thickness: 0.8,
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:25.0),
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
                          Container(
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                color: kWhite,
                                fontFamily: 'Montserrat',
                              ),
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
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: kCrimson, width: 1.0),
                                ),
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
                                  fontFamily: 'Montserrat',
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: kCrimson, width: 1.0),
                                ),
                              ),
                              validator: (value) {
                                
                                if (value == null || value.isEmpty) {
                                  return 'Digite uma senha!';
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
                              obscureText: true,
                              style: TextStyle(
                                color: kWhite,
                                fontFamily: 'Montserrat',
                              ),
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
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: kCrimson, width: 1.0),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: kWhite,
                                  size: 25,
                                ),
                                hintText: "Confirmar senha",
                                hintStyle: TextStyle(
                                  color: kWhite,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: kCrimson, width: 1.0),
                                ),
                              ),
                              validator: (value) {
                                
                                if (value == null || value.isEmpty) {
                                  return 'Digite a mesma senha!';
                                }
        
                                return null;
                              },
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            height: 50.0,
                            width: 450.0,
                            child: ElevatedButton(
                              onPressed: () => {
                                if (_formKey.currentState!.validate())
                                  {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Senha salva!')),
                                    )
                                  } 
                              },
                              child: Text(
                                "SALVAR",
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
                                    return Color.fromRGBO(0, 0, 0, 1); // Use the component's default.
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),SizedBox(height: 25.0,)
            ],
          ),
        ),
      ),
    );
  }
}
