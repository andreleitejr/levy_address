import 'package:flutter/material.dart';
import 'package:levy_address/address.dart';
import 'package:levy_core/core.dart';

final class AddressWidget extends StatelessWidget {
  const AddressWidget({
    super.key,
    required this.items,
    required this.onPop,
    required this.onItemPressed,
    required this.onChanged,
  });

  final List<AddressEntity> items;
  final VoidCallback onPop;
  final Function(AddressEntity item) onItemPressed;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: AddressTranslation.header.title,
        onLeadingPressed: onPop,
        leadingIcon: ThemeIcons.arrowLeft,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ThemeSearchInputWidget(
                hintText: AddressTranslation.searchInput.hintText,
                icon: ThemeIcons.search,
                onChanged: onChanged,
                enabled: true,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(height: 24),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final item = items[index];

                return ThemeListItemWidget(
                  onPressed: () => onItemPressed(item),
                  title: item.street,
                  subtitle: item.line,
                );
              },
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
