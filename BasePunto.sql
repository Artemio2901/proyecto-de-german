-- Creación de la base de datos PuntoDeVenta
CREATE DATABASE IF NOT EXISTS PuntoDeVenta;
USE PuntoDeVenta;

-- Tabla para los Empleados
CREATE TABLE IF NOT EXISTS Empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NULL,
    cargo VARCHAR(50) NOT NULL
);

-- Tabla para los Productos
CREATE TABLE IF NOT EXISTS Productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
	codigo VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla para las Ventas
CREATE TABLE IF NOT EXISTS Ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    producto_codigo VARCHAR(50) NOT NULL,
    FOREIGN KEY (producto_codigo) REFERENCES Productos(codigo)
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    nombre_completo VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    activo TINYINT(1) DEFAULT 1
);
-- Insertar empleados
INSERT INTO Empleados (nombre, correo, telefono, cargo) VALUES
('Juan Pérez', 'juan.perez@example.com', '555-1234', 'Cajero'),
('María García', 'maria.garcia@example.com', '555-5678', 'Gerente'),
('Luis López', 'luis.lopez@example.com', '555-8765', 'Vendedor'),
('Ana Hernández', 'ana.hernandez@example.com', '555-4321', 'Cajero'),
('Carlos Sánchez', 'carlos.sanchez@example.com', '555-1111', 'Gerente'),
('Lucía Martínez', 'lucia.martinez@example.com', '555-2222', 'Vendedor'),
('José Rodríguez', 'jose.rodriguez@example.com', '555-3333', 'Cajero'),
('Sofía González', 'sofia.gonzalez@example.com', '555-4444', 'Supervisor'),
('Miguel Fernández', 'miguel.fernandez@example.com', '555-5555', 'Vendedor'),
('Isabel Romero', 'isabel.romero@example.com', '555-6666', 'Gerente'),
('Pablo Torres', 'pablo.torres@example.com', '555-7777', 'Cajero'),
('Elena Ruiz', 'elena.ruiz@example.com', '555-8888', 'Supervisor'),
('David Ramírez', 'david.ramirez@example.com', '555-9999', 'Vendedor'),
('Sara Morales', 'sara.morales@example.com', '555-0000', 'Cajero'),
('Ricardo Ortega', 'ricardo.ortega@example.com', '555-1122', 'Vendedor'),
('Valeria Vargas', 'valeria.vargas@example.com', '555-2233', 'Gerente'),
('Andrés Silva', 'andres.silva@example.com', '555-3344', 'Supervisor'),
('Paula Castro', 'paula.castro@example.com', '555-4455', 'Vendedor'),
('Tomás Delgado', 'tomas.delgado@example.com', '555-5566', 'Cajero'),
('Clara Mendoza', 'clara.mendoza@example.com', '555-6677', 'Gerente');

-- Insertar productos
INSERT INTO Productos (nombre, descripcion, precio, stock, codigo) VALUES
('Manzanas', 'Fruta fresca de temporada', 0.50, 100, 'P001'),
('Peras', 'Fruta jugosa y dulce', 0.60, 80, 'P002'),
('Plátanos', 'Bananas amarillas', 0.40, 120, 'P003'),
('Leche', 'Leche entera pasteurizada', 1.20, 50, 'P004'),
('Pan', 'Pan integral', 0.90, 30, 'P005'),
('Huevos', 'Docena de huevos', 1.80, 40, 'P006'),
('Arroz', 'Arroz blanco largo', 1.00, 70, 'P007'),
('Frijoles', 'Frijoles negros', 1.50, 60, 'P008'),
('Aceite', 'Aceite vegetal', 2.00, 20, 'P009'),
('Pollo', 'Pechuga de pollo', 3.50, 25, 'P010'),
('Carne de Res', 'Carne de res molida', 4.00, 15, 'P011'),
('Pescado', 'Filete de pescado', 5.00, 10, 'P012'),
('Zanahorias', 'Zanahorias frescas', 0.30, 100, 'P013'),
('Tomates', 'Tomates maduros', 0.40, 90, 'P014'),
('Lechuga', 'Lechuga fresca', 0.80, 50, 'P015'),
('Cebolla', 'Cebolla amarilla', 0.50, 70, 'P016'),
('Papas', 'Papas blancas', 0.70, 80, 'P017'),
('Cereal', 'Cereal de maíz', 2.50, 40, 'P018'),
('Azúcar', 'Azúcar blanca refinada', 1.20, 60, 'P019'),
('Café', 'Café molido', 3.00, 30, 'P020');

-- Insertar usuarios de prueba
INSERT INTO usuarios (username, password, nombre_completo, rol, activo)
VALUES 
('admin', MD5('1234'), 'Administrador', 'admin', 1),
('cajero', MD5('cajero123'), 'Cajero', 'cajero', 1);

select * from ventas;
