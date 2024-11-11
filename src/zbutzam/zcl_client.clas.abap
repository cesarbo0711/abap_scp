CLASS zcl_client DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_client IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

        DATA: lt_client TYPE TABLE OF zclient.

        clear: lt_client[].
*--- create table ZCLIENT
*DELETE FROM zclient.
*return.

        lt_client = VALUE #(
                ( client = '02D5290E594C1EDA93815057FD946624'
                  clnt1 = '00000001' "ID Клієнта
                  clnt2 = 'Торгсервис' "Назва клієнта
                  adr1 = 'Київ' "Адреса клієнта 1
                  adr2 = 'Чудова, 12' "Адреса клієнта 2
                  inco1 = 'DAP' "Умова доставки 1
                  inco2 = 'Київ' "Умова доставки 2
                  pay1 = 'Передплата' "Умова оплати
                )
                ( client = '02D5290E594C1EDA93815C50CD7AE62A'
                  clnt1 = '00000002' "ID Клієнта
                  clnt2 = 'Оптопром' "Назва клієнта
                  adr1 = 'Одеса' "Адреса клієнта 1
                  adr2 = 'Промислова, 1' "Адреса клієнта 2
                  inco1 = 'EXW' "Умова доставки 1
                  inco2 = 'Миколаїв' "Умова доставки 2
                  pay1 = 'Факт' "Умова оплати
                )
                ( client = '02D5290E594C1EDA93858EED2DA2EB0B'
                  clnt1 = '00000003' "ID Клієнта
                  clnt2 = 'Interpoma' "Назва клієнта
                  adr1 = 'Дніпро' "Адреса клієнта 1
                  adr2 = 'Кругова, 5' "Адреса клієнта 2
                  inco1 = 'DAP' "Умова доставки 1
                  inco2 = 'Дніпро' "Умова доставки 2
                  pay1 = 'Факт' "Умова оплати
                )
              ).

        DELETE FROM zclient.
        INSERT zclient FROM TABLE @lt_client.

        out->write( |{ sy-dbcnt } Таблица ZCLIENT успешно создана| ).

    ENDMETHOD.
ENDCLASS.
