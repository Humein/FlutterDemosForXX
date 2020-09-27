import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_journey/day05/chart_widget/circle_image.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatefulWidget {
  @override
  _ImagePickerPageState createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: InkWell(
          onTap: _getGalleryImage,
          child: CircleImage(size: 100,
              image:_image == null?
              AssetImage("assets/images/default_image.png"): FileImage(_image)
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCameraImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
  _getCameraImage() async {//从相机获取图片
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() => _image = image);
  }
  _getGalleryImage() async {//从相册获取图片
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() => _image = image);
  }
}
