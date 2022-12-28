import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/tada.jpeg'),
          ),
          Title(),
          ButtonSection(),
          DescriptionParagraph(
              textDescription:
                  'Nulla occaecat aute ad laborum qui aliquip culpa exercitation minim deserunt laborum ipsum sit. Ea consequat sint sint quis sit officia anim est culpa est. Lorem adipisicing qui laborum veniam. Magna veniam excepteur laborum incididunt ullamco ex duis. Labore occaecat reprehenderit ad do nisi ea ea dolore. Ad quis aute nulla quis ullamco. Dolore in elit officia qui incididunt voluptate nisi culpa non.')
        ],
      ),
    );
  }
}

class DescriptionParagraph extends StatelessWidget {
  final String textDescription;
  const DescriptionParagraph({
    Key? key,
    required this.textDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(textDescription,textAlign: TextAlign.justify));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.phone, text: 'Call'),
          CustomButton(icon: Icons.map, text: 'Map'),
          CustomButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.deepPurple,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.deepPurple),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen lake Cmapgrpund',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersting, szuel',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.point_of_sale,
            color: Colors.red,
          ),
          Text('41.000')
        ],
      ),
    );
  }
}
