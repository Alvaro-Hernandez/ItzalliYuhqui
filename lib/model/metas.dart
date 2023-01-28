class Metas {
  String? id;
  String? metaText;
  bool isDone;

  Metas({required this.id, required this.metaText, this.isDone = false});
  static List<Metas> metaList() {
    return [
      Metas(id: '01', metaText: 'Ejercicios por la Mañana', isDone: true),
      Metas(id: '02', metaText: 'Dormir Temprano', isDone: true),
      Metas(
        id: '03',
        metaText: 'Aprender Flutter',
        isDone: true,
      ),
      Metas(
        id: '04',
        metaText: 'Tomarme un café con Alvaro',
      ),
      Metas(
        id: '05',
        metaText: 'Comprarme un nuevo computador',
      ),
      Metas(
        id: '06',
        metaText: 'Ayudar a mi Familia',
      ),
    ];
  }
}
