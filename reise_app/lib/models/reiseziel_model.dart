class ReisezielModel {
  final String titel;
  final String untertitel;
  final String imagePath;
  final String alterPreis;
  final String neuerPreis;
  final String beschreibung;
  final int sterne;

  ReisezielModel({
    required this.titel,
    required this.untertitel,
    required this.imagePath,
    this.alterPreis = '199',
    this.neuerPreis = '145',
    required this.beschreibung,
    required this.sterne,
  });
}
