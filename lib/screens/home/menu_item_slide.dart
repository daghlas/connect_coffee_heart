import 'package:flutter/material.dart';

class ItemSlide extends StatefulWidget {
  const ItemSlide({super.key});

  @override
  State<ItemSlide> createState() => _ItemSlideState();
}

class _ItemSlideState extends State<ItemSlide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(80.0, 25.0, 80.0, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('assets/connect.png'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 70.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Wrap(
                  //wraps content
                  children: [
                    Center(
                      child: Container(
                        transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                        child: Card(
                          color: Colors.grey[100],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 20.0, 20.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text(
                                      'Espresso / Espresso Macchiato',
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
                                const Text(
                                  'This is an Espresso with steamed milk, usually with a shallow pool of foam floating on top',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              const Text(
                                                'HOT',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'IBMPlexSans',
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Image.asset(
                                                'assets/hot_coffee.png',
                                                scale: 30,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        )),
                                    const SizedBox(width: 30),
                                    Container(
                                        decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 1.5,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            children: [
                                              const Text(
                                                'ICED',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'IBMPlexSans',
                                                ),
                                              ),
                                              const SizedBox(width: 5),
                                              Image.asset(
                                                'assets/iced_coffee.png',
                                                scale: 30,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    transform: Matrix4.translationValues(
                                        0.0, 20.0, 0.0),
                                    decoration: const BoxDecoration(
                                        color: Colors.black,
                                        shape: BoxShape.circle),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 20,
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
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text('Ksh.'),
                              Text(
                                '250',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'IBMPlexSans',
                                    letterSpacing: 2.0),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.brown[600]),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Row(
                                  children: [
                                    Text(
                                      'ADD TO CART',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'IBMPlexSans',
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                      //size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
