import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'image_state.dart';

class ImageLogic extends GetxController {
  final ImageState state = ImageState();
  late final PageController pageController =
      PageController(initialPage: state.imageIndex.value);

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void changePage(int index) {
    state.imageIndex.value = index;
  }

  //上一张
  void previous() {
    if (state.imageIndex.value > 0) {
      state.imageIndex.value--;
      pageController.animateToPage(state.imageIndex.value,
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }

  //下一张
  void next() {
    if (state.imageIndex.value < state.imagePathList.length - 1) {
      state.imageIndex.value++;
      pageController.animateToPage(state.imageIndex.value,
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }
}
