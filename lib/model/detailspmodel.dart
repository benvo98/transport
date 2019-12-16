class IFModel {
  String imageUrl;
  String name;
  String tenchuxe;
  String noio;
  String sdt;
  String loai;
  String trongluong;
  IFModel(
      {this.imageUrl,
      this.name,
      this.tenchuxe,
      this.noio,
      this.sdt,
      this.loai,
      this.trongluong});
}

final List<IFModel> listIFmodel = [
  IFModel(
      imageUrl: 'xe04.png',
      name: 'Xe chở hàng N.A',
      tenchuxe: 'Nhị Anh',
      noio: 'Quận 9',
      sdt: '0948819199',
      loai: 'Xe Cở lớn',
      trongluong: '10kg')
];
