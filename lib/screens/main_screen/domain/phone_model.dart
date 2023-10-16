class PhoneModel {
  final String name;
  final String photo;
  final String article;
  final int? price;

  PhoneModel(this.name, this.article, this.photo, this.price);

  static final List<PhoneModel> list = [
    PhoneModel(
        //From Red Store
        'Xiaomi Redmi K50 Gaming Edition',
        '6.67" дисплей с разрешением QHD+\nAndroid 12\n3 камеры SONY IMX686\nАккумулятор 4700 мАч\nПроцессор Qualcomm',
        'https://cdn-files.kimovil.com/default/0007/04/thumb_603204_default_big.jpg',
        450),
    PhoneModel(
        'Honor 60 SE',
        '6.67" дисплей с разрешением FHD+\nAndroid 11\n4 камеры CMOS\nАккумулятор 4800 мАч\nПроцессор MediaTek',
        'https://cdn-files.kimovil.com/default/0007/01/thumb_600265_default_big.jpg',
        345),
    PhoneModel(
        'Motorola Moto G Stylus 2022',
        '6.8" дисплей с разрешением FHD+\nAndroid 11\n3 камеры Samsung\nАккумулятор 5000 мАч\nПроцессор MediaTek',
        'https://cdn-files.kimovil.com/default/0007/01/thumb_600317_default_big.jpg',
        270),
    PhoneModel(
        'TCL 305',
        '6.52" дисплей с разрешением HD+\nAndroid 11\n3 камеры CMOS\nАккумулятор 5000 мАч\nПроцессор MediaTek',
        'https://cdn-files.kimovil.com/default/0006/96/thumb_595511_default_big.jpg',
        null),
    PhoneModel(
        'Huawei nova Y9a',
        '6.63" дисплей с разрешением FHD+\nAndroid 10\n4 камеры CMOS\nАккумулятор 4300 мАч\nПроцессор MediaTek',
        'https://cdn-files.kimovil.com/default/0007/73/thumb_672325_default_big.jpg',
        300),
    PhoneModel(
        'Infinix Zero 5G',
        '6.78" дисплей с разрешением FHD+\nAndroid 11\n3 камеры CMOS\nАккумулятор 5000 мАч\nПроцессор MediaTek',
        'https://cdn-files.kimovil.com/default/0007/99/thumb_698151_default_big.jpg',
        220),
    PhoneModel(
        'Realme 9 Pro Plus',
        '6.43" дисплей с разрешением FHD+\nAndroid 12\n3 камеры SONY IMX766\nАккумулятор 4500 мАч\nПроцессор MediaTek',
        'https://cdn-files.kimovil.com/default/0007/04/thumb_603117_default_big.jpg',
        510),
  ];
}
