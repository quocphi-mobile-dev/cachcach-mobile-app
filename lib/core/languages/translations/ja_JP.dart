import 'package:cachcach/core/extensions/extensions.dart';

import '../label.dart';

/// japanese definition
final jaJP = <Label, String>{
  /// A
  Label.applicationLabel: "pet hospital",
  Label.applicationIntroduction: "Peace of mind for pets",
  Label.agreeAndRegister: "利用規約に同意して新規登録",
  Label.animarabHospital: "アニマラブ病院",
  Label.animalHospital: '動物病院',
  Label.allowAppToTrackActivity:
      "* AnimaLoveが他社のAppやWebサイトを横断してあなたのアクティビティの追跡することを許可しますか？",
  Label.allowAppToTrackActivityBenefit: "あなたに合わせたおトクな情報などが表示れるようになります。",
  Label.addAPet: "ペットを追加する",
  Label.address: "番地",
  Label.addressBuildingNameEtc: "番地、建物名等",
  Label.aboutEachPaymentMethod: "※各支払い方法について",
  Label.answerQuestionBeforeRegisterClinic: "動物病院を登録する前に以下の質問にお答えください",
  Label.addressHint: "丁目や番地を入力",
  Label.aboutContraceptionOrCastrationSurgery: "避妊、または去勢手術について",
  Label.aboutContraceptionOrCastrationSurgeryHint: "お選びください",
  Label.accountSettingsAndOthers: "アカウント設定・その他",
  Label.activityIntro: "活動紹介",
  Label.age: '歳',
  Label.acceptingReviews: 'レビュー受付中',
  Label.animalHospitalName: '動物病院名',
  Label.animalHospitalNameHint: '病院名を入力',
  Label.addressRequestHospital: '住所',
  Label.addressRequestHospitalHint: '都道府県を選択',
  Label.aboutRequestHospital: '動物病院リクエストについて',
  Label.addFavoriteHospitalNotice1:
      '※動物病院により（1-6）の項目、予約できる日時、料金などそれぞれ異なります。あらかじめご了承ください。',
  Label.addFavoriteHospitalNotice2: '※1：リモート診療予約はまだできません',
  Label.addFavoriteHospitalNotice3:
      '診療を希望するペットが「初診」の場合はリモート診療が できません。初診は必ずご希望の病院で「来院または往 診」での対面診療をお願いします。その後、2回目以降から リモート診療ができるようになります。',
  Label.addFavoriteHospitalNotice4: '→初診はリモート診療ができない理由について',
  Label.addFavoriteHospitalDialog1: '初診の場合、リモート診療ができない理由',
  Label.addFavoriteHospitalDialog2:
      '初診とは動物病院ごとにはじめて診療することをいいます。\n＜例＞\nいつも通っている「A動物病院」に来院して診療を受けた後、翌日、別の先生にセカンドオピニオンを受けたいと思い、診療を受けるのがはじめての「B動物病院」でリモート診療を希望する場合は、初診扱いになるため、リモートでの診療はお受けできません。\n※初診の場合は「来院、または往診」での対面診療をお願いします。',
  Label.addFavoriteHospitalDialog3:
      '現在の法律では「初診は対面診療で行う」と定められているため、初診での診療・診断行為に該当することはリモートではできません。 ',
  Label.addFavoriteHospitalDialog4: '回目以降から遠隔診療（リモート診療）を受けることができます。 ',
  Label.addFavoriteHospitalDialog5: '「相談」に該当する範囲であれば、初診でもリモートでご相談いただけます。',
  Label.addFavoriteHospitalDialog6:
      '獣医師または専門アドバイザーに相談することができますので、ペットに関する相談があれば、ぜひご利用ください。',
  Label.addPet: 'ペットを追加',
  Label.addPetNameHint: '例：小太郎',
  Label.addPetKanaHint: '例：コタロウ',
  Label.addPetBirthdayHint: '例：2015年01月01日',
  Label.addPetVaccineDateHint: '例：2022年01月01日',
  Label.addPetInsuranceDateHint: '例：1980年01月01日',
  Label.activityIntroText:
      "私たちはより多くの家族がともに暮らし、いつまでも安心してすごせるように、様々な取り組みから最大の支援活動を行ってまいります。",
  Label.activityIntroButton: "活動紹介のウェブサイトに移動",

  // Waiting customer confirm
  Label.addressType: "建物種別",
  Label.addressTypeHouse: "一戸建て",
  Label.addressTypeApartment: "マンション、アパート、その他",

  /// B
  Label.boy: "男の子",
  Label.birthday: "生年月日",
  Label.birthdayHint: "例：1980年01月01日",

  Label.bookingConfirmation: '予約確認',
  Label.bankTransfer: "銀行振込",
  Label.brandsThatCanBeRegistered: "登録可能なブランド",
  Label.bookHealthCheck: '診療メニュー・予約',
  Label.bookHealthCheckMsg: '希望の診療メニューをお選びください',
  Label.breedingPlace: "飼育場所",
  Label.backPreviousScreen: '修正する（前の画面に戻る）',
  Label.btnSelect: '選択',
  Label.btnNotSelectPet: '登録していない ペットについて\nリモート相談を希望する方はこちら',
  Label.back: "一覧に戻る",
  Label.backToHome: "ホームに戻る ",
  Label.backToListReview: 'レビュー一覧に戻る',
  Label.backToListHospital: '動物病院一覧に戻る',
  Label.bankTransferEdit: "銀行振込（バーチャル口座）",
  Label.bankTransferDescription: '''
銀行振込（バーチャル口座）は飼い主様へ、振込先口座お知らせして、ネット上でお支払いできるサービスです
ご利用明細が届いた後、ご利用代金をご確認いただき、手続きにお進みください
振込先口座は（GMOイプシロン株式会社）が自動で発行し、飼い主様へ振込先口座をお知らせさせていただきます
大手銀行をはじめ、都市銀行、ゆうちょ銀行、全国の信用金庫などに対応して、ネットバンキング、モバイルバンキングをご利用いただけます
  ''',
  Label.byDate: "日付順",
  Label.backToIndex: '一覧に戻る',
  Label.buildingNameEtc: "建物名等",
  Label.buildingNameEtcHint: "建物名等を入力",
  Label.bodyWeight: "体重",
  Label.bodyWeightHint: "例：10",
  Label.breedingPlaceHint: "お選びください",
  Label.breakdownOfDetails: '明細の内訳',
  Label.buildingName: "建物名等",

  /// C
  Label.consultationChat: 'チャット相談',
  Label.change: '変更する',
  Label.consultation: '診察',
  Label.close: "閉じる",
  Label.cellPhoneNumber: "携帯番号",
  Label.changesArePossibleAfterTheDecision: "決定後の変更は可能です",
  Label.creditCardNumber: "クレジットカード番号",
  Label.correspondingInsurance: "対応保険",
  Label.correspondenceTime: "対応時間",
  Label.checkHereForDetail: "ついて詳しくはこちらをご確認ください※対応の内容（オンライ診療オンライン相談来院相談）に",
  Label.chatConsultation: 'チャット相談',
  Label.chatConsultation2: 'チャット相談中',
  Label.contraception: "避妊、または去勢手術について（任意）",
  Label.coatColor: "毛色（ヘアレス含む）",
  Label.character: "性格",
  Label.combinationVaccineType: "混合ワクチン種類",
  Label.clickHereForPrivacyPolicy: "個人情報保護方針はこちら",
  Label.contentOfInquiry: "お問い合わせ内容",
  Label.contentOfInquiry2: "お問い合わせ",
  Label.contactGuide: "事務局へのお問い合わせは以下のフォームより承ります。",
  Label.changeEmail: "メールアドレス変更",
  Label.changeEmailNote:
      "メールアドレスの変更をご希望される方は、事務局までお問い合わせください。その際、登録時の携帯番号を必ずお問い合わせ欄に記載してください。事務局にて確認した上で、登録メールアドレスをメールでお送りします。携帯番号がわからない方は新規登録からお願いいたします。",
  Label.changePassword: "パスワード変更 ",
  Label.changePasswordNote:
      "パスワードの変更をご希望される場合は、パスワードの再発行を行います。登録されているメールアドレスにメールをお送りします。以下の「認証メール送信」をタップしてください。",
  Label.chat: 'チャット',
  Label.contactAdmin: '事務局問合せ',
  Label.cat: '猫',
  Label.changePasswordComplete: "パスワード更新完了",
  Label.changePasswordCompleteContent:
      "パスワードの更新が完了しました。ログイン画面に戻って新しいパスワードでログインを行ってください。",

  Label.continuePetRegister: "続けてペット情報を登録",
  Label.continuePaymentRegister: "STEP3. 続けてお支払い情報を登録",
  Label.characterHint: "例：おとなしくて甘えん坊です",
  Label.combineVaccineType: "混合ワクチン種類",
  Label.combineVaccineTypeHint: "3種混合ワクチン、5種混合ワクチン",
  Label.correctPetInformation: "ペット情報を修正する",
  Label.cancel: "キャンセル",
  Label.comment: "コメント",

  Label.changeInformation: 'お支払い情報を変更する',
  Label.changeCreditCard: 'クレジットカードを変更する',
  Label.creditCardPayment: "クレジットカード決済",
  Label.creditCardPaymentDescription: '''
クレジットカード情報はご利用明細が届いた後、ご入力いただきます
ご利用代金をご確認いただき、手続きにお進みください

クレジットカード情報の入力は病院ごとにご入力いただきます
同じ病院で、ご利用される場合は、次回から、クレジットカード情報の入力は必要ありません
はじめての病院でお支払いされる場合のみクレジットカード情報をご入力いただきお支払いをお願いいたします

ご利用いただけるクレジットカード
VISA・MASTER・DINERS・JCB・AMEX
※クレジットカード情報は決済会社（GMOイプシロン株式会社）の強固なセキュリティにより守られていますので、安心してご利用いただけます''',
  Label.contactConfirm: "入力された内容をご確認いただき、問題がなければ「この内容で送信する」をタップしてください",
  Label.checkContact: "入力内容を確認する",
  Label.changePetInformation: 'ペット情報を変更',
  Label.changedPetInformation: 'ペット情報を変更しました',
  Label.confirmEmail: "メールアドレス変更",
  Label.changeEmailContent: "メールアドレスの変更を行います。新しいメールアドレスを入力してください。",
  Label.changeEmailComplete: "メールアドレス変更完了",
  Label.changeEmailCompleteContent:
      "メールアドレスの変更が完了しました。ログイン画面に戻って新しいメールアドレスでログインを行ってください。",

  Label.cvcNote: "カード裏面の3桁の番号です\nAMEXカードではカード前面の4桁の番号です",
  Label.confirmEditOwnerInfo: "この内容で変更する",
  Label.changePaymentInfo: "カード情報を変更する",
  Label.changePaymentMethod: "お支払い方法を変更する",
  Label.creditCard: "クレジットカード",
  Label.cardNumber: "カード番号",
  Label.changeCreditCardInfo: "カード情報の変更",
  Label.changeCreditCardComplete: "カード情報が変更されました",
  Label.creditCardNumberHint: "例：1234 1234 1234 1234",

  Label.checkCreditCard: "クレジットカードの情報を確認してください。",
  Label.choosePeriodic:
      '【総合健診の注意点】\n原則、健康なペットが対象です。 院治療中の方や、セカンドオピニオンを目的とした検査などには対応しておりません。また、各種ペット保険については保険対象外になります。\n検査内容によっては前日、当日の絶食、絶水をお願いしたい場合などがございます。その場合はご予約完了後の メッセージ をご確認いただき、獣医師の指示に従ってください。\n同様に尿検査、糞便検査についても獣医師のご指示に従って検査当日の尿と便を持参していただく場合もございます。ご持参が難しいようであれば当日、ご来院後にご相談ください。\n検査途中で異常が見つかった場合は、ご家族にご連絡し、追加検査をご提案する場合がございます。その場合には追加料金が発生することをご了承ください。また動物の性格や状況によって、やむを得ず検査を中止することがございます。あらかじめご了承ください。',

  Label.cityNotFoundError: "該当する郵便番号が検索されませんでした。手動で郵便番号の入力をお願いします。",

  Label.chatMaxLengthInput: "文字数制限を超えています。1000文字以内で入力をお願いします。",
  Label.chatImageSupportError: "画像の型式が違います。jpeg, pngまたはheic形式でアップロードをお願いします。",
  Label.chatVideoSupportError: "動画の型式が違います。mp4またはmov形式でアップロードをお願いします。",
  Label.chatFileSupportError: "入力形式が違います。内容を確認して入力をお願いします。",
  Label.chatMaxSizeVideoInput: "容量がオーバーしています。100MB内でアップロードをお願いします。",
  Label.chatMaxSizeFileInput: "容量がオーバーしています。5MB内でアップロードをお願いします。",
  Label.cameraPermission: "カメラにアクセスする許可をお願いします。",
  Label.connectTimeout: "応答時間が長すぎます。",
  Label.confirmLogout: "本当にログアウトしますか？",
  Label.chatIsOver: "ー チャットが終了しました ー",

  /// D
  Label.donation: '寄付金',
  Label.dedicatedTransferForm: "専用振込用紙",
  Label.dedicatedTransfer: "専用振込",
  Label.dateOfExpiry: "有効期限",
  Label.doYouHaveAFamilyHospital: "かかりつけ病院はありますか?",
  Label.doYouGetAQrCodeFromYourFamilyHospital: "かかりつけ病院からQRコードをもらっていますか",
  Label.degree: "学位",
  Label.day: "日",
  Label.doNotKnowBirthday: "生年月日がわからない",
  Label.dailyFood: "日常食",
  Label.dailyFoodHint: "例：ドッグフード",
  Label.deletePet: "ペット情報を削除する",
  Label.deadline: "期限日",
  Label.detail: "詳細",
  Label.displayTransactions: "特定商取引に関する表示",
  Label.deferredPayment: "後払い決済",
  Label.deferredPaymentDescription: '''
「DSK後払い」はコンビニエンスストア等で代金のお支払いができるサービスです
ご利用明細が届いた後、ご利用代金をご確認いただき、手続きにお進みください
後日、振込用紙が飼い主様のご登録住所へ届きます
記載があるお支払い期限までにお支払いをお願いいたします

このサービスは株式会社DSテクノロジーズのサービスの範囲内でご利用いただくサービスです
ご利用の際は所定の審査がございます
審査の結果により他の決済方法のご利用をお願いする場合がございます
（審査基準、審査結果の理由につきましては、開示をいたしかねますのであらかじめご了承ください）

DSK後払いのご利用は、他のオンラインショップ等のご利用代金を含めて、ご利用金額の累計(未払金額合計)が55,000円（税込）までとなります
  ''',
  Label.dog: '犬',
  Label.doNotKnowThePassword: 'パスワードがわからない方',
  Label.doNotKnowThePasswordContent:
      'パスワードの再発行を行います。登録されているメールアドレスにメールをお送りします。以下の「認証メール送信」をタップしてください。',
  Label.deletePetConfirm: 'ペット情報を削除します。\n削除すると復元はできません。\n本当によろしいですか？',
  Label.delete: '削除する',
  Label.doNotDelete: "削除しない（病院ページに戻る）",
  Label.deletePetComplete: 'ペット情報を削除しました。',
  Label.dogCatContraceptionYes: '犬・猫（した）',
  Label.dogCatContraceptionNo: '犬・猫（してない）',
  Label.dogCatContraceptionNotKnow: '犬・猫（分からない）',
  Label.dogCat: '【体格】（犬、猫）',
  Label.dogCatSmallThin: "犬、猫（小型・細め）",
  Label.dogCatSmallNormal: "犬、猫（小型・普通）",
  Label.dogCatSmallThick: "犬、猫（小型・太め)",
  Label.dogCatMediumThin: "犬、猫（中型・細め）",
  Label.dogCatMediumNormal: "犬、猫（中型・普通）",
  Label.dogCatMediumThick: "犬、猫（中型・太め）",
  Label.dogCatLargeThin: "犬、猫（大型・細め）",
  Label.dogCatLargeNormal: "犬、猫（大型・普通）",
  Label.dogCatLargeThick: "犬、猫（大型・太め）",
  Label.dogCatNotKnow: "犬、猫（分からない）",
  Label.dateOfExpiryHint: "月／年",
  Label.dateHint1: "例：2015年01月01日",
  Label.dateHint2: "例：2022年01月01日",
  Label.doNotHaveFavoriteClinicWarning: "かかりつけが登録されていません\nかかりつけを登録してください",
  Label.donationText: 'さまざまな支援のかたち。 小さな命を守り続けるため、あなたの支援が必要です。',
  Label.donationButton: "寄付金のウェブサイトに移動",

  /// E
  Label.emailAddress: "メールアドレス",
  Label.emailAddressHint: "",
  Label.emailAddressNote: "診療に関するご案内などこちらのメールアドレスに送信されます。"
      "お間違いないよう入力いただき、送られてくるメールが受診できるよう設定してください",
  Label.editPet: "ペット情報を変更する",
  Label.enterWithoutHyphen: "・ハイフン（-）なしで入力をお願いします",
  Label.enterZipWithoutHyphen: "郵便番号はハイフン（-）なしで入力してください",
  Label.editUserRegistry: "飼い主情報を修正する",
  Label.enterVerifyCode: "認証コード入力",
  Label.enterVerifyCodeContent:
      "登録されているメールアドレスにメールをお送りしました。\nメールに記載されている5桁の認証コードを入力してくださ\nい。",
  Label.everHealthCheck: '受診歴あり',
  Label.easyReservation: "いつでもどこでも\nかんたん予約",
  Label.easyReservationContent:
      "24時間365日、いつでもオンラインで予\n約が可能です。診療時間とメニューを選\nんで、かんたんに予約ができます。",

  Label.ever: 'ある',
  Label.editOwnerInfo: "飼い主情報を変更する",
  Label.editOwnerInfoTitle: "飼い主情報を変更",
  Label.editOwnerInfoComplete: "飼い主情報を変更しました",
  Label.emergencyResponseHospital: "緊急対応受付動物病院",

  /// F
  Label.facebook: "facebook",
  Label.forgotPassword: "パスワードがわからない",
  Label.forgotEmail: "メールアドレスがわからない",
  Label.family: "かかりつけ",
  Label.furigana: "フリガナ",
  Label.furiganaHint: "例：コタロウ",
  Label.fax: "FAX番号",
  Label.faxHint: "例：0312345678",
  Label.findAVeterinaryClinic: "動物病院を探す",
  Label.feeTableMsg: '全て税込',
  Label.fullName: '氏名',
  Label.findByZipCode: '郵便番号から住所検索',
  Label.furColor: "毛色（ヘアレス含む）",
  Label.furColorHint: "例：赤茶",
  Label.female: "女性",
  Label.favoriteFood: "好物",
  Label.favoriteFoodHint: "例：ささみ",
  Label.featureWantToTell: "獣医師に伝えたい特徴",
  Label.featureWantToTellHint: "細かいことでも何でもお聞かせください",
  Label.favorite: "好物",

  Label.fromHospital: "動物病院より",
  Label.fromAdmin: "事務局より",
  Label.furiganaOwnerHint: "セイメイ",

  Label.forgotEmailTitle: "メールアドレスがわからない方",
  Label.forgotEmailContent1: "事務局までお問い合わせ",
  Label.forgotEmailContent2:
      "ください。その際、登録時の携帯番号を必ずお問い合わせ欄に記載してください。事務局にて確認した上で、登録メールアドレスをSMSでお送りします。携帯番号がわからない方は新規登録からお願いいたします。閉じる",

  /// G
  Label.google: "Google",
  Label.getAnOnlineConsultation: 'オンライン診察を受ける',
  Label.getAnOnlineConsultationReminder: 'オンライン診察を受けるボタンは開始10分前から押せる状態になります',
  Label.getStartedWithAnima: "AnimaLoveをはじめよう",
  Label.getStartedWithAnimaContent: "AnimaLoveをさっそく使ってみよう簡単な入力で設定が完了します",
  Label.getStartTitle: "さあ、はじめよう！",
  Label.getStartContent: "いつでもすぐ使えるよう \n 次のホーム画面で動物病院を探して\n かかりつけ医に登録してください。",
  Label.girl: "女の子",
  Label.goBack: "戻る",
  Label.goToMyPage: "マイページに戻る",
  Label.goToHome: "ホームへ",

  /// H
  Label.healthInsuranceCardNumber: "保険証番号",
  Label.home: "ホーム",
  Label.homeTitle: "ペットの安心をいちばん近くに。",
  Label.hospital: '病院',
  Label.homeScreenBottomDescription:
      'AnimaLove利用規約|プライバシーポリシー\n特定商取引法表示|このアプリについて|運営会社',
  Label.hospitalName: "病院名",
  Label.hospitalInfo: "病院情報",
  Label.hospitalGreetings: "病院からのごあいさつ",
  Label.homeCheck: '往診',
  Label.hourSpace: "時　間",
  Label.hasImageAttach: '写真添付あり',
  Label.hasVideoAttach: '動画添付あり',

  /// I
  Label.insurance: "保険加入",
  Label.insuranceCompanyName: "保険会社名",
  Label.inside: "室内",
  Label.insuranceNumber: "保険番号",
  Label.inquiriesToTheSecretariat: "事務局までのお問い合わせ",

  /// K

  /// L
  Label.login: "ログイン",
  Label.location: "所在地",
  Label.labelCommentReview: "ご感想・ご意見などをお待ちしています。",
  Label.logout: "ログアウト ",
  Label.listWithoutData: "該当する結果がありません。",
  Label.lbSelectOptionButton: '次の希望日時を選ぶ',
  Label.btnConfirmBooking: '確認画面に進む',
  Label.lbNotSelectPetMsg: '※ご登録した ペット以外に関する相談についても承ります。\n上記のボタンより問診表にお進みください',
  Label.lbSelectPetStepMsg: '診療するペットを選択してください',
  Label.lbPickdayStepMsg: '診療希望日を選択してください',
  Label.lbAvailableReserve: 'すべての診療ができます',
  Label.lbOnlyReserveChat: 'チャット相談のみできます',
  Label.lbUnavailableReserve: 'すべての診療を受け付けていません',
  Label.lbPicktimeStepMsg:
      '午前、午後、又は時間枠を一つ選択してください\n※午前、午後を選択した場合、\n動物病院側が時間を確定してお知らせさせていただきます。',
  Label.lbSelectedDay: '希望日',
  Label.lbConfirmStepMsg: '予約内容の確認',
  Label.lbFeeTable: '診療費の目安',
  Label.lbNotContainExtraFee: '（延長などがない場合）',
  Label.lbScheduleRow: '日　程',
  Label.lbTimeRow: '時　間',
  Label.lbPetRow: 'ペット',
  Label.lbClinicRow: '病　院',
  Label.lbInterviewTable: '問診票',
  Label.lbInterviewTable2: '診療結果（先生より）',
  Label.lbFillInterviewStepMsg: '予約前に問診表のご記入をお願いします',
  Label.lbInterviewTopicQuestion: '相談内容を選択してください',
  Label.lbInterviewTopicContentQuestion: '具体的な内容をお聞かせください',
  Label.lbInterviewSymptomQuestion: 'どのような症状でしょうか？',
  Label.lbInterviewSymptomTimeQuestion: 'いつ頃からですか？',
  Label.lbInterviewOtherQuestion: 'その他',
  Label.lbInterviewNoteQuestion: 'お伝えしたいご 望などございましたらご記入ください',
  Label.lbInterviewMediaQuestion: '様子が分かる写真か動画を添付',
  Label.lbRemoteConsultationInterviewMediaMsg:
      '※リモート相談終了後、添付いただいた動画、写真は削除されます。必要なデータはご自身で保存下さい',
  Label.lbRemoteConsultationInterviewMediaNote: '''
【予約についての注意事項】
送信後の問診表を確認させて頂いた後、正式に予約を受け付けます。（予約確定）

よって、現在は（仮予約状態）です。記入頂いた内容、又は緊急時の対応など（予約を受けられる状態であっても）急を必要とした場合ご予約のお断り、日時の変更をお願いする場合がございます。できるだけそのような事がないように最善を尽くしますが、他のペットの緊急対応などの処置にてご対応できない場合は、皆様のご協力の程宜しくお願い申し上げます。

※送信後（仮予約受付メール）が届きます。その後当日～2日以内に（予約確定）のご案内（メール、プッシュ通知）をお知らせいたします。（アプリ内ご予約画面でご確認いただけます。）万一、やむを得ない事情でお断り、変更などのお知らせがあった場合は、病院の指示に従っていただくようお願い申し上げます。
''',
  Label.lbChatConsultationInterviewMediaMsg:
      '※チャット相談終了後、添付いただいた動画、写真は削除されます。必要なデータはご自身で保存下さい',
  Label.lbChatConsultationInterviewMediaNote: '''
【チャットについての注意事項】
送信後の問診表を確認させていただきます。
専門スタッフが相談内容によってはお答えできない場合もございます。 

※チャット相談確定
※現在は確認前のため仮予約状態です。

チャット相談開始は専門スタッフからチャットで回答が届きます。
※確定前のチャットルームを利用できません。

チャットルーム利用と同時に相談開始となります。
チャットルームでご案内が届きましたら開始、ご相談ください。

※相談内容は1案件ごとの料金です。
※1案件ごととは、専門スタッフが1案件と判断した範囲で、飼い主様のお悩みとご相談を問題が解決するまでとさせていただきます。
※診療行為にあたる相談はお受けできません。

開始までに当日～2日お時間を頂戴する場合もございます。
又、チャットのやり取りは病院側と飼い主様との返答時間にズレが生じる場合もございます。
例）
15：00　病院スタッフが回答
16：00　飼い主様が質問
17：00　病院スタッフが質問に対しての質問
18：00　飼い主様が回答
など、翌日、翌々日にまたがる時間になる場合もございます。
最終的には専門スタッフが解決したと判断した時点で診療明細（相談明細）を発行させていただきます。''',
  Label.lbHomeCheckInterviewMediaMsg:
      '※往診が終了後、添付いただいた動画、写真は削除されます。必要なデータはご自身で保存下さい',
  Label.lbHomeCheckInterviewMediaNote: '''
【予約についての注意事項】
送信後の問診表を確認させて頂いた後、正式に予約を受け付けます。（予約確定）

よって、現在は（仮予約状態）です。記入頂いた内容、又は緊急時の対応など（予約を受けられる状態であっても）急を必要とした場合ご予約のお断り、日時の変更をお願いする場合がございます。できるだけそのような事がないように最善を尽くしますが、他のペットの緊急対応などの処置にてご対応できない場合は、皆様のご協力の程宜しくお願い申し上げます。

※送信後（仮予約受付メール）が届きます。その後当日～2日以内に（予約確定）のご案内（メール、プッシュ通知）をお知らせいたします。（アプリ内ご予約画面でご確認いただけます。）万一、やむを得ない事情でお断り、変更などのお知らせがあった場合は、病院の指示に従っていただくようお願い申し上げます。
''',
  Label.lbNormalCheckInterviewMediaMsg:
      '※来院診療が終了後、添付いただいた動画、写真は削除されます。必要なデータはご自身で保存下さい',
  Label.lbNormalCheckInterviewMediaNote: '''
【予約についての注意事項】
送信後の問診表を確認させて頂いた後、正式に予約を受け付けます。（予約確定）

よって、現在は（仮予約状態）です。記入頂いた内容、又は緊急時の対応など（予約を受けられる状態であっても）急を必要とした場合ご予約のお断り、日時の変更をお願いする場合がございます。できるだけそのような事がないように最善を尽くしますが、他のペットの緊急対応などの処置にてご対応できない場合は、皆様のご協力の程宜しくお願い申し上げます。
  
※送信後（仮予約受付メール）が届きます。その後当日～2日以内に（予約確定）のご案内（メール、プッシュ通知）をお知らせいたします。（アプリ内ご予約画面でご確認いただけます。）万一、やむを得ない事情でお断り、変更などのお知らせがあった場合は、病院の指示に従っていただくようお願い申し上げます。
''',
  Label.lbRemoteCheckInterviewMediaMsg:
      '※リモート診療終了後、添付いただいた動画、写真は削除されます。必要なデータはご自身で保存下さい',
  Label.lbRemoteCheckInterviewMediaNote: '''
【予約についての注意事項】
送信後の問診表を確認させて頂いた後、正式に予約を受け付けます。（予約確定）

よって、現在は（仮予約状態）です。記入頂いた内容、又は緊急時の対応など（予約を受けられる状態であっても）急を必要とした場合ご予約のお断り、日時の変更をお願いする場合がございます。できるだけそのような事がないように最善を尽くしますが、他のペットの緊急対応などの処置にてご対応できない場合は、皆様のご協力の程宜しくお願い申し上げます。
  
※送信後（仮予約受付メール）が届きます。その後当日～2日以内に（予約確定）のご案内（メール、プッシュ通知）をお知らせいたします。（アプリ内ご予約画面でご確認いただけます。）万一、やむを得ない事情でお断り、変更などのお知らせがあった場合は、病院の指示に従っていただくようお願い申し上げます。
''',
  Label.lbPeriodicInterviewMediaMsg:
      '※預かり定期健診終了後、添付いただいた動画、写真は削除されます。必要なデータはご自身で保存下さい',
  Label.lbPeriodicInterviewMediaNote: '''
【総合健診の注意点】
原則、健康なペットが対象です。通院治療中のペットや、セカンドオピニオンを目的とした検査などは対応しておりません。
また、各種ペット保険については保険対象外となります。 検査内容によっては前日、当日の絶食、絶水をお願いしたい場合などの注意点がございます。
その場合は予約完了後の（メッセージ）をご確認頂き、獣医師の指示に従ってください。同様に尿検査、糞便検査についても獣医師のご指示に従って、（メッセージ）をご確認頂き,検査当日の尿と便を持参していただく場合もございます。
ご持参が難しいようであれば当日の来院後にご相談ください。
検査途中で異常が見つかった際は、飼い主様へご連絡し、追加検査をご提案させていただく場合がございます。その際は追加料金が発生します。動物の性格や状況によって、やむを得ず検査を中止することがございます。あらかじめご了承ください。
''',
  Label.lbInterviewPickImage: '''写真を添付\n（最大5枚）''',
  Label.lbInterviewPickVideo: '''動画を添付\n（15秒程度）''',
  Label.lbQuestionnaire: '問診表',
  Label.lbEditSchedule: '予約を変更する',
  Label.lbDeleteSchedule: '予約をキャンセルする',
  Label.lbConfirmedScheduleNote1: '確定予約の一覧です。',
  Label.lbConfirmedScheduleNote2:
      '予約の変更・キャンセルは予約日の24時間前までに行ってください。変更できる内容は日時のみです。',
  Label.lbConfirmedScheduleNote3:
      '診療メニューやペットを変更される場合は一度キャンセルをして、新しく予約を取り直してください。24時間前を経過すると予約の変更・キャンセルはアプリからはできません。病院までお電話をお願いします。\n\n ※ご注意 \n確定予約後、連絡がないキャンセル（リモートで診療・相談時間になっても入室されない、往診予約で自宅にお伺いしても留守にされてる） \nなど、理由がないキャンセルの場合は、時間診療の対象としてご請求させて頂く場合がございます。24時間前のキャンセルは、必ず病院までご連絡いただきますようお願いいたします。',
  Label.lbTemporaryScheduleNote1:
      '仮予約状態の一覧です。病院側で予約確定になるとお知らせがアプリ側に届き、仮予約状態から確定予約に予約内容が移ります。',
  Label.lbTemporaryScheduleNote2: '仮予約状態時には予約の変更・キャンセルができません。確定予約になるまでお待ちください。',

  Label.lbRejectedSchedule: '取り消しになりました。詳しくはお知らせのメッセージをご確認ください。\n取り消し予約：',

  Label.lbBackToMedicalMenuBtn: '診療メニューに戻る',
  Label.lbReserveSuccessMsg1: '仮予約を受け付けました\n「予約確定」のご回答は\n当日～2日程度でご案内いたします',
  Label.lbReserveSuccessMsg2: '仮予約内容を登録メールにお送りしました。\n内容をご確認ください。',
  Label.lbReviewDescription:
      'アプリ「AnimaLove」サービスについて、よろしければ良かった点など、レビュー投稿をお願いいたします。これからも全力を尽くすと共に、皆様のお声をもとに様々なサービスに反映し、役立たせていただきます。',
  Label.lbIntro: 'ごあいさつ',
  Label.lbInformation: '動物病院情報',
  Label.lbAddress: '所在地',
  Label.lbPhone: '電話番号',
  Label.lbEmail: 'メール',
  Label.lbHomepage: 'ウェブサイト',
  Label.lbHoliday: '休診日',
  Label.lbSupportedPet: '診療対象',
  Label.lbSpecialty: '力をいれている診療',
  Label.lbNote: '備考',
  Label.lbAddFamilyClinicBtn: 'かかりつけ医として登録',
  Label.lbRemoveFamilyClinicBtn: 'かかりつけ医を削除',
  Label.lbBookHealthcheckBtn: '診療メニュー・予約',
  Label.lbPetClinic: '動物病院',
  Label.lbSelectLocation: 'エリアを選択',
  Label.lbSearchName: '病院名で検索',
  Label.lbRecord: '件',
  Label.thisIsFamilyClinic: 'かかりつけ医として登録した動物病院です',
  Label.lbFilterByName: '名前順',
  Label.lbFilterByCreatedAt: '新着順',
  Label.lbLoadmoreBtn: 'もっと見る',
  Label.lbRequestClinicBtn: '掲載されていない動物病院をリクエスト',
  Label.lbNoClinicMsg: 'このエリアでの病院はまだ登録されていません。',
  Label.lbReviewSuccess: 'レビューが送信されました\nご協力、ありがとうございました',
  Label.lbUpdateReviewSuccess: 'レビューの内容が更新されました',
  Label.lbMinute: '分',
  Label.lbInDayorOnNight: '日帰り又は1泊',
  Label.lbPaid: '有料',
  Label.lbRemoteCheckNote1: 'リモート診療は獣医師が担当いたします。\n',
  Label.lbRemoteCheckNote2:
      '診療を希望するペットが「初診」の場合はリモート診療ができません。初診は必ずご希望の病院で「来院または往診」での対面診療をお願いします。その後、2回目以降からリモート診療ができるようになります。\n\n',
  Label.lbRemoteCheckNote3: '→初診はリモート診療ができない理由について\n\n',
  Label.lbRemoteCheckNote4:
      '【ご注意】\nご予約は（1予約、1ペット）でお受けいたします。\n※複数診療はできません。\nその場合は別予約をお願いいたします。\n',
  Label.lbRemoteConsultationNote:
      '相談は獣医師又は獣医師の指導を受けている看護師又は専門スタッフが対応します。「相談する範囲について」獣医師が診療する以外の相談、ペットに関するお悩み、飼育、しつけ、健康管理、食べ物などのが相談範囲です。日常のお悩みやアドバイスをお受けください。\n',
  Label.lbHomeCheckNote1:
      '往診診療は獣医師が担当いたします。\n予約登録いただいたペットの診療にご自宅までお伺いいたします。\n\n',
  Label.lbHomeCheckNote2:
      '【ご注意】\nご自宅までの出張距離に応じてご対応出来ない場合があります。往診エリアを確認の上ご予約ください。\n\n',
  Label.lbHomeCheckArea: '往診エリア',
  Label.lbNormalCheckNote:
      'ご予約時間にご来院されてもお待たせすることがございます。原則、できるかぎりスムーズにご案内させていただきますが緊急などの対応で優先順位が変わる場合がございます。ご来院の際はお時間にゆとりを持ちお越しくださいませ。\n',
  Label.lbPeriodicCheckNote1: 'ペットをお預かりして日帰り又は一泊で定期健診いただけます。\n\n',
  Label.lbPeriodicCheckNote2: 'お預かり目安\n',
  Label.lbPeriodicCheckNote3:
      '午前中の場合は夕方、夕方の場合は翌日\n※お帰り頂く時間は病院により異なります。病院の指示に従っていただくようお願い申し上げます。\n※宿泊料金別途\n※検査項目やペットの状態によりお帰り時間は異なります。ご来院時に目安のお迎え時間をスタッフにお尋ねください。\n\n',
  Label.lbPeriodicCheckNote4:
      '定期的な専門検査で病気や異変を早期に見つけられるのが特徴です。特に中期からシニア期にかけて病気が起こりやすくなりますので元気なうちに定期健診をおすすめいたします。\n\n',
  Label.lbChatConsultationNote1:
      'ペットのことなら何でもご相談ください（問診表入力の上）一案件毎に、獣医師、又は獣医師の元で指導を受けている専門スタッフがお悩みを解決までご提案させていただきます。お忙しい方で、ちょっと聞いてみたいという方におすすめです。\n\n',
  Label.lbChatConsultationNote2:
      '※チャットスタートは問診表入力の上ご予約ください。スタートはチャットにて連絡が入りますのでご予約後そのまましばらくお待ちください。（当日～2日以内）にチャットにてご連絡が入ります。\n',
  Label.lbSelectScheduleOptionButton: 'つめの希望日時を選択する',
  Label.lbSelectedScheduleOption: 'つめの希望日時',
  Label.lbEditButton: '修正する',
  Label.lbToScheduleOptionsScreenButton: '問診票の入力に進む',
  Label.lbSelectScheduleOptionMsg1: '希望する予約日時を５つ選択してください',
  Label.lbSelectScheduleOptionMsg2: '５つ選択すると次のステップへ進めます。',
  Label.lbSelectScheduleOptionMsg3: '診療希望日時が5つ選択されました',
  Label.lbSelectScheduleOptionMsg4: '以下の内容でよろしければ問診票の入力にお進みください。',
  Label.lbScheduleOptions: '希望日時',
  Label.lbWaitResponseFromClinicMsg: '動物病院からの回答待ち状態です',
  Label.lbRemoteCheckGuide1: '初診の場合、リモート診療ができない理由',
  Label.lbRemoteCheckGuide2:
      '初診とは、動物病院において初めて受診する場合、または、これまで受診していた疾患とは異なる新たな症状、疾患等について受診する場合を言います。\n＜例＞\n・いつも通っていた「A病院」ではなく、「B病院」を初めて受診する場合\n・いつも通っている「A病院」で、別の症状で受診する場合\n（症状が異なっていても、原因が同じ場合、初診とみなされない可能性もあります。）\n※初診の場合は、「来院」または「往診」での対面診療をお願いします。\n\nしつけや健康に関することなどを「相談」したい場合は、「診療」ではなく、初診でもリモートで行うことができます。獣医師または専門アドバイザーに相談することができますので、ペットに関する悩み事があれば、ぜひご利用ください。',
  Label.lbAllMorning: '午前なら良い',
  Label.lbAllAfternoon: '午後なら良い',
  Label.lbEnterMessage: 'メッセージを入力…',
  Label.lbDeleteScheduleTitle: '予約のキャンセル',
  Label.lbConfirmDeleteScheduleMsg: 'この確定予約を本当にキャンセルしますか？\nキャンセルの取り消しはできません。',
  Label.lbDeleteScheduleSuccessMsg: '予約をキャンセルしました。',
  Label.lbBackToListScheduleBtn: '予約一覧に戻る',
  Label.lbEditScheduleTitle: '予約の変更依頼',
  Label.lbConfirmEditScheduleMsg: 'この確定予約を本当に変更依頼しますか？\n変更できるのは日時のみです。',
  Label.lbThanksYou: 'をお願いいたします。',
  Label.lbDescriptionPDFFile: 'PDFなどで明細が必要な方は、事務局まで',
  Label.lbNeedPayment: 'お支払いをお願いいたします',
  Label.lbNeedStatement: '明細が必要な方は病院までお電話いただき、ご相談ください。',

  Label.lbCheckMedicalHistory: '診療内容を確認',

  Label.lbFirstSettingButton: '初期設定をはじめる',
  Label.lbStartWithAnimalLove: 'AnimaLoveをはじめよう',
  Label.lbStartSettingForAnimalLove: 'AnimaLoveの初期設定を行います。',
  Label.lbChoosePeriodicMsg: 'コースを選択してください',
  Label.lbFillInterviewBtn: '問診票を入力',
  Label.lbComplete: "完了",
  Label.lbDownloading: "ダウンロード中です。",
  Label.lbDownloadComplete: "ダウンロード完了になりました。",
  Label.lbWaitToDownload: 'ダウンロードします。少々お待ちください。',
  Label.lbAll: '全て',
  Label.lbSelected: '選択中',
  Label.lbPaymentComplete: '支払い完了',
  Label.lbDSKPaymentComplete: 'お支払い手続きが完了しました。お支払い振込用紙を郵送させていただきます。',
  Label.lbBankPaymentComplete:
      'お支払い指定口座番号のメールが送信されました。メールをご確認いただき、記載のあるご指定口座まで早めにお支払いをお願いいたします。',
  Label.lbChangePaymentMethodSuccess: 'お支払い方法を変更しました',
  Label.lbSelectPeriodicOptionsBtn: '予約コースを選択',
  Label.list: '一覧',
  Label.lbProcessing: '指定口座までお支払いをお願いします',
  Label.loginSessionExpired: "一定の時間が経過したため、タイムアウトしました。再度ログインしてください。",
  Label.lbChangeCard: "こちらの病院でご利用中のクレジットカードを変更すると、"
      "新しいクレジットカードを再入力しなければなりません。本当に変更しますか？",
  Label.lbCardErrorCxx: "通知エラーが発生しました。再度操作の実施をお願いいたします。",
  Label.lbCardErrorGxx: "カード会社よりカード決済の承認が拒否された状況です。",
  Label.lbCardErrorKxx: "入力されたカード情報に異常があります。",

  /// M
  Label.myPage: "マイページ",
  Label.makeAnOnlineReservation: 'オンライン予約をする',
  Label.municipality: "市町村",
  Label.metropolitanFee: "都適料",
  Label.medicalTreatmentTarget: "診療対象",
  Label.medicalFeesFocusOn: "力をいれている診療料",
  Label.municipalityHint: "市町村（自動設定）",
  Label.month: "月",
  Label.microchipId: "マイクロチップID",
  Label.mixedVaccineInjection: "混合ワクチン注射",
  Label.mixedVaccineDate: "混合ワクチン接種日",
  Label.makeAnAppointWithGp: "かかりつけ医に予約する",
  Label.medicalDetail: "診療明細",
  Label.medicalExaminationHistory: '診療履歴',
  Label.male: '男性',
  Label.microchipIdHint: 'IDをご記入ください',
  Label.mixedVaccineDateHint: "例：2022年01月01日",
  Label.mixedVaccineInjectionHint: "お選びください",
  Label.makeAReservation: "予約する",
  Label.menu: "メニュー",

  Label.modifyPaymentInfo: "お支払い情報を修正する",

  /// N
  Label.nearest: "Nearest",
  Label.newAccountWithExternalAccount: "New Account With External Account",
  Label.nextMonth: '次の月',
  Label.no: "無",
  Label.none: "なし",
  Label.notification: 'お知らせ',
  Label.name: "お名前",
  Label.nameHint: "山田太郎",
  Label.normalCheck: '来院（通常予約）',
  Label.next: '次へ',
  Label.notificationSetting: "通知設定",
  Label.notReceiveSms: 'メールが届かない場合',
  Label.noInformationReserved: '予約されている情報はありません',
  Label.neverHealthCheck: '受診歴なし',
  Label.narrowDownByYear: "年で絞り込み",
  Label.newPassword: '新しいパスワード',
  Label.newPasswordConfirm: '新しいパスワード（確認用）',
  Label.newPasswordConfirmNote: '新しいパスワードを再度入力してください',
  Label.notRegister: '登録しない（ホーム画面に戻る)',
  Label.notDelete: '削除しない',
  Label.never: 'なし',
  Label.news: 'お知らせ',
  Label.notTheStartTime: '開始時刻ではありません。',
  Label.notRightImageFormat: '画像の型式が違います。jpeg, pngまたはheic形式でアップロードをお願いします。',

  Label.newEmail: "新しいメールアドレス",
  Label.newEmailConfirm: "新しいメールアドレス（確認用） ",
  Label.newEmailConfirmContent: "新しいメールアドレスを再度入力してください",
  Label.noResult: "該当する検索結果がありません。",
  Label.noInternet: "ネットワークに接続されていません。",
  Label.noPetRegistered: "現在登録しているペットはいません、ペットの登録をお願いいたします",
  Label.newArrival: "新着",

  /// O
  Label.onlineMedicalCare: 'オンライン診療',
  Label.onlineMedicalTreatmentReserved: 'オンライン診療予約済',
  Label.ownerInformation: "飼い主情報",
  Label.ownerRegistration: "飼い主情報を登録",
  Label.ownerRegistrationComplete: "飼い主情報の登録完了",
  Label.officialHP: "公式HP",
  Label.onlineMedicalFeeMenu: "オンライン診療料金メニュー※お薬代別途",
  Label.ofAnimaLove: "AnimaLoveの",
  Label.ownerId: "あなたの飼い主様ID",
  Label.operatorInformation: "運営者情報",
  Label.otherBreed: '小動物',
  Label.optional: '任意',
  Label.other: '分からない',
  Label.outside: '室外',
  Label.overloadImageSizWarning: '容量がオーバーしています。5MB内でアップロードをお願いします。',

  /// P
  Label.passwordHint: "パスワード（英数字6文字以上）",
  Label.pleaseCompleteTheRegistration: "登録を完了してください",
  Label.passwordReissue: "バスワード再発行",
  Label.passwordReissueContent: "パスワードの再発行を行います。新しいパスワードを入力してください。",
  Label.pickImageFromGallery: "ライブラリから写真を選択",
  Label.pickImageFromCamera: "写真を撮る",
  Label.pickVideoFromGallery: "ライブラリから動画を選択",
  Label.pickVideoFromCamera: "動画を撮る",
  Label.preview: 'Preview',
  Label.petRegistration: 'ペット情報',
  Label.petRegistrationSuccess: 'ペット情報の登録完了',
  Label.paymentMethod: "お支払い情報を変更",
  Label.payment: "お支払い",
  Label.paymentInformation: "お支払い情報を登録",
  Label.previousMonth: '前の月',
  Label.pleaseReadTheQrCodeOfYourFamilyClinic: "かかりつけ動物病院の\nQRコードを読み込んでください",
  Label.pleaseSelectAPhoto: "写真を選択してください",
  Label.petPhoto: "ペットの写真・過去の診療履歴、明細等の画像（最大3枚）",
  Label.petPhotoForMedicalTreatment:
      "ベットの写真 (診療用）\n※ベットの状態がわかる写真を入力してください（最大5枚）",
  Label.petName: "ペットのお名前",
  Label.petNameKana: "ベットのお名前（カナ）",
  Label.petNameKanaHint: "ポチ",
  Label.petNameHint: "例：小太郎",
  Label.petType: "ペットの種類",
  Label.petTypeHint: "お選びください",
  Label.petInformation: "ペット情報",
  Label.prefectures: "都道府県",
  Label.postcode: "郵便番号",
  Label.postcodeHint: "例：1234567",
  Label.paymentInfoRegistration: "お支払い情報",
  Label.preodicCheck: '預かり定期健診',
  Label.pet: "ペット",
  Label.petImageDetail: "ペットの写真・過去の診療履歴、明細等の画像",
  Label.petOtherFeatures: "獣医師に伝えたい特徴",

  Label.passwordAndEmailNotCorrect: "※メールアドレスまたはパスワードがちがいます",
  Label.passwordNote: "6文字以上で設定してください。英語大文字1文字以上を必ず含めてください。",
  Label.password: "パスワード",
  Label.physique: "体格",
  Label.pastIllnesses: "過去の病気やケガ、アレルギーなど",
  Label.petInsuranceCompany: "ペット保険会社",
  Label.paymentInfo: "お支払い情報",
  Label.privacyPolicy: "個人情報保護方針",
  Label.periodicCheck: '預かり定期健診',

  Label.pleaseChoose: "お選びください",
  Label.prefecturesHint: "都道府県（自動設定）",
  Label.petImage: "ペットの写真（プロフィールアイコン用）",
  Label.petKind: "品種",
  Label.petKindHint: "例：コーギー",
  Label.petPhysique: "体格",
  Label.petPhysiqueHint: "お選びください",
  Label.pastIllnessesEtc: "過去の病気やケガ、アレルギーなど",
  Label.pastIllnessesEtcHint: "例：数年前に左足を骨折しました",
  Label.petInsuranceCompanyHint: "例：アニマル保険",
  Label.petInsuranceNumber: "ペット保険番号",
  Label.petInsuranceNumberHint: "ペット保険番号をご記入ください",
  Label.petInsuranceExpirationDate: "ペット保険の期限日",
  Label.petInsuranceExpirationDateHint: "例：1980年01月01日",
  Label.petInsuranceExpirationDateNote:
      "ペット保険の適用については,各ペット保険会社にお尋ねい ただくようお願い申し上げます。",
  Label.petRegisterCompleteNote: "ペット情報の登録が完了しました \nペット情報は後でペット情報ページでも変更できます",
  Label.petId: "ペットID",

  Label.paymentSelectedDescription: 'が選択されています。 変更される場合は別の決済方法を選択してください。',
  Label.peaceOfMindOfYourPet: 'ペットの安心を\nいちばん近くに',
  Label.peaceOfMindOfYourPetContent:
      'あなたの大切なペットとずっと一緒にい\nるために、いつでも頼れる獣医とつなが\nる「AnimaLove」をはじめましょう。',

  Label.paymentRegisterCompleteTitle: "お支払い情報の登録完了",
  Label.paymentRegisterCompleteContent:
      "お支払い情報の登録が完了しました\nお支払い情報は後でマイページから変更できます",
  Label.pleaseInputCardInfo: "新しいカード情報を入力してください。",
  Label.pleaseCheckReservationDate: '予約日時をご確認ください',
  Label.petMale: 'オス',
  Label.petFemale: 'メス',
  Label.petOther: '分からない',
  Label.policyTitle1: "個人情報保護方針",
  Label.policyTitle2: "個人情報の定義",
  Label.policyTitle3: "個人情報の管理",
  Label.policyTitle4: "個人情報の利用目的について",
  Label.policyTitle5: "個人情報の第三者への開示・提供の禁止",
  Label.policyTitle6: "個人情報の安全対策",
  Label.policyTitle7: "ご本人の照会",
  Label.policyTitle8: "法令、規範の遵守と見直し",
  Label.policyContent1:
      "当社は、以下のとおり個人情報保護方針を定め、個人情報保護の仕組みを構築し、全社員、従業員に個人情報保護の重要性と取組みを徹底させることにより、個人情報の保護を推進致します。",
  Label.policyContent2:
      "「個人情報」とは、個人情報の保護に関する法律（平成十五年法律第五十七号、以下「個人情報保護法」といいます。）にいう「個人情報」を指し、生存する個人に関する情報であって、当該情報に含まれる氏名、生年月日その他の記述等により特定の個人を識別できるもの又は個人識別符号が含まれるものを指します。",
  Label.policyContent3:
      "当社は、お客様の個人情報を正確かつ最新の状態に保ち、個人情報への不正アクセス・紛失・破損・改ざん・漏洩などを防止するため、セキュリティシステムの維持・管理体制の整備・社員教育の徹底等の必要な措置を講じ、安全対策を実施し個人情報の厳重な管理を行います。",
  Label.policyContent4:
      "当サイトでは、お客様からのお問い合わせ時に、お名前、e-mailアドレス、電話番号等の個人情報をご登録いただく場合がございますが、これらの個人情報はご提供いただく際の目的以外では利用いたしません。\nお客様からお預かりした個人情報は、当社からのご連絡や業務のご案内やご質問に対する回答として、電子メールや資料のご送付に利用いたします。",
  Label.policyContent5: '''
  当社は、お客様よりお預かりした個人情報を適切に管理し、次のいずれかに該当する場合を除き、個人情報を第三者に開示いたしません。

・お客様の同意がある場合

・お客様が希望されるサービスを行うために当社が業務を委託する業者に対して開示する場合

・法令に基づき開示することが必要である場合
  ''',
  Label.policyContent6: "当社は、個人情報の正確性及び安全性確保のために、セキュリティに万全の対策を講じています。",
  Label.policyContent7:
      "お客様がご本人の個人情報の照会・修正・削除などをご希望される場合には、ご本人であることを確認の上、対応させていただきます。",
  Label.policyContent8: '''
 当社は、保有する個人情報に関して適用される日本の法令、その他規範を遵守するとともに、本ポリシーの内容を適宜見直し、その改善に努めます。

一般社団法人JPCS

所在地

〒153-0061

東京都目黒区中目黒3丁目6番2号 中目黒F・Sビル 5階

連絡先：代表番号 050-3554-6025

サポート事務局

〒920-0061

石川県金沢市問屋町1丁目27番1

メールアドレス：jpcs＠jpcs-animalove.jp
  ''',

  /// Q
  Label.qrReading: 'QR読込',
  Label.qAndA: 'Q&A',
  Label.qrReadingNotice: '※動物病院がお持ちの（公開QRコード）を \n読み取ると登録が簡単です！',
  Label.qrResultFound: 'この動物病院が見つかりました。\nかかりつけ医として登録しますか？',

  /// R
  Label.readTermsOfService: "Read AnimaLove Terms Of Service",
  Label.resendVerificationEmail: "認証用メールを再送信",
  Label.registrationCompleted: "登録が完了しました。ログインしてご利用を開始してください。",
  Label.requestAppNotTracking: "Appにトラッキングしないように要求",
  Label.registerVeterinaryClinic: "動物病院を登録",
  Label.regisAPet: "ペットを登録",
  Label.registerYourPet: "ペットを登録する",
  Label.rimottoAnimalHospital: 'リもっと動物病院',
  Label.review: 'レビュー',
  Label.registerAPet: "ベットを登録",
  Label.readTheQrCodeOfYourFamilyClinic: 'かかりつけ医院のQRコード読込',
  Label.registerCardInformation: "カード情報を登録する",
  Label.reserve: "予約する",
  Label.registerAsFamilyDoctor: "この病院をかかりつけ医として登録する",
  Label.remoteCheck: 'リモート診療',
  Label.remoteConsultation: 'リモート相談',
  Label.remoteMedicalTreatmentReserved: "リモート診療 予約済",
  Label.requiredCharacter: "*",
  Label.reviewUpdateDescription:
      "レビュー内容の変更をされる方は、修正後、「この内容に 更新する」より更新を行ってください。",
  Label.reviewRating: "レビュー評価",
  Label.rateDescription: "(5が一番よい評価です）",
  Label.read: "を読む",
  Label.rabiesVaccination: "狂犬病予防注射",
  Label.rabiesVaccinationDate: "狂犬病予防接種日",
  Label.remoteStartButtonContent: "リモート開始ボタンは開始10分前から押せる状態になります",
  Label.resendSmsCode: '認証用メールを再送信',
  Label.resendSmsCodeContent: '認証用メールを再送信しました。\nメールに記載されている認証コードを\n入力してください',
  Label.btnReserveWithContent: 'この内容で仮予約する',
  Label.rabiesVaccinationHint: 'お選びください',
  Label.rabiesVaccinationDateHint: '狂犬病予防接種日',

  Label.register: '登録する',
  Label.requestHospital: '動物病院をリクエスト',
  Label.requestHospitalSubTitle1: '掲載されていない動物病院を\nリクエストできます',
  Label.requestHospitalSubTitle2:
      '飼い主様の情報は動物病院側に公開されることはありません。安心してリクエストしてください。',
  Label.requestHospitalGuideLabel1: '希望される動物病院が見つからない場合、皆さまからのリクエストをお待ちしております！',
  Label.requestHospitalGuideContent1:
      '将来的に動物病院様へ本システム導入のご検討をしていただけるよう運営管理（一般社団法人JPCS日本ペットケアサービス）事務局からご案内させていただきます。',
  Label.requestHospitalComplete: 'リクエストが送信されました\nご協力、ありがとうございました！',
  Label.returnToHome: ' ホームに戻る',
  Label.registerMorePetNote: "ペットが複数いる場合は、続けて登録を行いペットIDを取得してください",
  Label.registerAnotherPet: "別のペットを登録",
  Label.requestHospitalGuideLabel2: '本アプリをリリースした理由',
  Label.requestHospitalGuideContent2:
      'より多くの飼い主様（ペット）たちと専門家（獣医師、動物看護師さんなど）いつも近くで見守っている（繋がっている）事を目的として飼い主様が気軽に専門家と接点が持てるよう開発させて頂きました。'
          '\n\nいつまでも元気で過ごしていただくにはペットも人も同じです。定期的な健診や専門家ならではのアドバイス、万一の時の診療、緊急対応、健康管理面など、私たちと同じケアが必要です。'
          '\n\nそのような思いから本アプリを通じて専門家と気軽にご利用いただくことを目的としています。\n\nしかしながらリリースした公開日がまだ浅いため動物病院様のご登録が少ない現状をご迷惑をお掛けいたします。'
          '\n\n事務局の活動として一日も早い動物病院様のご協力（ご登録）いただけるよう活動してまいりますので予約したくても、できないケースがあることをご不便をお掛けいたしますが、皆様のご理解、ご協力のほどお願い申し上げます。',
  Label.registerFamilyDoctor: 'かかりつけ医として登録する',
  Label.registerFamilyDoctorGuide:
      'この動物病院をかかりつけ医として登録します。この動物病院に一度でも来院して獣医師に診療してもらったことはありますか？登録したペットそれぞれにお答えください。',
  Label.rangeMedical1:
      '1：リモート診療予約 \n2：リモート相談予約 \n3：自宅まで往診予約 \n4：病院に来院予約 \n5：定期健診予約 \n6：チャット相談予約（有料）',
  Label.rangeMedical2:
      '2：リモート相談予約 \n3：自宅まで往診予約 \n4：病院に来院予約 \n5：定期健診予約 \n6：チャット相談予約（有料）',
  Label.remoteMedicalCare: "お好きな場所で\nリモート診療",
  Label.remoteMedicalCareContent:
      "かかりつけ獣医とリモートで診療や相談\nができるので、移動時間や待ち時間がか\nからず、ストレスなくリラックスして受\n診できます。",
  Label.registerFamilyHospital: "かかりつけ医として登録されました",
  Label.registerPetDone: 'ペットを追加登録しました',
  Label.returnPetList: 'ペット一覧に戻る',
  Label.registeredPaymentMethod: "現在登録されているお支払い方法",
  Label.rangeMedical: '診療・相談ができる範囲',
  Label.remoteStart: "リモート 開始",

  Label.reallyWantToRemoveClinic: "本当にこの動物病院を \nかかりつけ医から削除しますか？",
  Label.registerPetInfo: "ペット情報を登録",

  /// S
  Label.startAChat: 'チャットを開始する',
  Label.signUp: "新規登録",
  Label.sendingEmailWithURL:
      "証用のURLを記載したメールを送信しておりますので、記載されたURLにアクセスし、メール認証を完了させてくださいメールが見当たらない"
          "\n 場合は以下のリンクより認証用のURLを再送信してください",
  Label.sendConfirmationEmail: "確認メール送信",
  Label.sendCompleted: "送信完了",
  Label.sendCompletedContent:
      "パスワード再発行メールを送信しました。メール到着後記載されている方法でパスワードを変更してください",
  Label.schedule: '日程',
  Label.start: "はじめる",
  Label.sex: "性別",
  Label.selectPaymentMethod: "ご希望のお支払い方法を選択してください",
  Label.securityCode: "セキュリティコード",
  Label.searchFor: "検索する",
  Label.seeInDetail: "くわしく見る",
  Label.step: "STEP.",
  Label.step2: "STEP",
  Label.sexHint: "お選びください",
  Label.sendWithThisContent: "この内容で送信する",
  Label.secretariatInquiry: "事務局問合せ",
  Label.scheduleSpace: "日　程",
  Label.seeAll: "すべて見る",
  Label.smsRule1: '・メールが拒否設定になっていないか、もしくは登録した、\nメールアドレスが間違っていないかご確認をお願いします。',
  Label.smsRule2: '・受信可能かどうかわからない場合は、現在ご利用中のキャ\nリアまでお問い合わせください。',
  Label.smsRule3:
      '・メールの配信に時間がかかる場合がございます。数分後に\n再度ご確認ください。もしくは認証用メールを再送信してく\nださい。',
  Label.smsRule4: '・どうしてもメールが届かない場合は、',
  Label.smsRule4Special: '事務局までお問\nい合わせ',
  Label.smsRule4End: 'ください。',
  Label.sendSms: '認証メール送信',
  Label.selectPayment: "お支払い方法を選択",
  Label.send: "送信する",
  Label.sendVerifyEmail: "認証メール送信",
  Label.sendRequestHospital: 'リクエストを送信',
  Label.smallAnimalContraceptionYes: '小動物（した）',
  Label.smallAnimalContraceptionNo: '小動物（してない）',
  Label.smallAnimalContraceptionNotKnow: '小動物（分からない）',
  Label.smallAnimal: '【体格】（小動物）',
  Label.smallAnimalSmaller: '小動物（標準より小さい）',
  Label.smallAnimalStandard: '小動物（標準だと思う）',
  Label.smallAnimalLarger: '小動物（標準より大きい）',
  Label.smallAnimalNotKnow: '小動物（分からない）',
  Label.sendContactComplete: '送信されました\nありがとうございました\n1〜3日程度でご返信させていただきます',
  Label.startAnimaLove: "AnimaLoveをはじめる",
  Label.startAppointmentAlert: "予約診療の開始10分前です。ここからお入りください。",
  Label.searchHospital: "病院検索",
  Label.sent: "送信",
  Label.systemError: "システムエラーが発生しました。",

  Label.safetyPaymentInfo: "お客様のお支払い情報は大切に保管されています。",
  Label.securityCodeHint: "CVC",
  Label.sendVerifyCode: "認証コード送信",

  /// T
  Label.tutorial: "ご利用ガイド",
  Label.twitter: "twitter",
  Label.thanksForRegistration: "ご登録ありがとうございます",
  Label.time: '時間',
  Label.supporter: 'サポーター',
  Label.turnOnNotificationsAlert: "重要なお知らせをすぐに確認できるように \n ブッシュ通知オンにしてください",
  Label.turnOnNotificationsButtonTitles: "ブッシュ通知をオンにする",
  Label.telephoneNumber: "電話番号",
  Label.telephoneNumberHint: "電話番号を入力",
  Label.telephoneNumberNote: "・ハイフン（-）なしで入力をお願いします"
      "\n・医療機関の電話を受けることが可能な電話番号をご入力 ください",
  Label.telephoneNumberWarning: "※固定電話携帯電話どちらかに必ず入力をお願いします固定電話番号",
  Label.targetAnimal: "対象動物",
  Label.tapStar: "星マークをタップしてください",
  Label.termTitle1: "第１条（目的）",
  Label.termTitle2: "第２条（定義）",
  Label.termTitle3: "第３条（契約関係）",
  Label.termTitle4: "第４条（適用範囲）",
  Label.termTitle5: "第５条（規約の変更）",
  Label.termTitle6: "第６条（利用登録）",
  Label.termTitle7: "第７条（登録の解除）",
  Label.termTitle8: "第８条（登録の抹消）",
  Label.termTitle9: "第９条（予約）",
  Label.termTitle10: "第１０条（オンライン診療等）",
  Label.termTitle11: "第１１条（ユーザーの遵守事項及び責任）",
  Label.termTitle12: "第１２条（反社会的勢力の排除）",
  Label.termTitle13: "第１３条（個人情報）",
  Label.termTitle14: "第１４条（本サービス提供の一時停止等）",
  Label.termTitle15: "第１５条（本サイトの変更）",
  Label.termTitle16: "第１６条（地位等の譲渡）",
  Label.termTitle17: "第１７条（免責）",
  Label.termTitle18: "第１８条（準拠法と裁判管轄）",
  Label.termContent1: """
  本利用規約は、一般社団法人ＪＰＣＳが動物病院等の行うペットのオンライン診療、オンライン相談、往診、来院、預かり定期健診、チャット相談、薬の処方等の情報を発信し、ユーザーと動物病院等とをマッチングするサービスを提供するに際し、同サービスを利用する際の条件その他の遵守事項を定めることを目的とします。
  """,
  Label.termContent2: """
  １ 「当社」とは、一般社団法人ＪＰＣＳをいいます。

  ２ 「オンライン診療等」とは、オンライン診療、オンライン相談、往診、来院、預かり定期健診、チャット相談、薬の処方等をいいます。

  ３ 「本サービス」とは、当社が提供するオンライン診療等に関するユーザーと動物病院等をマッチングするサービスをいいます。

  ４ 「本サイト」とは、本サービスを提供するためのウェブサイト及びアプリをいいます。

  ５ 「ユーザー」とは、本サービスに登録し、ペットや家畜などの動物を飼育している個人及び法人をいいます。

  ６ 「登録動物病院等」とは、本サイトに登録したオンライン診療等を提供する動物病院、獣医師、動物調剤薬局、動物服薬指導等の業務に従事する個人及び法人をいいます。
  """,
  Label.termContent3: """
  ユーザーは、本サービスがユーザーと登録動物病院等とのマッチングのために必要な支援を行うことを目的とするものであり、当社はいかなる場合においても、ユーザーと登録動物病院等との間の契約について契約当事者とならないことを確認し了承します。
  """,
  Label.termContent4: """
  １ ユーザーが本サービスの利用登録の申込みを行ったときは、ユーザーは本利用規約に同意したものとみなします。

  ２ 本利用規約に定めるものの他、本サービスに関するヘルプ、ガイドページ、よくあるお問い合わせ、その他の本サイトに掲載された内容についても、本利用規約の一部を構成し、ユーザーはこれに同意するものとします。ただし、本サイトに掲載された内容と本利用規約の内容に齟齬があるときは、本利用規約が優先適用されるものとします。
  """,
  Label.termContent5: """
  １ 当社は、必要と認めるときは、いつでも、本利用規約を変更することができるものとし、本サービスを利用するユーザーはこれに同意するものとします。

  ２ 当社は、前項により本利用規約を変更するときは、本利用規約を変更する旨、変更後の本利用規約の内容及びその効力発生時期を本サイト上に掲載する方法により、ユーザーに周知することとし、その効力発生時期から変更後の本利用規約を適用するものとします。
  """,
  Label.termContent6: """
  １ 本サービスへの利用登録を希望するユーザーは、当社の指定する利用登録に必要な情報を本サイト上の利用登録ページにおいて入力することにより、利用登録を申込むものとします。

  ２ 当社は、利用登録を承諾したユーザーに対してＩＤ及びパスワード（以下、「ＩＤ等」という。）を発行し、ユーザーに発行したＩＤ等を使用した行為については、当該ユーザーの行為とみなすことができるものとし、ユーザーは当該行為について一切の責任を負うものとします。

  ３ ユーザーは、当社から発行を受けたＩＤ等を善良な管理者の注意義務をもって管理するものとし、当該ＩＤ等を第三者が使用し、又は使用するおそれがあるときは、直ちにその旨を当社に通知し、当社の指示に従うものとします。
  """,
  Label.termContent7: """
  １ ユーザーは、本サービスの利用登録を解除しようとするときは、当社の定める方法により利用登録の解除を申請しなければならないものとします。

  ２ 当社は、ユーザーの利用登録を解除した場合であっても、当該ユーザーに関する情報を保持することができるものとします。
  """,
  Label.termContent8: """
  １ 当社は、ユーザーが次の各号に掲げる事由のいずれかに該当し、又は該当するおそれがあると認めたときは、ユーザーの登録を抹消することができるものとします。

    ⑴ 当社に登録した情報の全部又は一部に虚偽、誤りがあるとき

    ⑵ 未成年者であって法定代理人の同意を得ていないとき

    ⑶ 過去に本サービスの利用登録を拒否され、又は取り消されたことがあるとき

    ⑷ 過去に本サービスを利用したことのある者であって本利用規約に違反したことがあるとき

    ⑸ 第１２条第１項各号に掲げる事由のいずれかに該当し、又は同条第２項各号に掲げる行為のいずれかを行った者であるとき

    ⑹ 登録動物病院等への支払いを滞納したとき

    ⑺ 本利用規約に違反し、又は違反するおそれがあるとき

    ⑻ その他、当社が本サービスの利用者として不適当であると認めたとき

  ２ 当社は、ユーザーの利用登録を抹消した場合であっても、当該ユーザーに関する情報を保持することができるものとします。
  """,
  Label.termContent9: """
  １ ユーザーは、本サービスの利用登録完了後、登録動物病院等に対して予約をすることができます。

  ２ ユーザーが本サービス上で予約の申込みを完了すると、仮予約の状態となり、その旨がユーザーに通知されます。

  ３ 登録動物病院等が前項の申込みを承諾した場合、予約が確定し、その旨がユーザーに通知されます。これによりユーザーと登録動物病院等との間で契約が成立し、登録動物病院等によっては予約料が必要となる場合があります。

  ４ 予約をキャンセルされる場合、キャンセル料がかかることがあります。キャンセル料については、各登録動物病院等の利用規約に規定されています。
  """,
  Label.termContent10: """
  １ ユーザーは、前条の予約に基づき、オンライン診療等を受けることができ

ます。オンライン診療等にかかる費用の決済は、ユーザーと登録動物病院等との間で行うものとし、当社が契約当事者となることはありません。

  ２ 本サイトに掲載されているオンライン診療等にかかる費用は、見込みの金額を示すものであり、実際のオンライン診療等の内容に応じて、決済額と異なる場合があります。

  ３ ユーザーは、オンライン診療及び薬の処方を受ける場合は、登録動物病院等における対面での診療を受けた後でなければ、本サービスを通じたオンラインでのサービス提供を受けられないことに同意するものとします。
  """,
  Label.termContent11: """
  １ ユーザーは、本サービスを利用するに当たって、本利用規約を遵守することを確約するものとします。

  ２ ユーザーは、当社に登録した情報が正確であることを表明保証するものとします。

  ３ ユーザーは、自らの判断と責任において本サービスを利用し、その利用に関する全ての責任を負うことを確認し了承します。

  ４ ユーザーは、本サービスの利用に際し、次の各号に掲げる行為を行ってはならないものとします。

    (1)ＩＤ等を第三者に譲渡、貸与その他の方法により第三者に使用させ、又は開示等する行為

    ⑵ 他人のペットのオンライン診療等を受ける行為

    ⑶ 当社又は本サービスを利用する他の利用者を含む第三者の権利を侵害し、その名誉もしくは信用を毀損し、その名誉感情を害し、又はその他の社会通念上相当性を逸脱する行為

    ⑷ 法令又は公序良俗に反する行為
    
    ⑸ 第１２条第１項又は第２項に違反する行為
    
    ⑹ 登録動物病院等への予約及びキャンセルを繰り返す等、登録動物病院等の業務を妨害する行為
    
    ⑺ 当社、登録動物病院等及び他のユーザーに対し、コンピューターウィルスその他の有害なコンピュータープログラムを含む情報を送信する行為
    
    ⑻ 本利用規約に違反する行為

  ５ ユーザーは、本サービスの利用に際し、前項に違反する行為その他のユーザーの責に帰すべき事由により、当社に損害を与えたときは、当社に生じた一切の損害を賠償しなければならないものとします。
  """,
  Label.termContent12: """
  １ ユーザーは、次の各号に掲げる事由のいずれにも該当しないことを表明保証し、将来にわたって該当しないことを確約します。

    ⑴ 自らが暴力団員（暴力団員による不当な行為の防止等に関する法律（平
    
    成３年法律第７７号）第２条第６号）、暴力団員でなくなった時から５年間を経過しない者、もしくはこれらに準ずる者、または暴力団もしくは暴力団員と密接な関係を有する者（以下、これらを個別にまたは総称して「暴力団員等」という。）であること
    
    ⑵ 自らの行う事業が、暴力団員等の支配を受けていると認められること
    
    ⑶ 自らの行う事業に関し、暴力団員等の威力を利用し、財産上の不当な利益を図る目的で暴力団員等を利用し、または、暴力団員等の威力を利用する目的で暴力団員等を従事させていると認められること
    
    ⑷ 自らが暴力団員等に対して資金を提供し、便宜を供与し、または不当に優先的に扱うなどの関与をしていると認められること
    
    ⑸ 本契約の履行が、暴力団員等の活動を助長し、または暴力団の運営に資するものであること

  ２ ユーザーは、自ら又は第三者をして、当社又は本サービスを利用する他の利用者を含む第三者に対し、次の各号に掲げる行為をしないことを確約するものとします。

    ⑴ 暴力的な要求行為
    
    ⑵ 法的な責任を超えた不当な要求行為
    
    ⑶ 脅迫的言辞又は暴力的行為
    
    ⑷ 風説を流布し、又は偽計もしくは威力を用いて、信用を毀損し、又は業務を妨害する行為
    
    ⑸ その他前各号に準ずる行為
  """,
  Label.termContent13: """
  当社は、本サービスを利用するユーザーの個人情報その他のプライバシー情報を、本サイト上に掲載する個人情報保護指針に従って適切に取り扱います。
  """,
  Label.termContent14: """
  １ 当社は、本サービスの運用に供するサーバーの保守、障害復旧その他のメンテナンス又は本サービスもしくは本サイトの内容もしくは仕様の変更もしくは修正を行うときは、ユーザーに事前に通知をした上で、本サービスの提供を一時的に停止することができるものとします。これによりユーザーに生じた不利益又は損害について、当社は一切の責任を負わないものとします。

  ２ 当社は、次の各号に掲げる事由のいずれかに該当するときは、ユーザーに事前に通知することなく、本サービスの提供を一時的に停止することができるものとします。これによりユーザーに生じた不利益又は損害について、当社は一切の責任を負わないものとします。

    ⑴ 天災地変その他の不可抗力により本サービス又は本サイトに障害が発生し、もしくは発生するおそれがあるとき、又は法令等の制定もしくは改廃により本サービスの提供が困難もしくは不可能となったとき
    
    ⑵ その他、本サービスの提供又は運用上、当社が本サービスの提供を一時停止する必要があると認めたとき

  ３ 本サービス又は本サイトに障害が生じ、ユーザーが本サービスを利用することができない場合であっても、当社に故意又は重大な過失がない限り、当社は一切の責任を負わないものとします。
  """,
  Label.termContent15: """
  １ 当社は、本サイトの内容をいつでも変更できるものとします。

  ２ 当社がアプリの内容を変更した場合、ユーザーが変更後のアプリをインストールするまでの間、本サービスの全部又は一部を利用できない場合があり、ユーザーは自己の責任において、アプリのインストールを行うものとします。
  """,
  Label.termContent16: """
  １ ユーザーは、当社の書面による承諾がない限り、本利用規約上の地位又は本利用規約に基づき生ずる権利を第三者に譲渡し、担保に供し、その他の処分をすることはできません。

  ２ 当社は、ユーザーに事前に通知することなく、事業譲渡、合併、会社分割その他の法形式を問わず、本利用規約上の地位を第三者に承継することができるものとし、ユーザーは、予めこれに同意す
  
  ３ 前項の場合において、ユーザーは、当社が本利用規約に基づき生じた権利義務及びユーザーから提供された一切の情報を当該第三者に移転することについて、予めこれに同意するものとします。
  """,
  Label.termContent17: """
  １ 本サービスの提供に当たり、当社の責に帰すべき事由により、ユーザーに損害が生じた場合であっても、当社に故意又は重大な過失がない限り、当社は一切の責任を負わないものとします。

  ２ 本サービスの提供に当たり、当社の故意又は重大な過失によりユーザーに損害が生じ、当社が当該ユーザーに対して損害賠償責任を負う場合であっても、その損害賠償の対象となる損害は、当社の行為により直接かつ通常生ずべき積極損害に限るものとします。

  ３ 当社は、ユーザーに対して、本サイトがユーザーの利用端末及び使用環境において正確に動作すること、セキュリティーに関する欠陥・エラー・バグその他の瑕疵が存在しないことを保証するものではありません。
  """,
  Label.termContent18: """
  １ 本利用規約は、日本法に準拠し、これによって解釈するものとします。

  ２ 本サービスに関して紛争が生じた場合において、その裁判管轄は、事物管轄に応じて東京簡易裁判所又は東京地方裁判所を第一審の専属的合意管轄
  
  裁判所とします。

2022年7月1日制定

運営責任者 羽田和政
  """,

  /// U
  Label.userInformation: "飼い主情報",
  Label.userGuide: "ご利用ガイド",
  Label.unsubscribed: "退会手続き",
  Label.unseen: "未開封",

  Label.term: "利用規約 ",
  Label.twoAuthenVerify: "2段階認証",
  Label.twoAuthenVerifyContent:
      "しばらくアプリのご利用がなかったため、2段階認証を行います。登録されているメールアドレスにメールをお送りします。以下の「認証メール送信」をタップしてください。",
  Label.total: '合計',
  Label.totalPaymentAmount: 'お支払い金額合計',

  /// U
  Label.update: "この内容に更新する",

  Label.updatePassword: 'パスワードを更新',
  Label.userRegisterCompleteNote: "飼い主情報の登録が完了しました \n飼い主情報は後でマイページでも変更できます",

  /// V
  Label.veterinaryClinicRegisterAnnotationContent:
      "かかりつけ病院がまだない方、もしくはかかりつけ病院があるけれどORコードをもらっていない方は「動物病院を探すから動物病院を探してください",
  Label.visitMedicalTreatment: "来院診療",
  Label.variety: "品種",
  Label.version: "バージョン",
  Label.verifyConfirm: "認証確認",
  Label.verifyComplete: "認証完了",
  Label.verifyCompleteContent: "認証が完了しました。",
  Label.verifyToLogin: "認証が完了しました。ログイン画面からログインを行ってください。",
  Label.veterinaryClinicSuitYourPet: "ペットにあった\n動物病院を探そう",
  Label.veterinaryClinicSuitYourPetContent:
      "まずは全国からあなたのペットにぴった\nりの動物病院を検索して、かかりつけ医\nに登録しましょう。",
  Label.viewDetail: '詳細を見る',
  Label.viewOwnerInfo: "詳細を見る",

  /// X

  /// Y
  Label.yes: "有",
  Label.beautyYes: "有り",
  Label.yearsOld: "歳",
  Label.year: "年",

  /// W
  Label.whatIsSecurityCode: "セキュリティコードとは",
  Label.weight: "体重",
  Label.whatIsAnimaLove: "AnimaLoveとは",
  Label.whatIsAnimaLoveContent:
      "このアプリは、クリニックへ来院するこ\nとなく、ご自宅や外出先などお好きな場\n所で、スマホを使ってリモート診療や相\n談が受けられるアプリです。",
  Label.withdraw: "退会する",
  Label.withdrawNote:
      "アカウントを完全に削除してAnimaLoveを退会します。仮予約・確定予約が残っている可能性がありますが、本当によろしいですか？",

  /// Z
}.map((key, value) => MapEntry(key.text, value));
