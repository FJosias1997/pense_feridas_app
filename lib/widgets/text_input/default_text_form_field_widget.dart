import 'package:flutter/material.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';

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
        hoverColor: context.theme.colorScheme.primary,
        floatingLabelStyle: TextStyle(color: context.theme.colorScheme.primary),
        labelText: widget.labelText,
        labelStyle: TextStyle(color: context.theme.colorScheme.inverseSurface),
        fillColor: context.theme.colorScheme.surface,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.withValues(alpha: .5), // quase invisível
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
    );
  }
}
