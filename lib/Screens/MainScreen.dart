import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'مسبحتي',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'IBM',
            ),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://1.bp.blogspot.com/-lXKheka4BYc/YQfSMeIrDOI/AAAAAAAA2hI/c20oikyrOGUamSaaEkk4zmm-Su2sJ5xrgCLcBGAsYHQ/s1002/22f0edf115f670884fbe71ee31998afb.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 30, end: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://play-lh.googleusercontent.com/S1rwKXtNa0TuHv8mCWFP_9lv12JPa2R8utH9UswjcAsC3xqDbvoumpqWWUVVTTVOHBk'),
                    ),
                  ),
                ),
                Card(
                  // margin: const EdgeInsetsDirectional.only(
                  //   top: 15,
                  //   start: 30,
                  //   end: 30,
                  // ),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    side: BorderSide(color: Colors.teal, width: 2),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        const Spacer(),
                        const Text(
                          'اللهم صل وسلم وبارك على سيدنا محمد',
                          style: TextStyle(
                            fontFamily: 'IBM',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          alignment: Alignment.center,
                          width: 60,
                          height: double.infinity,
                          child: Text(
                            _counter.toString(),
                            style: const TextStyle(
                              fontFamily: 'IBM',
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _counter++;
                          });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.teal),
                        ),
                        child: const Text(
                          'اضافة',
                          style: TextStyle(
                            fontFamily: 'IBM',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                      ),
                      child: const Text(
                        'اعادة',
                        style: TextStyle(
                          fontFamily: 'IBM',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  "استغفر الله العظيم ",
                  style: TextStyle(
                    fontFamily: 'IBM',
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
