import 'package:cachcach/core/extensions/datetime_extensions.dart';
import 'package:intl/intl.dart';
import '../languages/label.dart';

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

enum VerifySmsFlow {
  Register,
  ForgotPassword,
  TwoAuthen,
  Login,
  ChangeEmail,
  ResetPassword
}

extension VerifySmsFlowX on VerifySmsFlow {
  String get text {
    switch (this) {
      case VerifySmsFlow.Register:
        return 'register';
      case VerifySmsFlow.ForgotPassword:
        return 'forgot-password';
      case VerifySmsFlow.Login:
        return 'login';
      case VerifySmsFlow.TwoAuthen:
        return 'two-authen';
      case VerifySmsFlow.ChangeEmail:
        return 'change-email';
      case VerifySmsFlow.ResetPassword:
        return 'reset-password';
    }
  }
}

int get maxLengthTextField => 255;
int get maxLengthPasswordTextField => 30;

enum MenuType {
  Pet,
  HistoricalExamination,
  MedicalDetail,
  Notification,
  Review,
  Chat,
  Supporter,
  UserManual,
  ContactAdmin,
  Charity,
  ActivityIntro,
  QA,
}

enum HealthCheckService {
  menu,
  remoteCheck,
  normalCheck,
  homeCheck,
  periodic,
  remoteConsultation,
  chatConsultation,
}

extension HealthCheckServiceX on HealthCheckService {
  String get label {
    switch (this) {
      case HealthCheckService.remoteCheck:
        return Label.remoteCheck.tr;
      case HealthCheckService.normalCheck:
        return Label.normalCheck.tr;
      case HealthCheckService.homeCheck:
        return Label.homeCheck.tr;
      case HealthCheckService.periodic:
        return Label.periodicCheck.tr;
      case HealthCheckService.remoteConsultation:
        return Label.remoteConsultation.tr;
      case HealthCheckService.chatConsultation:
        return Label.chatConsultation.tr;
      default:
        return '';
    }
  }

  String get scheduleLabel {
    if (this == HealthCheckService.normalCheck) return label;
    return '$label予約';
  }

  int get value {
    switch (this) {
      case HealthCheckService.remoteCheck:
        return 1;
      case HealthCheckService.normalCheck:
        return 4;
      case HealthCheckService.homeCheck:
        return 3;
      case HealthCheckService.periodic:
        return 5;
      case HealthCheckService.remoteConsultation:
        return 2;
      case HealthCheckService.chatConsultation:
        return 6;
      default:
        return -1;
    }
  }

  bool get isCheck {
    if (this == HealthCheckService.homeCheck) return true;
    if (this == HealthCheckService.normalCheck) return true;
    if (this == HealthCheckService.remoteCheck) return true;
    return false;
  }

  bool get isConsultation {
    if (this == HealthCheckService.remoteConsultation) return true;
    if (this == HealthCheckService.chatConsultation) return true;
    return false;
  }

  bool get isPeriodic => this == HealthCheckService.periodic;

  bool get isNormal => this == HealthCheckService.normalCheck;

  String get mediaMsg {
    switch (this) {
      case HealthCheckService.remoteCheck:
        return Label.lbRemoteCheckInterviewMediaMsg.tr;
      case HealthCheckService.normalCheck:
        return Label.lbNormalCheckInterviewMediaMsg.tr;
      case HealthCheckService.homeCheck:
        return Label.lbHomeCheckInterviewMediaMsg.tr;
      case HealthCheckService.periodic:
        return Label.lbPeriodicInterviewMediaMsg.tr;
      case HealthCheckService.remoteConsultation:
        return Label.lbRemoteConsultationInterviewMediaMsg.tr;
      case HealthCheckService.chatConsultation:
        return Label.lbChatConsultationInterviewMediaMsg.tr;
      default:
        return '';
    }
  }

  String get mediaNote {
    switch (this) {
      case HealthCheckService.remoteCheck:
        return Label.lbRemoteCheckInterviewMediaNote.tr;
      case HealthCheckService.normalCheck:
        return Label.lbNormalCheckInterviewMediaNote.tr;
      case HealthCheckService.homeCheck:
        return Label.lbHomeCheckInterviewMediaNote.tr;
      case HealthCheckService.periodic:
        return Label.lbPeriodicInterviewMediaNote.tr;
      case HealthCheckService.remoteConsultation:
        return Label.lbRemoteConsultationInterviewMediaNote.tr;
      case HealthCheckService.chatConsultation:
        return Label.lbChatConsultationInterviewMediaNote.tr;
      default:
        return '';
    }
  }
}

