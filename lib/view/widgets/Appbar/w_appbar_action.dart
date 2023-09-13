import 'package:converter_app/core/encryption/enum_algorithms.dart';
import 'package:flutter/material.dart';

class AppBarAction extends StatefulWidget {
  const AppBarAction({super.key, required this.onSelected});
  // Add a final callback function as a named parameter
  final Function(Algorithms) onSelected;
  @override
  State<AppBarAction> createState() => _AppBarActionState();
}

class _AppBarActionState extends State<AppBarAction> {
  // Define a list of options for the dropdown
  final List<Algorithms> _options = Algorithms.values;

  // Define the initial value of the dropdown
  Algorithms _selectedOption = Algorithms.text2binary;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<Algorithms>(
      // Set the value to the selected option
      value: _selectedOption,
      // Set the items to the list of options
      items: _options.map((option) {
        return DropdownMenuItem<Algorithms>(
          value: option,
          child: Text(option.name),
        );
      }).toList(),
      // Set the onChanged callback to update the state when the user selects an option
      onChanged: (value) {
        setState(() {
          _selectedOption = value!;
          // Call the callback function from the widget and pass the selected option
          widget.onSelected(_selectedOption);
        });
      },
    );
  }
}
