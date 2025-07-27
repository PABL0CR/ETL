# Proyecto

## Descripción

Este proyecto consiste en la construcción de un sistema de análisis de datos para una empresa minorista, con el objetivo de optimizar la rentabilidad y las estrategias comerciales. A partir de un conjunto de datos históricos de ventas, se desarrolla un Data Warehouse con modelo dimensional tipo estrella, que facilita el análisis eficiente y estructurado de la información.

Incluye la limpieza y transformación de datos, el modelamiento de dimensiones y tabla de hechos, la carga automatizada en una base de datos MySQL y la generación de reportes analíticos para responder preguntas clave sobre comportamiento del cliente, desempeño de productos y rendimiento por regiones.
## Objetivos

Este proyecto busca aplicar técnicas de análisis de datos para optimizar la rentabilidad y las estrategias de venta de una empresa minorista. A través del análisis histórico de ventas, se pretende identificar patrones clave como:
- Comportamiento del cliente.
- Productos más y menos rentables.
- Productos más vendidos por región o país.

Este análisis permite responder preguntas como:
- ¿Qué categorías de productos fueron las más vendidas?
- ¿Qué estados y regiones presentaron las mayores ventas?
  
## Tecnologías

- MySQL
- Python
- Power BI

## ✅ Pasos del Proyecto

1. **Estudio del contexto del negocio**

   * Se realizó un análisis del entorno y problemática de la empresa minorista.
   * Se definieron los objetivos generales y específicos del proyecto, junto con el alcance del análisis.

2. **Análisis exploratorio**

   * Se examinó el conjunto de datos para comprender su estructura, volumen y contenido.
   * Se exploraron variables clave como ventas, descuentos, utilidades, productos y segmentos de clientes.
   * Se identificaron patrones iniciales y oportunidades de análisis más profundo.

3. **Carga y limpieza de datos utilizando Python**

   * Se cargó el dataset en un entorno de análisis utilizando Python (pandas).
   * Se eliminaron valores nulos y registros duplicados.
   * Se transformaron formatos de fecha, texto y valores numéricos.
   * Se removieron columnas irrelevantes y se normalizaron nombres de categorías y productos.

4. **Modelamiento del Data Warehouse en MySQL (modelo estrella)**

   * Se diseñó un modelo dimensional tipo estrella para optimizar consultas analíticas.
   * Se implementaron 4 tablas de dimensiones:

     * `dim_cliente`: contiene información del cliente (ID, nombre, segmento).
     * `dim_producto`: contiene información del producto (ID, nombre, categoría, subcategoría).
     * `dim_region`: describe ubicación geográfica (ciudad, estado, región).
     * `dim_tiempo`: descompone la fecha de pedido en año, mes y día.
   * La **tabla de hechos principal** `hechos_ventas` centraliza las métricas clave: monto de venta, utilidad, cantidad y descuento.
   * Se definieron claves foráneas entre la tabla de hechos y las dimensiones para mantener la integridad referencial.
   * Se siguió el orden correcto de carga: primero las dimensiones y luego la tabla de hechos.
  
5. **Implementación en Python y SQL**

   * Se desarrollaron scripts en Python para procesar y transformar los datos originales, creando dimensiones y tabla de hechos para el Data Warehouse.
   * Se aplicaron técnicas de limpieza, normalización y creación de IDs incrementales para las dimensiones.
   * Se creó la base de datos ventasdb en MySQL y se definieron las tablas con claves primarias y foráneas.
   * Se automatizó la carga de datos usando Python (SQLAlchemy y pandas), respetando la integridad referencial.

6. **Visualización y Transformación Semántica en Power BI**
Una vez cargados los datos en MySQL, se conectó la base de datos al entorno de Power BI utilizando MySQL Connector. Esto permitió importar directamente las tablas del Data Warehouse al modelo de datos de Power BI.
A través de Power Query, se aplicaron transformaciones semánticas a las dimensiones para mejorar la comprensión del modelo por parte de usuarios hispanohablantes:

🔄 Traducción de Categorías
  * En la tabla `dim_cliente`, se tradujo el campo segmento:
    * Consumer → Consumidor
    * Corporate → Corporativo
    * Home Office → Trabajo en Casa
  * En la tabla `dim_region`, se tradujo el campo region:
    * South → Sur
    * West → Oeste
    * Central → Centro
    * East → Este
  * En la tabla `dim_producto`, se tradujo el campo categoría:
    * Furniture → Muebles
    * Office Supplies → Útiles de Oficina
    * Technology → Tecnología
      
7. **Resultados**

    <img width="1430" height="801" alt="image" src="https://github.com/user-attachments/assets/3b424fdd-bc98-4ca5-a249-36de6236cf11" />

