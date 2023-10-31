import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class NewScreen extends StatelessWidget {


  const NewScreen({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? SecondScreenArguments('')) as SecondScreenArguments;

    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Text(
            arguments.text,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
              color: Colors.deepPurple,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context,'ffff');
            },
            child: const Text('return'),
          ),
        ],
      ),
    );
  }
}
