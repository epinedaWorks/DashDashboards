-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS tienda_ventas;
USE tienda_ventas;

-- Crear la tabla
DROP TABLE IF EXISTS ventas;
CREATE TABLE ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_compra DATE,
    producto VARCHAR(100),
    categoria VARCHAR(50),
    cantidad INT,
    monto DECIMAL(10,2),
    region VARCHAR(50)
);

-- Insertar registros
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-21', 'Cafetera Z', 'Hogar', 1, 75.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-08', 'Mouse Inalámbrico', 'Electrónica', 2, 120.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-22', 'Cámara Web HD', 'Electrónica', 1, 70.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-14', 'Tablet A3', 'Electrónica', 1, 300.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-07', 'Mouse Inalámbrico', 'Electrónica', 5, 300.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-01', 'Cámara Web HD', 'Electrónica', 2, 140.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-14', 'Mouse Inalámbrico', 'Electrónica', 4, 240.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-09', 'Laptop X1', 'Electrónica', 2, 2400.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-11', 'Mesa de Oficina', 'Mobiliario', 2, 440.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-25', 'Refrigeradora K', 'Hogar', 1, 800.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-13', 'Cafetera Z', 'Hogar', 3, 225.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-20', 'Mesa de Oficina', 'Mobiliario', 1, 220.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-18', 'Cafetera Z', 'Hogar', 4, 300.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-18', 'Aspiradora X', 'Hogar', 5, 900.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-19', 'Monitor 24"', 'Electrónica', 1, 200.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-22', 'Mouse Inalámbrico', 'Electrónica', 3, 180.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-28', 'Mouse Inalámbrico', 'Electrónica', 1, 60.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-09', 'Reloj Inteligente', 'Electrónica', 3, 750.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-12', 'Smartphone Z2', 'Electrónica', 2, 1300.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-23', 'Audífonos Y', 'Electrónica', 5, 450.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-18', 'Mouse Inalámbrico', 'Electrónica', 2, 120.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-13', 'Mesa de Oficina', 'Mobiliario', 5, 1100.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-22', 'Refrigeradora K', 'Hogar', 1, 800.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-27', 'Tablet A3', 'Electrónica', 3, 900.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-09', 'Audífonos Y', 'Electrónica', 2, 180.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-29', 'Refrigeradora K', 'Hogar', 2, 1600.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-13', 'Reloj Inteligente', 'Electrónica', 2, 500.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-05', 'Mouse Inalámbrico', 'Electrónica', 5, 300.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-09', 'Almohada Memory', 'Hogar', 4, 180.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-13', 'Smartphone Z2', 'Electrónica', 2, 1300.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-17', 'Sofá 3 Plazas', 'Mobiliario', 1, 450.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-28', 'Cafetera Z', 'Hogar', 2, 150.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-26', 'Bocinas Bluetooth', 'Electrónica', 5, 450.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-13', 'Lámpara LED', 'Hogar', 5, 150.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-17', 'Mesa de Oficina', 'Mobiliario', 5, 1100.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-22', 'Cafetera Z', 'Hogar', 5, 375.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-25', 'Refrigeradora K', 'Hogar', 1, 800.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-14', 'Teclado Mecánico', 'Electrónica', 4, 400.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-24', 'Mesa de Oficina', 'Mobiliario', 5, 1100.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-17', 'Cafetera Z', 'Hogar', 3, 225.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-20', 'Monitor 24"', 'Electrónica', 2, 400.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-25', 'Teclado Mecánico', 'Electrónica', 5, 500.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-30', 'Laptop X1', 'Electrónica', 5, 6000.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-16', 'Laptop X1', 'Electrónica', 1, 1200.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-29', 'Aspiradora X', 'Hogar', 2, 360.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-08', 'Almohada Memory', 'Hogar', 1, 45.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-24', 'Sofá 3 Plazas', 'Mobiliario', 1, 450.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-25', 'Silla Ergonómica', 'Mobiliario', 2, 300.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-18', 'Teclado Mecánico', 'Electrónica', 3, 300.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-28', 'Router Wi-Fi 6', 'Electrónica', 4, 720.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-30', 'Cámara Web HD', 'Electrónica', 2, 140.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-13', 'Smartphone Z2', 'Electrónica', 4, 2600.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-15', 'Cafetera Z', 'Hogar', 2, 150.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-03', 'Refrigeradora K', 'Hogar', 1, 800.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-18', 'Mouse Inalámbrico', 'Electrónica', 5, 300.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-01', 'Audífonos Y', 'Electrónica', 1, 90.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-03', 'Tablet A3', 'Electrónica', 3, 900.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-17', 'Mouse Inalámbrico', 'Electrónica', 3, 180.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-07', 'Cámara Web HD', 'Electrónica', 2, 140.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-19', 'Sofá 3 Plazas', 'Mobiliario', 2, 900.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-26', 'Bocinas Bluetooth', 'Electrónica', 2, 180.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-04', 'Bocinas Bluetooth', 'Electrónica', 3, 270.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-14', 'Reloj Inteligente', 'Electrónica', 1, 250.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-02', 'Lámpara LED', 'Hogar', 3, 90.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-08', 'Monitor 24"', 'Electrónica', 2, 400.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-15', 'Silla Ergonómica', 'Mobiliario', 4, 600.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-09', 'Reloj Inteligente', 'Electrónica', 2, 500.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-15', 'Cámara Web HD', 'Electrónica', 1, 70.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-21', 'Cámara Web HD', 'Electrónica', 1, 70.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-30', 'Mouse Inalámbrico', 'Electrónica', 2, 120.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-16', 'Sofá 3 Plazas', 'Mobiliario', 2, 900.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-29', 'Tablet A3', 'Electrónica', 2, 600.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-01', 'Lámpara LED', 'Hogar', 3, 90.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-10', 'Bocinas Bluetooth', 'Electrónica', 5, 450.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-05', 'Monitor 24"', 'Electrónica', 3, 600.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-02', 'Almohada Memory', 'Hogar', 5, 225.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-24', 'Refrigeradora K', 'Hogar', 1, 800.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-19', 'Sofá 3 Plazas', 'Mobiliario', 5, 2250.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-06', 'Tablet A3', 'Electrónica', 5, 1500.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-28', 'Teclado Mecánico', 'Electrónica', 1, 100.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-03', 'Mouse Inalámbrico', 'Electrónica', 4, 240.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-29', 'Almohada Memory', 'Hogar', 2, 90.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-20', 'Tablet A3', 'Electrónica', 5, 1500.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-14', 'Almohada Memory', 'Hogar', 5, 225.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-11', 'Mesa de Oficina', 'Mobiliario', 2, 440.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-08', 'Mesa de Oficina', 'Mobiliario', 4, 880.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-22', 'Aspiradora X', 'Hogar', 4, 720.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-30', 'Audífonos Y', 'Electrónica', 1, 90.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-20', 'Almohada Memory', 'Hogar', 1, 45.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-18', 'Monitor 24"', 'Electrónica', 5, 1000.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-05', 'Smartphone Z2', 'Electrónica', 1, 650.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-12', 'Aspiradora X', 'Hogar', 2, 360.00, 'Oeste');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-27', 'Cámara Web HD', 'Electrónica', 3, 210.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-26', 'Microondas Y', 'Hogar', 1, 130.00, 'Centro');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-10', 'Cafetera Z', 'Hogar', 2, 150.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-04', 'Cafetera Z', 'Hogar', 5, 375.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-09', 'Aspiradora X', 'Hogar', 5, 900.00, 'Sur');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-23', 'Refrigeradora K', 'Hogar', 2, 1600.00, 'Este');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-17', 'Sofá 3 Plazas', 'Mobiliario', 3, 1350.00, 'Norte');
INSERT INTO ventas (fecha_compra, producto, categoria, cantidad, monto, region) VALUES ('2025-04-03', 'Bocinas Bluetooth', 'Electrónica', 3, 270.00, 'Norte');
