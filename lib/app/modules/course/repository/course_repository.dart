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
    return _data
        .where((item) => item.name.contains(course) ? true : false)
        .toList();
  }

  @override
  void dispose() {}
}

get _data => [
      CourseModel(
          id: 1,
          name: "html",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:"https://bognarjunior.files.wordpress.com/2014/12/1417589451_html-256.png?w=256",
          category: "tech",
          price: "19,90"),
      CourseModel(
          id: 2,
          name: "html & css",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://images.typeform.com/images/C83jPM99Hh/image/default",
          category: "Tech",
          price: "19,90"),
      CourseModel(
          id: 3,
          name: "primeiros socorros",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://is3-ssl.mzstatic.com/image/thumb/Purple69/v4/d9/57/d5/d957d577-8fb4-e7a6-9ba6-8795f58445fe/source/256x256bb.jpg",
          category: "Saúde",
          price: "9,90"),
      CourseModel(
          id: 4,
          name: "blender",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlKY88jEHzxNBZX3r6kjkqIjdCDiJEWY8T6Q&usqp=CAU",
          category: "3D",
          price: "19,90"),
      CourseModel(
          id: 5,
          name: "photoshop",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image: "https://cdn.iconscout.com/icon/premium/png-256-thumb/adobe-photoshop-folder-1684667-1432140.png",
          category: "Design Gráfico",
          price: "39,90"),
      CourseModel(
          id: 6,
          name: "fotografia digital",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image: "https://cdn-sites-images.46graus.com/files/photos/c3a32d3b/23b07dc4-aec7-4ab8-bde4-c59552a74628/leticia-s-fotografia-4982-256x256.jpg",
          category: "Fotografia",
          price: "19,90"),
      CourseModel(
          id: 7,
          name: "corel draw",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/57b1fc6b1f80bcc4b58b",
          category: "Design",
          price: "19,90"),
      CourseModel(
          id: 8,
          name: "fast MBA",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image:
              "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_256,h_256/https://appmarketing.com.br/wp-content/uploads/2020/05/BusinessmenShakingHandsEdited-256x256.jpg",
          category: "Design",
          price: "79,90"),
      CourseModel(
          id: 9,
          name: "gestão agil",
          description:
              "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.",
          image: "https://myscrumhalf.com/lp/wp-content/uploads/2019/08/AcompMetas-Icon.png?x43807",
          category: "Negócios",
          price: "49,90"),
    ];
