extension EnumX on Enum {
  String get text => this.toString().split('.').last;
}
