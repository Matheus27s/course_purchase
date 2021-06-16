import 'package:course_purchase/app/modules/course/model/course_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';

class CourseRepository extends Disposable {
  final Dio dio;
  CourseRepository(this.dio);

  Future<List<CourseModel>> coursesList() async {
    return _data;
  }

  List<CourseModel> coursesListLike({course}) {
    return _data.where((item) => item.name.startsWith(course) ? true : false).toList();
  }

  @override
  void dispose() {}
}

get _data => [
      CourseModel(
          id: 1,
          name: "aaa",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png",
          category: "Matemática básica",
          price: "19,90"),
      CourseModel(
          id: 2,
          name: "aaaa",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png",
          category: "Matemática básica",
          price: "19,90"),
      CourseModel(
          id: 3,
          name: "bbb",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png",
          category: "Matemática básica",
          price: "19,90"),
      CourseModel(
          id: 4,
          name: "cccc",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png",
          category: "Matemática básica",
          price: "19,90"),
    ];
