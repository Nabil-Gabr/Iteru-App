import 'package:flutter/material.dart';

class LocationSelector extends StatelessWidget {
  final String? selectedLocation;
  final ValueChanged<String> onTap;

  const LocationSelector({
    super.key,
    required this.selectedLocation,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final locations = [
      'Alexandria',
      'Assuit',
      'Aswan',
      'Beni Suef',
      'Cairo',
      'Giza',
      'Kafr El-Sheikh',
      'Luxor',
      'Minya',
      'Qena',
      'Red Sea',
      'Sohag',
      'South Sinai',
      'Suez',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select a Location',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.white,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
              ),
              builder: (context) {
                return DraggableScrollableSheet(
                  expand: false,
                  maxChildSize: 0.6,
                  initialChildSize: 0.5,
                  minChildSize: 0.3,
                  builder: (context, scrollController) {
                    return Column(
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Pick a Location',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Choose your destination so we can suggest the most relevant historical places.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Divider(height: 1),
                        Expanded(
                          child: ListView.separated(
                            controller: scrollController,
                            itemCount: locations.length,
                            separatorBuilder: (_, __) =>
                                const Divider(height: 1),
                            itemBuilder: (context, index) {
                              final loc = locations[index];
                              return ListTile(
                                title: Text(loc),
                                trailing: loc == selectedLocation
                                    ? const Icon(Icons.check_circle,
                                        color: Colors.orange)
                                    : null,
                                onTap: () {
                                  onTap(loc);
                                  Navigator.pop(context);
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100,
              border: Border.all(color: Colors.orange.shade300),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedLocation ?? 'Choose a location',
                  style: TextStyle(
                    fontSize: 16,
                    color:
                        selectedLocation == null ? Colors.grey : Colors.black,
                  ),
                ),
                const Icon(Icons.arrow_drop_down)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
