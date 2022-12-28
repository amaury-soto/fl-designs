import 'package:fl_design/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [Background(), _HomeBody()],
    ),
    bottomNavigationBar: CustomBottomNavigator());
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Allow scroll if child is more big
    return SingleChildScrollView(
      child: Column(
        children: [
          
          //Titles
          PageTitle()



        ],
      ),
    );
  }
}
