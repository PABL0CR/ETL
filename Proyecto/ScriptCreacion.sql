CREATE TABLE hechos_ventas (
    id_venta INT PRIMARY KEY,
    id_cliente VARCHAR(50),
    id_producto VARCHAR(50),
    id_region INT,
    id_tiempo INT,
    monto_venta DECIMAL(12,2),
    utilidad DECIMAL(12,2),
    cantidad INT,
    descuento DECIMAL(5,2),
    FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES dim_producto(id_producto),
    FOREIGN KEY (id_region) REFERENCES dim_region(id_region),
    FOREIGN KEY (id_tiempo) REFERENCES dim_tiempo(id_tiempo)
);

CREATE TABLE dim_cliente (
    id_cliente VARCHAR(50) PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    segmento VARCHAR(50)
);

CREATE TABLE dim_producto (
    id_producto VARCHAR(50) PRIMARY KEY,
    nombre_producto VARCHAR(150),
    subcategoria VARCHAR(50),
    categoria VARCHAR(50)
);

CREATE TABLE dim_region (
    id_region INT PRIMARY KEY,
    ciudad VARCHAR(100),
    estado VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE dim_tiempo (
    id_tiempo INT PRIMARY KEY,
    anio INT,
    mes INT,
    dia INT
);
