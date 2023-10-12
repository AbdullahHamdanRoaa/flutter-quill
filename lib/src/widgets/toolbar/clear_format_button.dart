import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

import '../../models/documents/attribute.dart';
import '../../models/themes/quill_icon_theme.dart';
import '../controller.dart';
import '../toolbar.dart';

class ClearFormatButton extends StatefulWidget {
  const ClearFormatButton({
    required this.icon,
    required this.controller,
    this.iconSize = kDefaultIconSize,
    this.iconTheme,
    this.afterButtonPressed,
    this.tooltip,
    Key? key,
  }) : super(key: key);

  final String icon;
  final double iconSize;

  final QuillController controller;

  final QuillIconTheme? iconTheme;
  final VoidCallback? afterButtonPressed;
  final String? tooltip;

  @override
  _ClearFormatButtonState createState() => _ClearFormatButtonState();
}

class _ClearFormatButtonState extends State<ClearFormatButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = widget.iconTheme?.iconUnselectedColor ?? theme.iconTheme.color;
    final fillColor = widget.iconTheme?.iconUnselectedFillColor ?? theme.canvasColor;
    return QuillIconButton(
      tooltip: widget.tooltip,
      highlightElevation: 0,
      hoverElevation: 0,
      size: widget.iconSize * kIconButtonFactor,
      icon: SvgIconWrapper(iconPath: widget.icon, size: 20,color: View.of(context).platformDispatcher.platformBrightness== Brightness.dark?iconColor:null),
      fillColor: fillColor,
      borderRadius: widget.iconTheme?.borderRadius ?? 2,
      onPressed: () {
        bool reselect = false;
        if (widget.controller.selection.start == widget.controller.selection.end)
        {
          widget.controller.updateSelection(
              TextSelection(baseOffset: 0, extentOffset: widget.controller.document.length - 1),
              ChangeSource.LOCAL);
          reselect = true;
        }
        final attrs = <Attribute>{};
        for (final style in widget.controller.getAllSelectionStyles()) {
          for (final attr in style.attributes.values) {
            attrs.add(attr);
          }
        }
        for (final attr in attrs) {
          if(attr.key == 'size' || attr.key == 'align'){
            widget.controller.formatSelection(Attribute.clone(attr, attr.value));
          } else{

          widget.controller.formatSelection(Attribute.clone(attr, null));
        }}
        if(reselect) {
          widget.controller.updateSelection(
              TextSelection(baseOffset: widget.controller.document.length - 1,
                  extentOffset: widget.controller.document.length - 1),
              ChangeSource.LOCAL);
        }
        widget.controller.toggledStyle = Style();
      },
      afterPressed: widget.afterButtonPressed,
    );
  }
}
