// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CreateWidget extends StatelessWidget {
  const CreateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                height: 5,
                width: 45,
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(3)),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Buat',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Color.fromARGB(211, 89, 89, 89),
              thickness: 1,
              height: 2,
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CreateList(
                    icon: 'reels',
                    title: 'Reel',
                  ),
                  SizedBox(height: 25),
                  CreateList(
                    icon: 'grid',
                    title: 'Posting',
                  ),
                  SizedBox(height: 25),
                  CreateList(
                    icon: 'story',
                    title: 'Cerita',
                  ),
                  SizedBox(height: 25),
                  CreateList(
                    icon: 'love_story',
                    title: 'Sorotan Cerita',
                  ),
                  SizedBox(height: 25),
                  CreateList(
                    icon: 'stream',
                    title: 'Siaran Langsung',
                  ),
                  SizedBox(height: 25),
                  CreateList(
                    icon: 'magic_wand',
                    title: 'Dibuat untuk Anda',
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

class CreateList extends StatelessWidget {
  const CreateList({
    super.key,
    required this.icon,
    required this.title,
  });
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icons/$icon.png',
          color: Colors.white,
          height: 25,
          width: 25,
        ),
        const SizedBox(width: 15),
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 19),
        ),
      ],
    );
  }
}
