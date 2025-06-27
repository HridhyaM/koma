import 'package:flutter/material.dart';
import 'package:koma/styles/app_padding.dart';
import 'package:koma/widgets/custom_action_icons_row.dart';
import 'package:koma/widgets/custom_media_headers.dart';
import 'package:koma/widgets/custom_media_tabbar.dart';
import 'package:koma/widgets/custom_search_input.dart';
import 'package:koma/widgets/custom_video_list_section.dart';
import 'package:koma/widgets/custom_video_player_section.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
       
        body: SingleChildScrollView(
          child: Padding(
            padding: AppPadding.screenPadding,
            child: Column(
              children: [
                const CustomMediaHeaders(),
                 
               CustomVideoPlayerSection(),
               CustomActionIconsRow(),
            
            CustomSearchInput(),
               CustomVideoListSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
