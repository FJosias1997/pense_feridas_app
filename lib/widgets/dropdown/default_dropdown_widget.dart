import 'package:flutter/material.dart';

class DefaultDropdownWidget extends StatefulWidget {
  final String? value;
  final String? label;
  final List<String>? items;
  final ValueChanged<String?>? onChanged;
  final double? width;
  const DefaultDropdownWidget({
    this.value,
    this.label,
    this.items,
    this.onChanged,

    super.key,
    this.width = 0.9,
  });

  @override
  State<DefaultDropdownWidget> createState() => _DefaultDropdownWidgetState();
}

class _DefaultDropdownWidgetState extends State<DefaultDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widget.width!,
      child: DropdownButtonFormField<String>(
        value: widget.value,
        decoration: InputDecoration(
          labelText: widget.label, // aqui é a label
          border: OutlineInputBorder(),
        ),
        style: const TextStyle(color: Colors.deepOrange),
        onChanged: widget.onChanged,
        items:
            widget.items?.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
      ),
    );
  }
}
