/// Фрагмент
///
class EntityFritter {
  EntityFritter({
    required this.id,
    this.begin = 0,
    this.length = 0,
    this.index = 0,
    this.note,
  });

  // Ключ фрагмента
  final String id;

  // Начало
  int begin;

  // Длина
  int length;

  // Порядок воспроизведения
  int index;

  // Комментарий
  String? note;
}
