import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import 'ConfettiSample.dart';

class CardSwip extends StatefulWidget {
  @override
  State<CardSwip> createState() => _CardSwipState();
}

class _CardSwipState extends State<CardSwip> {
  final CardSwiperController controller = CardSwiperController();

  final List<String> cardList = [
    "Beacuse Thala For A Reason ! 😎",
    "Enter Your Reason",
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  late bool reason;

  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('Test Your Reason'),
        ),
        body: Center(
          child: CardSwiper(
            controller: controller,
            cardsCount: cardList.length,
            isLoop: false,
            onSwipe: _onSwipe,
            onUndo: _onUndo,
            cardBuilder: (context, index, activeIndex, realIndex) {
              final card = cardList[index];
              Widget cardContent = SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (index == 0) // Check for index to conditionally show image
                      Column(
                        children: [
                          Text(
                            'Check Your Reason',
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            card,
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 8),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: FractionallySizedBox(
                              widthFactor: 0.8,
                              child: Image.asset(
                                'assets/ms3.gif', // Replace with your image path
                                fit: BoxFit.contain, // Adjust the fit to fit the image within the box
                              ),
                            ),
                          ),
                        ],
                      ),
                    if (index == 1) // Check for index to conditionally show image
                      Column(
                        children: [
                          Text(
                            card,
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          TextField(
                            controller: _textFieldController,
                            decoration: InputDecoration(
                              hintText: 'Enter text',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ElevatedButton(
                              onPressed: () {
                                String inputText = _textFieldController.text.toString();
                                if (true == checkInputValue(inputText))
                                  reason = true;
                                else{
                                  reason = false;
                                }
                              },
                              child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              );
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
                      child: Center(child: cardContent),
                    ),
                    if (index == 1) // Render FloatingActionButton only for index 1
                      Positioned(
                        bottom: 20.0,
                        child: FloatingActionButton(
                          onPressed: controller.undo,
                          child: const Icon(Icons.rotate_left),
                          mini: true,
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

  bool _onSwipe(int previousIndex, int? currentIndex, CardSwiperDirection direction) {
    debugPrint(
        'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top');

    // Check if the currentIndex is the last index
    if (currentIndex == null) {
      if (_textFieldController.text.isEmpty) {
        return false;
      }else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                ConfettiSample(
                  reason: reason,
                ),
          ),
        );
      }
    }
    return true;
  }


  bool _onUndo(int? previousIndex, int currentIndex,
      CardSwiperDirection direction) {
    debugPrint('The card $currentIndex was undod from the ${direction.name}');
    return true;
  }
}

bool checkInputValue(String inputText) {
  // Calculate the total length of the string
  int stringLength = inputText.length;

  // Calculate the digit sum of the number
  int digitSum = 0;
  bool isNumber = true;
  for (int i = 0; i < inputText.length; i++) {
    if (!RegExp(r'\d').hasMatch(inputText[i])) {
      isNumber = false;
      break;
    }
    digitSum += int.parse(inputText[i]);
  }

  // Check if the conditions are met
  if ((stringLength == 7 || digitSum == 7) && isNumber) {
    return true;
  } else if (stringLength == 7 && !isNumber) {
    return true;
  } else {
    return false;
  }
}

