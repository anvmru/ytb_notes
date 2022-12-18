/// Фрагмент
///
class EntityFritter {
  EntityFritter({
    this.id,
    this.videoId,
    this.begin = const Duration(milliseconds: 0),
    this.length = 0,
    this.index = 0,
    this.note,
  });

  // Ключ фрагмента
  String? id;

  // Ссылка на видео
  String? videoId;

  // Начало
  Duration begin;

  // Длина
  int length;

  // Порядок воспроизведения
  int index;

  // Комментарий
  String? note;
}
