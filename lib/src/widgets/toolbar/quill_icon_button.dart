import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/widgets.dart';

class QuillIconButton extends StatelessWidget {
  const QuillIconButton({
    required this.onPressed,
    this.afterPressed,
    this.icon,
    this.size = 40,
    this.fillColor,
    this.hoverElevation = 1,
    this.highlightElevation = 1,
    this.borderRadius = 2,
    this.tooltip,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? afterPressed;
  final Widget? icon;
  final double size;
  final Color? fillColor;
  final double hoverElevation;
  final double highlightElevation;
  final double borderRadius;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: size, height: size),
      child: UtilityWidgets.maybeTooltip(
        message: tooltip,
        child: RawMaterialButton(
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          fillColor: fillColor,
          elevation: 0,
          hoverElevation: hoverElevation,
          highlightElevation: hoverElevation,
          onPressed: () {
            onPressed?.call();
            afterPressed?.call();
          },
          child: icon,
        ),
      ),
    );
  }
}

class SvgIconWrapper extends StatelessWidget {
  const SvgIconWrapper({
    Key? key,
    required this.size,
    this.color,
    this.pureIcon = false,
    required this.iconPath,
  })  : assert(size != 0),
        height = 0,
        width = 0,
        super(key: key);

  const SvgIconWrapper.rect({
    Key? key,
    required this.iconPath,
    required this.height,
    required this.width,
    this.color,
  })  : size = 0,
        pureIcon = false,
        super(key: key);

  final double size;
  final double height;
  final double width;
  final Color? color;
  final bool pureIcon;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    if (size == 0) {
      return SvgPicture.asset(iconPath,
          color: color, width: width, height: height);
    }
    if (pureIcon) {
      return SvgPicture.asset(iconPath,
          color: color, width: size, height: size);
    }
    return SizedBox.square(
        dimension: size,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath, color: color, width: size, height: size),
          ],
        ));
  }
}

