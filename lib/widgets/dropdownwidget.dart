import 'package:flutter/material.dart';

class MyDropdownWidget extends StatefulWidget {
  final String initialValue;
  final List<String> items;
  final bool isEditable;

  const MyDropdownWidget({
    required this.initialValue,
    required this.items,
    required this.isEditable,
  });

  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedValue,
      items: widget.items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedValue = newValue;
          });
        }
      },
      isExpanded: widget.isEditable,
    );
  }
}

