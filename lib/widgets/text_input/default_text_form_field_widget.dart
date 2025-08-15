import 'package:flutter/material.dart';

class DefaultTextFormFieldWidget extends StatefulWidget {
  final TextEditingController? textEditingController;
  final String? labelText;
  final Function(String)? onChanged;
  const DefaultTextFormFieldWidget({
    this.textEditingController,
    this.labelText,
    this.onChanged,
    super.key,
  });

  @override
  State<DefaultTextFormFieldWidget> createState() =>
      _DefaultTextFormFieldWidgetState();
}

class _DefaultTextFormFieldWidgetState
    extends State<DefaultTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      controller: widget.textEditingController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: widget.labelText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
