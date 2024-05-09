import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70),
            color: Colors.black,
            border: Border.all(
                color: const Color.fromARGB(112, 245, 245, 245), width: 1),
          ),
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(65),
                      border: Border.all(
                        color: const Color.fromARGB(112, 245, 245, 245),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/$image/200/300'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
