import 'package:flutter/material.dart';
import 'package:ytb_notes/src/domain/entities/entity_synopsis.dart';

import '../../domain/entities/entity_fritter.dart';

class EditSynopsysWidget extends StatelessWidget {
  const EditSynopsysWidget({super.key, required this.synopsys});

  final EntitySynopsys synopsys;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: synopsys.fritters.length,
          itemBuilder: (_, index) {
            return _Line(synopsys.fritters[index]);
          },
        ),
      ),
    );
  }
}

class _Line extends StatelessWidget {
  const _Line(this.fritter);
  final EntityFritter fritter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1)),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Начало: ${fritter.begin.toString()}"),
              Text("Примечание"),
            ],
          ),
          const Expanded(child: SizedBox(width: 10)),
          const Icon(Icons.menu),
        ],
      ),
    );
  }
}
