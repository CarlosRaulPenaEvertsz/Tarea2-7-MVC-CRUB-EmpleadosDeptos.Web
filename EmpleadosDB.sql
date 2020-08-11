USE [master]
GO
/****** Object:  Database [EmpleadoDB]    Script Date: Aug/10/2020 10:33:33 PM ******/
CREATE DATABASE [EmpleadoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmpleadoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EmpleadoDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmpleadoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\EmpleadoDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [EmpleadoDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmpleadoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmpleadoDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmpleadoDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmpleadoDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmpleadoDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmpleadoDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmpleadoDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EmpleadoDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmpleadoDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmpleadoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmpleadoDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmpleadoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmpleadoDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmpleadoDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmpleadoDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmpleadoDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EmpleadoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmpleadoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmpleadoDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmpleadoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmpleadoDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmpleadoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EmpleadoDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmpleadoDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmpleadoDB] SET  MULTI_USER 
GO
ALTER DATABASE [EmpleadoDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmpleadoDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmpleadoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmpleadoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmpleadoDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmpleadoDB] SET QUERY_STORE = OFF
GO
USE [EmpleadoDB]
GO
/****** Object:  Table [dbo].[TBL_DEPARTAMENTO]    Script Date: Aug/10/2020 10:33:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_DEPARTAMENTO](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_DEPARTAMENTO] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_EMPLEADO]    Script Date: Aug/10/2020 10:33:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_EMPLEADO](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Cedula] [varchar](20) NULL,
	[Cargo] [varchar](50) NULL,
	[Departamento] [int] NOT NULL,
	[Sueldo] [decimal](9, 2) NULL,
 CONSTRAINT [PK_TBL_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_DEPARTAMENTO] ON 

INSERT [dbo].[TBL_DEPARTAMENTO] ([Codigo], [Nombre]) VALUES (1, N'Departamento de IT')
INSERT [dbo].[TBL_DEPARTAMENTO] ([Codigo], [Nombre]) VALUES (2, N'Departamento de Ventas')
INSERT [dbo].[TBL_DEPARTAMENTO] ([Codigo], [Nombre]) VALUES (3, N'Departamento de Contabilidad')
SET IDENTITY_INSERT [dbo].[TBL_DEPARTAMENTO] OFF
SET IDENTITY_INSERT [dbo].[TBL_EMPLEADO] ON 

INSERT [dbo].[TBL_EMPLEADO] ([Codigo], [Nombre], [Cedula], [Cargo], [Departamento], [Sueldo]) VALUES (1, N'Valerio Paniagua', N'00102349213', N'Programador', 1, CAST(70000.00 AS Decimal(9, 2)))
INSERT [dbo].[TBL_EMPLEADO] ([Codigo], [Nombre], [Cedula], [Cargo], [Departamento], [Sueldo]) VALUES (2, N'Isidro Camasta', N'00106457212', N'Representante de Ventas', 2, CAST(50000.00 AS Decimal(9, 2)))
INSERT [dbo].[TBL_EMPLEADO] ([Codigo], [Nombre], [Cedula], [Cargo], [Departamento], [Sueldo]) VALUES (3, N'Hector Pellerano', N'00105455541', N'Contable', 3, CAST(50000.00 AS Decimal(9, 2)))
INSERT [dbo].[TBL_EMPLEADO] ([Codigo], [Nombre], [Cedula], [Cargo], [Departamento], [Sueldo]) VALUES (4, N'Carlos Pena ', N'00101751105', N'Mensajero', 3, CAST(15000.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[TBL_EMPLEADO] OFF
ALTER TABLE [dbo].[TBL_EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_TBL_EMPLEADO_TBL_DEPARTAMENTO] FOREIGN KEY([Departamento])
REFERENCES [dbo].[TBL_DEPARTAMENTO] ([Codigo])
GO
ALTER TABLE [dbo].[TBL_EMPLEADO] CHECK CONSTRAINT [FK_TBL_EMPLEADO_TBL_DEPARTAMENTO]
GO
USE [master]
GO
ALTER DATABASE [EmpleadoDB] SET  READ_WRITE 
GO
