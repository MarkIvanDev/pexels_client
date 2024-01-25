class Quota {
  final int? limit;
  final int? remaining;
  final int? reset;
  final DateTime date;

  const Quota({
    this.limit,
    this.remaining,
    this.reset,
    required this.date,
  });
}
