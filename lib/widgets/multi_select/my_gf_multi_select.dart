import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';

import '../../core/utils/role_translator.dart';
import '../../pages/home/stats_sum/stats_sum_shots/widgets/stats_sum_shots_playground_filter/dto/playground_player_dto_interface.dart';
import 'tag_chip.dart';
import 'tag_tile.dart';

class MyGFMultiSelect<T> extends StatefulWidget {
  const MyGFMultiSelect({
    required this.items,
    required this.c,
    required this.onSelect,
    required this.isTag,
    required this.isCategorized, // only for FilterPlayer items
    this.showDropdown = false,
    this.initialSelectedItemsIndex,
    this.dropdownTitleTileText = 'Select : ',
    this.dropdownTitleTileTextStyle =
        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    this.color,
    this.avatar,
    this.padding = const EdgeInsets.all(5),
    this.margin = const EdgeInsets.all(5),
    this.size = GFSize.SMALL,
    this.type = GFCheckboxType.basic,
    this.activeBgColor = GFColors.WHITE,
    this.inactiveBgColor = GFColors.WHITE,
    this.activeBorderColor = GFColors.WHITE,
    this.inactiveBorderColor = GFColors.WHITE,
    this.listItemTextColor = GFColors.DARK,
    this.buttonColor = GFColors.PRIMARY,
    this.submitButton,
    this.cancelButton,
    this.expandedIcon = const Icon(
      Icons.keyboard_arrow_down,
      color: Colors.black87,
      size: 30,
    ),
    this.collapsedIcon = const Icon(
      Icons.keyboard_arrow_up,
      color: Colors.black87,
      size: 30,
    ),
    this.dropdownBgColor = Colors.white,
    this.activeIcon = const Icon(
      Icons.check,
      size: 20,
      color: GFColors.DARK,
    ),
    this.inactiveIcon,
    this.customBgColor = GFColors.SUCCESS,
    this.selected = false,
    this.dropdownTitleTileBorder,
    this.dropdownTitleTileBorderRadius =
        const BorderRadius.all(Radius.circular(4)),
    this.dropdownTitleTileColor = GFColors.WHITE,
    this.hideDropdownUnderline = false,
    this.dropdownUnderlineBorder =
        const BorderSide(color: Colors.black45, width: 1),
    this.dropdownTitleTileMargin = const EdgeInsets.all(16),
    this.dropdownTitleTilePadding = const EdgeInsets.all(12),
    this.dropdownTitleTileHintText,
    this.dropdownTitleTileHintTextStyle =
        const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
    this.dropdownButton,
    Key? key,
  }) : super(key: key);

  final bool showDropdown;
  final List items;
  final MultiSelectController c;
  final List<int>? initialSelectedItemsIndex;
  final bool isTag;
  final ValueChanged<List> onSelect;
  final String dropdownTitleTileText;
  final TextStyle dropdownTitleTileTextStyle;
  final String? dropdownTitleTileHintText;
  final TextStyle dropdownTitleTileHintTextStyle;
  final BorderRadius dropdownTitleTileBorderRadius;
  final Border? dropdownTitleTileBorder;
  final Color dropdownTitleTileColor;
  final bool hideDropdownUnderline;
  final BorderSide dropdownUnderlineBorder;
  final EdgeInsets dropdownTitleTileMargin;
  final EdgeInsets dropdownTitleTilePadding;
  final Widget expandedIcon;
  final Widget collapsedIcon;
  final Widget? submitButton;
  final Widget? cancelButton;
  final color;
  final Widget? avatar;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final GFCheckboxType type;
  final double size;
  final Color activeBgColor;
  final Color inactiveBgColor;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final Color buttonColor;
  final Color? listItemTextColor;
  final Widget activeIcon;
  final Widget? inactiveIcon;
  final Color customBgColor;
  final bool selected;
  final Color dropdownBgColor;
  final Widget? dropdownButton;
  final bool isCategorized;

  @override
  State<MyGFMultiSelect> createState() => MyGFMultiSelectState();
}

