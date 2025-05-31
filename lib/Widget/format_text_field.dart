import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormatTextField extends StatelessWidget {
  final double? Width;
  final double? Height;
  final TextInputType?  keyboardType;
  final IconData? iconData;
  final TextEditingController? Controller;
  final String? labelText;

  const FormatTextField({super.key,
    this.Width,
    this.keyboardType,
    this.iconData,
    this.Controller,
    this.labelText,
    this.Height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Width, //幅300
      height: Height, //高さ50

      child: TextField(
        controller: Controller,
        style: GoogleFonts.inter(
          //入力時のフォント
          letterSpacing: 1.2,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          //TODOバックメッセージ
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          filled: true, // ← 背景を塗りつぶす
          fillColor: Color(0xFF555555),
          hintText: labelText,
          hintStyle: TextStyle(color:  Colors.white.withOpacity(0.6)),
          //入力フィールドにiconが入るか入らないか
          prefixIcon: iconData != null
          ? Icon(iconData, size: 20, color: Colors.white)
          : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),//先端が丸くなる
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 0),
          //入力領域の余白を０
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.white, //入力モードの色と枠線幅
              width: 1.5,
            ),
          ),
        ),
        keyboardType: keyboardType,//example：TextInputType.number
      ),
    );
  }
}
