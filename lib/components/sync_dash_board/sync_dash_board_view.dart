import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_diary/components/local_send/local_send_view.dart';
import 'package:mood_diary/components/sync_dash_board/sync_dash_board_state.dart';
import 'package:mood_diary/components/sync_dash_board/web_dav_dashboard/web_dav_dashboard_view.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'sync_dash_board_logic.dart';

class SyncDashBoardComponent extends StatelessWidget {
  const SyncDashBoardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final SyncDashBoardLogic logic = Get.put(SyncDashBoardLogic());
    final SyncDashBoardState state = Bind.find<SyncDashBoardLogic>().state;
    final colorScheme = Theme.of(context).colorScheme;

    return GetBuilder<SyncDashBoardLogic>(
      assignId: true,
      builder: (_) {
        return AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            child: !state.isFetching
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: PageView(
                          controller: logic.pageController,
                          children: const [
                            WebDavDashboardComponent(),
                            LocalSendComponent(isDashboard: true),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: SmoothPageIndicator(
                          controller: logic.pageController,
                          count: 2,
                          axisDirection: Axis.horizontal,
                          effect: ExpandingDotsEffect(
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              activeDotColor: colorScheme.primary,
                              dotColor: colorScheme.primary),
                        ),
                      )
                    ],
                  )
                : Center(
                    child: RiveAnimatedIcon(
                      riveIcon: RiveIcon.wifi,
                      width: 80,
                      height: 80,
                      color: colorScheme.onSurface,
                      loopAnimation: true,
                    ),
                  ));
      },
    );
  }
}
