drop database if exists shop2023;
create database shop2023;
use shop2023;


-- insert into producto (descripcion, imagen, precio, stock)
-- values ('Monitor', 'Monitor.png', 900, 10),
-- ('Camara', 'Camara.png', 850, 20),
-- ('Audifono', 'Audifono.png', 200, 30);

insert into categoria (descripcion, imagen, cantidad)
values('Amoladora', 'Amoladora.png',20),
('Atornilladora', 'Atornilladora.png',30),
('Rotomartillo', 'Rotomartillo.png',15),
('Taladro', 'Taladro.png',25);

select * from categoria;



insert into herramientas (descripcion, imagen, precio, stock, id_categoria)
values('Amoladora Bosch', 'Ambosch200.png', 200, 6, 1),
('Amoladora DeWalt', 'Amdewalt950.png', 950, 6, 1),
('Amoladora Stanley', 'Amstanley180.png', 180, 7, 1),
('Atornilladora Bosch', 'atbosch220.png', 220, 10, 2),
('Atornilladora DeWalt', 'atdewalt420.png', 420, 10, 2),
('Atornilladora Stanley', 'atstanley.png', 350, 10, 2),
('Rotomartillo Bosch', 'robosch.png',  360, 5, 3),
('Rotomartillo DeWalt', 'rodewalt.png', 340, 5, 3),
('Rotomartillo Stanley', 'rostanley.png', 410, 5, 3),
('Taladro Bosch', 'tabosch250.png', 250, 5, 4),
('Taladro DeWalt', 'tadewalt195.png', 350, 10, 4),
('Taladro Stanley', 'tastanley220.png', 220, 10, 4);

select * from herramientas;

SELECT 
	h.precio AS PRECIO_UNIDAD,
    c.descripcion AS CATEGORIA,
    h.descripcion AS NOMBRE_HERRAMIENTA,
    d.cantidad AS CANTIDAD,
    h.imagen AS HERRAMIENTA,
    d.subtotal AS SUBTOTAL,
    v.fecha_registro AS FECHA_VENTA,
    v.id_venta AS ID_VENTA
    
FROM 
    detalle d
JOIN herramientas h ON d.id_herramienta = h.id_herramienta
JOIN categoria c ON h.id_categoria = c.id_categoria
JOIN venta v ON d.id_venta = v.id_venta;


SELECT 
	h.precio AS PRECIO_UNIDAD,
    c.descripcion AS CATEGORIA,
    h.descripcion AS NOMBRE_HERRAMIENTA,
    d.cantidad AS CANTIDAD,
    h.imagen AS HERRAMIENTA,
    d.subtotal AS SUBTOTAL,
    v.fecha_registro AS FECHA_VENTA,
    v.id_venta AS ID_VENTA
    
FROM 
    detalle d
JOIN herramientas h ON d.id_herramienta = h.id_herramienta
JOIN categoria c ON h.id_categoria = c.id_categoria
JOIN venta v ON d.id_venta = v.id_venta

ORDER BY v.id_venta ASC;
