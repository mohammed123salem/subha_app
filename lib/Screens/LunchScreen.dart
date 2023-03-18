import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({super.key});

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 6),
      () {
        Navigator.pushReplacementNamed(context, '/Main_Screen');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://4.bp.blogspot.com/-D1cNFBUid_Y/W_R90iUw-uI/AAAAAAAASAM/f0lGZfxilbwl8iHG40U_Io7LKGLgbAaVgCLcBGAs/s1600/%25D8%25B5%25D9%2588%25D8%25B1-%25D9%2588-%25D8%25B4%25D8%25B9%25D8%25A7%25D8%25B1%25D8%25A7%25D8%25AA-%25D8%25A7%25D8%25B3%25D9%2584%25D8%25A7%25D9%2585%25D9%258A%25D8%25A9-%25D9%2584%25D9%2584%25D8%25AA%25D8%25B5%25D9%2585%25D9%258A%25D9%2585%2B%25281%2529.jpg'))),
                ),
                const Text(
                  'مسبحتي ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'IBM',
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'تطبيق أذكار ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'IBM',
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Text(
              'Mohammed Walid Salem - 2023',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'IBM',
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
} // This is comment
