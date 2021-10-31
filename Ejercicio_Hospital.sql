/*Adiel Adonay Carcamo Montenegro*/

Create Database P_Hospital

use P_Hospital

Create table Genero(
id_Genero int NOT NULL identity (1,1) primary key,
N_Genero varchar(50)
);

insert into Genero (N_Genero) values ('Masculino')
insert into Genero (N_Genero) values ('Femenino')
insert into Genero (N_Genero) values ('Masculino')
insert into Genero (N_Genero) values ('Masculino')
insert into Genero (N_Genero) values ('Femenino')
insert into Genero (N_Genero) values ('Masculino')
insert into Genero (N_Genero) values ('Masculino')
insert into Genero (N_Genero) values ('Femenino')
insert into Genero (N_Genero) values ('Femenino')
insert into Genero (N_Genero) values ('Masculino')


Create table Telefono(
id_Telefono int NOT NULL identity (1,1) primary key,
N_Telefono int,
Codigo_Area int 
);

insert into Telefono(N_Telefono, Codigo_Area) values (76788978, 503)
insert into Telefono(N_Telefono, Codigo_Area) values (73675678, 503)
insert into Telefono(N_Telefono, Codigo_Area) values (61456544, 502)
insert into Telefono(N_Telefono, Codigo_Area) values (76673345, 503)
insert into Telefono(N_Telefono, Codigo_Area) values (63789967, 504)
insert into Telefono(N_Telefono, Codigo_Area) values (79988876, 503)
insert into Telefono(N_Telefono, Codigo_Area) values (63967809, 504)
insert into Telefono(N_Telefono, Codigo_Area) values (61278956, 503)
insert into Telefono(N_Telefono, Codigo_Area) values (69785677, 502)
insert into Telefono(N_Telefono, Codigo_Area) values (73967809, 503)

Create table Datos_P (
id_DatosP int NOT NULL identity (1,1) primary key,
N_Provincia varchar(50),
Domicilio varchar(50),
Codigo_Postal int
);



insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('San Salvador', 'Mejicanos', 1120)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('San Salvador', 'Ciudad Delgado', 1230)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('Baja Verapaz', 'San Jeronimo', 15007)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('Chalatenango', 'La Palma', 01315)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('Colon', 'Trujillo', 32101)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('San Miguel', 'San Rafael', 3322)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('Cortes', 'San Pedro Sula', 20978)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('La Paz', 'Comalapa', 4567)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('Alta Verapaz', 'Coban', 16001)
insert into Datos_P(N_Provincia, Domicilio, Codigo_Postal) values ('Santa Ana', 'Metapan', 02007)
select * from Datos_P


Create table Pacientes(
id_NumHistorialClínico int NOT NULL identity (1,1) primary key,
NombrePaciente varchar (50) NOT NULL,
ApellidoPaciente varchar (50) NOT NULL,
NumSeguridadSocial bigint not null,
Observaciones varchar (100) NOT NULL,
id_Genero int foreign key (id_Genero) references Genero(id_Genero) NOT NULL,
id_Telefono int foreign key (id_Telefono) references Telefono(id_Telefono) NOT NULL,
id_DatosP int foreign key (id_DatosP) references Datos_P(id_DatosP) NOT NULL,
);


/*Insertar 10 pacientes*/
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (1, 1, 1, 'Jose', 'Argueta', 76678909756, 'El paciente expreso sentirse mejor')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (2, 2, 2, 'Gaby', 'Beltran', 67987645673, 'El paciente expreso sentir mejoria')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (3, 3, 3, 'Melvin', 'Lopez', 76564587987, 'El paciente expreso que el medicamento le ocasiona mareos')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (4, 4, 4, 'Gabriel', 'Escobar', 89097867564, 'El paciente expreso no sentir ninguna mejoria')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (5, 5, 5, 'Diana', 'Ramos', 89786786578, 'El paciente expreso sentir mejoria con su tratamiento')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (6, 6, 6, 'Steven', 'Guardado', 47890124567, 'El paciente mostro sintomas de empeoramiento')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (7, 7, 7, 'Juan', 'Santamaria', 74567234567, 'El paciente dijo sentirse mejor')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (8, 8, 8, 'Francisca', 'Cortez', 75632567890, 'El paciente no presento mejorias')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (9, 9, 9, 'Keyri', 'Fuentes',75679134567, 'El paciente mostro sintomas de empeoramiento')
insert into Pacientes(id_Genero, id_Telefono, id_DatosP, NombrePaciente, ApellidoPaciente, NumSeguridadSocial, Observaciones) 
values (10, 10, 10, 'Antonio', 'Portillo', 73678954689, 'El paciente dijo sentirse mejor')
select * from Pacientes

