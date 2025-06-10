import 'package:flutter/material.dart';

class HistorySelector extends StatelessWidget {
  final List<String> historyTypes;
  final Set<String> selectedHistories;
  final VoidCallback onSelectionChanged;

  const HistorySelector({
    super.key,
    required this.historyTypes,
    required this.selectedHistories,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Historical Themes',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: historyTypes.map((type) {
            final isSelected = selectedHistories.contains(type);
            return ChoiceChip(
              label: Text(type),
              selected: isSelected,
              selectedColor: Colors.orange.shade300,
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
              ),
              backgroundColor: Colors.grey.shade100,
              onSelected: (selected) {
                if (selected) {
                  selectedHistories.add(type);
                } else {
                  selectedHistories.remove(type);
                }
                onSelectionChanged();
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
