CLASS zcl_loscarros_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_loscarros_test IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_brands    TYPE TABLE OF zrent_brands12,
          lt_cars      TYPE TABLE OF zrent_cars12,
          lt_customers TYPE TABLE OF zrent_customerss.



    "BRANDS"
    lt_brands = VALUE #(
       ( marca = 'ASTON MARTIN' url = 'https://cdn.motor1.com/images/mgl/NROq2/s1/2020-aston-martin-db11.jpg' )
       ( marca = 'AUDI' url = 'https://th.bing.com/th/id/OIP.n-na266iDOTLd6QNSIgKuQHaE8?w=264&h=180&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'Bentley' url = 'https://th.bing.com/th/id/OIP.UPsjrm8GTELG2xD3xs63WAAAAA?rs=1&pid=ImgDetMain' )
       ( marca = 'Bugatti' url = 'https://th.bing.com/th/id/R.375a46ca65c822d3bf8833f885df0cc0?rik=EXhMCLHCo%2blrTQ&pid=ImgRaw&r=0' )
       ( marca = 'Ferrari' url = 'https:\\feerrarajiajsifjaisfjiasjfioashfoiashfio.com' )
       ( marca = 'Ford' url = 'https://th.bing.com/th/id/OIP.Fh3lAowVOYp21jAouPZXUAHaEK?w=300&h=180&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'Honda' url = 'data:image/jpeg;base64,=' )
       ( marca = 'Jeep' url = 'https://th.bing.com/th/id/OIP.UuBamCxX5jflGQe0rqn_kgHaE6?w=269&h=180&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'Kia' url = 'https://th.bing.com/th/id/OIP.o0JS8CMW7pmxyveyjc_qygHaFa?w=228&h=180&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'Mercedes' url = 'https://th.bing.com/th/id/OIP.pWSYcHV19UwNfPVvQxOChAHaEK?w=316&h=180&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'Mini' url = 'https://th.bing.com/th/id/OIP.Wm9-dTm8La9LAAWVu-lvrwHaFj?w=264&h=198&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'Seat' url = 'https://th.bing.com/th/id/OIP.z4nrrSNj9hYs9kS0erx3HQHaFW?w=259&h=187&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'VW' url = 'https://th.bing.com/th/id/OIP.FdNu_Ih8o7eCMml2eoe4JQHaEK?w=263&h=180&c=7&r=0&o=5&pid=1.7' )
       ( marca = 'BMW' url = 'hola' )

    ).


    DELETE FROM zrent_brands12.
    INSERT zrent_brands12 FROM TABLE @lt_brands.
    SELECT * FROM zrent_brands12 INTO TABLE @lt_brands.
    out->write( sy-dbcnt ).
    out->write( ' Listo Calisto ' ).



    "CARS"

    lt_cars = VALUE #(

 ( matricula = '90jlo0' marca = 'ASTON MARTIN' modelo = 'SERIE 4' color = 'ROJITO' motor = 'ELMEJOR' potencia = '30' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'
 fecha_fabr = '20200418' puertas = '2' precio = '30' moneda = 'USD' alquilado = 'SI' alq_desde = '20290321' alq_hasta = '20300322' )

 ( matricula = '7HG321' marca = 'AUDI' modelo = 'SERIE 2' color = 'BLANCO' motor = 'ELSEGUNDOMEJOR' potencia = '89' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '11.00'
 fecha_fabr = '20230901' puertas = '4' precio = '25' moneda = 'USD' alquilado = 'NO' alq_desde = '20251222' alq_hasta = '20240108' )

 ( matricula = '45JH12' marca = 'Bentley' modelo = 'SERIE 5' color = 'GRIS' motor = 'LOMASRAPIDO' potencia = '09' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '9.00'
 fecha_fabr = '20220901' puertas = '2' precio = '12' moneda = 'USD' alquilado = 'SI' alq_desde = '20240831' alq_hasta = '20241209' )

 ( matricula = '7HJF89' marca = 'Bugatti' modelo = 'SERIE 1' color = 'VERDE' motor = 'DURISIMO' potencia = '89' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '3.00'
 fecha_fabr = '20200109' puertas = '2' precio = '23' moneda = 'USD' alquilado = 'SI' alq_desde = '20240104' alq_hasta = '20240220' )

 ( matricula = '8JHG42' marca = 'Ferrari' modelo = 'SERIE 6' color = 'AMARILLO' motor = 'LABESTIA' potencia = '40' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '4.00'
 fecha_fabr = '20190801' puertas = '4' precio = '34' moneda = 'USD' alquilado = 'NO' alq_desde = '20240524' alq_hasta = '20240712' )

 ( matricula = '1JHF78' marca = 'Ford' modelo = 'SERIE 2' color = 'NEGRO' motor = 'LAPORQUERIA' potencia = '73' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '9.00'
 fecha_fabr = '20180901' puertas = '2' precio = '32' moneda = 'USD' alquilado = 'SI' alq_desde = '20230130' alq_hasta = '20240823' )

 ( matricula = '1JH891' marca = 'Honda' modelo = 'SERIE 1' color = 'ROJO' motor = 'ELTUNTUN' potencia = '20' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '3.00'
 fecha_fabr = '20190801' puertas = '4' precio = '69' moneda = 'USD' alquilado = 'SI' alq_desde = '20231202' alq_hasta = '20240912' )

 ( matricula = 'JKG814' marca = 'Jeep' modelo = 'SERIE 5' color = 'NEGRO' motor = 'GUERRERO' potencia = '40' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'
 fecha_fabr = '20100901' puertas = '2' precio = '100' moneda = 'usd' alquilado = 'NO' alq_desde = '20230901' alq_hasta = '20240901' )

 ( matricula = 'L0P98J' marca = 'Mercedes' modelo = 'SERIE 3' color = 'AMARILLO' motor = 'kk' potencia = '50' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'
 fecha_fabr = '20230908' puertas = '4' precio = '200' moneda = 'usd' alquilado = 'SI' alq_desde = '20240109' alq_hasta = '20201229' )

 ( matricula = 'Y70PGL' marca = 'Mini' modelo = 'SERIE 2' color = 'PLATA' motor = 'mbappe' potencia = '30' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'
 fecha_fabr = '20221212' puertas = '4' precio = '40' moneda = 'usd' alquilado = 'NO' alq_desde = '20240109' alq_hasta = '20250809' )

 ( matricula = '4G6YDF' marca = 'Seat' modelo = 'SERIE 4' color = 'AZUL' motor = 'Amor' potencia = '54' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'
 fecha_fabr = '20190931' puertas = '2' precio = '30' moneda = 'usd' alquilado = 'SI' alq_desde = '20230108' alq_hasta = '20230901' )

 ( matricula = 'K90LLO' marca = 'VW' modelo = 'SERIE 5' color = 'NEGRO' motor = 'Locura' potencia = '43' und_potencia = 'CV' combustible = 'GASOLINA' consumo = '7.00'
 fecha_fabr = '20210801' puertas = '4' precio = '99' moneda = 'usd' alquilado = 'SI' alq_desde = '20220901' alq_hasta = '20240901' )

 ( matricula = 'DBK77K' marca = 'BMW' modelo = 'SERIE 1' color = 'ROJO' motor = 'Las ganas' potencia = '1000' und_potencia = 'CV' combustible = '' consumo = '7.00'
 fecha_fabr = '20190831' puertas = '2' precio = '' moneda = '' alquilado = '' alq_desde = '' alq_hasta = '' )
 ).

    DELETE FROM zrent_cars12.
    INSERT zrent_cars12 FROM TABLE @lt_cars.
    SELECT * FROM zrent_cars12 INTO TABLE @lt_cars.
    out->write( sy-dbcnt ).
    out->write( ' Listo Calisto ' ).

    ""CUSTOMIZACION""

    lt_customers = VALUE #(
  ( doc_id = '005638984K' matricula = '8764FGH' nombres = 'Olivia' apellidos = 'Allan' email = 'olivia.allan@email.com' cntr_type = 'C1' )
  ( doc_id = '982356739N' matricula = '8764FGH' nombres = 'Matt' apellidos = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
  ( doc_id = '453532543O' matricula = '8764FGH' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1' )
  ( doc_id = '005632984R' matricula = '1246GSA' nombres = 'John' apellidos = 'Allan' email = 'john.allan@email.com' cntr_type = 'C3' )
  ( doc_id = '982367739N' matricula = '1246GSA' nombres = 'Clark' apellidos = 'Allan' email = 'clark.slater@email.com' cntr_type = 'C2' )
  ( doc_id = '340958439D' matricula = '29348KJ' nombres = 'Michael' apellidos = 'Short' email = 'michael.short@email.com' cntr_type = 'C1' )
  ( doc_id = '964356739N' matricula = '29348KJ' nombres = 'Robert' apellidos = 'Allan' email = 'robert.slater@email.com' cntr_type = 'C1' )
  ( doc_id = '340458439D' matricula = '2847JGH' nombres = 'Cole' apellidos = 'Short' email = 'cole.short@email.com' cntr_type = 'C2' )
  ( doc_id = '340958438D' matricula = '2827SAF' nombres = 'George' apellidos = 'Short' email = 'george.short@email.com' cntr_type = 'C3' )
  ( doc_id = '859675368G' matricula = '2827SAF' nombres = 'Sonny' apellidos = 'Wright' email = 'sonny.wright@email.com' cntr_type = 'C2' )
  ( doc_id = '859675388V' matricula = '2827SAF' nombres = 'Evelyn' apellidos = 'Wright' email = 'evelyn.wright@email.com' cntr_type = 'C2' )
  ( doc_id = '340952439D' matricula = '2837KFF' nombres = 'Avery' apellidos = 'Short' email = 'avery.short@email.com' cntr_type = 'C4' )
  ( doc_id = '859675388G' matricula = '2837KFF' nombres = 'Madison' apellidos = 'Wright' email = 'madison.wright@email.com' cntr_type = 'C1' )
  ( doc_id = '982656739N' matricula = '2837SUF' nombres = 'Matt' apellidos = 'Slater' email = 'matt.slater@email.com' cntr_type = 'C3' )
  ( doc_id = '345093450E' matricula = '2425SFA' nombres = 'Sue' apellidos = 'Sanderson' email = 'sue.sanderson@email.com' cntr_type = 'C1' )
  ( doc_id = '852367586F' matricula = '2425SFA' nombres = 'Eric' apellidos = 'Berry' email = 'eric.berry@email.com' cntr_type = 'C4' )
  ( doc_id = '345093850A' matricula = '2392JFH' nombres = 'Lily' apellidos = 'Sanderson' email = 'lily.sanderson@email.com' cntr_type = 'C3' )
  ( doc_id = '489632862G' matricula = ' 2329HFS' nombres = 'Neil' apellidos = 'Welch' email = 'neil.welch@email.com' cntr_type = 'C2' )
  ( doc_id = '345234534M' matricula = '2329HFS' nombres = 'Lily' apellidos = 'Langdon' email = 'lily.langdon@email.com' cntr_type = 'C1' )
  ( doc_id = '453572543O' matricula = '2329HFS' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C4' )
  ( doc_id = '345839534R' matricula = '2356FSF' nombres = 'Andrew' apellidos = 'Langdon' email = 'andrew.langdon@email.com' cntr_type = 'C2' )
  ( doc_id = '852327586F' matricula = '2392JFH' nombres = 'Addison' apellidos = 'Berry' email = 'addison.berry@email.com' cntr_type = 'C2' )
  ( doc_id = '345831534R' matricula = '2174FHF' nombres = 'Lucy' apellidos = 'Langdon' email = 'lucy.langdon@email.com' cntr_type = 'C0' )
  ( doc_id = '489612882D' matricula = '2174FHF' nombres = 'Julian' apellidos = 'Welch' email = 'julian.welch@email.com' cntr_type = 'C1' )
  ( doc_id = '348941597P' matricula = '2188SJS' nombres = 'Cooper' apellidos = 'Davies' email = 'cooper.davies@email.com' cntr_type = 'C1' )
  ( doc_id = '348947997P' matricula = '1246GSA' nombres = 'Lillian' apellidos = 'Davies' email = 'lillian.davies@email.com' cntr_type = 'C2' )
  ( doc_id = '430958233A' matricula = '2174FHF' nombres = 'Wendy' apellidos = 'Short' email = 'wendy.short@email.com' cntr_type = 'C4' )
  ( doc_id = '453832543O' matricula = '4545ABC' nombres = 'Vanessa' apellidos = 'Wilson' email = 'vanessa.wilson@email.com' cntr_type = 'C1' )
  ( doc_id = '982124739N' matricula = '2148AFS' nombres = 'Tyler' apellidos = 'Slater' email = 'tyler.slater@email.com' cntr_type = 'C3' )
  ( doc_id = '982356839W' matricula = '5235HER' nombres = 'Parker' apellidos = 'Slater' email = 'parker.slater@email.com' cntr_type = 'C3' ) ).

    DELETE FROM zrent_customerss.
    INSERT zrent_customerss FROM TABLE @lt_customers.
    SELECT * FROM zrent_customerss INTO TABLE @lt_customers.
    out->write( sy-dbcnt ).
    out->write( ' Listo Calisto ' ).


  ENDMETHOD.
ENDCLASS.
