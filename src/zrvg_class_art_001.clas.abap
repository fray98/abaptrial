CLASS zrvg_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zrvg_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA: it_art TYPE STANDARD TABLE OF zrvg_tab_art.

  it_art = value #(
  ( client = sy-mandt id_art = 1 descr = 'Mini Colores' descr2 = 'Estuche con mini colores' color = 'Varios' piezas = 12 stock = 10
   url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_1000x.jpg?v=1676577703' )
   ( client = sy-mandt id_art = 2 descr = 'Libreta' descr2 = 'Libreta Apuntes' color = 'Varios' piezas = 1 stock = 15
   url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-Planorama-A5-Vino-01_1000x.jpg?v=1776217814' )
    ( client = sy-mandt id_art = 3 descr = 'Caja' descr2 = 'Caja de lapices' color = 'Blanco' piezas = 12 stock = 8
   url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Blackwing602-2_1000x.jpg?v=1593665266' )
    ( client = sy-mandt id_art = 4 descr = 'Lapiz' descr2 = 'Lapiz negro' color = 'Negro' piezas = 10 stock = 20
   url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Blackwing602-1_257ef243-bddf-4b14-888c-7428cf8a1f60_1000x.jpg?v=1588186544' ) ).

    insert zrvg_tab_art from TABLE @it_art.
    if sy-subrc eq 0.
      out->write( 'Insert succesful' ).
    else.
        out->write( 'Insert wrong' ).
    endif.

  ENDMETHOD.
ENDCLASS.
