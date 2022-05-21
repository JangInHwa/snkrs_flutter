import 'package:flutter/material.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/model.dart';
import 'package:snkrs_flutter/app/widgets/button/small.dart';

class SnkrsItemCard extends StatefulWidget {
  final SnkrsItem item;

  const SnkrsItemCard({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  State<SnkrsItemCard> createState() => _SnkrsItemCardState();
}

class _SnkrsItemCardState extends State<SnkrsItemCard> with SingleTickerProviderStateMixin {
  final double _interactionScale = 0.97;
  late AnimationController _controller;
  late Animation _scaleAnimation;
  bool isTapDownAnimateDone = false;
  bool isTapDown = false;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 150))
      ..addListener(() {
        setState(() {});
      });

    _scaleAnimation = Tween(begin: 1.0, end: _interactionScale).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future onTapDown() async {
    isTapDown = true;
    isTapDownAnimateDone = false;
    await _controller.forward();
    isTapDownAnimateDone = true;
    if (isTapDown == false) {
      _controller.reverse();
    }
  }

  Future onTapUp() async {
    isTapDown = false;
    if (isTapDownAnimateDone == true) {
      await _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => onTapDown(),
      onTapUp: (_) => onTapUp(),
      onTapCancel: () => onTapUp(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 16,
              blurRadius: 40,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Transform.scale(
          scale: _scaleAnimation.value,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(widget.item.imageUrl, height: 400, fit: BoxFit.cover),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.item.subname, style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4), fontSize: 14, fontWeight: FontWeight.w600)),
                            Text(widget.item.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      const SmallTextButton(text: '예약하기'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
