class QuestionsModel {
  const QuestionsModel(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledList() {
    final List<String> suffledList = List.of(answers);
    suffledList.shuffle();
    return suffledList;
  }
}
