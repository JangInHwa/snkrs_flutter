import 'package:flutter/material.dart';

class SmallTextButton extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  const SmallTextButton({this.text, this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80,
        decoration: const BoxDecoration(
          color: Color(0xFFECECEE),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Center(
          child: Text(text ?? '', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff007aff))),
        ),
      ),
    );
  }
}
