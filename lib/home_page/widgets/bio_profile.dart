import 'package:flutter/material.dart';

class BioProfile extends StatelessWidget {
  const BioProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'M.T. Manshur',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const Text(
            'Keep Moving',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                ImageIcon(
                  const AssetImage(
                    'assets/icons/link.png',
                  ),
                  color: Colors.blueGrey.shade200,
                  size: 17,
                ),
                const SizedBox(width: 5),
                Text(
                  'youtube.com/@manshurdev',
                  style:
                      TextStyle(color: Colors.blueGrey.shade200, fontSize: 16),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
