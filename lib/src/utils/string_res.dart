import 'package:i18n_extension/default.i18n.dart';

class StringRes {
  StringRes(
      {String? undo,
      String? redo,
      String? fontFamily,
      String? fontSize,
      String? bold,
      String? subscript,
      String? superscript,
      String? italic,
      String? small,
      String? underline,
      String? strikeThrough,
      String? inlineCode,
      String? fontColor,
      String? backgroundColor,
      String? clearFormat,
      String? leftAlignment,
      String? centerAlignment,
      String? rightAlignment,
      String? justifyAlignment,
      String? textDirection,
      String? headerStyle,
      String? listNumbers,
      String? listBullets,
      String? listChecks,
      String? codeBlock,
      String? quote,
      String? indentIncrease,
      String? indentDecrease,
      String? insertLink,
      String? clear,
      String? search})
      : _undo = undo,
        _redo = redo,
        _fontFamily = fontFamily,
        _fontSize = fontSize,
        _bold = bold,
        _subscript = subscript,
        _superscript = superscript,
        _italic = italic,
        _small = small,
        _underline = underline,
        _strikeThrough = strikeThrough,
        _inlineCode = inlineCode,
        _fontColor = fontColor,
        _backgroundColor = backgroundColor,
        _clearFormat = clearFormat,
        _leftAlignment = leftAlignment,
        _centerAlignment = centerAlignment,
        _rightAlignment = rightAlignment,
        _justifyAlignment = justifyAlignment,
        _textDirection = textDirection,
        _headerStyle = headerStyle,
        _listNumbers = listNumbers,
        _listBullets = listBullets,
        _listChecks = listChecks,
        _codeBlock = codeBlock,
        _quote = quote,
        _indentIncrease = indentIncrease,
        _indentDecrease = indentDecrease,
        _insertLink = insertLink,
        _clear = clear,
        _search = search;

  final String? _undo;
  final String? _redo;
  final String? _fontFamily;
  final String? _fontSize;
  final String? _bold;
  final String? _subscript;
  final String? _superscript;
  final String? _italic;
  final String? _small;
  final String? _underline;
  final String? _strikeThrough;
  final String? _inlineCode;
  final String? _fontColor;
  final String? _backgroundColor;
  final String? _clearFormat;
  final String? _leftAlignment;
  final String? _centerAlignment;
  final String? _rightAlignment;
  final String? _justifyAlignment;
  final String? _textDirection;
  final String? _headerStyle;
  final String? _listNumbers;
  final String? _listBullets;
  final String? _listChecks;
  final String? _codeBlock;
  final String? _quote;
  final String? _indentIncrease;
  final String? _indentDecrease;
  final String? _insertLink;
  final String? _clear;
  final String? _search;

  String get undo => _undo ?? 'Undo'.i18n;

  String get redo => _redo ?? 'Redo'.i18n;

  String get fontFamily => _fontFamily ?? 'Font family'.i18n;

  String get fontSize => _fontSize ?? 'Font size'.i18n;

  String get bold => _bold ?? 'Bold'.i18n;

  String get subscript => _subscript ?? 'Subscript'.i18n;

  String get superscript => _superscript ?? 'Superscript'.i18n;

  String get italic => _italic ?? 'Italic'.i18n;

  String get small => _small ?? 'Small'.i18n;

  String get underline => _underline ?? 'Underline'.i18n;

  String get strikeThrough => _strikeThrough ?? 'Strike through'.i18n;

  String get inlineCode => _inlineCode ?? 'Inline code'.i18n;

  String get fontColor => _fontColor ?? 'Font color'.i18n;

  String get backgroundColor => _backgroundColor ?? 'Background color'.i18n;

  String get clearFormat => _clearFormat ?? 'Clear format'.i18n;

  String get leftAlignment => _leftAlignment ?? 'Align left'.i18n;

  String get centerAlignment => _centerAlignment ?? 'Align center'.i18n;

  String get rightAlignment => _rightAlignment ?? 'Align right'.i18n;

  String get justifyAlignment => _justifyAlignment ?? 'Justify win width'.i18n;

  String get textDirection => _textDirection ?? 'Text direction'.i18n;

  String get headerStyle => _headerStyle ?? 'Header style'.i18n;

  String get listNumbers => _listNumbers ?? 'Numbered list'.i18n;

  String get listBullets => _listBullets ?? 'Bullet list'.i18n;

  String get listChecks => _listChecks ?? 'Checked list'.i18n;

  String get codeBlock => _codeBlock ?? 'Code block'.i18n;

  String get quote => _quote ?? 'Quote'.i18n;

  String get indentIncrease => _indentIncrease ?? 'Increase indent'.i18n;

  String get indentDecrease => _indentDecrease ?? 'Decrease indent'.i18n;

  String get insertLink => _insertLink ?? 'Insert URL'.i18n;

  String get search => _search ?? 'Search'.i18n;

  String get clear => _clear ?? 'Clear'.i18n;
}