enum Species { dog, cat, other }

extension SpeciesX on Species {
  String get label {
    switch (this) {
      case Species.dog:
        return Label.dog.tr;
      case Species.cat:
        return Label.cat.tr;
      case Species.other:
        return Label.otherBreed.tr;
    }
  }
}

enum InterviewType {
  topic,
  topicContent,
  symptom,
  symptomTime,
  other,
  note,
  media,
}

extension InterviewX on InterviewType {
  String get question {
    switch (this) {
      case InterviewType.topic:
        return Label.lbInterviewTopicQuestion.tr;
      case InterviewType.topicContent:
        return Label.lbInterviewTopicContentQuestion.tr;
      case InterviewType.symptom:
        return Label.lbInterviewSymptomQuestion.tr;
      case InterviewType.symptomTime:
        return Label.lbInterviewSymptomTimeQuestion.tr;
      case InterviewType.other:
        return Label.lbInterviewOtherQuestion.tr;
      case InterviewType.note:
        return Label.lbInterviewNoteQuestion.tr;
      case InterviewType.media:
        return Label.lbInterviewMediaQuestion.tr;
    }
  }

  String get title {
    var suffix = '';
    bool isOptional = [
      InterviewType.other,
      InterviewType.media,
    ].contains(this);

    if (isOptional) suffix = '（${Label.optional.tr}）';

    return question + suffix;
  }
}

enum ReviewStatus { reviewed, unReview }

extension ReviewStatusX on ReviewStatus {
  int get value {
    switch (this) {
      case ReviewStatus.reviewed:
        return 1;
      case ReviewStatus.unReview:
        return 0;
    }
  }
}

enum ReservationStatus { accepted, pending, cancel, rejected }

extension ReservationStatusX on ReservationStatus? {
  String? get value {
    switch (this) {
      case ReservationStatus.accepted:
        return 'accepted';
      case ReservationStatus.cancel:
        return 'cancel';
      case ReservationStatus.rejected:
        return 'rejected';
      case ReservationStatus.pending:
        return 'pending';
      default:
        return null;
    }
  }
}

enum MedicalHistoryStatus { done, paid, accepted, pending }

enum PaymentStatus { none, success, inProgress, fail }

extension PaymentStatusX on PaymentStatus {
  String? get value {
    switch (this) {
      case PaymentStatus.success:
        return 'success';
      case PaymentStatus.inProgress:
        return 'inProgress';
      case PaymentStatus.fail:
        return 'fail';
      default:
        return '';
    }
  }

  String get label {
    switch (this) {
      case PaymentStatus.success:
        return '';

      case PaymentStatus.inProgress:
        return Label.lbProcessing.tr;

      case PaymentStatus.fail:
        return '決済中にエラーが発生しました。';

      default:
        return Label.lbNeedPayment.tr;
    }
  }

  bool get isSuccess => this == PaymentStatus.success;

  bool get isInprogress => this == PaymentStatus.inProgress;
}

class PaymentService {
  static const String empty = "empty";
  static const String creditCard = "creditCard";
  static const String transferBank = "transferBank";
  static const String deferred = "deferred";
}

class PaymentScreenState {
  static const String fromMyPage = "fromMyPage";
  static const String fromBill = "fromBill";
  static const String fromAuth = "fromAuth";
}

enum Gender {
  MALE,
  FEMALE,
  OTHER,
}

extension GenderX on Gender {
  String get text {
    switch (this) {
      case Gender.FEMALE:
        return Label.female.tr;
      case Gender.MALE:
        return Label.male.tr;
      case Gender.OTHER:
        return Label.other.tr;
    }
  }

  String get code {
    switch (this) {
      case Gender.FEMALE:
        return "F";
      case Gender.MALE:
        return "M";
      case Gender.OTHER:
        return "O";
    }
  }

  String get jpText {
    switch (this.code) {
      case "F":
        return Label.female.tr;
      case "M":
        return Label.male.tr;
      case "O":
        return Label.other.tr;
      default:
        return "";
    }
  }

  Gender convertToGender(String code) {
    switch (code) {
      case "F":
        return Gender.FEMALE;
      case "M":
        return Gender.MALE;
      default:
        return Gender.OTHER;
    }
  }

