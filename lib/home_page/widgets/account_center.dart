import 'package:flutter/material.dart';

class AccountCenter extends StatelessWidget {
  const AccountCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 130,
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
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/avatar.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'manshur_39',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.check_circle,
                    color: Colors.blue,
                  )
                ],
              ),
              const SizedBox(height: 25),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color.fromARGB(222, 1, 40, 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Image.asset(
                        'assets/icons/plus_2.png',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'Tambahkan akun Instagram',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
