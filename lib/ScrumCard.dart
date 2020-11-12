import 'package:flutter/material.dart';

class ScrumCard extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function(String text,Icon icon) notifyParent;

  ScrumCard({Key key,@required this.text, this.icon,this.notifyParent}):super (key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        notifyParent(text,icon);

      },
        child: Card(
          child: Center(
              child: icon ==null?Text(text,
                style: TextStyle(fontSize: 38),)
                  :icon),

        ),
    );

  }
}