  String get textPet {
    switch (this) {
      case Gender.FEMALE:
        return Label.petFemale.tr;
      case Gender.MALE:
        return Label.petMale.tr;
      case Gender.OTHER:
        return Label.petOther.tr;
    }
  }
}

enum StepRegisterState {
  Init,
  User,
  Pet,
  Payment,
}

extension StepRegisterStateX on StepRegisterState {
  String get text {
    switch (this) {
      case StepRegisterState.Init:
        return 'init';
      case StepRegisterState.Payment:
        return 'payment';
      case StepRegisterState.Pet:
        return 'pet';
      case StepRegisterState.User:
        return 'petOwner';
    }
  }
}

extension StepRegisterString on String? {
  StepRegisterState? get registerStep {
    switch (this) {
      case 'init':
        return StepRegisterState.Init;
      case 'payment':
        return StepRegisterState.Payment;
      case 'pet':
        return StepRegisterState.Pet;
      case 'petOwner':
        return StepRegisterState.User;
      default:
        return null;
    }
  }
}

enum PetFosterPlace {
  INSIDE,
  OUTSIDE,
}

extension PetFosterPlaceX on PetFosterPlace {
  int get id {
    switch (this) {
      case PetFosterPlace.INSIDE:
        return 1;
      case PetFosterPlace.OUTSIDE:
        return 2;
    }
  }

  String get text {
    switch (this) {
      case PetFosterPlace.INSIDE:
        return Label.inside.tr;
      case PetFosterPlace.OUTSIDE:
        return Label.outside.tr;
    }
  }
}

enum PetContraception {
  DOG_CAT_YES,
  DOG_CAT_NO,
  DOG_CAT_DO_NOT_KNOW,
  SMALL_ANIMAL_YES,
  SMALL_ANIMAL_NO,
  SMALL_ANIMAL_DO_NOT_KNOW,
}

extension PetContraceptionX on PetContraception {
  int get id {
    switch (this) {
      case PetContraception.DOG_CAT_YES:
        return 1;
      case PetContraception.DOG_CAT_NO:
        return 2;
      case PetContraception.DOG_CAT_DO_NOT_KNOW:
        return 3;
      case PetContraception.SMALL_ANIMAL_YES:
        return 4;
      case PetContraception.SMALL_ANIMAL_NO:
        return 5;
      case PetContraception.SMALL_ANIMAL_DO_NOT_KNOW:
        return 6;
    }
  }

  String get text {
    switch (this) {
      case PetContraception.DOG_CAT_YES:
        return Label.dogCatContraceptionYes.tr;
      case PetContraception.DOG_CAT_NO:
        return Label.dogCatContraceptionNo.tr;
      case PetContraception.DOG_CAT_DO_NOT_KNOW:
        return Label.dogCatContraceptionNotKnow.tr;
      case PetContraception.SMALL_ANIMAL_YES:
        return Label.smallAnimalContraceptionYes.tr;
      case PetContraception.SMALL_ANIMAL_NO:
        return Label.smallAnimalContraceptionNo.tr;
      case PetContraception.SMALL_ANIMAL_DO_NOT_KNOW:
        return Label.smallAnimalContraceptionNotKnow.tr;
    }
  }
}

enum PetSize {
  DOG_CAT,
  DOG_CAT_SMALL_THIN,
  DOG_CAT_SMALL_NORMAL,
  DOG_CAT_SMALL_THICK,
  DOG_CAT_MEDIUM_THIN,
  DOG_CAT_MEDIUM_NORMAL,
  DOG_CAT_MEDIUM_THICK,
  DOG_CAT_LARGE_THIN,
  DOG_CAT_LARGE_NORMAL,
  DOG_CAT_LARGE_THICK,
  DOG_CAT_NOT_KNOW,
  SMALL_ANIMAL,
  SMALL_ANIMAL_SMALL_THAN_STANDARD,
  SMALL_ANIMAL_STANDARD,
  SMALL_ANIMAL_LARGER_THAN_STANDARD,
  SMALL_ANIMAL_NOT_KNOW,
}

