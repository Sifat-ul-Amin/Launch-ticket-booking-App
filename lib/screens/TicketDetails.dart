import 'package:flutter/material.dart';
import 'package:launch_app/models/TicketModel.dart';
import 'package:launch_app/services/DatabaseService.dart';

class TicketDetails extends StatelessWidget {
  final TicketModel ticketModel;

  TicketDetails({
    @required this.ticketModel,
  });
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ticket Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticketModel.name,
                style: _textTheme.headline3.apply(color: Colors.black),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                ticketModel.time,
                style: _textTheme.bodyText2,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Destination : ' + ticketModel.destination,
                style: _textTheme.headline5,
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      DatabaseService databaseService = DatabaseService();
                      databaseService.purchaseTicket(ticketModel.name,
                          ticketModel.destination, ticketModel.time);
                      _showMaterialDialog(context);
                    },
                    child: Text(
                      "Purchase Ticket",
                      style: _textTheme.headline6.apply(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_showMaterialDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => new AlertDialog(
      title: new Text("Alert"),
      content: new Text("Tickets successfully purchased!"),
      actions: <Widget>[
        ElevatedButton(
          child: Text('Close me!'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    ),
  );
}
