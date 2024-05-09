import 'package:flutter/material.dart';
import 'package:flutter_ui_instagram/bagikan_profil/view/share_profil.dart';
import 'package:flutter_ui_instagram/edit_profil_page/view/edit_profil_page.dart';
import 'package:flutter_ui_instagram/home_page/widgets/profile_pict.dart';

import '../widgets/bio_profile.dart';
import '../widgets/bottom_sheets_content.dart';
import '../widgets/create_widget.dart';
import '../widgets/pofile_number.dart';
import '../widgets/story_widget.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({super.key});

  @override
  State<ProfilPage> createState() => _ProfilPage();
}

class _ProfilPage extends State<ProfilPage> {
  int _currentIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (BuildContext context) {
                            return const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                BottomSheetContent(),
                              ],
                            );
                          },
                        );
                      },
                      child: Row(
                        children: [
                          const Text(
                            'manshur_39',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 5),
                          Image.asset(
                            'assets/icons/arrow_down.png',
                            color: Colors.white,
                            height: 12,
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/icons/threads.png',
                            height: 23,
                            width: 23,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(24),
                                          topRight: Radius.circular(24),
                                        ),
                                        color: Color.fromARGB(237, 61, 60, 60)),
                                    child: const CreateWidget(),
                                  );
                                });
                          },
                          child: Image.asset(
                            'assets/icons/more.png',
                            height: 23,
                            width: 23,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/icons/menu.png',
                            height: 23,
                            width: 23,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProiflePict(),
                  ProfileNumber(
                    amount: '50',
                    title: 'postingan',
                  ),
                  ProfileNumber(
                    amount: '302',
                    title: 'pengikut',
                  ),
                  ProfileNumber(
                    amount: '301',
                    title: 'mengikuti',
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const BioProfile(),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, _routeTransition(const EditProfilPage()));
                      },
                      child: Container(
                        height: 35,
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(106, 158, 158, 158),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Edit profil',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, _routeTransition(const ShareProfil()));
                      },
                      child: Container(
                        height: 35,
                        width: 170,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(106, 158, 158, 158),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Bagikan profil',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 45,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(106, 158, 158, 158),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: ImageIcon(
                        AssetImage('assets/icons/invite.png'),
                        size: 17,
                        color: Colors.white,
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Story(
                      image: '123',
                      title: 'Lombok',
                    ),
                    SizedBox(width: 15),
                    Story(
                      image: '124',
                      title: 'Bali',
                    ),
                    SizedBox(width: 15),
                    Story(
                      image: '5',
                      title: 'Jakarta',
                    ),
                    SizedBox(width: 15),
                    Story(
                      image: '126',
                      title: 'Afrika',
                    ),
                    SizedBox(width: 15),
                    Story(
                      image: '127',
                      title: 'Japan',
                    ),
                    SizedBox(width: 15),
                    Story(
                      image: '100',
                      title: 'Saudi Arabia',
                    ),
                    SizedBox(width: 15),
                    Story(
                      image: '129',
                      title: 'Turki',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: double.infinity,
                height: 50,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  dividerColor: Color.fromARGB(80, 158, 158, 158),
                  tabs: [
                    ImageIcon(AssetImage('assets/icons/grid.png')),
                    ImageIcon(
                      AssetImage('assets/icons/reels.png'),
                    ),
                    ImageIcon(AssetImage('assets/icons/tag.png')),
                  ],
                ),
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1),
                  itemCount: 50,
                  itemBuilder: (context, index) => Image.network(
                      'https://picsum.photos/id/${152 + index}/500/500'))
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border:
                  Border(top: BorderSide(color: Colors.grey.withOpacity(0.2)))),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: _onItemTapped,
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  color:
                      _currentIndex == 0 ? Colors.white : Colors.grey.shade400,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/search.png',
                  color:
                      _currentIndex == 1 ? Colors.white : Colors.grey.shade400,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/more.png',
                  color:
                      _currentIndex == 2 ? Colors.white : Colors.grey.shade400,
                  width: 25,
                  height: 25,
                ),
                label: 'More',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/reels.png',
                  color:
                      _currentIndex == 3 ? Colors.white : Colors.grey.shade400,
                ),
                label: 'Reels',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/avatar.jpg'),
                            fit: BoxFit.cover),
                        border: Border.all(
                            color: _currentIndex == 4
                                ? Colors.white
                                : Colors.black,
                            width: 1)),
                  ),
                  label: 'Avatar'),
            ],
          ),
        ),
      ),
    );
  }
}

Route _routeTransition(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
