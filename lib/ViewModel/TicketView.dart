import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:launch_app/models/TicketModel.dart';
import 'package:launch_app/screens/TicketDetails.dart';

class TicketView extends StatelessWidget {
  final DocumentSnapshot document;

  TicketView({@required this.document});
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => TicketDetails(
            ticketModel: TicketModel(
              name: document['name'],
              time: document['time'],
              destination: document['destination'],
            ),
          ),
        ),
      ),
      child: Container(
        height: 100,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                document['name'],
                style: _textTheme.headline6,
              ),
              Text(
                document['time'],
                style: _textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
