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
	[Id] int identity(1, 1),
	[Name] nvarchar(max),
	[PhoneNumber] nvarchar(max),
)

insert into
	[Person]
	(
		[Name],
		[PhoneNumber]
	)
values
	(
		N'A太郎',
		N'090-1234-5678'
	),
	(
		N'B太郎',
		NULL
	),
	(
		N'C太郎',
		N'(090-1234-5678)'
	)
