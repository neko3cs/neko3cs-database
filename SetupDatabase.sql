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

drop table if exists [Image]
create table [Image]
(
	[Id] int identity(1, 1),
	[Name] nvarchar(max),
	[Value] varbinary(max)
)

declare @ImageBinary varbinary(max)
select
	@ImageBinary = [BulkColumn]
from
	openrowset(
		bulk N'/tmp/Sample.jpg',  -- Dockerコンテナ側のパス
		single_blob
	) as [TempImage]

insert into
	[Image]
	(
		[Name],
		[Value]
	)
values
	(
		N'御坂美琴ちゃん',
		@ImageBinary
	)
