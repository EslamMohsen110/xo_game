// import 'package:flutter/material.dart';
//
// import 'widget/button_widget.dart';
//
// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> list = [
//     '',
//     '',
//     '',
//     '',
//     '',
//     '',
//     '',
//     '',
//     '',
//   ];
// int playerOneScore=0;
// int playerTwoScore=0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('XO Game'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Expanded(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Player1 (X)',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       '$playerOneScore',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Player2 (O)',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       '$playerTwoScore',
//                       style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                   child: ButtonWidget(
//                     text: list[0],
//                     index: 0,
//                     onPress: onButtonClick,
//                   ),
//                 ),
//                 Expanded(
//                     child: ButtonWidget(
//                         text: list[1], index: 1, onPress: onButtonClick)),
//                 Expanded(
//                     child: ButtonWidget(
//                         text: list[2], index: 2, onPress: onButtonClick)),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     child: ButtonWidget(
//                         text: list[3], index: 3, onPress: onButtonClick)),
//                 Expanded(
//                     child: ButtonWidget(
//                         text: list[4], index: 4, onPress: onButtonClick)),
//                 Expanded(
//                     child: ButtonWidget(
//                         text: list[5], index: 5, onPress: onButtonClick)),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     child: ButtonWidget(
//                   text: list[6],
//                   index: 6,
//                   onPress: onButtonClick,
//                 )),
//                 Expanded(
//                     child: ButtonWidget(
//                   text: list[7],
//                   index: 7,
//                   onPress: onButtonClick,
//                 )),
//                 Expanded(
//                     child: ButtonWidget(
//                   text: list[8],
//                   index: 8,
//                   onPress: onButtonClick,
//                 )),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   int counter = 0;
//
//   void onButtonClick(int index) {
//     if (list[index].isNotEmpty) {
//       return;
//     }
//     if (counter % 2 == 0) {
//       list[index] = 'X';
//     } else {
//       list[index] = 'O';
//     }
//     counter++;
//     if (winnerCheck('X')) {
//       playerOneScore+=5;
//       cleanList();
//
//     } else if (winnerCheck('O')) {
//       playerTwoScore+=5;
//       cleanList();
//     }else if(counter==9){
//       cleanList();
//     }
//     setState(() {});
//   }
//
//   bool winnerCheck(String symbol) {
//     ///Row
//     // if (list[0] == symbol &&
//     //     list[1] == symbol &&
//     //     list[2] == symbol) {
//     //   return true;
//     // } else if (list[3] == symbol &&
//     //     list[4] == symbol &&
//     //     list[5] == symbol) {
//     //   return true;
//     // } else if (list[6] == symbol &&
//     //     list[7] == symbol &&
//     //     list[8] == symbol) {
//     //   return true;
//     // }
//     for (int i = 0; i < 9; i += 3) {
//       if (list[i] == symbol && list[i + 1] == symbol && list[i + 2] == symbol) {
//         return true;
//       }
//     }
//
//     /// Column
//     // if (list[0] == symbol &&
//     //     list[3] == symbol &&
//     //     list[6] == symbol) {
//     //   return true;
//     // } else if (list[1] == symbol &&
//     //     list[4] == symbol &&
//     //     list[7] == symbol) {
//     //   return true;
//     // } else if (list[2] == symbol &&
//     //     list[5] == symbol &&
//     //     list[8] == symbol) {
//     //   return true;
//     // }
//     for (int i = 0; i < 3; i++) {
//       if (list[i] == symbol && list[i + 3] == symbol && list[i + 6] == symbol) {
//         return true;
//       }
//     }
//
//     /// X
//     if (list[0] == symbol && list[4] == symbol && list[8] == symbol) {
//       return true;
//     } else if (list[2] == symbol && list[4] == symbol && list[6] == symbol) {
//       return true;
//     }
//     return false;
//   }
//
//   void cleanList() {
//     list = [
//       '',
//       '',
//       '',
//       '',
//       '',
//       '',
//       '',
//       '',
//       '',
//     ];
//     counter=0;
//   }
// }
import 'package:flutter/material.dart';
import 'package:xo_game/model/model.dart';
import 'package:xo_game/widget/button_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int player1 = 0;
  int player2 = 0;
  List<String> listXOGame = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    XoGamesArgs args =
        ModalRoute.of(context)!.settings.arguments as XoGamesArgs;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
        ),
        foregroundColor: Colors.white,
        title: const Text(
          'XO Game',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.player1Args,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.pinkAccent,
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        '$player1 X',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.player2Args,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.pinkAccent,
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        '$player2 O',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[0], index: 0, onPress: onButtonClick),
                ),
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[1], index: 1, onPress: onButtonClick),
                ),
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[2], index: 2, onPress: onButtonClick),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[3], index: 3, onPress: onButtonClick),
                ),
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[4], index: 4, onPress: onButtonClick),
                ),
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[5], index: 5, onPress: onButtonClick),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[6], index: 6, onPress: onButtonClick),
                ),
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[7], index: 7, onPress: onButtonClick),
                ),
                Expanded(
                  child: ButtonWidget(
                      text: listXOGame[8], index: 8, onPress: onButtonClick),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int counter = 0;

  onButtonClick(int index) {
    if (listXOGame[index].isNotEmpty) return;
    if (counter % 2 == 0) {
      listXOGame[index] = 'X';
      if (onWinClick('X')) {
        player1 += 5;
        cleanList();
      }
    } else if (counter % 2 != 0) {
      listXOGame[index] = 'O';
      if (onWinClick('O')) {
        player2 += 5;
        cleanList();
      }
    }
    if (counter == 9) {
      cleanList();
    }
    counter++;
    setState(() {});
  }

  onWinClick(String symbol) {
    ///Row
    for (int i = 0; i < 9; i += 3) {
      if (listXOGame[i] == symbol &&
          listXOGame[i + 1] == symbol &&
          listXOGame[i + 2] == symbol) {
        return true;
      }
    }
    // if (listXOGame[0] == symbol &&
    //     listXOGame[1] == symbol &&
    //     listXOGame[2] == symbol) {
    //   return true;
    // } else if (listXOGame[3] == symbol &&
    //     listXOGame[4] == symbol &&
    //     listXOGame[5] == symbol) {
    //   return true;
    // } else if (listXOGame[6] == symbol &&
    //     listXOGame[7] == symbol &&
    //     listXOGame[8] == symbol) {
    //   return true;
    // }

    ///Column
    for (int i = 0; i < 3; i++) {
      if (listXOGame[i] == symbol &&
          listXOGame[i + 3] == symbol &&
          listXOGame[i + 6] == symbol) {
        return true;
      }
    }
    // if (listXOGame[0] == symbol &&
    //     listXOGame[3] == symbol &&
    //     listXOGame[6] == symbol) {
    //   return true;
    // } else if (listXOGame[1] == symbol &&
    //     listXOGame[4] == symbol &&
    //     listXOGame[7] == symbol) {
    //   return true;
    // } else if (listXOGame[2] == symbol &&
    //     listXOGame[5] == symbol &&
    //     listXOGame[8] == symbol) {
    //   return true;
    // }

    ///X
    if (listXOGame[0] == symbol &&
        listXOGame[4] == symbol &&
        listXOGame[8] == symbol) {
      return true;
    } else if (listXOGame[2] == symbol &&
        listXOGame[4] == symbol &&
        listXOGame[6] == symbol) {
      return true;
    }

    return false;
  }

  void cleanList() {
    listXOGame = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
    counter = 0;
  }

// onWin(int index) {
//   if (listXOGame[index] == 'O') {
//     return win;
//   } else if (listXOGame[index] == 'X') {
//     return lost;
//   }
// }
}
