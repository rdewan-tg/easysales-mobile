part of common;

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    ValueKey? textFieldKey,
    required String labelText,
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    bool isObscureText = false,
    bool isDense = false,
    bool autofocus = false,
    bool readOnly = false,
    bool autocorrect = false,
    int minLines = 1,
    int maxLines = 5,
    required TextInputType keyboardType,
    required TextInputAction textInputAction,
    List<TextInputFormatter>? inputFormatters,
    String? Function(String?)? validator,
    Function(String)? onChanged,
    Function(String)? onFieldSubmitted,
    required TextEditingController controller,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? contentPadding,
    FloatingLabelBehavior? floatingLabelBehavior = FloatingLabelBehavior.always,
  })  : _textFieldKey = textFieldKey,
        _labelText = labelText,
        _hintText = hintText,
        _prefixIcon = prefixIcon,
        _suffixIcon = suffixIcon,
        _validator = validator,
        _isObscureText = isObscureText,
        _isDense = isDense,
        _autofocus = autofocus,
        _readOnly = readOnly,
        _autocorrect = autocorrect,
        _minLines = minLines,
        _maxLines = maxLines,
        _controller = controller,
        _onChanged = onChanged,
        _onFieldSubmitted = onFieldSubmitted,
        _keyboardType = keyboardType,
        _textInputAction = textInputAction,
        _inputFormatters = inputFormatters,
        _constraints = constraints,
        _contentPadding = contentPadding,
        _floatingLabelBehavior = floatingLabelBehavior;

  final ValueKey? _textFieldKey;
  final TextEditingController _controller;
  final String _labelText;
  final String? _hintText;
  final Widget? _prefixIcon;
  final Widget? _suffixIcon;
  final bool _isObscureText;
  final bool _isDense;
  final bool _autofocus;
  final bool _readOnly;
  final bool _autocorrect;
  final int _minLines;
  final int _maxLines;
  final TextInputType _keyboardType;
  final TextInputAction _textInputAction;
  final List<TextInputFormatter>? _inputFormatters;
  final String? Function(String?)? _validator;
  final Function(String)? _onChanged;
  final Function(String)? _onFieldSubmitted;
  final BoxConstraints? _constraints;
  final EdgeInsetsGeometry? _contentPadding;
  final FloatingLabelBehavior? _floatingLabelBehavior;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  String _value = "";

  @override
  void initState() {
    super.initState();
    widget._controller.addListener(() => setTextValue());
  }

  @override
  void dispose() {
    widget._controller.removeListener(() => setTextValue());
    super.dispose();
  }

  void setTextValue() {
    setState(() {
      _value = widget._controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget._textFieldKey,
      controller: widget._controller,
      obscureText: widget._isObscureText,
      keyboardType: widget._keyboardType,
      textInputAction: widget._textInputAction,
      autofocus: widget._autofocus,
      readOnly: widget._readOnly,
      autocorrect: widget._autocorrect,
      minLines: widget._minLines,
      maxLines: widget._maxLines,
      decoration: InputDecoration(
        isDense: widget._isDense,
        labelText: widget._labelText,
        hintText: widget._hintText,
        floatingLabelBehavior: widget._floatingLabelBehavior,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: widget._prefixIcon,
        suffixIcon: _value.isNotEmpty ? widget._suffixIcon : null,
        constraints: widget._constraints,
        contentPadding: widget._contentPadding,
      ),
      inputFormatters: widget._inputFormatters,
      validator: widget._validator,
      onChanged: widget._onChanged,
      onFieldSubmitted: widget._onFieldSubmitted,
    );
  }
}
