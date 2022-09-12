import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(
            image: AssetImage('assets/landscape.jpeg'),
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Title(),
          BottomSecion(),
          SizedBox(height: 18),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                'Et eiusmod irure aliquip esse occaecat consequat fugiat Lorem ex adipisicing non exercitation id velit. Aliquip id dolore ad officia sint adipisicing exercitation nisi exercitation aute non excepteur. Ea enim elit non nisi ullamco dolore. Anim aliqua aute dolore fugiat veniam labore minim. Exercitation tempor officia eiusmod minim quis magna in ut incididunt. Non aliqua qui magna qui ipsum elit do consectetur nisi non ea reprehenderit mollit cupidatat.Cupidatat pariatur ex nisi nulla ex occaecat consectetur. Non mollit ut et mollit nulla dolore enim exercitation. Ea labore cupidatat fugiat ut est ut et incididunt sunt pariatur consectetur.'),
          )
        ],
      ),
    );
  }
}

class BottomSecion extends StatelessWidget {
  const BottomSecion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        BotonCeleste(text: 'CALL', icono: Icons.phone),
        BotonCeleste(text: 'ROUTE', icono: Icons.navigation),
        BotonCeleste(text: 'SHARE', icono: Icons.share)
      ],
    );
  }
}

class BotonCeleste extends StatelessWidget {
  final String text;
  final IconData icono;

  const BotonCeleste({
    Key? key,
    required this.text,
    required this.icono,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icono,
          color: Colors.lightBlue,
        ),
        const SizedBox(height: 8),
        Text(text, style: const TextStyle(color: Colors.lightBlue))
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
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('Kandersteg, Switzerland',
                    style: TextStyle(color: Colors.black45))
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}
