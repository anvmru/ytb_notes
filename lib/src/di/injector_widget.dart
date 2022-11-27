import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/blocs/player_block.dart';

class InjectorWidget extends StatelessWidget {
  const InjectorWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MyPlayerBloc()),
      ],
      child: child,
    );
  }
}