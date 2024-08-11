import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:chatty/common/values/values.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../index.dart';
import 'chat_left_item.dart';
import 'chat_right_item.dart';


class ChatList extends GetView<ChatController> {

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
            color: AppColors.primaryBackground,
            padding: EdgeInsets.only(bottom: 70.h),
            child:GestureDetector(
                child:CustomScrollView(
                reverse: true,
                controller: controller.myscrollController,
                slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(
                  vertical: 0.w,
                  horizontal: 0.w,
                ),
                sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (content, index) {
                        var item = controller.state.msgcontentList[index];
                        if(controller.token==item.token){
                          return ChatRightItem(item);
                        }
                        return ChatLeftItem(item);
                      },
                      childCount: controller.state.msgcontentList.length,
                    )
                ),
              ),
                  SliverPadding(
                      padding: EdgeInsets.symmetric(vertical: 0.w, horizontal: 0.w),
                      sliver:SliverToBoxAdapter(
                        child:controller.state.isloading.value?Align(alignment: Alignment.center,child: new Text('loading...'),):Container(),
                      )
                  ),
            ]),
              onTap: () {
                controller.close_all_pop();
              },
            ))
    );
  }
}