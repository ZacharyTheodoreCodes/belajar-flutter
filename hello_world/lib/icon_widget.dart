import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Icon(
      MdiIcons.home,
      size: 50,
      color: Colors.orange,
      shadows: const [
        Shadow(offset: Offset(3, 3), blurRadius: 8, color: Colors.black)
      ],
    ));
  }
}
