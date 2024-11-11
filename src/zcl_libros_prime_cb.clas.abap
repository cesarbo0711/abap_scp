CLASS zcl_libros_prime_cb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_libros_prime_cb IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

  DATA: lt_acc_categ TYPE TABLE OF ztb_acc_categ_cb ,
        lt_catego Type table of ztb_catego_cb,
        lt_clientes type table of ztb_clientes_cb,
        lt_clnts_lib type table of ztb_clnts_lib_cb,
        lt_libros type table of ztb_libros_cb.

  "" ACCESO DE CATEGORIAS""

  lt_acc_categ = VALUE #(
   ( categorias = 'Adultos' tipo_acceso = 'Cliente' )
   ( categorias = 'Adultos' tipo_acceso = 'Admin' )
   ( categorias = 'Arte' tipo_acceso = 'Admin' ) ).

   DELETE FROM ztb_acc_categ_cb.
INSERT ztb_acc_categ_cb FROM TABLE @lt_acc_categ.
SELECT * FROM ztb_acc_categ_cb INTO TABLE @lt_acc_categ.
out->write( sy-dbcnt ).
out->write( ' Listo Calisto ' ).


   "" CATEGORIAS ""

   lt_catego = VALUE #(
   ( categorias = 'Adultos' descripcion = 'El mejor in the world' )
   ( categorias = 'Cine' descripcion = 'Es cine...' )
   ( Categorias = 'Arte' descripcion = 'tu' ) ).

DELETE FROM ztb_catego_cb.
INSERT ztb_catego_cb FROM TABLE @lt_catego.
SELECT * FROM ztb_catego_cb INTO TABLE @lt_catego.
out->write( sy-dbcnt ).
out->write( ' Listo Calisto ' ).

   "" CLIENTES "" ''

   lt_clientes = VALUE #(
   ( id_cliente = '304' tipo_acceso = 'la cabraplus' nombre = 'Cristiano' apellidos = 'Ronaldo' email = 'Cristiel7@gmail.com' url = 'mamalo' )
   ( id_cliente = '234' tipo_acceso = 'el borregoyeah' nombre = 'Cesar' apellidos = 'Borrego' email = 'elcessii@gmail.com' url = 'hola' )
   ( id_cliente = '567' tipo_acceso = 'el colegatio' nombre = 'Leonel' apellidos = 'Messi' email = 'LeonelMesii@gail.com' url = 'qlq' ) ).

DELETE FROM ztb_clientes_cb.
INSERT ztb_clientes_cb FROM TABLE @lt_clientes.
SELECT * FROM ztb_clientes_cb INTO TABLE @lt_clientes.
out->write( sy-dbcnt ).
out->write( ' Listo Calisto ' ).

   "" CLIENTES Y LIBROS ""

    lt_clnts_lib = VALUE #(
    ( id_cliente = '304' id_libro = '4091' )
    ( id_cliente = '234' id_libro = '1234' )
    ( id_cliente = '567' id_libro = '4321' ) ).

    DELETE FROM ztb_clnts_lib_cb.
INSERT ztb_clnts_lib_cb FROM TABLE @lt_clnts_lib.
SELECT * FROM ztb_clnts_lib_cb INTO TABLE @lt_clnts_lib.
out->write( sy-dbcnt ).
out->write( ' Listo Calisto ' ).

  ""LIBROS""

 lt_libros = VALUE #(
 ( id_libro = '4091' categorias = 'adulto' titulo = 'MCM vs el mundo' autor = 'Edmundo Gonzales ' editorial = 'CNE' idioma = 'Español' paginas = 'www.CNE.com'
 precio = '30' moneda = 'usd' formato = 'Escrito' url = 'www.ellibrosadico.com' )

 ( id_libro = '1234' categorias = 'Cine' titulo = 'Sky is the limit' autor = 'Kanye West' editorial = 'Arca' idioma = 'Ingles' paginas = 'Thewolrdinmine'
 precio = '15' moneda = 'usd' formato = 'Audiolibro' url = 'www.ellibrosadico.com' )

 ( id_libro = '4321' categorias = 'Arte' titulo = 'Ahora te puedes marchar' autor = 'Luis Miguel' editorial = 'Mamalo' idioma = 'Español' paginas = 'Lamia'
 precio = '20' moneda = 'usd' formato = 'Escrito' url = 'www.ellibrosadico.com' ) ).

    DELETE FROM ztb_libros_cb.
INSERT ztb_libros_cb FROM TABLE @lt_libros.
SELECT * FROM ztb_libros_cb INTO TABLE @lt_libros.
out->write( sy-dbcnt ).
out->write( ' Listo Calisto ' ).

  ENDMETHOD.
ENDCLASS.
