Feature:
  yo como cliente de la tienda ZonaFit
  quiero comprar suplemento a traves de la pagina web
  para ahorrar tiempo y comodidad

  //cambie la palabra "navegador" por la palabra del navegador que desea usar
  //Google Chrome = "chrome"
  //Microsoft Edge = "Edge"

Background:
  Given que el cliente esta en la pagina principal desde el "chrome"
  When agrega productos al carrito

  Scenario: Compra Exitosa
    And completa la informacion de envio y facturacion
    Then debera observar un mensaje de confirmacion de la compra


  Scenario: Compra con informacion insuficiente
    But ingresa informacion insuficiente
    Then debera observar un mensaje pidiendo la informacion requerida


  Scenario: Compra con correo invalido
    But completa la informacion de envio con un correo invalido
    Then debera observar un mensaje de correo invalido