import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:galleryapp/detailpage.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/Screenshot (1).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (2).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (3).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (4).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (5).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (6).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (7).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (8).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (9).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (10).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (11).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (15).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (16).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (17).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (18).png',
  ),
  ImageDetails(
    imagePath: 'images/Screenshot (19).png',
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              "Gallery",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                  imagePath: _images[index].imagePath)),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;

  ImageDetails({required this.imagePath});
}
