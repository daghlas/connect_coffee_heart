import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        // title: const Text('Contact Us'),
        // automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/connect.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          const Text(
            '- Make life Better -',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              // fontFamily: 'IBMPlexSans',
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 80.0),
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
                                GestureDetector(
                                  onTap: () {
                                    _sendEmail();
                                  },
                                  child: Container(
                                    transform: Matrix4.translationValues(
                                        0.0, 50.0, 0.0),
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
                          GestureDetector(
                            onTap: () {
                              if (kDebugMode) {
                                print('facebook button');
                              }
                              _launchUrl(Uri.parse('https://www.facebook.com'));
                            },
                            child: Image.asset('assets/facebook_fb.png',
                                height: 30, width: 30),
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              if (kDebugMode) {
                                print('instagram button');
                              }
                              _launchUrl(
                                  Uri.parse('https://www.instagram.com'));
                            },
                            child: Image.asset('assets/instagram.png',
                                height: 33, width: 33),
                          ),
                          const SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {
                              if (kDebugMode) {
                                print('twitter button');
                              }
                              _launchUrl(Uri.parse('https://twitter.com'));
                            },
                            child: Image.asset('assets/twitter_x.png',
                                height: 30, width: 30),
                          ),
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

  // contact us direct social media urls
  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  final String emailAddress = 'marketing@connectcoffee.net';

  // email address contact
  void _sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
      queryParameters: {'subject': 'Feedback'},
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch email';
    }
  }
}
