
import 'package:flutter/material.dart';

class Catrgories{
  IconData icon;
  String title;
  Catrgories(this.title,this.icon);
}
List <Catrgories> CatrgoriesList=[
 Catrgories("mobile",Icons.mobile_friendly ),
  Catrgories("tablet",Icons.tablet_android ),
  Catrgories("labtob",Icons.video_label_outlined ),
  Catrgories("smart",Icons.smart_toy_outlined ),
  Catrgories("videocam",Icons.videocam ),
];