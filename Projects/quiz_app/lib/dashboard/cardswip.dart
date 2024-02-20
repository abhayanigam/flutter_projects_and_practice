import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';


class CardSwip extends StatefulWidget {
  @override
  State<CardSwip> createState() => _CardSwipState();
}

class _CardSwipState extends State<CardSwip> {
  final CardSwiperController controller = CardSwiperController();

  final List<Map<String, dynamic>> quizData = [
    {
      'question': 'What is the capital of France?',
      'options': ['Paris', 'London', 'Berlin', 'Rome'],
      'answer': 'Paris',
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'options': ['Earth', 'Mars', 'Jupiter', 'Venus'],
      'answer': 'Mars',
    },
    // Add more quiz data here
  ];

  int totalCorrect = 0; // Track total correct answers

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Quiz App'),
        ),
        body: Center(
          child: CardSwiper(
            controller: controller,
            cardsCount: quizData.length,
            isLoop: false,
            onSwipe: _onSwipe,
            onUndo: _onUndo,
            cardBuilder: (context, index, activeIndex, realIndex) {
              final question = quizData[index]['question'];
              final options = quizData[index]['options'] as List<String>;

              return Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            question,
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 50),
                          ...options.asMap().entries.map((entry) {
                            final String option = entry.value;
                            return RadioListTile(
                              title: Text(option),
                              value: option,
                              groupValue: quizData[index]['selectedOption'],
                              onChanged: (value) {
                                quizData[index]['selectedOption'] = value;
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              final selectedOption =
                              quizData[index]['selectedOption'];
                              final correctAnswer =
                              quizData[index]['answer'];
                              final isCorrect =
                                  selectedOption == correctAnswer;
                              if (isCorrect) {
                                setState(() {
                                  totalCorrect++; // Increment total correct
                                });
                              }
                              // // Automatically swipe to the next card
                              // controller.swipe(CardSwiperDirection.right);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FloatingActionButton(
                            onPressed: controller.undo,
                            child: const Icon(Icons.rotate_left),
                            mini: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  bool _onSwipe(int previousIndex, int? currentIndex,
      CardSwiperDirection direction) {
    debugPrint(
        'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top');

    // Check if the currentIndex is the last index
    if (currentIndex == null) {
      // Last card reached, navigate to next screen with total correct and answers
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConfettiSample(
            totalCorrect: totalCorrect,
          ),
        ),
      );
    }

    return true;
  }

  bool _onUndo(int? previousIndex, int currentIndex,
      CardSwiperDirection direction) {
    debugPrint('The card $currentIndex was undod from the ${direction.name}');
    return true;
  }
}
