import 'package:flutter/material.dart';

class DragPage extends StatefulWidget {
  @override
  State<DragPage> createState() => _DragPageState();
}

class _DragPageState extends State<DragPage> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.transparent;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Draggable Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
                    onTap: () {},
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                    ),
                  ),
                ),
                childWhenDragging: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black54,
                    ),
                  ),
                ),
                feedback: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                    ),
                  ),
                ),
                childWhenDragging: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black54,
                    ),
                  ),
                ),
                feedback: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (data) => true,
            onAccept: (value) {
              isAccepted = true;
              targetColor = value;
            },
            builder: (context, candidates, rejected) {
              return (isAccepted)
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Material(
                          color: targetColor,
                        ),
                      ),
                    )
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 75,
                        height: 75,
                        child: Material(color: Colors.grey),
                      ),
                    );
            },
          )
        ],
      ),
    );
  }
}
