import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:penny_path/theme/colors.dart';

enum CommonButtonVariant {
  filled,
  outlined,
  underlined,
}

const double _CommonButtonBorderWidth = 1.0; // can be set from 1.0 to 2.0

class CommonButton extends StatelessWidget {
  final String? text;
  final CommonButtonVariant variant;
  final Widget? widget;

  final Color? backgroundColor;
  final Color? contentColor;

  final bool isLoading;
  final bool isDisabled;

  final double? minSize;

  final TextStyle? textStyle;

  final EdgeInsets? padding;

  final VoidCallback? onTap;

  const CommonButton({
    super.key,
    this.text,
    this.variant = CommonButtonVariant.filled,
    this.backgroundColor,
    this.contentColor,
    this.minSize,
    this.isLoading = false,
    this.isDisabled = false,
    this.textStyle,
    this.padding,
    this.onTap,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case CommonButtonVariant.filled:
        return _Filled(
          text: text,
          padding: padding,
          backgroundColor: backgroundColor ?? black,
          isLoading: isLoading,
          contentColor: contentColor ?? white,
          onTap: isDisabled ? null : onTap,
          textStyle: textStyle,
          widget: widget,
        );
      case CommonButtonVariant.outlined:
        return _Outlined(
          text: text,
          contentColor: contentColor ?? black,
          isLoading: isLoading,
          padding: padding,
          onTap: isDisabled ? null : onTap,
          textStyle: textStyle,
          minSize: minSize,
          widget: widget,
        );
      case CommonButtonVariant.underlined:
        return _Underlined(
          text: text,
          contentColor: contentColor ?? black,
          onTap: isDisabled ? null : onTap,
          widget: widget,
          textStyle: textStyle,
        );
    }
  }
}

class _Filled extends StatelessWidget {
  final String? text;

  final Color backgroundColor;
  final Color contentColor;

  final bool isLoading;

  final TextStyle? textStyle;

  final EdgeInsets? padding;

  final VoidCallback? onTap;

  final Widget? widget;

  const _Filled({
    required this.text,
    required this.backgroundColor,
    required this.contentColor,
    required this.isLoading,
    this.textStyle,
    this.padding,
    this.onTap,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.circular(100.0),
      padding: padding ?? EdgeInsets.zero,
      color: backgroundColor,
      disabledColor: white,
      onPressed: isLoading ? () {} : onTap,
      child: isLoading
          ? _Loading(
              contentColor: contentColor,
            )
          : widget ??
              Text(
                text!,
                style: textStyle ??
                    TextStyle(
                      fontWeight: FontWeight.w500,
                      color: onTap == null ? grey : contentColor,
                    ),
              ),
    );
  }
}

class _Outlined extends StatelessWidget {
  final String? text;

  final Color contentColor;

  final EdgeInsets? padding;

  final bool isLoading;
  final TextStyle? textStyle;

  final double? minSize;

  final VoidCallback? onTap;
  final Widget? widget;

  const _Outlined({
    required this.text,
    required this.contentColor,
    required this.isLoading,
    this.minSize,
    this.textStyle,
    this.padding,
    this.onTap,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onTap == null ? 0.4 : 1.0,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: _CommonButtonBorderWidth,
            color: contentColor,
          ),
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: CupertinoButton(
          borderRadius: BorderRadius.circular(32.0),
          padding: widget != null
              ? EdgeInsets.zero
              : padding ??
                  const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 64.0,
                  ).subtract(
                    const EdgeInsets.all(_CommonButtonBorderWidth),
                  ),
          onPressed: isLoading ? () {} : onTap,
          color: Colors.transparent,
          minSize: minSize,
          child: isLoading
              ? _Loading(
                  contentColor: contentColor,
                )
              : widget ??
                  Text(
                    text!,
                    style: textStyle ??
                        TextStyle(
                          fontWeight: FontWeight.w500,
                          color: contentColor,
                        ),
                  ),
        ),
      ),
    );
  }
}

class _Underlined extends StatelessWidget {
  final String? text;

  final Color contentColor;

  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final Widget? widget;

  const _Underlined({
    required this.text,
    required this.contentColor,
    this.onTap,
    this.widget,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.circular(100.0),
      padding: EdgeInsets.zero,
      minSize: 20.0,
      onPressed: onTap,
      child: widget ??
          Text(
            text!,
            style: textStyle ??
                TextStyle(
                  color: onTap == null ? grey : contentColor,
                  decoration: TextDecoration.underline,
                ),
          ),
    );
  }
}

class _Loading extends StatelessWidget {
  final Color contentColor;

  const _Loading({
    required this.contentColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 20.0,
      height: 20.0,
      child: CircularProgressIndicator(
        strokeWidth: 2.0,
        valueColor: AlwaysStoppedAnimation<Color>(contentColor),
      ),
    );
  }
}
