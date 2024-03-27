class TimeZoneInfo {
  final String abbreviation;
  final String clientIp;
  final String dateTime;
  final int dayOfWeek;
  final int dayOfYear;
  final bool dst;
  final dynamic dstFrom;
  final int dstOffset;
  final dynamic dstUntil;
  final int rawOffset;
  final String timezone;
  final int unixtime;
  final String utcDatetime;
  final String utcOffset;
  final int weekNumber;

  TimeZoneInfo({
    required this.abbreviation,
    required this.clientIp,
    required this.dateTime,
    required this.dayOfWeek,
    required this.dayOfYear,
    required this.dst,
    required this.dstFrom,
    required this.dstOffset,
    required this.dstUntil,
    required this.rawOffset,
    required this.timezone,
    required this.unixtime,
    required this.utcDatetime,
    required this.utcOffset,
    required this.weekNumber,
  });

  factory TimeZoneInfo.fromJson(Map<String, dynamic> json) {
    return TimeZoneInfo(
      abbreviation: json['abbreviation'],
      clientIp: json['client_ip'],
      dateTime: json['datetime'],
      dayOfWeek: json['day_of_week'],
      dayOfYear: json['day_of_year'],
      dst: json['dst'],
      dstFrom: json['dst_from'],
      dstOffset: json['dst_offset'],
      dstUntil: json['dst_until'],
      rawOffset: json['raw_offset'],
      timezone: json['timezone'],
      unixtime: json['unixtime'],
      utcDatetime: json['utc_datetime'],
      utcOffset: json['utc_offset'],
      weekNumber: json['week_number'],
    );
  }
}
