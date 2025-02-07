// import 'package:flutter/material.dart';
//
// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});
//
//   final date = 'Monday, 20 March 2023';
//   final weatherCondition = 'Cloudy';
//   final temperature = '22°';
//   final wind = '2Km/h';
//   final humidity = '62%';
//   final visibility = '1Km';
//
//   @override
//   Widget build(context) {
//     return Center(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 25),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 SizedBox(),
//                   Text(
//                     'New York',
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Colors.white,
//                     ),
//                   ),
//                  Icon(Icons.menu_rounded, color: Colors.white,
//                    size: 28,),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 25,
//           ),
//           Container(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 14,
//               vertical: 3.5,
//             ),
//             decoration: BoxDecoration(
//               color: const Color(
//                 0xFFC44C68,
//               ),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Text(
//               date,
//               style: const TextStyle(
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Text(
//             weatherCondition,
//             style: const TextStyle(color: Colors.white, fontSize: 16),
//           ),
//           const SizedBox(height: 18),
//           Text(
//             temperature,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 140,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 25),
//             padding: const EdgeInsets.symmetric(vertical: 12),
//             decoration: BoxDecoration(
//               color: Color(0xFF3A3A3A),
//               borderRadius: BorderRadius.circular(9),
//               shape: BoxShape.rectangle,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: Offset(0, 0.5), // changes position of shadow
//                 ),
//               ],
//             ),
//             child: Row(children: [
//               const SizedBox(
//                 width: 40,
//               ),
//               Column(
//                 children: [
//                   const Icon(
//                     Icons.wind_power,
//                     color: Colors.white,
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     wind,
//                     style: const TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   const Text(
//                     'Wind',
//                     style: TextStyle(color: Colors.white30),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 width: 60,
//               ),
//               Column(
//                 children: [
//                   const Icon(
//                     Icons.ac_unit_sharp,
//                     color: Colors.white,
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     humidity,
//                     style: const TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   const Text(
//                     'Humidity',
//                     style: TextStyle(color: Colors.white30),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 width: 60,
//               ),
//               Column(
//                 children: [
//                   const Icon(
//                     Icons.remove_red_eye_sharp,
//                     color: Colors.white,
//                   ),
//                   const SizedBox(
//                     height: 8,
//                   ),
//                   Text(
//                     visibility,
//                     style: const TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                   const SizedBox(
//                     height: 3,
//                   ),
//                   const Text(
//                     'Visibility',
//                     style: TextStyle(color: Colors.white30),
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final date = 'Monday, 20 March 2023';
  final weatherCondition = 'Cloudy';
  final temperature = '22°';
  final wind = '2Km/h';
  final humidity = '62%';
  final visibility = '1Km';

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildHeader(),
          const SizedBox(height: 25),
          buildDateContainer(),
          const SizedBox(height: 20),
          buildWeatherCondition(),
          const SizedBox(height: 18),
          buildTemperature(),
          const SizedBox(
            height: 10,
          ),
          buildWeatherInfoBox(),
        ],
      ),
    );
  }

  Widget buildHeader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Text(
          'New York',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.menu_sharp,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget buildDateContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 3.5,
      ),
      decoration: BoxDecoration(
        color: const Color(
          0xFFC44C68,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        date,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget buildWeatherCondition() {
    return Text(
      weatherCondition,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    );
  }

  Widget buildTemperature() {
    return Text(
      temperature,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 140,
      ),
    );
  }

  Widget buildWeatherInfoBox() {
    wind;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF3A3A3A),
        borderRadius: BorderRadius.circular(9),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 40,
          ),
          Column(
            children: [
              const Icon(
                Icons.wind_power,
                color: Colors.white,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                wind,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Wind',
                style: TextStyle(color: Colors.white30),
              ),
            ],
          ),
          const SizedBox(
            width: 60,
          ),
          Column(
            children: [
              const Icon(
                Icons.ac_unit_sharp,
                color: Colors.white,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                humidity,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Humidity',
                style: TextStyle(color: Colors.white30),
              ),
            ],
          ),
          const SizedBox(
            width: 60,
          ),
          Column(
            children: [
              const Icon(
                Icons.remove_red_eye_sharp,
                color: Colors.white,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                visibility,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'Visibility',
                style: TextStyle(color: Colors.white30),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
