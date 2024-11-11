CLASS zcl_zbutzam_entity DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_zbutzam_entity IMPLEMENTATION.
    METHOD if_rap_query_provider~select.
    DATA(lv_top) = io_request->get_paging( )->get_page_size( ).
       DATA(lv_skip) = io_request->get_paging( )->get_offset( ).
       DATA(lt_clause) = io_request->get_filter( )->get_as_sql_string( ).

*   DATA lt_userlist TYPE STANDARD TABLE OF bapiusname.
   DATA lt_result TYPE STANDARD TABLE OF zcust_entity_demo.

   TRY.

       DATA(lt_filter_cond) = io_request->get_filter( )->get_as_ranges( ).

     CATCH cx_rap_query_filter_no_range INTO DATA(lx_no_sel_option).

   ENDTRY.

    ENDMETHOD.
ENDCLASS.
