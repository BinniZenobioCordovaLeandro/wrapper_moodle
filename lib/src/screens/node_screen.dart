import 'package:ccaguaviva/src/models/node_data_model.dart';
import 'package:ccaguaviva/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  String? videoId;
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    videoId = YoutubePlayer.convertUrlToId('${widget.nodeData.urlVideo}');
    _controller = YoutubePlayerController(
      initialVideoId: '$videoId',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${widget.nodeData.date}',
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share,
            ),
            tooltip: 'Compartir',
            onPressed: () {
              Share.share('${widget.nodeData.url}');
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: <Widget>[
                    (videoId != null)
                        ? SizedBox(
                            width: double.infinity,
                            child: YoutubePlayer(
                              controller: _controller!,
                              liveUIColor: Colors.amber,
                            ),
                          )
                        : const SizedBox(),
                    SizedBox(
                      width: double.infinity,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Text(
                          '${widget.nodeData.title}',
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        '${widget.nodeData.date}',
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: Text(
                          '${widget.nodeData.description}',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '${widget.nodeData.urlVideo}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '${widget.nodeData.urlImage}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.airplane_ticket_sharp),
                  label: const Text('Solicitar ticket, gratis!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
