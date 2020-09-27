import 'package:flutter/material.dart';
import 'package:flutter_journey/day10/13/widgets/color_chooser.dart';

import 'app/cons.dart';
import 'package:flutter_journey/day10/13/app/provider/theme_state.dart';
import 'package:provider/provider.dart';

class SlidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Center(
        child: Consumer<ThemeState>(builder: (_,state,__)=>
            ColorChooser(
                initialIndex:Cons.them_colors.indexOf(state.primaryColor)??4,
          colors:Cons.them_colors ,
          onChecked: (color)=> state.changeThemeData(ThemeData(primaryColor: color)),
        )),
      ),

    );
  }
}
