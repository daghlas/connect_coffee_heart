import 'package:connect_coffee/components/menu_tile.dart';
import 'package:connect_coffee/models/connect_menu.dart';
import 'package:connect_coffee/models/menu.dart';
import 'package:connect_coffee/screens/pages/menu_item_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ConnectMenu>(
      builder: (BuildContext context, ConnectMenu value, Widget? child) =>
          SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 80.0, 100.0, 0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset('assets/connect.png'),
                ),
              ),
            ),

            const SizedBox(height: 15.0),

            Text(
              greeting(),
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                fontFamily: 'IBMPlexSans',
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

            const SizedBox(height: 20.0),

            //list of menu items
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(34)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 30.0, 0, 5.0),
                        child: Text(
                          'Explore our menu & make orders',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: value.menuList.length,
                          itemBuilder: (context, index) {
                            // get individual menu item
                            Menu menuItem = value.menuList[index];

                            // Retrieve menu name data to pass to next context
                            String name = value.menuList[index].name;

                            // return the tile for the item
                            return MenuTile(
                              menu: menuItem,
                              icon: const Icon(Icons.arrow_forward_ios),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        MenuItemPage(name: name),
                                  ),
                                );
                              },
                            );
                          }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // greeting tag
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }
}