extension PetSizeX on PetSize {
  String get text {
    switch (this) {
      case PetSize.DOG_CAT_SMALL_THIN:
        return Label.dogCatSmallThin.tr;
      case PetSize.DOG_CAT_SMALL_NORMAL:
        return Label.dogCatSmallNormal.tr;
      case PetSize.DOG_CAT_SMALL_THICK:
        return Label.dogCatSmallThick.tr;
      case PetSize.DOG_CAT_MEDIUM_THIN:
        return Label.dogCatMediumThin.tr;
      case PetSize.DOG_CAT_MEDIUM_NORMAL:
        return Label.dogCatMediumNormal.tr;
      case PetSize.DOG_CAT_MEDIUM_THICK:
        return Label.dogCatMediumThick.tr;
      case PetSize.DOG_CAT_LARGE_THIN:
        return Label.dogCatLargeThin.tr;
      case PetSize.DOG_CAT_LARGE_NORMAL:
        return Label.dogCatLargeNormal.tr;
      case PetSize.DOG_CAT_LARGE_THICK:
        return Label.dogCatLargeThick.tr;
      case PetSize.DOG_CAT_NOT_KNOW:
        return Label.dogCatNotKnow.tr;
      case PetSize.SMALL_ANIMAL_SMALL_THAN_STANDARD:
        return Label.smallAnimalSmaller.tr;
      case PetSize.SMALL_ANIMAL_STANDARD:
        return Label.smallAnimalStandard.tr;
      case PetSize.SMALL_ANIMAL_LARGER_THAN_STANDARD:
        return Label.smallAnimalLarger.tr;
      case PetSize.SMALL_ANIMAL_NOT_KNOW:
        return Label.smallAnimalNotKnow.tr;
      case PetSize.DOG_CAT:
        return Label.dogCat.tr;
      case PetSize.SMALL_ANIMAL:
        return Label.smallAnimal.tr;
    }
  }

  int get id {
    switch (this) {
      case PetSize.DOG_CAT_SMALL_THIN:
        return 1;
      case PetSize.DOG_CAT_SMALL_NORMAL:
        return 2;
      case PetSize.DOG_CAT_SMALL_THICK:
        return 3;
      case PetSize.DOG_CAT_MEDIUM_THIN:
        return 4;
      case PetSize.DOG_CAT_MEDIUM_NORMAL:
        return 5;
      case PetSize.DOG_CAT_MEDIUM_THICK:
        return 6;
      case PetSize.DOG_CAT_LARGE_THIN:
        return 7;
      case PetSize.DOG_CAT_LARGE_NORMAL:
        return 8;
      case PetSize.DOG_CAT_LARGE_THICK:
        return 9;
      case PetSize.DOG_CAT_NOT_KNOW:
        return 10;
      case PetSize.SMALL_ANIMAL_SMALL_THAN_STANDARD:
        return 11;
      case PetSize.SMALL_ANIMAL_STANDARD:
        return 12;
      case PetSize.SMALL_ANIMAL_LARGER_THAN_STANDARD:
        return 13;
      case PetSize.SMALL_ANIMAL_NOT_KNOW:
        return 14;
      case PetSize.DOG_CAT:
        return -1;
      case PetSize.SMALL_ANIMAL:
        return -1;
    }
  }
}

enum PetVaccine {
  YES,
  NO,
}

extension PetVaccineX on PetVaccine {
  int get id {
    switch (this) {
      case PetVaccine.YES:
        return 1;
      case PetVaccine.NO:
        return 0;
    }
  }

  String get text {
    switch (this) {
      case PetVaccine.YES:
        return Label.yes.tr;
      case PetVaccine.NO:
        return Label.no.tr;
    }
  }
}

List<PetSize> listPetSize = [
  PetSize.DOG_CAT,
  PetSize.DOG_CAT_SMALL_THIN,
  PetSize.DOG_CAT_SMALL_NORMAL,
  PetSize.DOG_CAT_SMALL_THICK,
  PetSize.DOG_CAT_MEDIUM_THIN,
  PetSize.DOG_CAT_MEDIUM_NORMAL,
  PetSize.DOG_CAT_MEDIUM_THICK,
  PetSize.DOG_CAT_LARGE_THIN,
  PetSize.DOG_CAT_LARGE_NORMAL,
  PetSize.DOG_CAT_LARGE_THICK,
  PetSize.DOG_CAT_NOT_KNOW,
  PetSize.SMALL_ANIMAL,
  PetSize.SMALL_ANIMAL_SMALL_THAN_STANDARD,
  PetSize.SMALL_ANIMAL_STANDARD,
  PetSize.SMALL_ANIMAL_LARGER_THAN_STANDARD,
  PetSize.SMALL_ANIMAL_NOT_KNOW,
];

