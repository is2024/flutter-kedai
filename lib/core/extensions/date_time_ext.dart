extension DateTimeExt on DateTime {
  String toFormattedTime() {
    final List<String> monthNames = [
      'Januari',
      'Februari',
      'Maret',
      'April',
      'Mei',
      'Juni',
      'Juli',
      'Agustus',
      'September',
      'Oktober',
      'November',
      'Desember'
    ];

    final int hour12 = hour % 12;
    final String monthName = monthNames[month - 1];

    return '$day $monthName, ${hour12.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }
}
