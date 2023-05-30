class question{
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option{
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

final questions={
  question(
    text: 'What is the name of the bike that is sold by Yatri Motorcycles ?',
    options: [
      const Option(text:'Kawasaki z900' ,isCorrect: false),
      const Option(text:'Dominar 400' ,isCorrect: false),
      const Option(text:'Yamaha R1' ,isCorrect: false),
      const Option(text:'Project One & Project zero' ,isCorrect: true),
    ],
  ),
   question(
    text: 'Who is the owner of Tesla inc.?',
    options: [
      const Option(text:'Elon Musk' ,isCorrect: true),
      const Option(text:'Mukesh Ambani' ,isCorrect: false),
      const Option(text:'Jeff Bezos' ,isCorrect: false),
      const Option(text:'Bill Gates' ,isCorrect: false),
    ],
  ),
   question(
    text: 'Which is the strongest metal in the MCU ?',
    options: [
      const Option(text:'Uru' ,isCorrect: false),
      const Option(text:'Vibranium' ,isCorrect: false),
      const Option(text:'Dargonite' ,isCorrect: true),
      const Option(text:'Vibranium' ,isCorrect: false),
    ],
  ),
   question(
    text: 'Who is known also termed as the "Dark Knight" ?',
    options: [
      const Option(text:'Alfred Pennyworth' ,isCorrect: false),
      const Option(text:'Batman' ,isCorrect: true),
      const Option(text:'Superman' ,isCorrect: false),
      const Option(text:'The Flash' ,isCorrect: false),
    ]
  )
};