import 'package:cloud_firestore/cloud_firestore.dart';

class Products {
  //Campos a utilizar
  final String name;
  final int prince;
  final String imgUrl;

  // Constructor
  Products({required this.name, required this.prince, required this.imgUrl});

  static Products fromSnapshot(DocumentSnapshot snap) {
    Products product = Products(
        name: snap['name'], prince: snap['prince'], imgUrl: snap['imgUrl']);
    return product;
  }

  /* static const List<Products> products = [
    Products(
        name: 'Zapato',
        prince: 65,
        imgUrl:
            'https://img.freepik.com/foto-gratis/zapatos-deportivos-correr_1203-7550.jpg?t=st=1651843921~exp=1651844521~hmac=d04235cc163e49335644c65a39237c3f416261a6ca996edefb1d5b1ff0d95a48&w=1380'),
    Products(
        name: 'Camisa',
        prince: 57,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-camiseta-negra_125540-430.jpg?t=st=1651852235~exp=1651852835~hmac=2e3fa7ef7146e1b3030b08a91600d456d90fdbbcab702f834f1b4d75705e9ff8&w=1380'),
    Products(
        name: 'Gorra',
        prince: 80,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-gorra-negra-aislada_125540-1039.jpg?t=st=1651853459~exp=1651854059~hmac=6faf1e636da3bf8b92dbd102fd6efc13842d2e89edc53fea9fc73d378fd1ae9d&w=1380'),
    Products(
        name: 'Pantalones',
        prince: 90,
        imgUrl:
            'https://img.freepik.com/foto-gratis/textura-tejanos-cualquier-fondo_1205-790.jpg?1&t=st=1651854676~exp=1651855276~hmac=88e55fd261b252b4ce71ec83442dd8eaf68bf9812e1daeaf7d16da9ebed03efa&w=1380'),
    Products(
        name: 'Zapatos',
        prince: 80,
        imgUrl:
            'https://img.freepik.com/foto-gratis/par-entrenadores_144627-3799.jpg?t=st=1651855070~exp=1651855670~hmac=64018966f907fa9e2748c088c1a5b36a76d775ed72ed1dbac45385f93c16deb7&w=996'),
    Products(
        name: 'Gorra',
        prince: 80,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-gorra-negra-aislada_125540-1039.jpg?t=st=1651853459~exp=1651854059~hmac=6faf1e636da3bf8b92dbd102fd6efc13842d2e89edc53fea9fc73d378fd1ae9d&w=1380'),
    Products(
        name: 'Gorra',
        prince: 80,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-gorra-negra-aislada_125540-1039.jpg?t=st=1651853459~exp=1651854059~hmac=6faf1e636da3bf8b92dbd102fd6efc13842d2e89edc53fea9fc73d378fd1ae9d&w=1380'),
    Products(
        name: 'Gorra',
        prince: 80,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-gorra-negra-aislada_125540-1039.jpg?t=st=1651853459~exp=1651854059~hmac=6faf1e636da3bf8b92dbd102fd6efc13842d2e89edc53fea9fc73d378fd1ae9d&w=1380'),
    Products(
        name: 'Gorra',
        prince: 80,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-gorra-negra-aislada_125540-1039.jpg?t=st=1651853459~exp=1651854059~hmac=6faf1e636da3bf8b92dbd102fd6efc13842d2e89edc53fea9fc73d378fd1ae9d&w=1380'),
    Products(
        name: 'Camisa',
        prince: 57,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-camiseta-negra_125540-430.jpg?t=st=1651852235~exp=1651852835~hmac=2e3fa7ef7146e1b3030b08a91600d456d90fdbbcab702f834f1b4d75705e9ff8&w=1380'),
    Products(
        name: 'Camisa',
        prince: 57,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-camiseta-negra_125540-430.jpg?t=st=1651852235~exp=1651852835~hmac=2e3fa7ef7146e1b3030b08a91600d456d90fdbbcab702f834f1b4d75705e9ff8&w=1380'),
    Products(
        name: 'Camisa',
        prince: 57,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-camiseta-negra_125540-430.jpg?t=st=1651852235~exp=1651852835~hmac=2e3fa7ef7146e1b3030b08a91600d456d90fdbbcab702f834f1b4d75705e9ff8&w=1380'),
    Products(
        name: 'Camisa',
        prince: 57,
        imgUrl:
            'https://img.freepik.com/psd-gratis/maqueta-camiseta-negra_125540-430.jpg?t=st=1651852235~exp=1651852835~hmac=2e3fa7ef7146e1b3030b08a91600d456d90fdbbcab702f834f1b4d75705e9ff8&w=1380'),
  ]; */
}
