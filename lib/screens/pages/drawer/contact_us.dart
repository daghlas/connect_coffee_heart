import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        title: const Text('Contact Us'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Text(
                'HEADER IMAGE',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IBMPlexSans',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 100.0),
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 40.0),
                child: Wrap(
                  //wraps content
                  children: [
                    Center(
                      child: Container(
                        transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                        child: Card(
                          color: Colors.grey[100],
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text(
                                      'GET IN TOUCH',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBMPlexSans',
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    Text(
                                      'locations & working hrs',
                                      style: TextStyle(
                                        color: Colors.brown[900],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBMPlexSans',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Hurlingham Address - 8:00am to 7:00pm',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                const Text(
                                  'Riverside Address - 8:00am to 8:00pm',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                const Text(
                                  'Gigiri Address - 7:00am to 8:00pm',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Divider(),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    Text(
                                      ' Phone',
                                      style: TextStyle(
                                        color: Colors.brown[900],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBMPlexSans',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'Hurlingham Address: +254 112 494 142',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                const Text(
                                  'Riverside Address: +254 708 790 480',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                const Text(
                                  'Gigiri Address: +254 708 790 481',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Divider(),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.email,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    Text(
                                      ' Email',
                                      style: TextStyle(
                                        color: Colors.brown[900],
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBMPlexSans',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'marketing@connectcoffee.net',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                ),
                                Container(
                                  transform:
                                      Matrix4.translationValues(0.0, 50.0, 0.0),
                                  decoration: const BoxDecoration(
                                      color: Colors.brown,
                                      shape: BoxShape.circle),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15.0),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Follow us on',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IBMPlexSans',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/facebook_fb.png',
                              height: 27, width: 27),
                          const SizedBox(width: 20),
                          Image.asset('assets/instagram.png',
                              height: 30, width: 30),
                          const SizedBox(width: 20),
                          Image.asset('assets/twitter_x.png',
                              height: 27, width: 27),
                          // const SizedBox(width: 10),
                          // Image.asset('assets/youtube.png',
                          //     height: 25, width: 25),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