List<PetFosterPlace> listPetFoster = [
  PetFosterPlace.OUTSIDE,
  PetFosterPlace.INSIDE,
];

List<PetVaccine> listVaccineInfo = [
  PetVaccine.YES,
  PetVaccine.NO,
];

List<PetContraception> listHadContraception = [
  PetContraception.DOG_CAT_YES,
  PetContraception.DOG_CAT_NO,
  PetContraception.DOG_CAT_DO_NOT_KNOW,
  PetContraception.SMALL_ANIMAL_YES,
  PetContraception.SMALL_ANIMAL_NO,
  PetContraception.SMALL_ANIMAL_DO_NOT_KNOW,
];

DateTime? formatDate(String? dateInput) {
  DateTime? tempDate;
  if (dateInput != null) {
    tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(dateInput);
  } else {
    tempDate = null;
  }
  return tempDate;
}

String formatExpireDate(String? date) {
  if (date == null) return "";
  DateTime tempDate = new DateFormat("yyyy-MM-dd-HH-mm-ss").parse(date);
  return tempDate.format("yyyy-MM-dd HH:mm:ss", 'ja_JP');
}

int getAge(String? birthDay) {
  if (birthDay == null) return 0;
  DateTime? tempDate;
  DateFormat dateFormat = new DateFormat("yyyy-MM-dd");
  try {
    tempDate = dateFormat.parse(birthDay);
  } catch (e) {
    print(e);
  }
  if (tempDate == null) return 0;

  int currentYear = DateTime.now().year;
  int petYear = tempDate.year;
  int age = currentYear - petYear;
  if (currentYear == petYear) return 1;
  return age;
}

String healthCheckServiceType(int typeService) {
  switch (typeService) {
    case 1:
      return HealthCheckService.remoteCheck.label;
    case 4:
      return HealthCheckService.normalCheck.label;
    case 3:
      return HealthCheckService.homeCheck.label;
    case 5:
      return HealthCheckService.periodic.label;
    case 2:
      return HealthCheckService.remoteConsultation.label;
    case 6:
      return HealthCheckService.chatConsultation.label;
    default:
      return "";
  }
}

class PickMedia {
  static const String formCamera = "camera";
  static const String fromGallery = "gallery";
  static const String fromFile = "file";
}

class SessionItemType {
  static const String typeButton = "type-button";
  static const String typeView = "type-view";
}

enum ChatStatus { active, inActive }

extension ChatStatusX on ChatStatus {
  int get value {
    switch (this) {
      case ChatStatus.active:
        return 1;
      case ChatStatus.inActive:
        return 2;
    }
  }
}

enum PaymentType { creditCard, deferred, transferBank, none }

extension PaymentTypeX on PaymentType {
  String get type {
    switch (this) {
      case PaymentType.creditCard:
        return "creditCard";
      case PaymentType.transferBank:
        return "transferBank";
      case PaymentType.deferred:
        return "deferred";
      default:
        return "";
    }
  }

  String get text {
    switch (this) {
      case PaymentType.creditCard:
        return Label.creditCard.tr;
      case PaymentType.transferBank:
        return "transferBank";
      case PaymentType.deferred:
        return "deferred";
      default:
        return "";
    }
  }
}

enum SourceTable { petOwner, hospital }

extension SourceTableX on SourceTable {
  String get value {
    switch (this) {
      case SourceTable.petOwner:
        return "App\\Models\\PetOwner";
      case SourceTable.hospital:
        return "App\\Models\\Hospital";
    }
  }
}

enum AddFavoriteHospitalSource { searchHospital, qr, favoriteHospital }

enum AddressType {
  HOUSE,
  APARTMENT,
}

extension AddressTypeX on AddressType {
  int get id {
    switch (this) {
      case AddressType.HOUSE:
        return 1;
      case AddressType.APARTMENT:
        return 2;
    }
  }

  String get text {
    switch (this) {
      case AddressType.HOUSE:
        return Label.addressTypeHouse.tr;
      case AddressType.APARTMENT:
        return Label.addressTypeApartment.tr;
    }
  }
}

String getAddressTypeText(int addressType) {
  switch (addressType) {
    case 1:
      return Label.addressTypeHouse.tr;
    case 2:
      return Label.addressTypeApartment.tr;
    default:
      return "";
  }
}

const List<String> acceptedImageType = [
  'jpeg',
  'JPEG',
  'jpg',
  'JPG',
  'png',
  'PNG',
];
