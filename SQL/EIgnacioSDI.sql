CREATE DATABASE EIgnacioSDI

DROP TABLE Empleados

CREATE TABLE Empleados(
	IdEmpleado INT PRIMARY KEY IDENTITY(1,1),
	Nombre VARCHAR(50),
	ApellidoPaterno VARCHAR(50),
	ApellidoMaterno VARCHAR(50),
	Edad INT,
	Fecha DATE
)
GO

CREATE PROCEDURE GetAll
AS
SELECT IdEmpleado,Nombre,ApellidoPaterno,ApellidoMaterno,Edad,Fecha FROM Empleados
GO

CREATE PROCEDURE EmpleadoGetById
@IdEmpleado INT 
AS
SELECT IdEmpleado,Nombre,ApellidoPaterno,ApellidoMaterno,Edad,Fecha FROM Empleados
WHERE IdEmpleado=@IdEmpleado
GO

ALTER PROCEDURE EmpleadoAdd
	@Nombre VARCHAR(50),
	@ApellidoPaterno VARCHAR(50),
	@ApellidoMaterno VARCHAR(50),
	@Edad INT,
	@Fecha DATE
AS
INSERT INTO Empleados(Nombre,ApellidoPaterno,ApellidoMaterno,Edad,Fecha) VALUES(@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Edad,@Fecha)
go

CREATE PROCEDURE EmpleadoDelete 
@IdEmpleado INT
AS
DELETE FROM Empleados WHERE IdEmpleado=@IdEmpleado

go

CREATE PROCEDURE EmpleadoUpdate
	@IdEmpleado INT,
	@Nombre VARCHAR(50),
	@ApellidoPaterno VARCHAR(50),
	@ApellidoMaterno VARCHAR(50),
	@Edad INT,
	@Fecha DATE
	AS
UPDATE Empleados SET Nombre=@Nombre,ApellidoPaterno=@ApellidoPaterno,ApellidoMaterno=@ApellidoMaterno,Edad=@Edad,Fecha=@Fecha
go