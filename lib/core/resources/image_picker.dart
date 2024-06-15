import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PictureSelectorWidget extends StatefulWidget {
  final double size;
  final Function(File)? onPictureSelected;

  const PictureSelectorWidget({
    super.key,
    this.size = 150,
    this.onPictureSelected,
  });

  @override
  _PictureSelectorWidgetState createState() => _PictureSelectorWidgetState();
}

class _PictureSelectorWidgetState extends State<PictureSelectorWidget> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });

      if (widget.onPictureSelected != null) {
        widget.onPictureSelected!(_imageFile!);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _pickImage(ImageSource.gallery),
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: _imageFile != null
            ? ClipOval(
                child: Image.file(
                  _imageFile!,
                  width: widget.size,
                  height: widget.size,
                  fit: BoxFit.cover,
                ),
              )
            : Icon(
                Icons.camera_alt,
                size: widget.size * 0.5,
                color: Colors.grey[400],
              ),
      ),
    );
  }
}
