import 'package:flutter/material.dart';

class ShareProfil extends StatefulWidget {
  const ShareProfil({super.key});

  @override
  State<ShareProfil> createState() => _ShareProfilState();
}

bool warna = true;

class _ShareProfilState extends State<ShareProfil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: !warna
                ? const DecorationImage(
                    image: AssetImage('assets/images/emoji_bg.jpg'),
                    fit: BoxFit.cover,
                  )
                : null,
            gradient: const LinearGradient(colors: [
              Color(0xfff9fc1e),
              // Color(0xfff7d302),
              Color(0xffde027f),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                          color: const Color.fromARGB(79, 158, 158, 158)),
                      child: Center(
                          child: GestureDetector(
                        onTap: () {
                          setState(() {
                            warna = !warna;
                          });
                        },
                        child: Text(
                          warna ? 'WARNA' : 'EMOJI',
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )),
                    ),
                    Image.asset(
                      'assets/icons/qr_code.png',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.all(25),
                // height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/instagram.png',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '@MANSHUR_39',
                      style: TextStyle(
                          color: Color(0xffde027f),
                          fontSize: 25,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.white),
                          child: const Icon(
                            Icons.share_outlined,
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('Bagikan \n profil')
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade400),
                              borderRadius: BorderRadius.circular(60),
                              color: Colors.white),
                          child: const Icon(
                            Icons.link,
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text('Salin tautan')
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
