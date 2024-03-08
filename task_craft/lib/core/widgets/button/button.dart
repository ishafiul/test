import 'package:flutter/material.dart';
import 'package:task_craft/core/widgets/button/base_button.dart';
import 'package:task_craft/core/widgets/button/primary_button.dart';
import 'package:task_craft/core/widgets/button/success_button.dart';
import 'package:task_craft/core/widgets/button/warning_button.dart';
import 'danger_button.dart';
import 'enums.dart';

class Button extends StatelessWidget {
  final Function()? onPressed;
  late final ButtonType? buttonType;
  final ButtonFill? fill;
  final ButtonShape? shape;
  final ButtonSize? buttonSize;
  final bool? isBlock;
  final Widget child;

  Button({
    super.key,
    this.onPressed,
    this.fill,
    this.shape,
    this.buttonSize = ButtonSize.middle,
    this.isBlock = false,
    required this.child,
  }) : buttonType = ButtonType.base;

  Button.primary({
    super.key,
    this.onPressed,
    this.fill,
    this.shape,
    this.buttonSize = ButtonSize.middle,
    this.isBlock = false,
    required this.child,
  }) : buttonType = ButtonType.primary;

  Button.success({
    super.key,
    this.onPressed,
    this.fill,
    this.shape,
    this.buttonSize = ButtonSize.middle,
    this.isBlock = false,
    required this.child,
  }) : buttonType = ButtonType.success;

  Button.warning({
    super.key,
    this.onPressed,
    this.fill,
    this.shape,
    this.buttonSize = ButtonSize.middle,
    this.isBlock = false,
    required this.child,
  }) : buttonType = ButtonType.warning;

  Button.danger({
    super.key,
    this.onPressed,
    this.fill,
    this.shape,
    this.buttonSize = ButtonSize.middle,
    this.isBlock = false,
    required this.child,
  }) : buttonType = ButtonType.danger;

  @override
  Widget build(BuildContext context) {
    final isBlockValue = isBlock ?? false; // Handle null case for isBlock

    switch (buttonType) {
      case ButtonType.primary:
        return PrimaryButton(
          fill: fill,
          onPressed: onPressed,
          shape: shape,
          isBlock: isBlockValue,
          buttonSize: buttonSize,
          child: child,
        );
      case ButtonType.success:
        return SuccessButton(
          fill: fill,
          onPressed: onPressed,
          shape: shape,
          isBlock: isBlockValue,
          buttonSize: buttonSize,
          child: child,
        );
      case ButtonType.warning:
        return WarningButton(
          fill: fill,
          onPressed: onPressed,
          shape: shape,
          isBlock: isBlockValue,
          buttonSize: buttonSize,
          child: child,
        );
      case ButtonType.danger:
        return DangerButton(
          fill: fill,
          onPressed: onPressed,
          shape: shape,
          isBlock: isBlockValue,
          buttonSize: buttonSize,
          child: child,
        );
      default:
        return BaseButton(
          fill: fill,
          onPressed: onPressed,
          shape: shape,
          isBlock: isBlockValue,
          buttonSize: buttonSize,
          child: child,
        );
    }
  }
}
