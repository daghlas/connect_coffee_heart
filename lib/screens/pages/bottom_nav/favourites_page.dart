import 'package:flutter/material.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(80.0, 25.0, 80.0, 0),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'FAVOURITES',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  // fontFamily: 'IBMPlexSans',
                ),
              ),
            ),
          ),

          const SizedBox(height: 15.0),

          //list of menu items
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(34.0)),
              ),

              // CONTENT GOES HERE
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 5.0),
                    child: Text(
                      'Your preferences - Favourites',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        // code goes here
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
