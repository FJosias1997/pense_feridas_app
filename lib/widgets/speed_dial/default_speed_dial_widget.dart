import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class DefaultSpeedDialWidget extends StatelessWidget {
  final VoidCallback? onTapFC;
  const DefaultSpeedDialWidget({this.onTapFC, super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      marginEnd: 18,
      marginBottom: 20,
      icon: Icons.add,
      activeIcon: Icons.remove,
      buttonSize: 56.0,
      visible: true,
      closeManually: false,
      renderOverlay: false,
      curve: Curves.bounceIn,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      tooltip: 'Speed Dial',
      heroTag: 'speed-dial-hero-tag',
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      elevation: 8.0,
      shape: CircleBorder(),
      children: [
        SpeedDialChild(
          child: Icon(Icons.report),
          backgroundColor: Colors.blue,
          label: 'Feridas Cirúrgicas',
          labelStyle: TextStyle(fontSize: 18.0),
          onTap: onTapFC,
        ),
      ],
    );
  }
}
