import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tec_notes_layout/common/common.dart' show AssetsConstants;

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({
    required String imageUrl,
    super.key,
  }) : _imageUrl = imageUrl;

  final String _imageUrl;

  factory ImagesWidget.logo() {
    // TODO: Implementar a lógica para retornar a imagem do logo
    return const ImagesWidget(imageUrl: AssetsConstants.logoPng);
  }

  factory ImagesWidget.background() {
    return const ImagesWidget(imageUrl: AssetsConstants.backgroundPng);
  }

  @override
  Widget build(BuildContext context) {
    if (_imageUrl.endsWith('.png')) {
      return Image.asset(_imageUrl);
    }
    return SvgPicture.asset(_imageUrl);
  }
}