-------------------------------------------------------------------------------------------

Create table Especialidad (
id_Especialidad int NOT NULL identity (1,1) primary key,
Nombre_E varchar(50),
);
insert into Especialidad(Nombre_E) values ('Cirugia')
insert into Especialidad(Nombre_E) values ('Odontologia')
insert into Especialidad(Nombre_E) values ('Medicina General')
insert into Especialidad(Nombre_E) values ('Psicologia')
insert into Especialidad(Nombre_E) values ('Cardiologia')
insert into Especialidad(Nombre_E) values ('Ortopedia')

Create Table Cargo(
id_Cargo int NOT NULL identity (1,1) primary key,
N_Cargo varchar(50)
);
insert into Cargo(N_Cargo) values ('Jefe de Quirofano')
insert into Cargo(N_Cargo) values ('Cirugia')
insert into Cargo(N_Cargo) values ('Consultas Generales')
insert into Cargo(N_Cargo) values ('Psicologo Clinico')
insert into Cargo(N_Cargo) values ('Especialista')
insert into Cargo(N_Cargo) values ('Terapeuta')

UPDATE Cargo
set N_Cargo = 'Odontologo'
where N_Cargo = 'Cirugia'
select * from Cargo

Create table Medicos (
Código_IdentificaciónMédico  int NOT NULL identity (1,1) primary key,
Nombre varchar (50) NOT NULL,
Apellidos varchar (50) NOT NULL,
NúmeroColegiado int,
Observaciones varchar (100),
id_Especialidad int foreign key (id_Especialidad) references Especialidad(id_Especialidad)NOT NULL,
id_Cargo int foreign key (id_Cargo) references Cargo(id_Cargo)NOT NULL
);

insert into Medicos(id_Especialidad, id_Cargo, Nombre, Apellidos, NúmeroColegiado, Observaciones) 
values (1, 1, 'Gabriel', 'Calderon', 789876765, 'El paciente atentido presenta un cuadro clinico delicado')
insert into Medicos(id_Especialidad, id_Cargo, Nombre, Apellidos, NúmeroColegiado, Observaciones) 
values (2, 2, 'Jose', 'Medina', 675675668, 'El paciente atendido padece de trastornos psicologicos')
insert into Medicos(id_Especialidad, id_Cargo, Nombre, Apellidos, NúmeroColegiado, Observaciones) 
values (3, 3, 'Antonio', 'Urbina', 899886561, 'El paciente atendido sera sometido a cirugia de corazon')
insert into Medicos(id_Especialidad, id_Cargo, Nombre, Apellidos, NúmeroColegiado, Observaciones) 
values (4, 4, 'Cristopher', 'Blanco', 998761092, 'El paciente atendido presenta muchas mejorias')
insert into Medicos(id_Especialidad, id_Cargo, Nombre, Apellidos, NúmeroColegiado, Observaciones) 
values (5, 5, 'Carolina', 'Pleitez', 677543154, 'El paciente atentido sera dado de alta ahora mismo')
insert into Medicos(id_Especialidad, id_Cargo, Nombre, Apellidos, NúmeroColegiado, Observaciones) 
values (6, 6, 'Eugenia', 'Landaverde', 908875101, 'El paciente atendido debera ser internado en cuidados intensivos')

select * from Medicos

------------------------------------------------------------------

