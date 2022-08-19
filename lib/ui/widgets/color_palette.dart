import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/color_utils.dart';

class ColorPalette extends StatelessWidget {
  const ColorPalette({
    Key? key,
    // así se reciben en el constructor, por ejemplo
    required this.baseColor,
  }) : super(key: key);

  // atributos de la clase, por ejemplo
  final List<String> baseColor;

  // también se puede tener como un atributo un callback, necesiario ya que es un
  // widget sin estado, por ejemplo
  //final Function(String) callback;

  @override
  Widget build(BuildContext context) {
    // padding para crear espacio alrededor del widget
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: (){
                Get.snackbar('Color palette', 'Valor copiado',
                  backgroundColor: ColorUtils.FromHex(baseColor[0]),
                  snackPosition: SnackPosition.BOTTOM);
              },
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor[0]),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: (){
                Get.snackbar('Color palette', 'Valor copiado',
                  backgroundColor: ColorUtils.FromHex(baseColor[1]),
                  snackPosition: SnackPosition.BOTTOM);
              },
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor[1]),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: (){
                Get.snackbar('Color palette', 'Valor copiado',
                  backgroundColor: ColorUtils.FromHex(baseColor[2]),
                  snackPosition: SnackPosition.BOTTOM);
              },
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor[2]),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: GestureDetector(
              onTap: (){
                Get.snackbar('Color palette', 'Valor copiado',
                  backgroundColor: ColorUtils.FromHex(baseColor[3]),
                  snackPosition: SnackPosition.BOTTOM);
              },
              child: Container(
                height: 100,
                color: ColorUtils.FromHex(baseColor[3]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
