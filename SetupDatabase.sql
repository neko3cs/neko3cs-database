/* ---------------------------------------------------
-- 
--		サンプルデータベース作成
--
--------------------------------------------------- */

drop database if exists [SampleDatabase]
create database [SampleDatabase]
select
	[name]
from
	[sys].[databases]
go

use [SampleDatabase]
go

drop table if exists [Person]
create table [Person]
(
	[Id] int identity(1, 1) not null,
	[Name] nvarchar(max) not null,
	[Age] int not null,
	[IsMale] bit null
)

insert into
	[Person]
	([Name], [Age], [IsMale])
values
	(N'Bob', 20, 1),
	(N'Alice', 22, 0),
	(N'John', 25, NULL)