Create table Info_Ingreso (
id_numeroCama int NOT NULL identity (1,1) primary key,
Numero_Planta int not null,
);

Insert into Info_Ingreso(Numero_Planta) values (2)
Insert into Info_Ingreso(Numero_Planta) values (1)
Insert into Info_Ingreso(Numero_Planta) values (3)
Insert into Info_Ingreso(Numero_Planta) values (3)
Insert into Info_Ingreso(Numero_Planta) values (3)
Insert into Info_Ingreso(Numero_Planta) values (1)
Insert into Info_Ingreso(Numero_Planta) values (1)
Insert into Info_Ingreso(Numero_Planta) values (2)
Insert into Info_Ingreso(Numero_Planta) values (2)
Insert into Info_Ingreso(Numero_Planta) values (2)
Insert into Info_Ingreso(Numero_Planta) values (3)
Insert into Info_Ingreso(Numero_Planta) values (3)
Insert into Info_Ingreso(Numero_Planta) values (2)
Insert into Info_Ingreso(Numero_Planta) values (2)
Insert into Info_Ingreso(Numero_Planta) values (1)
Insert into Info_Ingreso(Numero_Planta) values (1)
Insert into Info_Ingreso(Numero_Planta) values (1)
select * from Info_Ingreso

Create Table Ingresos (
id_ingreso int NOT NULL identity (1,1) primary key,
Procedencia varchar (50) NOT NULL,
Fecha_Ingreso date,
Observaciones  varchar (100) NOT NULL,
id_NumHistorialClínico int foreign key (id_NumHistorialClínico) references Pacientes(id_NumHistorialClínico) NOT NULL,
Código_IdentificaciónMédico int foreign key (Código_IdentificaciónMédico) references Medicos(Código_IdentificaciónMédico) NOT NULL,
id_numeroCama int foreign key (id_numeroCama) references Info_Ingreso(id_numeroCama) NOT NULL
);


insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones)
values (11, 13, 1, 'Ciudad Delgado', '2021-03-31', 'La persona no podia mantenerse de pie')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (12, 14, 2, 'San Salvador', '2021-05-17', 'La persona presentaba mareos y no podia caminar')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (11, 13, 3, 'Ciudad Delgado', '2020-12-25', 'La persona presentaba un estado grave')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (13, 14, 4, 'Ahuchapan', '2021-03-22', 'La persona parecia estar en estado critico')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (14, 13, 5, 'San Jacinto', '2021-09-12', 'La persona no podia caminar por si sola')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (15, 17, 6, 'Tegucigalpa', '2021-08-09', 'La persona expresaba gritos de dolor por su problema de salud')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (16, 18, 7, 'El Calvario', '2021-10-12', 'La persona fue transportada en una ambulancia')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (17, 16, 8, 'Chimaltenango', '2021-10-20', 'La persona no contaba con un acompañante')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (15, 15, 9, 'Tegucigalpa', '2021-09-21', 'La persona parecia estar en estado critico')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (18, 16, 10, 'Nonualco', '2021-10-21', 'La persona no podia caminar por si sola')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (19, 13, 11, 'Citala', '2021-10-01', 'La persona presentaba un estado grave')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (20, 18, 12, 'Comalapa', '2021-10-18', 'La persona no contaba con un acompañante')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (13, 15, 13, 'Ahuchapan', '2021-09-28', 'El paciente parecia estar en un estado critico')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (14, 17, 14, 'Ciudad Merliot', '2021-10-06', 'La persona fue transportada en una ambulancia')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (16, 16, 15, 'El Calvario', '2021-10-08', 'La persona fue transportada en una ambulancia')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (17, 14, 16, 'Chimaltenango', '2021-10-10', 'La persona no contaba con un acompañante')
insert into Ingresos(id_NumHistorialClínico, Código_IdentificaciónMédico, id_numeroCama, Procedencia, Fecha_Ingreso, Observaciones) 
values (18, 14, 17, 'Nonualco', '2021-08-15', 'La persona presentaba un estado grave')

select * from Ingresos
