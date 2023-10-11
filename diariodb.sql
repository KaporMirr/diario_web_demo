-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2023 a las 17:59:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diariodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `id_noticia` int(20) NOT NULL,
  `id_usuario` int(20) NOT NULL,
  `titulo` text NOT NULL,
  `copete` text NOT NULL,
  `cuerpo` text NOT NULL,
  `imagen` text NOT NULL,
  `fecha` date NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `news`
--

INSERT INTO `news` (`id_noticia`, `id_usuario`, `titulo`, `copete`, `cuerpo`, `imagen`, `fecha`, `categoria`) VALUES
(6, 1, 'Logística colaborativa es el futuro', 'Entre 2023 y 2029 la colaboración en logística marcara una nueva tendencia global', '                                        El año pasado la <b>CEPAL</b> en su informe número 56 hizo énfasis en la necesidad de impulsar y adaptar las economías regionales hacia la colaboración, principalmente en materia logística.\r\n\r\nEsto significaría una optimización sustancial tanto en costos como en otras variables que afectan el desempeño logístico. El objetivo es mejorar el desempeño global de la región y ser un fuerte competidor a nivel global, haciendo a las grandes empresas un lugar atractivo para formar clusters logísticos y establecer centros de distribución bien preparados en toda la región. Modificado                ', '1695738406-cd3.jpeg', '2023-09-26', 'Negocios'),
(7, 1, 'Descubren nueva especie de mariposa en la selva amazónica.', 'Científicos sorprendidos por el hallazgo de una hermosa mariposa de colores vivos.', 'Las mariposas monarca son conocidas por su larga migración hacia el sur durante el invierno. Atravesando miles de kilómetros, estas frágiles criaturas desafían todas las probabilidades para llegar a su destino en los bosques de oyamel del estado de Michoacán, México. Allí, se agrupan en grandes colonias, cubriendo los árboles con un manto naranja y negro vibrante.\r\n\r\nEste fenómeno no solo es una maravilla visual, sino también un testimonio de la resistencia y la adaptabilidad de la naturaleza. A pesar de su pequeño tamaño y su apariencia delicada, las mariposas monarca demuestran una increíble determinación en su lucha por sobrevivir y perpetuar su especie.\r\n\r\nEste año, como siempre, esperamos con anticipación el regreso de estas elegantes criaturas al sur de México, donde nos recuerdan la belleza y la importancia de la vida en nuestro planeta.\r\n\r\n¡Las mariposas monarca son un verdadero tesoro de la naturaleza que merece nuestro respeto y protección!', '1695750964-mariposa.jpg', '2023-09-26', 'Ciencia'),
(9, 2, 'Descubren una Ciudad Submarina Oculta en el Amazona', 'Un equipo de científicos ha hecho un asombroso descubrimiento en lo profundo del Amazonas que podría cambiar la historia de la humanidad para siempre.', '<p style=\\\"font-family: var(--font-roboto);\\\">Sin embargo, después de una inspección más cercana, resultó ser solo un pueblo sumergido de pescadores que había sido inundado debido a las fuertes lluvias de la temporada.</p><p style=\\\"font-family: var(--font-roboto);\\\">Aunque inicialmente se pensó que podría tratarse de una antigua civilización perdida, los arqueólogos confirmaron que las estructuras submarinas&nbsp;<span style=\\\"font-weight: bolder;\\\">eran simplemente chozas de pescadores abandonadas.</span></p><p style=\\\"font-family: var(--font-roboto);\\\">La emoción inicial se desvaneció rápidamente, dejando a los científicos con la sensación de haberse emocionado demasiado pronto.</p>', '1696088086-atlantid.jpg', '2023-09-28', 'Ciencia'),
(10, 3, 'El Revolucionario Nanorobot de Limpieza: Un Avance Tecnológico Sorprendente', 'En un mundo donde la tecnología avanza a pasos agigantados, una nueva invención promete cambiar la forma en que mantenemos nuestro entorno limpio y saludable. Descubre cómo el nanorobot de limpieza está dando un giro de 180 grados a la manera en que enfrentamos la suciedad y los desafíos cotidianos.', '                                                                                <span style=\"background-color: var(--bs-body-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">En el fascinante campo de la </span><b style=\"background-color: var(--bs-body-bg); font-size: var(--bs-body-font-size); text-align: var(--bs-body-text-align);\">tecnología</b><span style=\"background-color: var(--bs-body-bg); font-size: var(--bs-body-font-size); font-weight: var(--bs-body-font-weight); text-align: var(--bs-body-text-align);\">, cada día nos sorprendemos con innovaciones que desafían nuestros conceptos convencionales de lo que es posible. En esta ocasión, presentamos el nanorobot de limpieza, una invención que podría revolucionar la forma en que mantenemos nuestros hogares y entornos limpios y saludables.</span><p>Los científicos e ingenieros detrás de esta sorprendente creación han desarrollado un diminuto robot <b>del tamaño de una partícula de polvo</b>, pero con una capacidad de limpieza que supera ampliamente a cualquier aspiradora o trapeador convencional. El nanorobot de limpieza utiliza una combinación de tecnologías avanzadas, como la nanotecnología y la inteligencia artificial, para llevar a cabo sus tareas de manera eficiente y precisa.</p><h4><span style=\"\\\"\\\\\"font-family:\\\"\" roboto,=\"\\\"\\\"\" sans-serif;=\"\\\"\\\"\" font-size:=\"\\\"\\\"\" 16px;\\\\\\\"=\"\\\"\\\"\"><b>Utiliza algoritmos de aprendizaje automático</b></span></h4><p>Una de las características más notables de este nanorobot es su capacidad para navegar por superficies complejas, como pisos, alfombras y muebles, sin problemas. Equipado con sensores de alta precisión, el nanorobot detecta la suciedad y las partículas no deseadas con una precisión asombrosa. Utiliza algoritmos de aprendizaje automático para adaptarse a su entorno y optimizar su ruta de limpieza.</p><p>Pero lo que hace que este nanorobot sea aún más sorprendente es su capacidad para eliminar no solo la suciedad visible, sino también las partículas microscópicas y los alérgenos que a menudo pasan desapercibidos. Gracias a su capacidad para detectar y eliminar alérgenos, el nanorobot de limpieza puede contribuir significativamente a mejorar la calidad del aire en nuestros hogares, lo que es especialmente beneficioso para las personas con alergias respiratorias.</p><p>Además de su capacidad de limpieza, el nanorobot también es respetuoso con el medio ambiente. Funciona con baterías recargables de larga duración y utiliza materiales sostenibles en su construcción. Esto lo convierte en una opción amigable con el planeta para mantener nuestros espacios limpios y saludables.</p><p>En resumen, el nanorobot de limpieza es un ejemplo sobresaliente de cómo la tecnología puede transformar nuestras vidas para mejor. A medida que esta invención continúa desarrollándose y perfeccionándose, podríamos estar un paso más cerca de vivir en un mundo donde la limpieza y la higiene sean más accesibles y eficientes que nunca. Con el nanorobot de limpieza, el futuro de la limpieza del hogar nunca había sido tan emocionante.</p>                                                                ', '1696126763-nanobot.jpg', '2023-09-30', 'Tecnologia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(20) NOT NULL,
  `id_usuario` int(20) NOT NULL,
  `titulo` text NOT NULL,
  `copete` text NOT NULL,
  `cuerpo` text NOT NULL,
  `imagen` text NOT NULL,
  `fecha` date NOT NULL,
  `categoria` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL DEFAULT '',
  `apellido` varchar(30) NOT NULL DEFAULT '',
  `usuario` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `rol` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tabla usuarios de DiarioDB';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `password`, `rol`) VALUES
(1, 'Gustavo', 'Lafuente', 'guillermo', 'guE1pk/6waGK2', 'admin'),
(2, 'Juan Pablo', 'Esparza', 'jesparza', 'je/uzbopOIBiQ', 'admin'),
(3, 'Juan Carlos', 'Quinto', 'carlos', 'caJRSsktQUB1I', 'autor'),
(8, 'Guido', 'Van Rossum', 'Pitonic', 'PiMa.GcZtc9C.', 'autor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `id_noticia` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
