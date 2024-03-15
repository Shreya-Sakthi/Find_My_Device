import 'package:flutter/material.dart';

class FinalScreen extends StatefulWidget {
  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Map Image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/map2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 30.0,
              left: 20.0,
              child:Icon((Icons.arrow_circle_left_outlined),
              size: 35,),

            ),
            // Bottom Container
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Device Info
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 60.0,left:30),
                          child: Image.asset('images/finalmob.png', width: 50),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Xiaomi 11i",
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Contacting device...',
                              style: TextStyle(
                                fontSize: 17.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.settings, color: Colors.white, size: 20.0),
                      ],
                    ),
                    SizedBox(height: 50), // Adjust spacing
                    // Action Buttons
                    ActionButton(
                      icon: Icons.multitrack_audio_outlined,
                      text: "Play Sound",
                    ),
                    Padding(padding: EdgeInsets.only(top:15),),

                    ActionButton(
                      icon: Icons.lock_outline,
                      text: "Secure Device",
                    ),

                    Padding(padding: EdgeInsets.only(top:15),),
                    ActionButton(
                      icon: (Icons.directions),
                      text: "Get Directions",

                    ),
                  ],
                ),
              ),
            ),
            // Google Text Positioned on top
            Positioned(
              top: 380,
              left: 20,
              child: Text(
                "Google",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const ActionButton({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
