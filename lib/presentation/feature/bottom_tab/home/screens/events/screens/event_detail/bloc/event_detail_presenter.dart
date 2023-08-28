import 'package:fbapp/data/models/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'event_detail_state.dart';

class EventDetailPresenter extends Cubit<EventDetailState> {
  EventDetailPresenter({
    @visibleForTesting EventDetailState? state,
  }) : super(state ?? EventDetailState.initial());

  void init() {
    getEventDetail();
  }

  void getEventDetail() {
    const Event event = Event(
      id: 5,
      name: 'KHOÁ HỌC: BÌNH AN NỘI TÂM - SỨC MẠNH NỘI TÂM',
      time: 'THỨ SÁU TUẦN NÀY LÚC 22:00',
      location: 'Bình Thạnh, TP.HCM',
      careCount: 76,
      joinCount: 62,
      content:
          '<div style="width: 343px; height: 647px; color: #211F20; font-size: 14px; font-family: Open Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">[MỞ ĐƠN TUYỂN TÌNH NGUYỆN VIÊN THAM GIA CHUYẾN ĐI TÌNH NGUYỆN "NẮNG VỀ TRÀ TẬP" 2023]<br/><br/>Thông tin chuyến đi tình nguyện <br/>⏰ Thời gian khởi hành: Ngày 26-27 tháng 8 năm 2023 <br/>📍 Điểm khởi hành: Thành phố Đà Nẵng <br/>📍 Điểm đến: Nóc Măng Ổi, xã Trà Tập, huyện Nam Trà My, tỉnh Quảng Nam <br/><br/>💡 ĐỐI TƯỢNG TUYỂN: Dành cho tất cả mọi người có tinh thần cống hiến có mặt tại Đà Nẵng trước ngày khởi hành 01 ngày<br/>💡 Link đăng ký: https://forms.gle/NcqnZXFzoRnT1HBd7<br/> <br/>✨ TIÊU CHUẨN CỦA CÁC TÌNH NGUYỆN VIÊN <br/>✔️ Có đạo đức tốt, sức khoẻ tốt<br/>✔️ Có tác phong nhanh nhẹn, ứng xử thanh lịch, văn minh;<br/>✔️ Có tâm huyết, nhiệt tình với các phong trào thanh niên tình nguyện<br/>✔️ Có năng khiếu, hiểu biết về lĩnh vực Văn hóa - Văn nghệ, Thể dục thể thao, khả năng tổ chức và làm việc nhóm<br/>✔️ Được sự đồng ý cho phép của gia đình. <br/><br/>✨ NGHĨA VỤ VÀ QUYỀN LỢI CỦA ỨNG VIÊN<br/>✔️ Có cơ hội học tập, rèn luyện nâng cao kiến thức thực tiễn, nâng cao kỹ năng sống, có cơ hội để phát huy khả năng tư duy sáng tạo và năng lực của bản thân; <br/>✔️ Có nhiều trải nghiệm ý nghĩa trong mùa hè, mang lại giá trị cho cộng đồng.<br/>✔️ Được làm quen với nhiều anh/chị/bạn bè mới, sinh hoạt trong môi trường năng động và sáng tạo <br/><br/>🌻 Còn chần chừ gì nữa mà không đăng ký ngay để trở thành một TNV tham gia chuyến đi này, đăng ký tại form bên trên nhé! </div><div style="width: 343px; height: 647px; color: #211F20; font-size: 14px; font-family: Open Sans; font-weight: 400; line-height: 20px; word-wrap: break-word">[MỞ ĐƠN TUYỂN TÌNH NGUYỆN VIÊN THAM GIA CHUYẾN ĐI TÌNH NGUYỆN "NẮNG VỀ TRÀ TẬP" 2023]<br/><br/>Thông tin chuyến đi tình nguyện <br/>⏰ Thời gian khởi hành: Ngày 26-27 tháng 8 năm 2023 <br/>📍 Điểm khởi hành: Thành phố Đà Nẵng <br/>📍 Điểm đến: Nóc Măng Ổi, xã Trà Tập, huyện Nam Trà My, tỉnh Quảng Nam <br/><br/>💡 ĐỐI TƯỢNG TUYỂN: Dành cho tất cả mọi người có tinh thần cống hiến có mặt tại Đà Nẵng trước ngày khởi hành 01 ngày<br/>💡 Link đăng ký: https://forms.gle/NcqnZXFzoRnT1HBd7<br/> <br/>✨ TIÊU CHUẨN CỦA CÁC TÌNH NGUYỆN VIÊN <br/>✔️ Có đạo đức tốt, sức khoẻ tốt<br/>✔️ Có tác phong nhanh nhẹn, ứng xử thanh lịch, văn minh;<br/>✔️ Có tâm huyết, nhiệt tình với các phong trào thanh niên tình nguyện<br/>✔️ Có năng khiếu, hiểu biết về lĩnh vực Văn hóa - Văn nghệ, Thể dục thể thao, khả năng tổ chức và làm việc nhóm<br/>✔️ Được sự đồng ý cho phép của gia đình. <br/><br/>✨ NGHĨA VỤ VÀ QUYỀN LỢI CỦA ỨNG VIÊN<br/>✔️ Có cơ hội học tập, rèn luyện nâng cao kiến thức thực tiễn, nâng cao kỹ năng sống, có cơ hội để phát huy khả năng tư duy sáng tạo và năng lực của bản thân; <br/>✔️ Có nhiều trải nghiệm ý nghĩa trong mùa hè, mang lại giá trị cho cộng đồng.<br/>✔️ Được làm quen với nhiều anh/chị/bạn bè mới, sinh hoạt trong môi trường năng động và sáng tạo <br/><br/>🌻 Còn chần chừ gì nữa mà không đăng ký ngay để trở thành một TNV tham gia chuyến đi này, đăng ký tại form bên trên nhé! </div>',
    );

    emit(state.copyWith(event: event));
  }

  void onUpdateCareEventStatus() {
    Event event = state.event.copyWith(newCare: !state.event.care);

    emit(state.copyWith(event: event));
  }

  void onUpdateJoinEventStatus() {
    Event event = state.event.copyWith(newJoin: !state.event.join);

    emit(state.copyWith(event: event));
  }

  void resetState() {
    emit(EventDetailState.initial());
  }
}
