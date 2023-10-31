import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor {
  static const backgroundColr = Colors.amber;
  static const circlrAvtarBackgroundColor = Color.fromARGB(255, 255, 213, 79);
  // static const backgroundColr = Colors.white;
  static const yellowColr = Color.fromARGB(255, 212, 112, 255);
  static const btnColor = Colors.amber;
  static const chatTextColor = Colors.white;
}

const appBarColor = Colors.amber;

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

Container verticalDivider(double height) {
  return Container(height: height, width: 1, color: Colors.black26);
}

Container horizontalDivider(width) {
  return Container(height: 1, width: width, color: Colors.black26);
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

SizedBox heightSizedBox(height) {
  return SizedBox(
    height: height,
  );
}

SizedBox widthSizedBox(width) {
  return SizedBox(
    width: width,
  );
}

const textStyle1 = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
const textStyle2 = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500);

// ! Button For Everything Screen

class Btn extends StatelessWidget {
  final String btnName;
  final Function() onPressed;
  final TextStyle? style;
  final double? width, height, fontSize;
  final Color? color, txtColor, btnColor;
  final EdgeInsets? padding, margin;
  // final Alignment? alignment;
  // final Decoration? decoration;
  // final TextDecoration? txtDecoration;

  const Btn(this.btnName,
      {Key? key,
      // this.alignmen
      this.color,
      // this.decoration,
      this.txtColor,
      this.width,
      this.height,
      this.padding,
      this.margin,
      this.style,
      required this.onPressed,
      // this.txtDecoration,
      this.fontSize,
      this.btnColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CupertinoButton(
        onPressed: onPressed,
        padding: padding,
        color: btnColor,
        borderRadius: BorderRadius.circular(21),
        child: Text(
          btnName,
          style: style ??
              TextStyle(
                  color: txtColor,
                  fontSize: fontSize ?? 15,
                  // decoration: txtDecoration,
                  fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
    BuildContext context, String message,
    {Color? color}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color ?? Colors.green,
      content: Text(message),
    ),
  );
}

class ChatBtn extends StatelessWidget {
  final String btnName;
  final Color? borderColor,
      backgroundColor,
      foregroundColor,
      shadowColor,
      textColor;
  final Function() onpressed;
  final double? btnWidth, btnHeight, fontSize, elevation;
  // final ButtonStyle? buttonStyle;

  const ChatBtn(
      {super.key,
      this.borderColor,
      this.backgroundColor,
      this.foregroundColor,
      this.shadowColor,
      required this.btnName,
      required this.onpressed,
      this.textColor,
      this.btnWidth,
      this.btnHeight,
      this.fontSize,
      this.elevation
      // this.buttonStyle,
      });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onpressed,
      style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.white,
          foregroundColor: foregroundColor,
          shadowColor: shadowColor,
          elevation: elevation ?? 2,
          fixedSize: Size(btnWidth ?? 93, btnHeight ?? 40),
          shape: const StadiumBorder(),
          side: BorderSide(width: 1, color: borderColor ?? Colors.green)),
      child: Text(
        btnName,
        style: TextStyle(
            color: textColor ?? Colors.green,
            fontSize: fontSize,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}

class IconTextBtn extends StatelessWidget {
  final String text1, text2;
  final IconData icon;
  final Function() onPressed;
  const IconTextBtn(
      {super.key,
      required this.icon,
      required this.onPressed,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: Colors.black87,
            size: 20,
          ),
          label: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                TextSpan(
                  text: text2,
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HorizontalRichTxt extends StatelessWidget {
  final String text1, text2;
  final double? fontSize1, fontSize2;
  final Color? color1, color2;

  const HorizontalRichTxt({
    super.key,
    required this.text1,
    required this.text2,
    this.fontSize1,
    this.fontSize2,
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text1,
                style: TextStyle(
                    color: color1 ?? Colors.red,
                    fontSize: fontSize1 ?? 15.0,
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: text2,
                style: TextStyle(
                    color: color2 ?? Colors.black45,
                    fontSize: fontSize2 ?? 14.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VerticalRichTxt extends StatelessWidget {
  final String? text1, text2, text3;
  final double? fontSize1, fontSize2;
  final Color? color1, color2;

  const VerticalRichTxt({
    super.key,
    this.text1,
    this.text2,
    this.fontSize1,
    this.fontSize2,
    this.text3,
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(
                color: color1 ?? Colors.red,
                fontSize: fontSize1 ?? 15.0,
                fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
                color: color2 ?? Colors.black45,
                fontSize: fontSize2 ?? 14.0,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

class IconBtn extends StatelessWidget {
  final Function()? onpressed;
  final IconData? icon;
  const IconBtn({
    super.key,
    this.onpressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        splashRadius: 22.0, onPressed: onpressed, icon: Icon(icon));
  }
}
