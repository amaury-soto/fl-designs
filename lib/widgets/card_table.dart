import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
           
            _SingleCard(),
            _SingleCard(),
          
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  const _SingleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 105, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 255, 188, 88),
            child: Icon(Icons.sports_bar_outlined, size: 35, color:  Color.fromARGB(255, 120, 80, 174)),
            radius: 30,
          ),
          SizedBox(height: 10),
          Text('Beers', style: TextStyle(color:Color.fromARGB(255, 255, 188, 88) , fontSize: 16))
        ],
      ),
    );
  }
}
