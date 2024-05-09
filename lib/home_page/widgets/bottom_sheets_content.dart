import 'package:flutter/material.dart';

import 'account_center.dart';
import 'facebook_account_widget.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color.fromARGB(255, 6, 74, 80),
            Color.fromARGB(255, 94, 107, 69),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  Center(
                    child: Container(
                      height: 5,
                      width: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(2)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const AccountCenter(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Text(
                        'Profil Facebook Anda',
                        style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const FacebookAccount(),
              const SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(121, 224, 224, 224),
                        width: 1),
                  ),
                  child: const Center(
                    child: Text(
                      'Buka Pusat Akun',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
