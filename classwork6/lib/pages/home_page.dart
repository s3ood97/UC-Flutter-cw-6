import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:classwork6/models/photos.dart';
import 'package:classwork6/pages/land_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kuwait City LandMark",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return Container(
          height: 150,
          width: 150,
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return MovieDetails(statues: Statue.Statues[index]);
              })));
            },
            child: Container(
              width: 100,
              height: 100,
              child: Card(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        child: Image.network(
                          Statue.Statues[index].image,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          Statue.Statues[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ),
        );
      })),
    );
  }
}
