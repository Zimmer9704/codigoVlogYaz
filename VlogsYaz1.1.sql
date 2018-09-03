DROP  TABLE Usuario 
DROP  TABLE Publicacion
DROP  TABLE Imagenes
DROP  TABLE Comentarios
DROP  TABLE Videos

CREATE  TABLE  Usuario (
  ID_Usuario varchar ( 100 ) PRIMARY KEY ,
  Nombre varchar (100),
  Apellido_Paterno varchar (100),
  Apellido_Maternon varchar (100),
  Contraseña varchar ( 100 ) NOT NULL ,
  Correo_Electrónico varchar (500),
  ID_Videos varchar (100),
  ID_Comentarios varchar (100),
)

CREATE  TABLE  Publicacion (
  ID_Publicacion varchar ( 100 ) PRIMARY KEY ,
  ID_Usuario  varchar (100),
  Titulo varchar (100),
  Categoria varchar (100),
  Fecha time,
  Contador int,
  ID_Vista int,
  ID_Descripcion_video  varchar(100),
  ID_Reproduciones int,
)

CREATE  TABLE  Imagenes (
  ID_Imagenes varchar ( 100 ) PRIMARY KEY ,
  ID_publicacion  varchar (100),
  Descripcion_Imagen varchar (100),
  Tamaño_Imagen int,
)
        
CREATE  TABLE  Comentarios (
  ID_comentarios varchar ( 100 ) PRIMARY KEY ,
  ID_usuario  varchar (100),
  ID_video  varchar (100),
  fecha time, 
  Descripcion_Comentarios varchar (1000),
  ID_publicacion varchar(100),
)

CREATE  TABLE  Videos (
  ID_Videos varchar ( 100 ) PRIMARY KEY ,
  ID_Publicaciones  varchar (100),
  ID_Categoria  varchar (100),
  ID_Descripcion_video varchar(100),
)