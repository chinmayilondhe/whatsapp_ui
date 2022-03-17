import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatefulWidget {
  const StoryPageView({Key? key}) : super(key: key);

  @override
  _StoryPageViewState createState() => _StoryPageViewState();
}

class _StoryPageViewState extends State<StoryPageView> {
  final controller=StoryController();
  @override
  Widget build(BuildContext context) {
    final List<StoryItem> StoryItems=[
      StoryItem.text(
          title: 'You are strong',
          backgroundColor: Colors.blue),
      StoryItem.pageImage(
          url: 'https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium',
          controller: controller,
        imageFit: BoxFit.contain
      )
    ];
    return Material(
      child: StoryView(
        storyItems:StoryItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}
