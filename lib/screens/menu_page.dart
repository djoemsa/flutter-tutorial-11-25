import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb),
          title: Text('Menu Page'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            )
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.cyan, Colors.indigo],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
                image: DecorationImage(
                  image: AssetImage("assets/patterns/flower.png"),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Spacer(flex: 1),
                Hero(
                  tag: 'dr',
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    elevation: 2,
                    child: Container(
                      width: 130,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff291ee0),
                              Color(0xffe97b12),
                              Color(0xff00d4ff)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight,
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/patterns/fabric.png"),
                            fit: BoxFit.cover,
                          )),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {
                            Navigator.pushNamed(context, '/draggable-page');
                          },
                          splashColor: Colors.cyan[200],
                          child: Center(
                            child: Text(
                              'Drag App',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  elevation: 2,
                  child: Container(
                    width: 130,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff0ed71e),
                            Color(0xff5dfee6),
                            Color(0xff430593)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                        ),
                        image: DecorationImage(
                          image: AssetImage("assets/patterns/islamic.png"),
                          fit: BoxFit.cover,
                        )),
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          Navigator.pushNamed(context, '/card-page');
                        },
                        splashColor: Colors.cyan[200],
                        child: Center(
                          child: Text(
                            'Card App',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(flex: 1),
              ],
            )
          ],
        ));
  }
}
