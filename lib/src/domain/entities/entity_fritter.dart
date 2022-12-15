/// Фрагмент
///
class EntityFritter {
  EntityFritter({
    this.id,
    this.videoId,
    this.begin = 0,
    this.length = 0,
    this.index = 0,
    this.note,
  });

  // Ключ фрагмента
  String? id;

  // Ссылка на видео
  String? videoId;

  // Начало
  int begin;

  // Длина
  int length;

  // Порядок воспроизведения
  int index;

  // Комментарий
  String? note;
}
