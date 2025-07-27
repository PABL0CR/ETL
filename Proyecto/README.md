# Proyecto

## Descripción

Este proyecto 

## Objetivos

Este proyecto busca aplicar técnicas de análisis de datos para optimizar la rentabilidad y las estrategias de venta de una empresa minorista. A través del análisis histórico de ventas, se pretende identificar patrones clave como:
- Comportamiento del cliente.
- Productos más y menos rentables.
- Productos más vendidos por región o país.

Este análisis permite responder preguntas como:
- ¿Qué categorías de productos fueron las más vendidas en los últimos seis meses de 2014?
- ¿Qué estados y regiones presentaron las menores ventas durante 2013 y 2014?
- ¿Qué segmento de clientes generó mayor rentabilidad en el último año?
  
## Tecnologías

## Pasos
Claro, aquí tienes una versión mejorada, ordenada y con redacción clara y profesional para los **pasos del proyecto**, ideal para incluir en tu GitHub:

---

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
