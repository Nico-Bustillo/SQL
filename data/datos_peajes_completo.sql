-- SQL Insert Statements for Toll System

INSERT INTO Categoria_Vehiculo (id, nombre) VALUES (1, 'Automóvil'), (2, 'Camión'), (3, 'Moto'), (4, 'Autobús');

INSERT INTO Sentido (id, nombre) VALUES (1, 'Norte'), (2, 'Sur'), (3, 'Este'), (4, 'Oeste');

INSERT INTO Tipo_Cabina (id, nombre) VALUES (1, 'Manual'), (2, 'Automático');

INSERT INTO Metodo_Pago (id, nombre) VALUES (1, 'Efectivo'), (2, 'Tarjeta de Crédito'), (3, 'Tarjeta de Débito');

INSERT INTO Propietario (id, nombre, dni_cuit) VALUES (1, 'Juan Pérez', '20304567890'), (2, 'Ana Gómez', '20305678901'), (3, 'Carlos Rodríguez', '20306789012');

INSERT INTO Vehiculo (id, propietario_id, patente) VALUES (1, 1, 'ABC 123'), (2, 1, 'XYZ 456'), (3, 2, 'LMN 789');

INSERT INTO Empleado (id, nom_ape_empleado, fecha_ingreso) VALUES (1, 'José Fernández', '2022-06-01'), (2, 'María López', '2023-01-15');

INSERT INTO Sueldo (id, empleado_id, monto) VALUES (1, 1, 35000.00), (2, 2, 42000.50);

INSERT INTO Cabina_Peaje (id, tipo_cabina_id, sentido_id) VALUES (1, 1, 1), (2, 2, 2);

INSERT INTO Tarifa_Peaje (id, cabina_peaje_id, monto) VALUES (1, 1, 20.00), (2, 2, 30.00);

INSERT INTO Peaje (id, cabina_peaje_id, vehiculo_id, tarifa_id, fec_hora) VALUES (1, 1, 1, 1, '2023-07-01 10:00:00'), (2, 2, 3, 2, '2023-07-01 11:00:00');

INSERT INTO Multa (id, vehiculo_id, monto, fecha) VALUES (1, 1, 500.00, '2023-07-02'), (2, 2, 750.00, '2023-07-03');

INSERT INTO Pago (id, peaje_id, monto, metodo_pago_id) VALUES (1, 1, 20.00, 1), (2, 2, 30.00, 2);

INSERT INTO Vehiculos_Por_Propietarios (id, vehiculo_id, propietario_id) VALUES (1, 1, 1), (2, 2, 1);

INSERT INTO Empleados_Por_Cabina (id, empleado_id, cabina_peaje_id) VALUES (1, 1, 1), (2, 2, 2);

INSERT INTO Mantenimiento (id, cabina_peaje_id, fecha, descripcion) VALUES (1, 1, '2023-08-01', 'Revisión mensual'), (2, 2, '2023-09-01', 'Cambio de aceite');

INSERT INTO Empleados_Por_Mantenimiento (id, empleado_id, mantenimiento_id) VALUES (1, 1, 1), (2, 2, 2);