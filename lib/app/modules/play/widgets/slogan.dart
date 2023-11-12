import 'dart:async';
import 'dart:math';

import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slogan extends StatefulWidget {
  const Slogan({super.key});

  @override
  State<Slogan> createState() => _SloganState();
}

class _SloganState extends State<Slogan> {
  CarouselController carouselController = CarouselController();
  int pageSelected = 0;
  int randomIndex = 0;

  List<String> quoteDrink = [
    'Uống rượu chẳng để cho ai - Uống rượu là để kéo dài niềm vui',
    'Nam quốc sơn hà Nam Đế cư\n'
        'Nhỏ mà không nhậu, lớn sẽ hư\n'
        'Đúng ra còn nhỏ ta nên nhậu\n'
        'Để lớn có người đến bái sư',
    'Sáng ra ngắm gái tối vào hang\n'
        'Thịt nướng bia lon đã sẵn sàng\n'
        'Bàn ghế chông chênh toàn đồ nhậu\n'
        'Cuộc đời ế vợ thật là sang!',
    'Sóng sâu còn có kẻ dò\n'
        'Nào ai lấy thước đi đo độ cồn',
    'Để sát trùng vết thương ngoài da, ta nên dùng cồn. \n'
        'Để sát trùng vết thương tâm hồn, ta cũng dùng cồn nhưng mà dạng uống',
    'Có quá nhiều máu trong hệ thống rượu của tôi',
    'Công việc là lời nguyền của các tầng lớp uống rượu',
    'Điện thực sự được tạo thành từ các hạt cực nhỏ gọi là electron, bạn không thể nhìn thấy bằng mắt thường trừ khi bạn đã uống',
    'Điều khó khăn khi trở thành một bartender là tìm ra ai là người say và ai là người ngu ngốc',
    'Hãy luôn tỉnh táo những gì bạn đã nói là bạn sẽ say. Điều đó sẽ dạy bạn biết giữ mồm giữ miệng',
    'Không nghi ngờ gì nữa, phát minh vĩ đại nhất trong lịch sử loài người là bia.',
    'Luôn nhớ rằng tôi đã uống nhiều rượu hơn rượu đã lấy ra khỏi tôi',
    'Bia rượu là chủ, người say là nô lệ. Bạn thích làm chủ hay làm nô lệ?',
    'Không bia không phải đàn ông? Hết bia mất vợ thì là đàn chi?',
    'Uống và say nói lăng nhăng. \n'
        'Miệng mồm lý nhí thằn lằn đứt đuôi.',
    'Tâm can chân thể chôn vùi.\n'
        'Mặt trời không mọc với người lem nhem.\n'
        'Còn đâu nguyệt tỏ bên thềm.\n'
        'Ôi người uống rượu còn thêm điên rồ.',
    'Ngả nghiêng chén rượu ngả nghiêng sầu\n'
        'Mượn chút cay nồng lấp nỗi đau\n'
        'Héo hắt bờ yêu nơi vực thẳm\n'
        'Đìu hiu bến nhỡ chốn sông sâu.',
    'Kẻ uống rượu không biết sự nguy hiểm của rượu. Người không uống rượu không hiểu được lợi ích của nó.',
    'Khi trẻ đi đến quán rượu để uống rượu,về già sẽ đi đến quán rượu để ăn xin.',
    'Làm trai cho đáng nên trai. Chỉ tiêu phải nhậu chục chai mỗi ngày.',
    'Kẻ thù giết nhau bằng bom bằng đạn. Không nên giết bạn bằng uống bằng ăn',
    'Lúc uống rượu gọi đâu cũng có bạn. Lúc hoạn nạn gọi bạn toàn thuê bao',
    'Ngày xưa đi nhậu giải sầu. Ngày nay đi nhậu chỉ cầu đừng say. Ngày xưa mỗi đứa hai chai. Ngày nay mỗi đứa lai rai hai thùng.',
    'Khi tôi đọc về tệ nạn của việc uống rượu, tôi đã từ bỏ việc đọc.',
    'Rượu là cần thiết cho một người đàn ông để anh ta có thể có quan điểm tốt về bản thân, không bị làm phiền bởi sự thật.',
    'Rượu là chất gây mê mà chúng ta chịu đựng sự vận hành của cuộc sống.',
    'Rượu xóa bỏ ức chế – giống như con chuột nhỏ sợ hãi đó say khướt, rũ râu và hét lên: “Bây giờ hãy mang con mèo chết tiệt đó đi.',
    'Tên vô lại đáng khinh nào đã ăn cắp nút chai để ăn trưa của tôi.',
    'Thực tế là một ảo ảnh xảy ra do thiếu rượu.',
    'Rượu ngon phải có bạn hiền. Xin chớ lạm dụng triền miên suốt ngày.',
    'Thua trời một vạn không bằng thua bạn một ly.',
    'Tình bạn nảy sinh qua chén trà, cốc rượu sẽ qua đi như hơi men, như giấc ngủ say.',
    'Trong bàn nhậu luôn có một đứa uống nước ngọt và nó còn là… dũng sĩ diệt mồi nữa.',
    'Trên đời có 3 thứ làm ta đau khổ: Rượu ngon làm ta mất trí, tiền nhiều làm ta bất chính, vợ đẹp làm ta đau khổ.',
    'Trong nhà không vợ cũng không con. Chỉ có bia lon với xì gà. Bàn ghế chông chênh đầy đồ nhậu. Cuộc đời ế vợ thật là phê!',
    'Tự nhiên anh thấy lờ mờ. Tưởng đâu say nắng, ai ngờ say men.',
    'Uống rượu chẳng thể giải sầu. Uống rượu chỉ tổ nhức đầu mà thôi.',
    'Uống rượu không phải để say. Uống rượu để biết đắng cay thế nào? Uống rượu không phải để sầu. Uống rượu để biết trong đầu nhớ ai.',
    'Xưa kia ta ở trên trời. Bởi hay uống rượu trời đày xuống đây. Xuống đây ta uống cho say. Xơ gan cổ chướng mới bay về trời.',
    'Mấy đời bánh đúc có xương, mấy đời mới nhậu sương sương mà về.',
    'Rượu làm từ gạo mà ra \n'
        'Ta đây uống rượu cũng là ăn cơm.',
    'Rượu bất khả ép, ép bất khả từ, từ từ anh sẽ uống.',
    'Chim khôn lựa cành mà đậu \n'
        ' Gái khôn lựa mấy anh nhậu mà chơi.',
    'Chiều chiều gió thổi đầu non \n'
        'Trong lòng muốn nhậu nhưng không có tiền.',
    'Chanh chua mà cóc cũng chua\n'
        'Đến khi hết mồi cũng đành xơi luôn.',
    'Anh một ly tôi một ly \n'
        'Anh mà ly rưỡi coi chừng à nghen!',
    'Trăm năm bia đá cũng mòn, bia chai cũng bể, chỉ còn bia… ôm.',
    'Chiều chiều có dĩa lòng heo, có chai rượu gạo khó nghèo vượt qua.',
    'Thịt chó mà thiếu mắm tôm, như đi khách sạn chỉ ôm rồi về.',
    'Cha ông đức độ ban cho rượu. Con cháu thảo hiền thoả sức Say!',
    'Học làm chi thi hoài chả đậu, thà ở nhà ăn nhậu sướng hơn.',
    'Hiu hiu gió thổi đầu non, mấy thằng nhậu nhẹt là con ngọc hoàng',
    'Làm trai không hổ mặt trai. Bia hơi ta uống ta sai cả ngày. Gái kia ta chỉ phẩy tay. Bao cô bu lại làm bồ của ta',
    'Sự lung lạc của rượu lên nhân loại rõ ràng nằm ở khả năng kích thích những khả năng huyền bí của bản tính cong người, thường bị đè bẹp xuống mặt đất bởi hiện thực lạnh lùng và những lời phê bình khô khan khi tỉnh táo.',
    'Ừ thì một chén nữa. Sao lai nghiêng thế này? Uống cho đất bằng lại. Dễ gì ta đã say!',
    'Uống say xưa cạn chén rượu nồng. Để lòng này chết lặng như trăng.',
    'Thất tình thì hãy cạn chung',
    'Đàn bà và rượu kéo đàn ông ra khỏi sự phán đoán.',
    'Thức ăn muốn ngon thì cần phải có gia vị và không gia vị nào ngon bằng gia vị đói.',
    'Cái miệng say phản bội lại tất cả những điều bí mật nằm kín trong trái tim.',
    'Vui hay buồn mình cũng nhậu, mà đã nhậu là phải say. Rượu mà uống không say, không thấy hay của rượu, ai làm chi ta cũng mặc, vì đã nhậu là phải say.',
    'Khi ra trường là bỏ rượu, mà bỏ rượu là tợp bia, mình chỉ uống bia hơi, ai thảnh thơi mà tợp rượu, ta kĩ sư tiền triệu, phải bỏ rượu, tợp bia.',
    'Say men rượu ngày mai sẽ tỉnh \n'
        'Say men tình mãi mãi vẫn còn say.'
        'Một chút ái tình cũng như một chút rượu mạnh, cái gì quá cũng làm người ta mắc bệnh.',
    'Em từng nói: “Con gái càng say lại càng tỉnh”. Ừ thì đúng thật. Nhưng là tỉnh trong ý thức và say ở trong lòng. Ý thức bảo quên, còn trái tim bỗng nhớ.',
    'Quả thật khi say mới biết mình yêu ai thật lòng. Chỉ nhớ về một người và muốn một người mà thôi. Nhưng tiếc là chẳng thể…',
    'Nếu em gọi anh, lúc em say…\n'
        'Là lúc những mạnh mẽ thường nhật trong em đã lạc hướng quên đường, bỏ rơi trái tim yếu mềm, đáng thương, vô tội.',
    'Em tự hỏi: “Mạnh mẽ đã thành quen, sao cơn say lại làm em quên mất?”. Ừ thì mạnh mẽ thật lâu, em cũng cần một bờ vai tựa vào để khóc. Khóc không phải yếu mềm, mà chỉ để những mệt mỏi trong tim được phóng sanh, thoát kiếp',
    'Nếu em gọi anh, lúc em say…\n'
        'Là lúc những bí mật trong em đến lúc cần được giãi bày. Em từng hứa với mình: “Sẽ cất giữ chúng thật lâu để cả những cơn mưa ngâu cũng phải lắc đầu chịu trận”. Ừ thì em đã cất thật sâu nhưng vào những lúc say, chúng lại chẳng mảy may ở lại.',
    'Sau khi đàn ông say rượu sẽ nghĩ đến phụ nữ nhưng không chỉ một người. Phụ nữ sau khi say rượu sẽ nghĩ đến đàn ông nhưng bao giờ cũng chỉ một người, chính là người đàn ông đã bỏ rơi họ.',
    'Nếu em gọi anh, lúc em say…\n'
        'Là lúc những câu hỏi trong em cần một lời đáp.\n'
        'Và nếu một ngày anh gọi em, lúc anh say…\n'
        'Hãy đứng yên, em sẽ đi tìm…',
    'Nếu muốn biết điều chân thật nhất của phụ nữ là gì, hãy để họ khóc. \n'
        'Nếu muốn hiểu đàn ông nghĩ gì, cứ để họ say đi.',
    'Cuộc sống có hai thứ làm đàn ông khó che đậy những yếu mềm. Thứ nhì là cơn say. Thứ nhất, chính là đàn bà.',
    'Đàn ông khi say sẽ nghĩ đến người phụ nữ mà anh ta yêu nhất. Đàn bà khi say sẽ nghĩ đến người đàn ông mà cô ta hận nhất.',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              items: List.generate(5, (index) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.white),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
                        child: Text(
                          quoteDrink[randomIndex],
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.crusta,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: Image.asset(
                            AppImages.imgLogo4,
                            width: 32.ic,
                            height: 32.ic,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              options: CarouselOptions(
                  aspectRatio: 333.w / 100.h,
                  enlargeCenterPage: true,
                  scrollPhysics: const NeverScrollableScrollPhysics(),
                  autoPlay: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      randomIndex = Random().nextInt(quoteDrink.length);
                      pageSelected = index;
                    });
                  }),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h),
              child: AnimatedSmoothIndicator(
                activeIndex: pageSelected,
                count: 5,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.grey.withOpacity(0.5),
                  dotWidth: 10.ic,
                  dotHeight: 10.ic,
                  expansionFactor: 2,
                  dotColor: AppColors.crusta,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
