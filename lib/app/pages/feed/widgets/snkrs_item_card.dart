import 'package:flutter/material.dart';
import 'package:snkrs_flutter/app/data/modules/snkrs_item/model.dart';
import 'package:snkrs_flutter/app/widgets/button/small.dart';

class SnkrsItemCard extends StatelessWidget {
  final SnkrsItem item;

  const SnkrsItemCard({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 16,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(item.imageUrl, height: 400, fit: BoxFit.cover),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.subname, style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4), fontSize: 14, fontWeight: FontWeight.w600)),
                        Text(item.name, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),
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
    );
  }
}
