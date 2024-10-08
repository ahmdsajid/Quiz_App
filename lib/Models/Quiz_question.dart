class QuizQuestion {

  QuizQuestion(this.Text,this.Answere);


  final String  Text;
  final List<String> Answere;

  List<String> getshuffledAnswer(){
    final ShuffledList = List.of(Answere);
    ShuffledList.shuffle();

    return ShuffledList;
  }
}