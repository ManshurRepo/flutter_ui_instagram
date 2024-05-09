import 'package:flutter/material.dart';

import '../widgets/texfield_format.dart';

class EditProfilPage extends StatefulWidget {
  const EditProfilPage({super.key});

  @override
  State<EditProfilPage> createState() => _EditProfilPageState();
}

bool isSwitched = false;

class _EditProfilPageState extends State<EditProfilPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          title: const Text(
            'Edit Profil',
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/avatar.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(width: 25),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(45),
                        ),
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/avatar_2.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text('Edit foto atau avatar',
                      style: TextStyle(color: Colors.blue, fontSize: 16)),
                  const TexfieldForm(
                    labelTitle: 'Nama',
                  ),
                  const TexfieldForm(
                    labelTitle: 'Nama Pengguna',
                  ),
                  const TexfieldForm(
                    labelTitle: 'Kata Ganti',
                  ),
                  const TexfieldForm(
                    labelTitle: 'Bio',
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tautan',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        '1',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  ),
                  const TexfieldGendet(),
                  const TexfieldMusik(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tampilkan Lencana Threads',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Colors.grey,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          }),
                    ],
                  ),
                  const Divider(
                    color: Color.fromARGB(92, 158, 158, 158),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Beralih ke akun profesional',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color.fromARGB(92, 158, 158, 158),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Pengaturan informasi pribadi',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color.fromARGB(92, 158, 158, 158),
                    thickness: 1,
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Daftar Verifikasi Meta',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    color: Color.fromARGB(92, 158, 158, 158),
                    thickness: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
