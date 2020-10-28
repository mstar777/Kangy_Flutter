import 'package:flutter/material.dart';
import 'package:kangy_flutter/src/Constants/HexColor.dart';


class NamedIcon extends StatelessWidget {

  final Icon iconData;
  final String text;
  final VoidCallback onTap;
  final int notificationCount;

  const NamedIcon({
    Key key,
    this.onTap,
    @required this.text,
    @required this.iconData,
    this.notificationCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 72,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               iconData,
                Text(text, overflow: TextOverflow.ellipsis),

              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(shape: BoxShape.circle, color: HexColor('#FF4C6C')),
                alignment: Alignment.center,
                child: Text('$notificationCount',
                  style: TextStyle(
                      color: Colors.white,
                      // decorationColor: Colors.white,
                      fontFamily: 'Biko',
                      fontSize: 13
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}