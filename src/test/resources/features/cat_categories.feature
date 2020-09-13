Feature: Cat API
  COMO usario de CAT API
  DESEO obtener la lista de categorias
  PARA mostrar las mismas

  @200
  Scenario Outline: Obtengo la lista de categorias
    When realizo una peticion '<operation>' a '<entity>' al endpoint de categorias - '<request>'
    Then obtengo el status code '<statusCode>'
    And los datos son correctos
    @SuccessCat
    Examples:
      | request                   | statusCode | operation | entity     |
      | request/rq_cat_categories | 200        | GET       | CATEGORIES |

  @401
  Scenario Outline: Analisis de imagenes
    When realizo una peticion '<operation>' a '<entity>' al endpoint de analisis - '<request>'
    Then obtengo el status code '<statusCode>'
    @AnalysisCat
    Examples:
      | request              | statusCode | operation | entity   |
      | request/cat_analysis | 401        | POST      | ANALYSIS |

  @404
  Scenario Outline: Obtengo un breed de una imagen
    When realizo una peticion '<operation>' a '<entity>' al endpoint de razas - '<request>'
    Then obtengo el status code '<statusCode>'
    @BeedsCat
    Examples:
      | request            | statusCode | operation | entity |
      | request/cat_breeds | 404        | GET       | BREEDS |

  @400
  Scenario Outline: Obtengo un id de una imagen
    When realizo una peticion '<operation>' a '<entity>' al endpoint de imageId - '<request>'
    Then obtengo el status code '<statusCode>'
    @FindIdCat
    Examples:
      | request        | statusCode | operation | entity |
      | request/cat_id | 400        | GET       | ID     |