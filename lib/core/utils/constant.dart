class MediaType {
  static const String typeVideo = "video";
  static const String typeImage = "image";
  static const String typeFile = "application";
}

class YearList {
  static List<String> getList(int startYear, int endYear) {
    List<String> list = [];
    for (int i = startYear; i <= endYear; i++) {
      list.add(i.toString());
    }
    return list;
  }
}

const content = [
  'Những ai có \n ĐEO KÍNH \n thì cùng nắm tay nhau \n uống 1 ly và nói \n "Mãi bên nhau bạn nhớ" \n🤓🤓🤓',
  'Uống 1 ly nếu bạn đang là con \n ĐỖ NGHÈO KHỈ \n (trong người không có quá 500k) \n Ai có hơn \n Phạt 2 ly \n💰💰💰',
  'Những ai \n SỢ NGƯỜI YÊU \n thì uống 1 ly \n💞💞💞',
  'Những ai từng \n LẠC ĐƯỜNG \n thì uống 1 ly \n🗺️🗺️🗺️',
  'NHẢY SEXY \n với người bất kỳ trong 20 giây hoặc uống 3 ly \n 💃💃💃',
  'Cùng nhau kể tên các \n BÀI HÁT \n có chứa từ \n "SAY" \n người nào thua uống 2 ly \n 🎶🎶🎶',
  'NGƯỜI BÊN TAY PHẢI BẠN \n có thể hỏi bạn 1 câu hỏi bất kỳ \n bạn có thể chọn trả lời hoặc uống 2 ly \n❓❓❓',
  'Những ai đang dùng hệ điều hành \n ANDROID \n thì uống đi \n 🤖🤖🤖',
  'Lần lượt theo vòng \n bắt đầu từ bạn \n hãy kể tên \n các THÀNH PHỐ tại VIỆT NAM \n người nào không kể được hoặc bị lặp thì uống \n🇻🇳🇻🇳🇻🇳',
  'Tất cả kể về lần đầu làm \n "CHUYỆN ĐÓ" \n Lần lượt vote một người có câu chuyện GIẢ TRÂN nhất \n ai bị vote, uống 1 ly \n \n "Chuyện đó" - người bốc có thể quyết định là chuyện gì mà \n🫣🫣🫣',
  'KHẨN CẤP \n \n Đếm từ 1 tới 3 \n Hôn vào má người bên cạnh \n Ai chậm nhất phải uống \n💋💋💋',
  '1 2 3 \n \n Cùng chỉ vào người hay đăng hình trên MXH nhất \n người bị vote nhiều nhất phải uống 2 ly \n \n Sống ảo vừa vừa thui \n📱📱📱',
  'Ai bé tuổi nhất \n \n THÌ UỐNG \n chỉ tính năm sinh thôi nhá \n👶🏻👶🏻👶🏻',
  'Chọn một câu hỏi dạng \n YES|NO \n và chỉ định một người trong bàn trả lời \n Nếu họ trả lời đúng \n thì bạn uống \n Ngược lại \n Họ phải uống thui \n🙋‍♀️🙋‍♀️🙋‍♀️',
  'Những ai là \n "CHIẾC CHIẾU MỚI" \n trong chuyện tình cảm \n thì uống 1 ly \n🤪🤪🤪',
  'KHẨN CẤP \n\n 1, 2, 3 \n ai chạm tay xuống đất chậm nhất thì uống \n🥶🥶🥶',
  'Những ai đang cần phải chạy DEADLINE thì uống 1 ly \n⏰⏰⏰',
  'Những ai họ NGUYỄN thì uống một ly \n📇📇📇',
  'Tất cả kể TÊN của \n MỐI TÌNH ĐẦU \n Những ai không có hoặc trùng nhau thì uống 1 ly \n🍻🍻🍻',
  'Uống nếu bạn đã từng bị phạt \n do vi phạm luật \n GIAO THÔNG \n🚓🚓🚓',
  '1 2 3 \n Tất cả hãy chỉ vào một người mà mọi người nghĩ rằng họ đang mang "BCS" trong ví, túi,... \n Đoán sai thì uống 1 ly mau thôi \n🤪🤪🤪',
  'Uống nếu nhà bạn đang nuôi một con vật nào đó \n🐶🐶🐶',
  'KỂ MỘT CÂU CHUYỆN \n hoặc \n LÀM MỘT HÀNH ĐỘNG \n Buồn cười trong một phút \n Nếu không có ai cười thì bạn uống \n Còn ai cười, thì họ uống \n🤪🤪🤪',
  'Uống nếu bạn đã từng đi tập GYM \n 🏋️🏋️🏋️',
  'Ai có avatar FACEBOOK nhiều like nhất, thì uống \n🎑🎑🎑',
  'THÁO 5 món đồ trên người bạn \n hoặc \n UỐNG 2 LY \n 👙👙👙',
  'Tất cả cùng chọn 1 trong 2 phương án \n NUÔI CHÓ 🐶 \n hoặc \n NUÔI MÈO 🐈 \n Team nào số lượng ít hơn, thì uống điiii',
  '1 2 3\n Cùng chỉ vào người có bộ mặt \n "GIẢ TRÂN NHẤT" \n người bị vote nhiều nhất phải uống 2 ly \n🥰🥰🥰',
  'Những ai đã từng nói chuyện với \n SIRI \n thì ... \n (người bốc quyết định nha) \n (Siri là trợ lý ảo điều khiển bằng giọng nói của Apple) \n 📱📱📱',
  '1 2 3 \n Cùng chỉ vào người đang \n "CHUYẾNH" NHẤT \n Người bị vote thì thoát, còn lại uống 1 ly \n🍻🍻🍻',
  'Bật một BÀI HÁT bất kỳ trong playlist của bạn trong 20s \n Những ai biết thì im lặng \n Ai không biết thì uống 1 ly \n Nói dối phạt 3 ly nha \n🎧🎧🎧',
  'Từng người nói một câu \nTHẢ THÍNH\n với bạn bắt đầu bằng cụm từ: \n "CHÀO EM, ANH ĐỨNG ĐÂY TỪ CHIỀU..." \n Ai thả thính tệ nhất thì uống \n😶😶😶',
  'Uống nếu bạn từng bị \n "CẮM SỪNG" \n hoặc \n "LÀM TRÀ XANH"\n 🤦‍♂️🤦‍♂️🤦‍♂️',
  'Uống nếu bạn không nhớ chính xác \n NĂM SINH CỦA MẸ BẠN \n 🗓️🗓️🗓️',
  'Tất cả cùng chọn 1 trong 2 phương án sau và nói lý do \n RA RẠP XEM PHIM \n hoặc \n Ở NHÀ NETFLIX&CHILL \n Team nào số lượng ít hơn thì uống nha \n 🎥🎥🎥',
  'KHẨN CẤP \n 1 2 3 \n Tất cả rút điện thoại \nCHỤP ẢNH bạn\n và phải \n BẬT FLASH \n ai nhanh nhất thì không phải uống \n 📸📸📸',
  '1 2 3 \n Cùng chỉ vào người có nụ cười đẹp nhất \n Người bị vote nhiều nhất uống 2 ly \n 🤣🤣🤣',
  'Uống nếu bạn từng tập chơi đàn \n 🎸🎸🎸',
  'Ai đang đi giày size to nhất thì uống \n 👟👟👟',
  'Ai mặc đồ lót cùng màu\n thì UỐNG đi\n đừng để phải kiểm tra hen \n 👙👙👙',
  'Những ai đang dùng NETFLIX thì uống đi \n 🎞️🎞️🎞️',
  'Những ai biết \n MARIA OZAWA \n là ai thì uống đi \n 😝😝😝',
  'Người CAO nhất bế người THẤP nhất, nhìn vào mắt nhau trong 10s và nói câu sau \n "Hinh như tôi chiều em quá, nên em hư đúng không?"\n Nếu một trong hai cười thì cả 2 người cùng uống nha \n🫦🫦🫦',
  'Uống nếu bạn từng khóc vì người yêu cũ \n 🥹🥹🥹\n \nSát boi, sát gơn cụng ly nào',
  'Tất cả cùng chọn 1 trong 2 phương án sau và nói lý do \n Đi du lịch vùng cao \n hay \n Đi du lịch ở biển \n Team nào ít hơn thì uống ha \n 🚗🚗🚗',
  'Tất cả mọi người \n Ai KHÔNG có tên gọi ở nhà thì \n UỐNGGGGGGG \n 🍺🍺🍺',
  'Những ai từng làm \n CÁN SỰ LỚP \n thì uống đi !!!',
  'Ai hay phát \n "CƠM TRÓ" \n cho mọi người nhất thì cạn 2 ly \n 🐶🐶🐶',
  'Uống nếu avatar \n FACEBOOK or INSTAGRAM \n của bạn đang là ảnh cười 😇😇😇',
  'Ai đã hoặc đang có tình yêu lâu nhất thì uống \n SỐ LY = SỐ NĂM YÊU NHAU \n \n Người chơi hệ chung tình >.<',
  'Những ai đã từng dùng \n TINDER \n thì cụng ly nào \n 💋💋💋',
  'Chọn 1 trong 2 phương án và nói mục đích chọn \n có thể TÀNG HÌNH \n hay \n DỊCH CHUYỂN TỨC THỜI \n team nào có số lượng ít hơn thì uống nha \n 👻👻👻',
  'Những ai từng \n HÔN NHAO 💋💋💋 \n NƠI CÔNG CỘNG \n thì uống nào !!! \n \n \n Ơ mây zing gút chóp',
  'Tất cả uống 1 ly mà không được dùng tay \n 🙌🙌🙌',
  'KHẨN CẤP \n 1 2 3 \n Ai vỗ tay chậm nhất thì \n UỐNGGGGG \n 👏👏👏',
  'Tất cả cùng chọn 1 trong 2 phương án và nói lý do chọn \n bánh trung thu nhân\n THẬP CẨM \n hay \n ĐẬU XANH \n Bạn là người quyết định team nào phải uống nhá \n😇😇😇',
  'Tất cả để điện thoại và đồng hồ xuống bàn \n Cùng đoán xem \n BÂY GIỜ LÀ MẤY GIỜ \n Ai đoán đúng nhất thì không phải uống \n Còn lại làm một ly \n⏰⏰⏰',
  'Bạn có quyền chọn 2 người bất kỳ trong vòng \n Sau đó 2 người lần lượt \n LIẾM TAI NHAU \n Không làm à ? \n Được thôi, mỗi người uống 2 ly nhá \n👅👅👅',
  'Tất cả để điện thoại lên bàn \n Ai có thông báo đầu tiên thì \n UỐNGGGGGG \n📳📳📳',
];
