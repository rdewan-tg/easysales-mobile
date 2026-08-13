part of common;

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.textFieldKey,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText = false,
    this.isDense = false,
    this.autofocus = false,
    this.readOnly = false,
    this.autocorrect = false,
    this.minLines = 1,
    this.maxLines = 5,
    required this.keyboardType,
    required this.textInputAction,
    this.inputFormatters,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    required this.controller,
    this.constraints,
    this.contentPadding,
    this.floatingLabelBehavior = FloatingLabelBehavior.always,
  });

  final ValueKey? textFieldKey;
  final TextEditingController controller;
  final String labelText;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isObscureText;
  final bool isDense;
  final bool autofocus;
  final bool readOnly;
  final bool autocorrect;
  final int minLines;
  final int maxLines;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;
  final FloatingLabelBehavior? floatingLabelBehavior;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String _value = "";

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() => setTextValue());
  }

  @override
  void dispose() {
    widget.controller.removeListener(() => setTextValue());
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      _value = widget.controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.textFieldKey,
      controller: widget.controller,
      obscureText: widget.isObscureText,
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      autofocus: widget.autofocus,
      readOnly: widget.readOnly,
      autocorrect: widget.autocorrect,
      minLines: widget.minLines,
      maxLines: widget.maxLines,
      decoration: InputDecoration(
        isDense: widget.isDense,
        labelText: widget.labelText,
        hintText: widget.hintText,
        floatingLabelBehavior: widget.floatingLabelBehavior,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        prefixIcon: widget.prefixIcon,
        suffixIcon: _value.isNotEmpty ? widget.suffixIcon : null,
        constraints: widget.constraints,
        contentPadding: widget.contentPadding,
      ),
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
    );
  }
}
