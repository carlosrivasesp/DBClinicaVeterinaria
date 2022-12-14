USE [master]
GO
/****** Object:  Database [DBClinicaMascotas]    Script Date: 6/09/2022 09:51:49 ******/
CREATE DATABASE [DBClinicaMascotas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBClinicaMascotas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBClinicaMascotas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBClinicaMascotas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DBClinicaMascotas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBClinicaMascotas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBClinicaMascotas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBClinicaMascotas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBClinicaMascotas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBClinicaMascotas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBClinicaMascotas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBClinicaMascotas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET RECOVERY FULL 
GO
ALTER DATABASE [DBClinicaMascotas] SET  MULTI_USER 
GO
ALTER DATABASE [DBClinicaMascotas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBClinicaMascotas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBClinicaMascotas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBClinicaMascotas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBClinicaMascotas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBClinicaMascotas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DBClinicaMascotas', N'ON'
GO
ALTER DATABASE [DBClinicaMascotas] SET QUERY_STORE = OFF
GO
USE [DBClinicaMascotas]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 6/09/2022 09:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDCliente] [int] IDENTITY(1,1) NOT NULL,
	[Apellidos] [varchar](255) NULL,
	[Nombres] [varchar](255) NULL,
	[DNI] [varchar](255) NULL,
	[Telefono] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[Distrito] [varchar](255) NULL,
	[NroCuentaBancaria] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 6/09/2022 09:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[IDEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Apellidos] [varchar](255) NULL,
	[Nombres] [varchar](255) NULL,
	[DNI] [varchar](255) NULL,
	[Sexo] [char](1) NULL,
	[Telefono] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Direccion] [varchar](255) NULL,
	[Distrito] [varchar](255) NULL,
	[Foto] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mascota]    Script Date: 6/09/2022 09:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mascota](
	[IDMascota] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NULL,
	[Especie] [varchar](255) NULL,
	[Raza] [varchar](255) NULL,
	[FechaNacimiento] [date] NULL,
	[Sexo] [char](1) NULL,
	[Dueño] [varchar](255) NULL,
	[Peso] [nvarchar](255) NULL,
	[ColorPelo] [varchar](255) NULL,
	[NroCita] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 6/09/2022 09:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IDProducto] [int] IDENTITY(1,1) NOT NULL,
	[TipoProducto] [varchar](255) NULL,
	[NombreProducto] [varchar](255) NULL,
	[Descripción] [varchar](255) NULL,
	[Precio] [decimal](5, 2) NULL,
	[Marca] [varchar](255) NULL,
	[Proveedor] [varchar](255) NULL,
	[Stock] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacuna]    Script Date: 6/09/2022 09:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacuna](
	[IDMascota] [int] IDENTITY(1,1) NOT NULL,
	[FechaActual] [date] NULL,
	[FechaProxima] [date] NULL,
	[NroVacunas] [int] NULL,
	[EnfermedadesVacunadas] [varchar](255) NULL,
	[VacunaContraEnfermedad] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMascota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([IDCliente], [Apellidos], [Nombres], [DNI], [Telefono], [Direccion], [Distrito], [NroCuentaBancaria]) VALUES (1, N'Rivas', N'Carlos', N'75330125', N'961826644', N'Surco', N'Surco', N'957284')
INSERT [dbo].[Cliente] ([IDCliente], [Apellidos], [Nombres], [DNI], [Telefono], [Direccion], [Distrito], [NroCuentaBancaria]) VALUES (2, N'Perez', N'Pedro', N'75492013', N'946581032', N'Barranco', N'Barranco', N'956418')
INSERT [dbo].[Cliente] ([IDCliente], [Apellidos], [Nombres], [DNI], [Telefono], [Direccion], [Distrito], [NroCuentaBancaria]) VALUES (3, N'Carpio', N'Grecia', N'75925313', N'956381043', N'Av. Larco', N'Miraflores', N'947193')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Empleado] ON 

INSERT [dbo].[Empleado] ([IDEmpleado], [Apellidos], [Nombres], [DNI], [Sexo], [Telefono], [Email], [Direccion], [Distrito], [Foto]) VALUES (1, N'QUIROZ', N'JUAN', N'74913422', N'M', N'927481243', N'quiroz33@gmail.com', N'surco', N'surco', N'fotoJuan')
INSERT [dbo].[Empleado] ([IDEmpleado], [Apellidos], [Nombres], [DNI], [Sexo], [Telefono], [Email], [Direccion], [Distrito], [Foto]) VALUES (2, N'RODRIGUEZ', N'GASTON', N'74960138', N'M', N'946183013', N'gastonfeliz@gmail.com', N'chorrillos', N'chorrillos', N'fotoGaston')
INSERT [dbo].[Empleado] ([IDEmpleado], [Apellidos], [Nombres], [DNI], [Sexo], [Telefono], [Email], [Direccion], [Distrito], [Foto]) VALUES (3, N'ALVAREZ', N'LUIS', N'74914641', N'M', N'947184011', N'luizurb@gmail.com', N'surco', N'surco', N'fotoLuis')
SET IDENTITY_INSERT [dbo].[Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Mascota] ON 

