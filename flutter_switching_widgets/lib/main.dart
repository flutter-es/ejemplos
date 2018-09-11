import 'package:flutter/material.dart';

const String _imageUrlOne =
    'https://static.pexels.com/photos/596940/pexels-photo-596940.jpeg';
const String _imageUrlTwo =
    'https://static.pexels.com/photos/163065/mobile-phone-android-apps-phone-163065.jpeg';
const String _imageUrlThree =
    'https://static.pexels.com/photos/47261/pexels-photo-47261.jpeg';

void main() => runApp(new MaterialApp(
      title: 'Widget Switcher',
      home: new LoadImage(),
    ));

class Photo {
  final int index;
  final Text title;
  final String url;
  final Icon icon;
  const Photo({this.index, this.title, this.url, this.icon});
}

const List<Photo> photos = <Photo>[
  const Photo(
      index: 0,
      title: const Text('ImagenUno'),
      url: _imageUrlOne,
      icon: const Icon(Icons.looks_one)),
  const Photo(
      index: 1,
      title: const Text('ImagenDos'),
      url: _imageUrlTwo,
      icon: const Icon(Icons.looks_two)),
  const Photo(
      index: 2,
      title: const Text('ImagenTres'),
      url: _imageUrlThree,
      icon: const Icon(Icons.looks_3)),
];

class LoadImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoadImageState();
  }
}

class LoadImageState extends State<LoadImage>
    with SingleTickerProviderStateMixin {
  //Photo _selectedPhotos = photos[0];
  int _bottomNavBarIndex = 0;
  TabController _tabController;

  void _tabUpdate() {
    setState(() {
      _bottomNavBarIndex = _tabController.index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: photos.length, vsync: this);
    _tabController.addListener(_tabUpdate);
  }

  void _selectedPhoto(Photo photo) {
    setState(() {
      //_selectedPhotos = photo;
      _bottomNavBarIndex = photo.index;
      _tabController.index = photo.index;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _tabController.removeListener(_tabUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Imagen Descargada'),
        actions: <Widget>[
          new PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return photos.map((Photo photo) {
                return new PopupMenuItem(
                  value: photo,
                  child: new ListTile(
                    leading: photo.icon,
                    title: photo.title,
                  ),
                );
              }).toList();
            },
            onSelected: _selectedPhoto,
          )
        ],
        bottom: new TabBar(
          controller: _tabController,
          tabs: [
            new Tab(
              text: photos[0].title.data,
              icon: photos[0].icon,
            ),
            new Tab(
              text: photos[1].title.data,
              icon: photos[1].icon,
            ),
            new Tab(
              text: photos[2].title.data,
              icon: photos[2].icon,
            ),
          ],
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              leading: photos[0].icon,
              title: photos[0].title,
              onTap: () {
                _selectedPhoto(photos[0]);
                Navigator.pop(context);
              },
            ),
            new ListTile(
              leading: photos[1].icon,
              title: photos[1].title,
              onTap: () {
                _selectedPhoto(photos[1]);
                Navigator.pop(context);
              },
            ),
            new ListTile(
              leading: photos[2].icon,
              title: photos[2].title,
              onTap: () {
                _selectedPhoto(photos[2]);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: photos.map((Photo photo) {
          return ImageUrl(
            imageUrl: photo.url,
          );
        }).toList(),
      ),
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: _bottomNavBarIndex,
        onTap: (int index) {
          setState(() {
            _selectedPhoto(photos[index]);
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: photos[0].icon,
            title: photos[0].title,
          ),
          new BottomNavigationBarItem(
            icon: photos[1].icon,
            title: photos[1].title,
          ),
          new BottomNavigationBarItem(
            icon: photos[2].icon,
            title: photos[2].title,
          ),
        ],
      ),
    );
  }
}

class ImageUrl extends StatelessWidget {
  final String imageUrl;
  ImageUrl({this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return new Image.network(
      imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
