CREATE TABLE LIBROS(
	ISBN				      NUMBER(13) NOT NULL,
	TITULO				    VARCHAR2(60),
	PRECIO				    NUMBER(4,2),
	TIPO_TEMA			    VARCHAR2(30),
	CIF _EDITORIALES	VARCHAR2(9)
	CONSTRAINT PK_LIBROS PRIMARY KEY (ISBN),
	CONSTRAINT FK_LIBROS_TIPO_TEMA FOREIGN KEY (TIPO_TEMA)
	);
CREATE TABLE AUTORES(
	COD			          NUMBER (9) NOT NULL,
	NOMBRE		        VARCHAR2(30),
	APELLIDOS	        VARCHAR2(60),
	CONSTRAINT PK_COD PRIMARY KEY (COD)
	);
CREATE TABLE ESCRIBE(
	DNI_SOCIOS	     NUMBER(9)NOT NULL,
	COD_AUTORES      NUMBER (9),
	CONSTRAINT PK_DNI_SOCIOS PRIMARY KEY (DNI_SOCIOS),
	CONSTRAINT FK_AUTORES_COD_AUTORES FOREIGN KEY (COD_AUTORES)
	);
CREATE TABLE SOCIOS(
	DNI	             NUMBER(9)NOT NULL,
	NOMBRE	         VARCHAR2(30),
	FECHA_ALTA       DATE,
	TELEFONO         VARCHAR2(9),
	CONSTRAINT PK_SOCIOS_DNI PRIMARY KEY (DNI)
	);
CREATE TABLE PRESTAMO(
	FECHA_PRESTAMO	DATE NOT NULL,
	DNI_SOCIOS	    NUMBER(9)NOT NULL,
	ISBN_LIBROS     NUMBER(13) NOT NULL,
	CONSTRAINT PK_PRESTAMO PRIMARY KEY (FECHA_PRESTAMO,DNI_SOCIOS,ISBN_LIBROS)
	);
CREATE TABLE TEMAS(
	TIPO       VARCHAR2(15)NOT NULL,
	CONSTAINT PK_TEMAS PRIMARY KEY (TIPO)
	);
CREATE TABLE EDITORIALES(
	CIF	       NUMBER(9)NOT NULL,
	DIRECCION  VARCHAR2(30),
	NOMBRE     VARCHAR2 (20),
	CONSTRAINT PK_EDITORIALES PRIMARY KEY (CIF)
	);
CREATE TABLE RECIVOS(
	EMISION        DATE,
	NUMERO_RECIVOS NUMBER(10)NOT NULL,
	VENCIMIENTO    DATE,
	IMPORTE        NUMBER(4,2),
	DNI_SOCIOS	   NUMBER(9)NOT NULL,
	CONSTRAINT PK_RECIVOS PRIMARY KEY (NUMERO_RECIVOS),
	CONSTRAINT FK_SOCIOS_DNI_SOCIOS FOREIGN KEY (DNI_SOCIOS)
	);
	
--Me ha creado 4 tablas nada mas