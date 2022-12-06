import 'entity_fritter.dart';

/// Конспект
///
class EntitySynopsys {
  EntitySynopsys({
    required this.id,
    this.name = "",
    this.fritters = const [],
  });

  // ключ конспекта
  final String id;
  // наименование
  String name;
  // список фрагментов
  List<EntityFritter> fritters;
}
