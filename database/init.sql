--Script inicial

create sequence public.id_cat_book_seq increment by 1 minvalue 1 maxvalue 9223372036854775807 start 100 cache 1 no cycle;

create table public.cat_book ( 
id_book serial not null,
ds_title varchar(64) null,
ds_author varchar(64) null,
tx_synopsis text null,
ds_img varchar(255) null,
constraint cat_book_id_key unique (id_book),
constraint cat_book_pkey primary key (id_book));

insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (1, 'La montaña mágica', 'Thomas Mann', 'El Premio Nobel de Literatura Thomas Mann escribe con maestría una historia, la del joven Hans Castorp, que va de visita por tres semanas al sanatorio de tuberculosos Berghof, y que acaba pasando allí siete años. La enfermedad, la muerte, la juventud frente a la vejez o el paso del tiempo son solo algunos de los temas que aborda esta obra magistral de Mann que se ha convertido en una de las mejores novelas del siglo XX.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/la-montan-a-ma-gica-1622472888.jpeg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (2, 'Dune', 'Frank Herbert', 'Frank Herbert compuso en 1965 una obra sensacional, una verdadera epopeya en la que, no te vamos a engañar, te va a costar un poco entrar hasta que te sitúes en quiénes son los Atreides, los Harkonen, las Bene Gesserit. Una vez dentro, es una fantasía magnífica protagonizada por Paul Atreides, que tiene que escapar hacia el desierto cuando traicionan a su padre. Allí quedará bajo el cobijo del pueblo Fremen, capaces de cabalgar sobre los gusanos que viven en las arenas de Dune. Una maravilla.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dune-1619097442.jpeg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (3, 'Las uvas de la ira', 'John Steinbeck', 'Uno de los hitos de la literatura estadounidense, ganadora en su día del premio Pulitzer; un maravilloso y doliente retrato de la sociedad americana en la Gran Depresión. El relato es brutal y sobrecogedor; evoluciona hacia la tragedia humana, narrando sin misericordia el conflicto entre poderosos y parias. Los protagonistas son una familia de granjeros de Oklahoma, los Joad, que expulsados de sus tierras emprenden camino a California en busca de trabajo y de un sitio donde asentarse. Conmovedor y feroz, removerá tu conciencia.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/las-uvas-de-la-ira-1616596646.jpeg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (4, 'El gran Gatsby', 'Francis Scott Fitzgerald', 'Esta obra ha sido puesta de ejemplo como "la gran novela americana". Eso va a gustos, porque también tenemos a grandes autores como Steinbeck o McCarthy, pero desde luego el retrato social que hizo Fitzgerald de la sociedad de su país, previa a la Gran Depresión, es magnífico. Cuenta la historia del increíblemente rico Jay Gatsby, que se enamora de la joven Daisy Buchanan, en un momento de fiestas definidas por el New York Times en las que "la ginebra era la bebida nacional y el sexo la obsesión nacional".', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gran-gatsby-1616596099.jpeg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (5, 'Alguien voló sobre el nido del cuco', 'Ken Kensey', 'Ken Kensey escribió en 1962 esta magnífica historia protagonizada por la gran enfermera Ratched (que cuenta con serie propia en Netflix), una verdadera tirana que gobierna del psiquiátrico de Oregón, intimidando a enfermos con medicamentos y descargas eléctricas. Pero su régimen se verá alterado con la llegada de McMurphy, un canalla que decide oponerse a sus reglas. Se trata de un libro que causó gran polémica en Estados Unidos; la primera vez que fue atacado fue en Ohio, donde cinco ciudadanos exigieron retirarlo por "pornográfico" y por "glorificar la actividad criminal".', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-alguienvolo-1597086456.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (6, 'Crimen y castigo', 'Fiódor Dostoievski', 'Fiódor Dostoievski escribió en 1866 esta enorme obra maestra de la literatura en la que se aborda cómo podemos convivir con nuestras acciones. El protagonista es Raskolnikov, un joven estudiante que cree firmemente que los fines humanitarios justifican cualquier acción, incluso el asesinato, y así acabará sin remordimientos con la vida de una usurera. Sin embargo, no se imaginará que la voz de su conciencia le importa más que cualquier persecución policial. Solo Sonya, una prostituta, podrá redimirle.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-crimenycastigo-1597086456.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (7, 'Las aventuras de Huckleberry Finn', 'Mark Twain', 'La suerte de Huckleberry Finn, el mejor amigo de Tom Sawyer, se acaba cuando su padre regresa al pueblo y se lo lleva a vivir a una cabaña. Huck logra escapar en una balsa río abajo y se encuentra con su amigo Jim, un esclavo que, como él, huye buscando la libertad. Cuando lo lees de pequeña lo que te llama la atención es lo malhablado que puede ser el protagonista y lo divertidas que son sus aventuras en el Mississippi, pero de adulta entenderás el potente mensaje contra el racismo que esconde la amistad entre Huck y Jim.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-huckleberry-1597086456.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (8, 'La ladrona de libros', 'Markus Zusak', 'Estamos en la Alemania nazi de 1939, en un país que está empezando a escribir algunas de las páginas más horribles de la historia. Liesel es una niña de nueve años que, a los pies de la tumba de su hermano, roba un libro: el "Manual del sepulturero", que alguien ha dejado allí abandonado. Será el primero de una lista de grandes robos de libros que configuran una de las historias más hermosas de los últimos tiempos.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-ladronadelibros-1597086455.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (9, 'Romeo y Julieta', 'Willian Shakespeare', 'Una de las mejores obras de la literatura universal, que nos habla de una historia de amor que sin embargo genera violencia. Romeo y Julieta se enamoran y, sin embargo, sus familias, los Montesco y los Capuleto, se oponen a su relación. Ellos se irán a vivir juntos a pesar de las protestas de su entorno, lo que acabará provocando una tragedia. Magistral obra, epítome del amor juvenil, que presume de un lenguaje excepcional.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-romeoyjulieta-1597086456.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (10, 'Jane Eyre', 'Charlotte Bronte', 'Aparentemente, "Jane Eyre" es una novela de amor; detrás, se esconde mucho más. Fue la primera obra publicada por una de las hermanas Brontë –aunque la tuvo que firmar con el seudónimo Currer Bell, para evitar los prejuicios por ser mujer– y narra la historia de una joven huérfana que llega a Thornfield Hall, donde es contratada por el orgulloso Edward Rochester para cuidar de su hija Adèle. Jane se siente atraída por Rochester, pero la relación es difícil y la mansión esconde un secreto.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-jane-eyre-1582115504.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (11, 'Fahrenheit 451', 'Ray Bradbury', '¿Ciencia ficción? ¿Realidad? Fahrenheit 451 no es un libro fácil de leer, porque nos lleva a una situación que no tiene nada de fantástica. Estamos en un país donde no se puede leer. De hecho, el trabajo del bombero Montag, el protagonista, no es apagar incendios, sino provocarlos. Se dedica a quemar libros para evitar que la población piense y se la pueda manipular; ya lo decían los romanos: "Panem et circenses".', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-fahrenheit451-1582115505.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (12, 'El señor de las moscas', 'William Golding', 'Una obra cuya calidad tiene tanto defensores como detractores, y que fue adaptada recientemente como serie por Netflix bajo el título "The Society". William Golding, premio Nobel de Literatura en 1983 nos lleva hasta la próxima guerra mundial, cuando el avión en el que viajan un grupo de jóvenes se estrella en una isla desconocida. Sin adultos que les supervisen, todo comienza siendo una fiesta, porque pueden hacer lo que quieran. Con lo que no contaban es con la dificultad y la tragedia de establecer una sociedad.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-elsen-ordelasmoscas-1582115504.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (13, 'Volverás a Región', 'Juan Benet', 'Seamos sinceros. "Volverás a Región" no es un libro fácil de leer; pero precisamente ese es su valor estilístico, la enorme renovación en el lenguaje que estableció con esta obra Juan Benet, uno de los grandes escritores españoles del siglo XX. Región es un lugar que no existe en la realidad, adonde al acabar la Guerra Civil huyeron varios combatientes, y donde se establecerá una dolorosa conversación entre una misteriosa mujer y el doctor protagonista. Dolorosa y maravillosa, invita a la reflexión sobre la sinrazón de nuestra contienda.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-volverasaregion-1582115504.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (14, 'Lo que el viento se llevó', 'Maragaret Mitchell', 'Si te gusta la película, es imprescindible que leas la obra original de Margaret Mitchell en la que se inspiró. Es un novelón y sí, hay que decirlo, es mucho mejor que el filme de Victor Fleming y George Cukor. El personaje de Escarlata O´Hara tiene muchos más matices y aparecen muchos segmentos de la historia que conoces que no fueron adaptados.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-loqueelvientosellevo-1582115504.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (15, '1984', 'George Orwell', 'La maravillosa fábula de George Orwell nos lleva a un mundo de ciencia ¿ficción? situado en Londres, en 1984 (hay que tener en cuenta que la obra fue publicada en 1949), con un Gran Hermano vigilándolo todo y una Policía del Pensamiento atenta a todo lo que los ciudadanos hacen, opinan y sienten. El protagonista tiene en sus manos seguir con lo establecido o romper con la opresión.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1984-1524221166.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (16, 'Alicia en el país de las maravillas', 'Lewis Carroll', '"Que le corten la cabeza", pide la reina de corazones a la pequeña Alicia, cuyas aventuras han comenzado cuando, sentada con su hermana en el jardín, ven pasar a un conejo con un reloj de bolsillo. ¿Pero qué es eso? Alicia sale corriendo tras él y cae en un oscuro agujero que le llevará al país de las maravillas y a uno de los libros más tiernos de esta lista, escrito por Lewis Carroll.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/aliciapaismaravillas-1524221166.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (17, 'Americanah', 'Chimamanda Ngozi Adichie', 'Una de las entradas más feministas de la lista corresponde a un libro imperdible, Americanah, de 2013, en el que conocemos la historia de Obinze, una joven nigeriana que siempre ha querido vivir y estudiar en Estados Unidos. Ella va a intentar su sueño, pero no quiere convertirse en una "americanah", que es como llaman en su país a los que vuelven con ínfulas de América.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/americanah-1524221025.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (18, 'A puerta cerrada', 'Luis García Montero', 'No nos arriesgamos si decimos que Luis García Montero es el mejor poeta vivo español, así que tampoco es un equívoco recomendar su antología de versos más recientes, "A puerta cerrada". El granadino hace un doliente recorrido de la sociedad española tras la crisis, de todo lo perdido en los años pasados, de cómo la democracia ha quedado a su juicio definitivamente tocada.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/apuertacerrada-1524221024.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (19, 'Asesinato en el Orient Express', 'Agatha Christie', '¿Aún no has leído la obra mítica de Agatha Christie? Pues estás tardando. Te guste o no el género policíaco, reconocerás al llegar a las últimas páginas que la resolución del crimen acontecido en el tren más glamuroso de la historia es, simplemente, genial. Doce personas son los sospechosos del asesinato que tendrá que resolver uno de los inspectores más famosos de la literatura, Hercules Poirot.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/asesinatoorientexpress-1524221026.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (20, 'La campana de cristal', 'Sylvia Plath', 'Cuando el libro se publicó, en 1963, Sylvia Plath tuvo que usar un seudónimo porque se enfrentaba sin ambages a temas delicados, concretamente, a la depresión. La única novela de esta gran poeta estadounidense narra la historia de una estudiante que gana un premio de una revista con el que viaja a Nueva York durante un mes. De allí regresará con una dura enfermedad mental.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/campana-cristal-1524221024.jpg?crop=1xw:1xh;center,top&resize=980:* ');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (21, 'Cien años de soledad', 'Gabriel García Marquez', 'Para muchos, la obra cumbre de la literatura en castellano y para la gran mayoría la mejor novela de su autor. Narra la historia de siete generaciones de la familia Buendía en la aldea de Macondo, pero no lo hace de forma lineal ni realista, sino con saltos en el tiempo y fusionando realidad y fantasía.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cienan-osdesoledad-1524221027.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (22, 'Cinco horas con Mario', 'Miguel Delibes', 'Es el magnífico monólogo de una mujer adulta, Menchu, que acaba de perder a su amado esposo, Mario. Después de que la familia se vaya y de quedarse sola, comienza el velatorio, la última noche que pasan juntos; sus discurso, dramático, doliente y por momentos aterrador, ha sido enormemente influyente en nuestras letras desde su publicación en 1966.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cincohorasmario-1524221025.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (23, 'El conde de Montecristo', 'Alejandro Dumas', 'Inspirado en un caso real, la gran novela de Alejandro Dumas nos presenta a Edmond Dantès, un marinero que regresa a tierra firme con la intención de casarse con su amada Mercedes. Pero su mejor amigo le traiciona el día antes de la boda y es detenido, por lo que pasará 13 a´ño en prisión. Tiempo suficiente para idear la venganza perfecta.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/condemontecristo-1524221024.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (24, 'El cuento de la criada', 'Maragaret Atwood', 'La serie de HBO inspirada en él ha dado alas a este cuento escrito a mediados de los 90 por Margaret Atwood, una historia inquietante, oscura y angustiosa que nos sitúa en la república de Gilead, donde Defred es una más de tantas mujeres que han perdido todos sus derechos y que solo sirven para una cosa: procrear. Atwood nos sumerge en un mundo asfixiante que nos hace reflexionar si podría ser nuestro propio planeta.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cuentocriada-1524221026.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (25, 'Cuento de Navidad', 'Charles Dickens', 'No esperes a que llegue diciembre para admirar esta historia que seguro que ya has visto en televisión pero que ya es hora de que la leas tal cual es. Dickens nos presenta al avaricioso señor Scrooge, que no soporta la navidad ni el buen rollo asociado a ella. Pero la noche de nochebuena se le presenta el fantasma del antiguo socio de su negocio, que le hará cambiar de opinión.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cuentodenavidad-1524221025.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (26, 'Desayuno en Tiffany´s', 'Truman Capote', 'Otro caso parecido al anterior: ¿cuántas veces has visto la película de Audrey Hepburn? Por si no sabes, es una adaptación literaria, y de las buenas, de una novela de Truman Capote. La protagonista es la elegante y especial Holly Golightly, conocida por el glamour y por los fiestones que monta en Nueva York. Pero cuando las luces se apagan, ella se siente terriblemente sola.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elle-desayunoen-tiffanys-1582114362.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (27, 'En el camino', 'Jack Kerouac', 'Sal Paradise y Dean Moriarty emprenden un viaje por Estados Unidos donde la ruta parece lo menos importante. A cambio, el sexo, las drogas, las mujeres, la amistad y la música se erigen como temas principales de la obra magna de la "Beat Generation" y una de las grandes influencias de la cultura hippie.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/enelcamino-1524221026.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (28, 'El extranjero', 'Albert Camus', 'En plena Segunda Guerra Mundial, Albert Camus revolucionó la literatura europea con este descarnado relato sobre un hombre que, extranjero en sí mismo y totalmente fuera de su propio control, comete un crimen. Descontrolado y condenado, su vida ya no tiene sentido, pero es que quizás tampoco la tenía atrapado en la rutina de su normalidad.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/extranjero-1524221026.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (29, 'Frankestein', 'Mary Shelley', 'Probablemente, la mejor novela de terror de todos los tiempos y una de las que más ha contribuido a crear al monstruo moderno, ese que tiene incluso "su corazoncito". Mary Shelley, hija de unos intelectuales de su época, escribió la historia del inventor Victor Frankestein, quien creó una criatura a la que acabó rechazando.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/frankestein-1524221027.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (30, 'El guardián entre el centeno', 'J.D. Salinger', 'A pesar de su mala fama (era el libro favorito del asesino de John Lennon), la obra de Salinger tiene otra perspectiva cuando la leemos de adultos -quizás lo de obligarlo a leer en la adolescencia no sea una idea muy buena-. Es el relato de posguerra de un joven Holden Caulfield, que tiene que enfrentarse a las normas rígidas de su familia, al fracaso en la escuela y a las primeras experiencias sexuales.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/guardianentrecenteno-1524221029.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (31, 'Hamlet', 'Willian Shakespeare', 'Es difícil escoger una de las obras de William Shakespeare, pero quizás una de las más populares por sus versiones teatrales y cinematográficas es la historia del príncipe de Dinamarca. En ella, el rey Hamlet pide a su hijo del mismo nombre que vengue su muerte a manos de Claudio.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hamlet-1524221028.jpg?crop=1xw:1xh;center,top&resize=980:*');
insert into public.cat_book (id_book, ds_title, ds_author, tx_synopsis, ds_img) values (32, 'Lolita', 'Vladimir Nabovok', 'En su lanzamiento, en 1958, la controvertida novela de Nabokov fue considerada de pornográfica, ya que narraba una atrevida historia : la obsesión de un profesor adulto por una menor de 12 años, hija de la dueña de la casa en la que se hospeda, con la que se casa solo para estar cerca de la joven. El propio Nabokov colaboraría en la adaptación cinematográfica de Kubrick.', 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/lolita-1524221029.jpg?crop=1xw:1xh;center,top&resize=980:*');


create sequence public.id_cat_user_seq increment by 1 minvalue 1 maxvalue 9223372036854775807 start 1 cache 1 no cycle;

create table public.cat_user ( 
id_user serial not null,
ds_name varchar(255) null,
ds_last_name varchar(255) null,
ds_phone varchar(10) null,
ds_email varchar(10) null,
ds_password varchar(10) null,
constraint cat_user_id_key unique (id_user),
constraint cat_user_pkey primary key (id_user));

create sequence public.id_k_user_book_seq increment by 1 minvalue 1 maxvalue 9223372036854775807 start 1 cache 1 no cycle;

create table public.k_user_book ( 
id_user_book serial not null,
id_user int8 not null,
id_book int8 not null,
nm_status int8 not null,
constraint user_book_id_key unique (id_user_book),
constraint user_book_pkey primary key (id_user_book),
constraint user_fkey foreign key (id_user) references public.cat_user(id_user),
constraint book_fkey foreign key (id_book) references public.cat_book(id_book));


commit;