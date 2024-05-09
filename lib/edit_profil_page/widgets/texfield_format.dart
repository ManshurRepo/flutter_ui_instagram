// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TexfieldForm extends StatelessWidget {
  const TexfieldForm({
    super.key,
    required this.labelTitle,
  });
  final String labelTitle;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white, fontSize: 19),
      decoration: InputDecoration(
          labelText: labelTitle,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 17),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey
                    .shade300), // Warna garis saat tidak aktif di sini disesuaikan dengan warna yang Anda inginkan (misalnya hijau)
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200))),
    );
  }
}

class TexfieldMusik extends StatelessWidget {
  const TexfieldMusik({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white, fontSize: 19),
      decoration: InputDecoration(
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade300,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          suffixIcon: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tambahkan musik ke profil',
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          )),
    );
  }
}

class TexfieldGendet extends StatelessWidget {
  const TexfieldGendet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: const TextStyle(color: Colors.white, fontSize: 19),
      decoration: InputDecoration(
        labelText: 'Jenis kelamin',
        labelStyle: const TextStyle(color: Colors.grey, fontSize: 17),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade300,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        suffixIcon: const Icon(Icons.arrow_forward_ios),
        suffixIconConstraints: const BoxConstraints(maxWidth: 24),
      ),
    );
  }
}
