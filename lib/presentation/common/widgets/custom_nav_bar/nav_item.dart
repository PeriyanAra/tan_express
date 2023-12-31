import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foundation_2/presentation/common/utils/size_constants_extension.dart';
import 'package:foundation_2/presentation/theme/tan_express_color_theme.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.index,
    required this.isSelected,
    required this.onItemTapped,
    required this.iconPath,
    required this.activeIconPath,
    required this.label,
  }) : super(key: key);

  final int index;
  final bool isSelected;
  final void Function(int) onItemTapped;
  final String iconPath;
  final String activeIconPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    final tanExpressColorTheme = TanExpressColorTheme.of(context);

    return InkWell(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            isSelected ? activeIconPath : iconPath,
            theme: SvgTheme(
              xHeight: 24.0.getProportionalSize(),
            ),
            colorFilter: ColorFilter.mode(
              isSelected ? tanExpressColorTheme.primary : tanExpressColorTheme.foregroundSecondary,
              BlendMode.color,
            ),
          ),
          Text(
            label,
            textAlign: TextAlign.start,
            style: TextStyle(
              color: isSelected
                  ? tanExpressColorTheme.primary
                  : tanExpressColorTheme.foregroundSecondary,
            ),
          )
        ],
      ),
    );
  }
}
