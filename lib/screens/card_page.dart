import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card App'),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Color(0xfffd79a8),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Color(0xff00cec9),
                        )),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Color(0xff00cec9),
                        )),
                    Flexible(
                        flex: 1, child: Container(color: Color(0xfffd79a8))),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 10,
                child: Stack(children: [
                  Opacity(
                    opacity: 0.45,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/patterns/islamic.png",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/sakura-scenery.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      20,
                      MediaQuery.of(context).size.height * 0.35 + 50,
                      20,
                      20,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Sakura on Bloom in Spring',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xfffd79a8),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Posted on ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '24 March 2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xfffd79a8),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Spacer(flex: 10),
                            Icon(
                              Icons.thumb_up,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(flex: 1),
                            Text(
                              '100',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(flex: 5),
                            Icon(
                              Icons.comment,
                              size: 18,
                              color: Colors.grey,
                            ),
                            Spacer(flex: 1),
                            Text(
                              '53',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Spacer(flex: 10),
                          ],
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
