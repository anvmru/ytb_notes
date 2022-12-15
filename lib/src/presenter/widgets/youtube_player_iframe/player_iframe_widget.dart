// import 'dart:async';
//
// // import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:youtube_player_iframe/youtube_player_iframe.dart';
//
// import '../../../domain/blocs/player_block.dart';
// // import 'meta_data_section.dart';
// // import 'play_pause_button_bar.dart';
// // import 'player_state_section.dart';
// // import 'source_input_section.dart';
// // import 'volume_slider.dart';
//
// class PlayerWidget extends StatefulWidget {
//   const PlayerWidget({super.key, required this.bloc});
//   final MyPlayerBloc bloc;
//
//   @override
//   State<PlayerWidget> createState() => _PlayerWidgetState();
// }
//
// class _PlayerWidgetState extends State<PlayerWidget> {
//   MyPlayerBloc get bloc => widget.bloc;
//   late final YoutubePlayerController _controller;
//   late final StreamSubscription _subscription;
//
//   static const String _videoId = "https://www.youtube.com/watch?v=7qrQP2B10iw";
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       params: const YoutubePlayerParams(
//         mute: false,
//         enableCaption: false,
//         captionLanguage: 'en',
//         loop: false,
//         showControls: false,
//         showFullscreenButton: false,
//         playsInline: false,
//         showVideoAnnotations: false,
//       ),
//     );
//     _controller.onInit = () {
//       _controller.loadVideo(_videoId);
//       //_controller.cueVideoByUrl(mediaContentUrl: _videoId);
//     };
//     _subscription = _controller.listen((v) {
//       if (v.playerState == PlayerState.playing) {
//         bloc.add(const MyPlayerEvent.start());
//       } else {
//         bloc.add(const MyPlayerEvent.stop());
//       }
//     });
//   }
//
//   @override
//   void deactivate() {
//     _controller.pauseVideo();
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     _subscription.cancel();
//     _controller.close();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<MyPlayerBloc, MyPlayerState>(
//       bloc: bloc,
//       listener: (_, state) => state.mapOrNull(
//         load: (state) {
//           _controller.loadVideo(state.url);
//           return;
//         },
//         toggle: (state) {
//           if (state.plaing) {
//             if (_controller.value.playerState != PlayerState.playing)
//               _controller.playVideo();
//           } else {
//             if (_controller.value.playerState == PlayerState.playing)
//               _controller.pauseVideo();
//           }
//           return;
//         },
//       ),
//       child: YoutubePlayer(controller: _controller, aspectRatio: 16 / 9),
//       //   YoutubePlayerScaffold(
//       // controller: _controller,
//       // builder: (context, player) {
//       //   return Scaffold(
//       //     appBar: AppBar(
//       //       title: const Text('Youtube notes test'),
//       //       //actions: const [VideoPlaylistIconButton()],
//       //     ),
//       //     body: LayoutBuilder(
//       //       builder: (context, constraints) {
//       //         if (kIsWeb && constraints.maxWidth > 750) {
//       //           return Row(
//       //             crossAxisAlignment: CrossAxisAlignment.start,
//       //             children: [
//       //               Expanded(
//       //                 flex: 3,
//       //                 child: Column(
//       //                   children: [
//       //                     player,
//       //                     const VideoPositionIndicator(),
//       //                   ],
//       //                 ),
//       //               ),
//       //               const Expanded(
//       //                 flex: 2,
//       //                 child: SingleChildScrollView(
//       //                   child: Controls(),
//       //                 ),
//       //               ),
//       //             ],
//       //           );
//       //         }
//       //
//       //         return ListView(
//       //           children: [
//       //             player,
//       //             const VideoPositionIndicator(),
//       //             const Controls(),
//       //           ],
//       //         );
//       //       },
//       //     ),
//       //     );
//       //   },
//       // ),
//     );
//   }
// }
//
// class Controls extends StatelessWidget {
//   ///
//   const Controls({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const SizedBox.shrink();
//     //   Padding(
//     //   padding: const EdgeInsets.all(16),
//     //   child: Column(
//     //     crossAxisAlignment: CrossAxisAlignment.start,
//     //     children: [
//     //       const MetaDataSection(),
//     //       _space,
//     //       const SourceInputSection(),
//     //       _space,
//     //       PlayPauseButtonBar(),
//     //       _space,
//     //       const VolumeSlider(),
//     //       _space,
//     //       const VideoPositionSeeker(),
//     //       _space,
//     //       const PlayerStateSection(),
//     //     ],
//     //   ),
//     // );
//   }
//
//   // Widget get _space => const SizedBox(height: 10);
// }
//
// ///
// class VideoPlaylistIconButton extends StatelessWidget {
//   ///
//   const VideoPlaylistIconButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = context.ytController;
//
//     return IconButton(
//       onPressed: () async {
//         controller.pauseVideo();
//         // await Navigator.push(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => const VideoListPage(),
//         //   ),
//         // );
//         controller.playVideo();
//       },
//       icon: const Icon(Icons.playlist_play_sharp),
//     );
//   }
// }
//
// ///
// class VideoPositionIndicator extends StatelessWidget {
//   ///
//   const VideoPositionIndicator({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = context.ytController;
//
//     return StreamBuilder<Duration>(
//       stream: controller.getCurrentPositionStream(),
//       initialData: Duration.zero,
//       builder: (context, snapshot) {
//         final position = snapshot.data?.inMilliseconds ?? 0;
//         final duration = controller.metadata.duration.inMilliseconds;
//
//         return LinearProgressIndicator(
//           value: duration == 0 ? 0 : position / duration,
//           minHeight: 1,
//         );
//       },
//     );
//   }
// }
//
// ///
// class VideoPositionSeeker extends StatelessWidget {
//   ///
//   const VideoPositionSeeker({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var value = 0.0;
//
//     return Row(
//       children: [
//         const Text(
//           'Seek',
//           style: TextStyle(fontWeight: FontWeight.w300),
//         ),
//         const SizedBox(width: 14),
//         Expanded(
//           child: StreamBuilder<Duration>(
//             stream: context.ytController.getCurrentPositionStream(),
//             initialData: Duration.zero,
//             builder: (context, snapshot) {
//               final position = snapshot.data?.inSeconds ?? 0;
//               final duration = context.ytController.metadata.duration.inSeconds;
//
//               value = position == 0 || duration == 0 ? 0 : position / duration;
//
//               return StatefulBuilder(
//                 builder: (context, setState) {
//                   return Slider(
//                     value: value,
//                     onChanged: (positionFraction) {
//                       value = positionFraction;
//                       setState(() {});
//
//                       context.ytController.seekTo(
//                         seconds: (value * duration).toDouble(),
//                         allowSeekAhead: true,
//                       );
//                     },
//                     min: 0,
//                     max: 1,
//                   );
//                 },
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
