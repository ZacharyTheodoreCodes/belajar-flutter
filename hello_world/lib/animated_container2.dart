import 'package:flutter/material.dart';

class animatedContainer2Widget extends StatefulWidget {
  const animatedContainer2Widget({super.key});

  @override
  State<animatedContainer2Widget> createState() =>
      _animatedContainer2WidgetState();
}

class _animatedContainer2WidgetState extends State<animatedContainer2Widget> {
  //variable to control width of the container
  //_ means private identifiers
  //extends : inheritance,
  
  double _width = 100.0;
  Color buttonColor = Colors.white;

  void _toggleWidth() {
    setState(() {
      _width = _width == 100.0 ? 200.0 : 100.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AnimatedContainer(
            alignment: Alignment.center,
            duration: Duration(seconds: 1),
            width: _width,
            height: 100.0,
            color: Colors.blue,
            curve: Curves.easeInOut,
            child: const Center(
              child: Text(
                'Animated Container',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) {
              setState(() {
                // Change button appearance when hovered
                // For example, change the button color or add a shadow
                buttonColor = Colors.red;
              });
            },
            onExit: (_) {
              setState(() {
                // Revert back to the original appearance when not hovered
                buttonColor = Colors.blue;
              });
            },
            child: ElevatedButton(
              onPressed: _toggleWidth,
              child: const Text('toggle width'),
              style: ButtonStyle(backgroundColor:
                  MaterialStateProperty.resolveWith<Color>((states) {
                return buttonColor; // Use the buttonColor variable here
              })),
            ),
          ),
        ],
      ),
    );
  }
}
