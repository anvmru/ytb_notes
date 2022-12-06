import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ytb_notes/src/domain/blocs/player_block.dart';
import 'package:ytb_notes/src/domain/entities/entity_fritter.dart';
import 'package:ytb_notes/src/domain/entities/entity_synopsis.dart';
import 'package:ytb_notes/src/presenter/widgets/player_widget.dart';

import '../../domain/blocs/edit_bloc.dart';
import '../widgets/edit_synopsis_widget.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key, required this.blocPlay, required this.blocEdit});

  final MyPlayerBloc blocPlay;
  final EditBloc blocEdit;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  MyPlayerBloc get blocPlay => widget.blocPlay;

  EditBloc get blocEdit => widget.blocEdit;

  Widget icon = const Icon(Icons.pause);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<EditBloc, EditState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            children: [
              PlayerWidget(bloc: blocPlay),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              EditSynopsysWidget(
                synopsys: EntitySynopsys(id: 's1', fritters: [
                  EntityFritter(id: 'f1'),
                  EntityFritter(id: 'f2'),
                  EntityFritter(id: 'f3'),
                  EntityFritter(id: 'f4'),
                ]),
              ),
            ],
          );
        },
      ),
      floatingActionButton: BlocListener<MyPlayerBloc, MyPlayerState>(
        bloc: blocPlay,
        listener: (_, state) {
          if (state is ToggleState) {
            setState(() {
              if (state.plaing) {
                icon = const Icon(Icons.pause);
              } else {
                icon = const Icon(Icons.play_arrow);
              }
            });
          }
        },
        child: FloatingActionButton(
          onPressed: () => blocPlay.add(const MyPlayerEvent.toggle()),
          child: icon,
        ),
      ),
    );
  }
}
