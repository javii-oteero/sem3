import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  const CardSwiper({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      padding: const EdgeInsets.only(top: 10),
      child: Swiper(
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'details', arguments: '');
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),  // Bordes redondeados
              child: const FadeInImage(
                placeholder: AssetImage('assets/placeholder.png'),  // Placeholder (imagen de carga)
                image: AssetImage('assets/placeholder.png'),  // Imagen que se carga
                fit: BoxFit.fill,  // Ajustar la imagen para llenar el contenedor
              ),
            ),
          );
        },
        itemCount: 10,  // Número de tarjetas
        layout: SwiperLayout.STACK,  // Usar el diseño de apilamiento
        itemWidth: size.width * 0.6,  // Ancho del 70% de la pantalla
        itemHeight: size.height * 0.6,  // Altura del 60% de la pantalla
        pagination: const SwiperPagination(),  // Agrega paginación si deseas
        control: const SwiperControl(),  // Agrega controles para navegar
      ),
    );
  }
}