INSERT [dbo].[Mascota] ([IDMascota], [Nombre], [Especie], [Raza], [FechaNacimiento], [Sexo], [Dueño], [Peso], [ColorPelo], [NroCita]) VALUES (1, N'Benito', N'Perro', N'Shih-Tzu', CAST(N'2020-03-29' AS Date), N'M', N'Carlos', N'5 kg', N'Blanco con manchas marrones', 1)
INSERT [dbo].[Mascota] ([IDMascota], [Nombre], [Especie], [Raza], [FechaNacimiento], [Sexo], [Dueño], [Peso], [ColorPelo], [NroCita]) VALUES (2, N'Akira', N'Perro', N'Pitbull', CAST(N'2021-04-11' AS Date), N'H', N'Pedro', N'10 kg', N'Negro', 2)
INSERT [dbo].[Mascota] ([IDMascota], [Nombre], [Especie], [Raza], [FechaNacimiento], [Sexo], [Dueño], [Peso], [ColorPelo], [NroCita]) VALUES (3, N'Bonnie', N'Gato', N'Persa', CAST(N'2019-06-12' AS Date), N'H', N'Grecia', N'3 kg', N'Mostaza', 3)
SET IDENTITY_INSERT [dbo].[Mascota] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IDProducto], [TipoProducto], [NombreProducto], [Descripción], [Precio], [Marca], [Proveedor], [Stock]) VALUES (1, N'Shampoo', N'Shampoo para perro alergico', N'solo para perros alergicos', CAST(29.90 AS Decimal(5, 2)), N'Ricocan', N'PEPE', 22)
INSERT [dbo].[Producto] ([IDProducto], [TipoProducto], [NombreProducto], [Descripción], [Precio], [Marca], [Proveedor], [Stock]) VALUES (2, N'Juguete', N'Hueso para perro', N'hueso antiestrés', CAST(19.90 AS Decimal(5, 2)), N'PerroFino', N'LUIS', 23)
INSERT [dbo].[Producto] ([IDProducto], [TipoProducto], [NombreProducto], [Descripción], [Precio], [Marca], [Proveedor], [Stock]) VALUES (3, N'Jueguete', N'Pelota para perro', N'Pelota de goma', CAST(15.90 AS Decimal(5, 2)), N'GUAU', N'PERRITOFACHERO', 20)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacuna] ON 

INSERT [dbo].[Vacuna] ([IDMascota], [FechaActual], [FechaProxima], [NroVacunas], [EnfermedadesVacunadas], [VacunaContraEnfermedad]) VALUES (1, CAST(N'2022-03-02' AS Date), CAST(N'2022-06-02' AS Date), 2, N'RABIA', N'RABIA')
INSERT [dbo].[Vacuna] ([IDMascota], [FechaActual], [FechaProxima], [NroVacunas], [EnfermedadesVacunadas], [VacunaContraEnfermedad]) VALUES (2, CAST(N'2022-04-02' AS Date), CAST(N'2022-08-02' AS Date), 3, N'RABIA', N'RABIA')
INSERT [dbo].[Vacuna] ([IDMascota], [FechaActual], [FechaProxima], [NroVacunas], [EnfermedadesVacunadas], [VacunaContraEnfermedad]) VALUES (3, CAST(N'2022-05-02' AS Date), CAST(N'2022-09-02' AS Date), 4, N'RABIA', N'RABIA')
SET IDENTITY_INSERT [dbo].[Vacuna] OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Mascota] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Mascota] ([IDMascota])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Mascota]
GO
ALTER TABLE [dbo].[Mascota]  WITH CHECK ADD  CONSTRAINT [FK_Mascota_Empleado] FOREIGN KEY([IDMascota])
REFERENCES [dbo].[Empleado] ([IDEmpleado])
GO
ALTER TABLE [dbo].[Mascota] CHECK CONSTRAINT [FK_Mascota_Empleado]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Cliente] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Cliente] ([IDCliente])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Cliente]
GO
ALTER TABLE [dbo].[Vacuna]  WITH CHECK ADD  CONSTRAINT [FK_Vacuna_Mascota] FOREIGN KEY([IDMascota])
REFERENCES [dbo].[Mascota] ([IDMascota])
GO
ALTER TABLE [dbo].[Vacuna] CHECK CONSTRAINT [FK_Vacuna_Mascota]
GO
USE [master]
GO
ALTER DATABASE [DBClinicaMascotas] SET  READ_WRITE 
GO