class MyGFMultiSelectState<T> extends State<MyGFMultiSelect<T>>
    with AutomaticKeepAliveClientMixin {
  late bool showDropdown;

  @override
  void initState() {
    _useInitialItems();
    showDropdown = widget.showDropdown;
    widget.c.clearCallback = widget.onSelect;
    widget.c.collapseCallback = collapse;
    super.initState();
  }

  void collapse() => setState(() => showDropdown = false);

  void _useInitialItems() {
    if (widget.initialSelectedItemsIndex != null &&
        widget.initialSelectedItemsIndex!.isNotEmpty) {
      for (int x in widget.initialSelectedItemsIndex!) {
        widget.c.selectedTitles.add(widget.items[x]);
        widget.c.selectedTitlesIndex.add(x);
      }
    }
  }

  void _onItemSelect(bool selected, int index) {
    if (selected) {
      setState(() {
        widget.c.selectedTitles.add(widget.items[index]);
        widget.c.selectedTitlesIndex.add(index);
      });
    } else {
      setState(() {
        widget.c.selectedTitles.remove(widget.items[index]);
        widget.c.selectedTitlesIndex.remove(index);
      });
    }
  }

  void _selectByRole(String role) {
    widget.c.clear();
    for (var i = 0; i < widget.items.length; ++i) {
      if (widget.items[i].hockeyRole == role) _onItemSelect(true, i);
    }
    widget.onSelect(widget.c.selectedTitlesIndex);
  }

  void _selectAll() {
    widget.c.clear();
    for (var i = 0; i < widget.items.length; ++i) {
      _onItemSelect(true, i);
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    Widget dropdownTile() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Expanded(
                child: Wrap(
                  children: [
                    if (widget.c.selectedTitles.isEmpty)
                      Text(widget.dropdownTitleTileHintText!),
                    ...widget.c.selectedTitles.map((title) {
                      return TagChip(
                        widget.isCategorized ? title.label : title,
                        onClose: () => setState(
                          () {
                            _onItemSelect(false, widget.items.indexOf(title));
                            widget.onSelect(widget.c.selectedTitlesIndex);
                          },
                        ),
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
            // const Expanded(child: SizedBox()),
            widget.c.selectedTitles.isEmpty
                ? const SizedBox()
                : InkWell(
                    onTap: () => setState(() => widget.c.clear()),
                    child: const Icon(Icons.close),
                  ),
            !showDropdown ? widget.expandedIcon : widget.collapsedIcon,
          ],
        );

    return Column(
      children: [
        InkWell(
          onTap: () => setState(() => showDropdown = !showDropdown),
          child: Container(
            margin: widget.dropdownTitleTileMargin,
            padding: widget.dropdownTitleTilePadding,
            decoration: BoxDecoration(
              color: widget.dropdownTitleTileColor,
              border: widget.dropdownTitleTileBorder,
              borderRadius: widget.dropdownTitleTileBorderRadius,
            ),
            child: Container(
              decoration: BoxDecoration(
                border: widget.hideDropdownUnderline
                    ? const Border(
                        bottom: BorderSide(color: Colors.transparent),
                      )
                    : Border(bottom: widget.dropdownUnderlineBorder),
              ),
              child: widget.dropdownTitleTileHintText == null
                  ? dropdownTile()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        dropdownTile(),
                      ],
                    ),
            ),
          ),
        ),
        showDropdown
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 220,
                      child: Scrollbar(
                        child: ListView.builder(
                          itemCount: widget.items.length,
                          itemBuilder: (ctx, i) {
                            final item = widget.items[i];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (widget.isCategorized && i == 0)
                                  _CategoryHeader(
                                    item.hockeyRole,
                                    onTap: () => _selectByRole(item.hockeyRole),
                                  ),
                                if (!widget.isCategorized && i == 0)
                                  InkWell(
                                    onTap: _selectAll,
                                    child: Container(
                                      width: double.infinity,
                                      color: const Color(0xFFD8D8D8),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 2,
                                        vertical: 8,
                                      ),
                                      child: const Text('Все периоды'),
                                    ),
                                  ),
                                if (widget.isCategorized &&
                                    i > 0 &&
                                    item.hockeyRole !=
                                        widget.items[i - 1].hockeyRole)
                                  _CategoryHeader(
                                    item.hockeyRole,
                                    onTap: () => _selectByRole(item.hockeyRole),
                                  ),
                                TagTile(
                                  value: widget.c.selectedTitles.contains(item),
                                  selected:
                                      widget.c.selectedTitles.contains(item),
                                  onChanged: (selected) {
                                    _onItemSelect(selected, i);
                                    widget
                                        .onSelect(widget.c.selectedTitlesIndex);
                                  },
                                  title: widget.isCategorized
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              item.label,
                                              style: Get.textTheme.bodyLarge,
                                            ),
                                            Text('${item.shotsCount} бр.'),
                                          ],
                                        )
                                      : SizedBox(
                                          width: double.infinity,
                                          child: Text(
                                            item,
                                            style: Get.textTheme.bodyLarge,
                                          ),
                                        ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    widget.dropdownButton ??
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GFButton(
                              color: widget.buttonColor,
                              onPressed: () {
                                setState(() {
                                  showDropdown = !showDropdown;
                                  widget.c.selectedTitles.clear();
                                  widget.c.selectedTitlesIndex.clear();
                                });
                              },
                              child:
                                  widget.cancelButton ?? const Text('CANCEL'),
                            ),
                            GFButton(
                              color: widget.buttonColor,
                              onPressed: () {
                                setState(() {
                                  showDropdown = !showDropdown;
                                });
                              },
                              child: widget.submitButton ?? const Text('OK'),
                            ),
                          ],
                        ),
                  ],
                ),
              )
            : const SizedBox(),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class _CategoryHeader extends StatelessWidget {
  final String role;
  final VoidCallback onTap;

  const _CategoryHeader(this.role, {required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(RoleTranslator.oneToMany(role)),
        TextButton(onPressed: onTap, child: const Text('Выбрать всех')),
      ],
    );
  }
}

class MultiSelectController extends GetxController {
  final selectedTitles = [].obs;
  final selectedTitlesIndex = [].obs;
  Function(List)? clearCallback;
  Function()? collapseCallback;

  void clear() {
    selectedTitles.clear();
    selectedTitlesIndex.clear();
    if (clearCallback != null) clearCallback!(selectedTitlesIndex);
  }

  void collapse() {
    if (collapseCallback != null) collapseCallback!();
  }
}

abstract class MultiSelectPlayerInterface extends PlaygroundPlayerDtoInterface {
  String get label;
}
