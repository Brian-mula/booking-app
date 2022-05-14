import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({Key? key}) : super(key: key);

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  final List<String> places = <String>['Nakuru', "Nairobi", "Mombasa"];
  String dropdownValue = "Nakuru";
  void onChanged(selectedPlace) {
    setState(() {
      dropdownValue = selectedPlace;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DropdownButton(
        elevation: 0,
        underline: Container(
          color: Colors.white,
        ),
        isExpanded: true,
          hint: const Text("Select location"),
          value: dropdownValue,
          items: places.map((place) {
            return DropdownMenuItem(
              value: place,
              child: Text(place));
          }).toList(),
          onChanged: onChanged
          
          ),
    );
  }
}
