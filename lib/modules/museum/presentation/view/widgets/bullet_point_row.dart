import 'package:flutter/material.dart';
import 'package:iteru_app/modules/museum/presentation/view/widgets/labeled_value_row.dart';

class BulletPointRow extends StatelessWidget {
  const BulletPointRow({
    super.key,
    required this.label,
    required this.value,
  });
  final String label, value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: LabeledValueRow(
          widget: Container(
            width: 6,
            height: 6,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(6))),
          ),
          label: label,
          value: value),
    );
  }
}
