import 'package:converter_app/view/constants/c_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyableTextWidget extends StatelessWidget {
  final String result;

  const CopyableTextWidget({Key? key, required this.result}) : super(key: key);
  final double menuRadius = 15;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        // find location of the widget
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final RenderBox overlay =
            Overlay.of(context).context.findRenderObject() as RenderBox;
        final Offset position =
            renderBox.localToGlobal(Offset.zero, ancestor: overlay);

        // render menu widget according to cords above.
        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            position.dx,
            position.dy,
            position.dx + renderBox.size.width,
            position.dy + renderBox.size.height,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(menuRadius)),
          items: <PopupMenuEntry>[
            const PopupMenuItem(
              value: 'copy',
              child: Text('Copy'),
            ),
          ],
        ).then((value) {
          if (value == 'copy') {
            // Implement your copy logic here
            Clipboard.setData(ClipboardData(text: result));
          }
        });
      },
      child: Text(
        '${ConstantTexts.resultLabel.get}\n\n $result',
        style: Theme.of(context).textTheme.bodyMedium,
        textAlign: TextAlign.start,
        overflow: TextOverflow.fade,
      ),
    );
  }
}
