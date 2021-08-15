import 'package:flutter/material.dart';
import 'package:wp_arena_flutter/constants.dart';

class Dropdown extends StatelessWidget {
  const Dropdown({
    Key? key,
    required this.selectedGender,
    required this.onChanged,
  }) : super(key: key);

  final String selectedGender;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField(
        value: selectedGender,
        decoration: InputDecoration(
          isDense: true,
          fillColor: Color.fromRGBO(196, 196, 196, 0.2),
          contentPadding: EdgeInsets.all(12),
          // contentPadding: EdgeInsets.all(0),
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
          hintText: 'Gênero',
        ),
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

        onChanged: onChanged,
        // hint: SizedBox(
        //   width: double.infinity,
        //   child: Text(
        //     "Selecione seu gênero",
        //     style: TextStyle(color: kWhite, fontFamily: 'Montserrat'),
        //     textAlign: TextAlign.center,
        //   ),
        // ),
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
    );
  }
}
