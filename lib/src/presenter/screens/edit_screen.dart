import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ytb_notes/src/domain/blocs/player_block.dart';
import 'package:ytb_notes/src/domain/entities/entity_fritter.dart';
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
  bool _readyPlayer = false;

  @override
  void initState() {
    super.initState();
    // начальная загрузка конспекта
    blocEdit.add(const EditEvent.init());
  }

  // Обработка событий плеера
  void _listenerPlay(BuildContext context, MyPlayerState statePlay) {
    if (statePlay is ReadyPlayerState) {
      setState(() {
        _readyPlayer = true;
      });
    }
    if (statePlay is ToggleState) {
      setState(() {
        if (statePlay.playOn) {
          icon = const Icon(Icons.pause);
        } else {
          icon = const Icon(Icons.play_arrow);
          blocEdit.add(EditEvent.add(EntityFritter()));
        }
      });
    }
  }

  // Обработка событий редактора
  void _listenerEdit(BuildContext context, EditState state) {
    if (state is ReadyState && state.index != null) {
      // загрузка первого фрагмента в плеер (если он есть)
      final vId = state.synopsys.fritters[state.index!].videoId;
      if (vId != null) blocPlay.add(MyPlayerEvent.load(vId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<MyPlayerBloc, MyPlayerState>(
        bloc: blocPlay,
        listener: _listenerPlay,
        builder: (context, statePlay) {
          return BlocConsumer<EditBloc, EditState>(
            listener: _listenerEdit,
            builder: (context, stateEdit) {
              if (!(stateEdit is ReadyState)) {
                // пока фрагмент не готов - ждем
                return const Center(child: CircularProgressIndicator());
              } else {
                return Column(
                  children: [
                    // Плеер
                    PlayerWidget(bloc: blocPlay),
                    const SizedBox(height: 10),
                    // Заголовок
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(stateEdit.synopsys.name),
                    ),
                    const SizedBox(height: 10),
                    // Список фрагментов загруженного конспекта
                    EditSynopsysWidget(synopsys: stateEdit.synopsys),
                  ],
                );
              }
            },
          );
        },
      ),
      floatingActionButton: !_readyPlayer
          ? null
          : FloatingActionButton(
              // при нажатии - отправляем старт\стоп
              onPressed: () => blocPlay.add(const MyPlayerEvent.toggle()),
              child: icon,
            ),
    );
  }
}
