import 'package:flutter/material.dart';

class FacebookAccount extends StatelessWidget {
  const FacebookAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(136, 40, 65, 40),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/avatar.jpg'),
                                fit: BoxFit.cover)),
                        child: Stack(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 40, 65, 40),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(136, 40, 65, 40),
                                      width: 2)),
                              child: Image.asset(
                                'assets/icons/facebook.png',
                                color: Colors.white,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Muhammad Taoefikoel \nManshoer',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Color.fromARGB(111, 238, 238, 238),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
