import 'package:flutter/material.dart';
import 'FinalScreen.dart';

class Screen2 extends StatefulWidget {
  final bool admin;

  const Screen2({Key? key, required this.admin}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  int tappedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              const Flexible(
                flex: 1,
                child: Center(
                  child: Text(
                    '        Find My Device',
                    style: TextStyle(fontSize: 30.0, color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset(
                  'images/a icon.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView(
              children: [
                _buildDeviceTile(
                  image: 'images/google_pixel_4a.png',
                  name: 'Google Pixel 4a',
                  onTap: () {},
                  subtitle: 'This device',
                  roundTop: true,
                  roundBottom: true,
                ),
                SizedBox(height: 15,),
                _buildDeviceTile(
                  image: 'images/oneplus_8.png',
                  name: 'OnePlus 8',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FinalScreen()),
                    );
                  },
                  roundTop: true,
                ),
                _buildDeviceTile(
                  image: 'images/motorola_moto_g73_5g.png',
                  name: 'Motorola moto g73 5G',
                  onTap: () {
                    // Handle onTap for Motorola moto g73 5G
                  },
                ),
                _buildDeviceTile(
                  image: 'images/xiaomi_11i.png',
                  name: 'Xiaomi 11i',
                  onTap: () {
                    // Handle onTap for Xiaomi 11i
                  },
                ),
                _buildDeviceTile(
                  image: 'images/vivo_v2022.png',
                  name: 'Vivo V2022',
                  onTap: () {},
                  roundBottom: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDeviceTile(
      {required String image,
        required String name,
        required VoidCallback onTap,
        String? subtitle,
        bool roundTop = false,
        bool roundBottom = false}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 95,
        margin: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.vertical(
            top: roundTop ? Radius.circular(25) : Radius.zero,
            bottom: roundBottom ? Radius.circular(25) : Radius.zero,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Center align text vertically
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
            if (subtitle != null) // Check if the subtitle is provided
              Padding(
                padding: EdgeInsets.only(left: 55),
                // Adjust the indentation as needed
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
