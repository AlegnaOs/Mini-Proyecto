Create table Productos(
	SKU Serial primary key,
	nombre varchar(150)not null,
	descripcion varchar(250)not null,
	precio int not null
);

create table clientes(
	id_cliente serial primary key,
	nombres VARCHAR(150) not null,
	apellidos varchar(150) not null,
	email varchar(150) unique not null,
	phone varchar(15) not null,
	direccion varchar(150) not null,
	codigo_postal int not null,
	barrio varchar(20) not null
);

create table venta(
	id_venta serial primary key,
	fecha_de_venta date not null,
	id_cliente int not null,
	foreign key (id_cliente) references clientes (id_cliente)
);

create table venta_Detalle(
	id_detalle_venta serial primary key,
	cantidad int not null,
	id_venta int not null,
	id_producto int not null,
	foreign key (id_venta) references venta (id_venta),
	foreign key (id_producto) references Productos (sku)
);
