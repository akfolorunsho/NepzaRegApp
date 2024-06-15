import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PhotoBox extends StatefulWidget {
  final double width;
  final double height;
  final Function(String)? onImageSelected;

  PhotoBox({
    this.width = 150.0,
    this.height = 150.0,
    this.onImageSelected,
  });

  @override
  _PhotoBoxState createState() => _PhotoBoxState();
}

class _PhotoBoxState extends State<PhotoBox> {
  String? _image;

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = pickedFile.path;
      });

      if (widget.onImageSelected != null) {
        widget.onImageSelected!(_image!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black87),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: _image != null
            ? Image.network(
                _image!,
                fit: BoxFit.cover,
              )
            : const Center(
                child: Icon(
                  Icons.add_a_photo,
                  color: Colors.grey,
                ),
              ),
      ),
    );
  }
}
