import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:stu/Widget/text_format.dart';
import 'Widget/avatar_app_bar.dart';
import 'Widget/push_button.dart';
import 'Widget/format_text_field.dart';
import 'Widget/orange_button.dart';

class Notice extends StatefulWidget {
  final String avatar;
  const Notice({
    super.key,
    required this.avatar,
  });

  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF404040),
      appBar: AppBar(
        backgroundColor: const Color(0xFF404040),
        //title: const Text("通知", style: TextStyle(color: Colors.white)),
        leading: AvatarAppBar(avatarUrl: widget.avatar,),
      ),
      body: Center(
        child: Text("通知はありません",
    style: GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    color: Colors.white60,
    ),
        ),
    ),
    );
  }
}
