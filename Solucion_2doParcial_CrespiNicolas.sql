USE [master]
GO
/****** Object:  Database [Parcial2_BBDD]    Script Date: 28/6/2021 00:57:30 ******/
CREATE DATABASE [Parcial2_BBDD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Parcial2_BBDD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Parcial2_BBDD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Parcial2_BBDD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Parcial2_BBDD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Parcial2_BBDD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Parcial2_BBDD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Parcial2_BBDD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET ARITHABORT OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Parcial2_BBDD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Parcial2_BBDD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Parcial2_BBDD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Parcial2_BBDD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Parcial2_BBDD] SET  MULTI_USER 
GO
ALTER DATABASE [Parcial2_BBDD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Parcial2_BBDD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Parcial2_BBDD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Parcial2_BBDD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Parcial2_BBDD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Parcial2_BBDD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Parcial2_BBDD] SET QUERY_STORE = OFF
GO
USE [Parcial2_BBDD]
GO
/****** Object:  Table [dbo].[Agenda]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agenda](
	[IdAgenda] [int] IDENTITY(1,1) NOT NULL,
	[CodigoCurso] [int] NOT NULL,
	[Fecha] [date] NOT NULL,
	[Estado] [bit] NOT NULL,
	[IdAula] [int] NOT NULL,
	[IdCurso] [int] NOT NULL,
 CONSTRAINT [PK_Agenda] PRIMARY KEY CLUSTERED 
(
	[IdAgenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Agenda] UNIQUE NONCLUSTERED 
(
	[CodigoCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[IdAlumno] [int] IDENTITY(1,1) NOT NULL,
	[Legajo] [int] NOT NULL,
	[NombreAlumno] [varchar](50) NOT NULL,
	[ApellidoAlumno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_Alumnos] UNIQUE NONCLUSTERED 
(
	[Legajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aulas]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aulas](
	[IdAula] [int] IDENTITY(1,1) NOT NULL,
	[AulaNro] [int] NOT NULL,
	[Capacidad] [int] NOT NULL,
 CONSTRAINT [PK_Aulas] PRIMARY KEY CLUSTERED 
(
	[IdAula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoriasCursos]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriasCursos](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Categoria] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CategoriasCursos] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[IdCurso] [int] IDENTITY(1,1) NOT NULL,
	[NombreCurso] [varchar](50) NOT NULL,
	[IdCategoria] [int] NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[IdCurso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inscripciones]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inscripciones](
	[IdInscripcion] [int] IDENTITY(1,1) NOT NULL,
	[IdAlumno] [int] NOT NULL,
	[IdAgenda] [int] NOT NULL,
 CONSTRAINT [PK_Inscripciones] PRIMARY KEY CLUSTERED 
(
	[IdInscripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Aulas1] FOREIGN KEY([IdAula])
REFERENCES [dbo].[Aulas] ([IdAula])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Aulas1]
GO
ALTER TABLE [dbo].[Agenda]  WITH CHECK ADD  CONSTRAINT [FK_Agenda_Cursos] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[Cursos] ([IdCurso])
GO
ALTER TABLE [dbo].[Agenda] CHECK CONSTRAINT [FK_Agenda_Cursos]
GO
ALTER TABLE [dbo].[Cursos]  WITH CHECK ADD  CONSTRAINT [FK_Cursos_CategoriasCursos] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriasCursos] ([IdCategoria])
GO
ALTER TABLE [dbo].[Cursos] CHECK CONSTRAINT [FK_Cursos_CategoriasCursos]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Agenda] FOREIGN KEY([IdAgenda])
REFERENCES [dbo].[Agenda] ([IdAgenda])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Agenda]
GO
ALTER TABLE [dbo].[Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_Inscripciones_Alumnos1] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumnos] ([IdAlumno])
GO
ALTER TABLE [dbo].[Inscripciones] CHECK CONSTRAINT [FK_Inscripciones_Alumnos1]
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizar_aulas]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_actualizar_aulas]
	@AulaNro int output,
	@Capacidad int = 0 output
as
	declare @id int=0
	if @AulaNro is null
		return -1
	select @id = aul.IdAula from Aulas aul where aul.AulaNro = @AulaNro
	if @id = 0 and @Capacidad is null
		begin
			insert into Aulas (AulaNro, Capacidad) values (@AulaNro, 0)
			set @id = @@IDENTITY
		end
	if @id = 0 and @Capacidad is not null
		begin
			insert into Aulas (AulaNro, Capacidad) values (@AulaNro, @Capacidad)
			set @id = @@IDENTITY
		end
	else
		update a
			set a.AulaNro = @AulaNro,
				a.Capacidad = @Capacidad
		from Aulas a
		where a.IdAula = @id
		 and(a.AulaNro <> @AulaNro or
				a.Capacidad <> @Capacidad)
return @id
GO
/****** Object:  StoredProcedure [dbo].[sp_alta_alumno]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_alta_alumno]
	@Legajo int output,
	@NombreAlumno varchar(50) output,
	@ApellidoAlumno varchar(50) output
as
	declare @id int=0
	if @Legajo is null
		return -1
	select @id = al.IdAlumno from Alumnos al where al.Legajo = @Legajo
	if @id = 0 
		begin
			insert into Alumnos(Legajo, NombreAlumno, ApellidoAlumno) values (@Legajo, @NombreAlumno, @ApellidoAlumno)
			set @id = @@IDENTITY
		end
	else
		update a
			set a.NombreAlumno = @NombreAlumno,
				a.ApellidoAlumno = @ApellidoAlumno
		from Alumnos a
		where a.IdAlumno = @id
		 and(a.NombreAlumno <> @NombreAlumno or
				a.ApellidoAlumno <> @ApellidoAlumno)
return @id

	
GO
/****** Object:  StoredProcedure [dbo].[sp_alta_categoria]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_alta_categoria]
	@Categoria varchar(50) output
as
	declare @id int=0
	select @id = catcur.IdCategoria from CategoriasCursos catcur where catcur.Categoria = @Categoria
	if @Categoria is null
		return -1
	if @id = 0 
		begin
			insert into CategoriasCursos values (@Categoria)
			set @id = @@IDENTITY
		end
return @id
GO
/****** Object:  StoredProcedure [dbo].[sp_alta_cursos]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_alta_cursos]
	@NombreCurso varchar(50) output,
	@Categoria varchar(50) output
as
	declare @id int=0, @idCategoria int
	exec @idCategoria = sp_alta_categoria @Categoria output

	select @id = cur.IdCategoria from Cursos cur  where cur.NombreCurso=@NombreCurso and cur.IdCategoria =@idCategoria
	
	if @NombreCurso is null or @Categoria is null
		return -1
	if @id = 0 
		begin
			insert into Cursos(NombreCurso,IdCategoria) values (@NombreCurso,@idCategoria)
			set @id = @@IDENTITY
		end

return @id
GO
/****** Object:  StoredProcedure [dbo].[sp_cambiar_estado_fecha_curso]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_cambiar_estado_fecha_curso]
	@CodigoCurso int output,
	@FechaCurso date output,
	@Estado bit 
as
		update ag 
		set Estado = @Estado,
			Fecha = @FechaCurso
		from Agenda ag where ag.CodigoCurso = @CodigoCurso and (Estado <> @Estado or
			Fecha <> @FechaCurso)
GO
/****** Object:  StoredProcedure [dbo].[sp_inscribir_alumno]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_inscribir_alumno]
	@CodigoCurso int output,
	@Legajo int output,
	@ApellidoAlumno varchar(50) output,
	@NombreAlumno varchar(50) output,
	@Mensaje varchar (1000) output
as
	declare @id int=0, @idAlumno int, @idAgenda int = 0, @Estado bit
	exec @idAlumno = sp_alta_alumno @Legajo output, @NombreAlumno output, @ApellidoAlumno output

	if @CodigoCurso is null or @Legajo is null or @ApellidoAlumno is null or @NombreAlumno is null
		begin
			set @Mensaje = 'Faltan datos'
			print @Mensaje
			return -1 
		end
	
	select @Estado = ag.Estado from Agenda ag where ag.CodigoCurso = @CodigoCurso
	select @idAgenda = ag.IdAgenda from Agenda ag  where ag.CodigoCurso = @CodigoCurso	
	select @id = ins.IdInscripcion from Inscripciones ins where ins.IdAlumno = @idAlumno and ins.IdAgenda = @idAgenda
	
	if @Estado = 0
		begin
			set @Mensaje = 'Curso cerrado'
			print @Mensaje
			return -1
		end
	if @idAgenda = 0
		begin
			set @Mensaje = 'Codigo de Curso Incorrecto'
			print @Mensaje
			return -1
		end
	else
		begin
			if @id = 0 
				begin
					insert into Inscripciones(IdAlumno, IdAgenda) values(@idAlumno,@idAgenda)
					set @Mensaje = 'Registro Exitoso'
					set @id = @@IDENTITY
					print @Mensaje
				end
			else
				set @Mensaje = 'El alumno ya esta inscripto en este curso'
				print @Mensaje
	return @id
	end

GO
/****** Object:  StoredProcedure [dbo].[sp_registrar_curso_agenda]    Script Date: 28/6/2021 00:57:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[sp_registrar_curso_agenda]
	@CodigoCurso int output,
	@NombreCurso varchar(50) output,
	@CategoriaCurso varchar(50) output,
	@FechaCurso date output,
	@AulaNro int output,
	@Mensaje varchar(1000)
as
	declare @id int=0, @idCurso int, @idAula int
	exec @idCurso = sp_alta_cursos @NombreCurso output, @CategoriaCurso output

	exec @idAula = sp_actualizar_aulas @AulaNro output


	select @id = ag.IdAgenda from Agenda ag  where ag.CodigoCurso = @CodigoCurso
	
	if @CodigoCurso is null or @NombreCurso is null or @CategoriaCurso is null or @FechaCurso is null or @AulaNro is null
		begin
			set @Mensaje = 'Faltan datos obligatorios'
			print @Mensaje
			return -1
		end
	if @id = 0 
		begin
			insert into Agenda (CodigoCurso,Fecha,Estado,IdAula,IdCurso) values (@CodigoCurso,@FechaCurso,1,@idAula,@idCurso)
			set @id = @@IDENTITY
			set @Mensaje = 'Registro exitoso'
			print @Mensaje
		end
	else
		update a
		set a.Fecha = @FechaCurso,
			a.IdAula = @idAula,
			a.IdCurso = @idCurso
		from Agenda a
		where a.IdAgenda = @id and (a.Fecha <> @FechaCurso or
			a.IdAula <> @idAula or
			a.IdCurso <> @idCurso)
			set @Mensaje = 'Actualizacion exitosa'
			print @Mensaje

return @id
GO
USE [master]
GO
ALTER DATABASE [Parcial2_BBDD] SET  READ_WRITE 
GO
