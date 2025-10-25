import 'package:flutter/material.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';

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
          fillColor: context.theme.colorScheme.surface,
          labelText: widget.label,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.grey.withValues(alpha: 0.5), // quase invisível
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: context.theme.colorScheme.primary.withValues(alpha: 0.2),
              width: 1.5,
            ),
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.transparent, // para o estado padrão
            ),
          ),
        ),

        style: TextStyle(color: context.theme.colorScheme.primary),
        onChanged: widget.onChanged,
        items:
            widget.items?.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(value: value, child: Text(value));
            }).toList(),
      ),
    );
  }
}
