import 'package:ccaguaviva/src/models/node_data_model.dart';
import 'package:ccaguaviva/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class NodeScreen extends StatefulWidget {
  final SettingsController controller;
  final NodeDataModel nodeData;

  const NodeScreen({
    Key? key,
    required this.controller,
    required this.nodeData,
  }) : super(key: key);

  @override
  State<NodeScreen> createState() => _NodeScreenState();
}

class _NodeScreenState extends State<NodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.nodeData.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.nodeData.description}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.nodeData.date}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.nodeData.url}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.nodeData.urlVideo}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${widget.nodeData.urlImage}',
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
