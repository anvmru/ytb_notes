import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ytb_notes/src/domain/blocs/player_block.dart';
import 'package:ytb_notes/src/presenter/widgets/player_widget.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late final MyPlayerBloc bloc;

  @override
  void didChangeDependencies() {
    bloc = BlocProvider.of<MyPlayerBloc>(context);
    super.didChangeDependencies();
  }

  Widget icon = const Icon(Icons.pause);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PlayerWidget(bloc: bloc),
          const SizedBox(height: 10),
          const Text("Здесь будет список"),
        ],
      ),
      floatingActionButton: BlocListener<MyPlayerBloc, MyPlayerState>(
        bloc: bloc,
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
          onPressed: () => bloc.add(const MyPlayerEvent.toggle()),
          child: icon,
        ),
      ),
    );
  }
}
