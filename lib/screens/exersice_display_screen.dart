import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ExerciseDisplayScreen extends StatefulWidget {
  final String name;
  final String videourl;
  final String gif;
  final String description;

  const ExerciseDisplayScreen(
      {super.key,
      required this.videourl,
      required this.gif,
      required this.description,
      required this.name});

  @override
  State<ExerciseDisplayScreen> createState() => _ExerciseDisplayScreenState();
}

class _ExerciseDisplayScreenState extends State<ExerciseDisplayScreen> {
  late VideoPlayerController controller;
  bool videoplaying = false;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.networkUrl(Uri.parse(
        widget.videourl))
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget videoplay() {
      return Center(
        child: controller.value.isInitialized
            ? Column(
                children: [
                  AspectRatio(
                    aspectRatio:  20 / 14,  //controller.value.aspectRatio,
                    child: VideoPlayer(controller),
                  ),
                ],
              )
            : const Center(
              child: Text(
                'This Video will be Avalible Soon',
                style: TextStyle(fontSize: 15),
              ),
            ),
      );
    }

    Widget gifplay() {
      return Image.network(
        height: 240,
        widget.gif,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
              child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ));
        },
      );
    }

    return Scaffold(
      bottomSheet: TextButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.black,
              context: context,
              builder: (context) {
                return const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Variations',
                      style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessible_forward),
                      title: Text(
                        'Grip type',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessible_forward),
                      title: Text('Grip width',
                          style: TextStyle(color: Colors.yellow)),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessible_forward),
                      title: Text('Repetitions Speed',
                          style: TextStyle(color: Colors.yellow)),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessible_forward),
                      title: Text('Weight Type',
                          style: TextStyle(color: Colors.yellow)),
                    ),
                  ],
                );
              });
        },
        child: const Text(
          'Variations',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      appBar: AppBar(title: Text(widget.name)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Card(
                elevation: 2.0,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    videoplaying ? videoplay() : gifplay(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        ' ${widget.name}',
                        style: const TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        videoplaying = false;
                      });
                    },
                    icon: const Icon(Icons.image)),
                IconButton(
                    onPressed: () {
                      setState(() {
                        videoplaying = true;
                        controller.play();
                        controller.setLooping(true);
                      });
                    },
                    icon: const Icon(Icons.play_arrow)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Description: ${widget.description}',
                  style: const TextStyle(
                      fontSize: 15, fontStyle: FontStyle.italic)),
            )
          ],
        ),
      ),
    );
  }
}
