import 'package:flutter/cupertino.dart';

class TicketModel {
  String name;
  String time;
  String destination;

  TicketModel({
    @required this.name,
    @required this.time,
    @required this.destination,
  });
}
