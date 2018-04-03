use	master
create	database	CoolView
go
Create table UserInformation				--用户信息表
(
	UIID int primary key identity(1,1),
	Name nvarchar(max) not null,								--称号名
	[Password] nvarchar(max) not null,					--密码
	loginName nvarchar(max) not null,						--账号
	[Age] nvarchar(max) not null,				--年龄 check(Age=18) 
	Gender nvarchar(max) not null,				--性别
	Telephone nvarchar(max) not null,			--电话
	qq nvarchar(max) not null,					--QQ
	Mailbox nvarchar(max) not null,				--邮箱
	SecurityID int not null,					--密保编号
	[delete] int not null check([delete]=0),	--删除,不是删除为0，删除为1
	StateID int not null check(StateID=0)		--外键
)
--select * from dbo.Customer
go
select * from UserInformation
delete from UserInformation 

Insert into UserInformation values('mouse','143114','1431533387','','','','','','','','')
insert into UserInformation values('admin','1234','1431533388','','','','','','','','')



Create table [Type]										--类型表
(
	ID int primary key identity(1,1),
	StateName nvarchar(20) not null,						--类型名称
	MIID int not null,								--类型编号
	[delete] int not null check([delete]=0),				--删除
	StateID int not null check(StateID=0)					--外键
)
insert into [Type] values('风景图','101','0','')
insert into [Type] values('汽车','102','0','')
insert into [Type] values('动漫','103','0','')
insert into [Type] values('美食图片','104','0','')
insert into [Type] values('星空','105','0','')
insert into [Type] values('动物图片','106','0','')
go
select	* from Type
go
create table [Security]						--密保表
(
	SecID int primary key identity,
	Secret nvarchar(250) not null,				--密保问题
	SecretAnswer nvarchar(250) not null,		--密保答案
	SecurityID int not null,					--密保编号
	[delete] int not null check([delete]=0),	--删除
	StateID int not null check(StateID=0)		--外键
)
go

Create table PictureInformation				--图片信息表
(
	MIID int primary key identity,
	PictureName nvarchar(max) not null,			--图片名
	Performer nvarchar(max) not null,           --拍摄人
	Region nvarchar(max),						--拍图地区
	ParticularYear datetime,					--拍图年份
	UpdateDate datetime,						--更新日期
	Plotintroduction nvarchar(max),				--图片介绍
	PictureNumber int not null,					--图片编号
	StateNameID int not null,					--类型编号
	LinkID int not null,						--链接编号
	Statname int not null,						--状态编号
	[delete] int not null check([delete]=0),	--删除
	StateID int not null check(StateID=0)		--外键
)

insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10001','101','10001','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10002','101','10002','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10003','101','10003','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10004','101','10004','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10005','101','10005','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10006','101','10006','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10007','101','10007','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10008','101','10008','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10009','101','10009','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10010','101','10010','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10011','101','10011','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10012','101','10012','201','0','')
insert into PictureInformation values('山水','张三','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','10013','101','10013','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20000','102','20000','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20001','102','20001','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20002','102','20002','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20003','102','20003','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20004','102','20004','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20005','102','20005','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20006','102','20006','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20007','102','20007','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20008','102','20008','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20009','102','20009','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20010','102','20010','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20011','102','20011','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20012','102','20012','201','0','')
insert into PictureInformation values('车','李四','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','20013','102','20013','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60001','103','60001','201','0','')
insert into PictureInformation values('动漫','王五','日本','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60002','103','60002','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60003','103','60003','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60004','103','60004','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60005','103','60005','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60006','103','60006','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60007','103','60007','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60008','103','60008','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60009','103','60009','201','0','')
insert into PictureInformation values('动漫','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','60010','103','60010','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30001','104','30001','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30002','104','30002','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30003','104','30003','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30004','104','30004','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30005','104','30005','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30006','104','30006','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30007','104','30007','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30008','104','30008','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30009','104','30009','201','0','')
insert into PictureInformation values('美食图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','30010','104','30010','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40001','105','40001','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40002','105','40002','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40003','105','40003','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40004','105','40004','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40005','105','40005','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40006','105','40006','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40007','105','40007','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40008','105','40008','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40009','105','40009','201','0','')
insert into PictureInformation values('星空','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','40010','105','40010','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50001','106','50001','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50002','106','50002','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50003','106','50002','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50004','106','50004','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50005','106','50005','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50006','106','50006','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50007','106','50007','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50008','106','50008','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50009','106','50009','201','0','')
insert into PictureInformation values('动物图片','王五','中国','2017','2017/10/15 0:58','来自江西鄱阳湖的山水','50010','106','50010','201','0','')
select * from dbo.PictureInformation
go
create	table	Picture
(
	PictureNumber int not null,					--图片编号
	StateNameID int not null,					--类型编号
	LinkID int not null,						--链接编号
	Statname int not null,						--状态编号
)
go
Create table LinkInformation					--链接表
(
	LIID int primary key identity,
	ThunderboltLink nvarchar(max),					--迅雷链接
	BSL nvarchar(max),								--百度链接
	SDLP nvarchar(max),								--百度链接密码
	LinkID int not null,							--链接编号
	[delete] int not null check([delete]=0),		--删除
	StateID int not null check(StateID=0)			--外键
)
go
insert into LinkInformation values('','','lqqn','100001','0','')
select * from LinkInformation
go
Create table dbo.Statetable										--类型表
(
	ID int primary key identity(1,1),
	State nvarchar(20) not null,						--类型名称
	MIID int not null,									--类型编号
	[delete] int not null check([delete]=0),				--删除
	StateID int not null check(StateID=0)					--外键
)
insert into dbo.Statetable values('原画','201','0','')
insert into dbo.Statetable values('超清','202','0','')
insert into dbo.Statetable values('高清','203','0','')
insert into dbo.Statetable values('标准','204','0','')
go
select * from dbo.Statetable
go

create proc vw_TypeInformation
as
select * from dbo.PictureInformation t left join dbo.LinkInformation s on t.StateID=s.StateID left join dbo.Type j on t.StateID=j.StateID
go
exec vw_TypeInformation


go

--存储过程(查询什么类型图片
create proc vw_StatuaryHallselect
@StateName nvarchar output
as
select * from dbo.Type t inner join dbo.PictureInformation m on t.StatNameID=m.StataNameID where StateName = @StateName
go

--多表连接
create proc vw_StatuaryHallinnerjoin
as
select * from dbo.Type t inner join dbo.PictureInformation m on t.StatNameID=m.StataNameID
inner join dbo.LinkInformation l on m.StateID =l.StateID
go
--排
create proc vw_selectMovieDesc
as
select * from dbo.PictureInformation ORDER BY UpdateDate DESC
go
exec vw_selectMovieDesc
go
create PROC P_CutPage
@PageSize int,
@PageIndex int,
@PageCount int output
as
	declare @pagesCount decimal
	select top(@PageSize) * from dbo.PictureInformation where MIID not in (select top(@PageSize*(@PageIndex-1)) MIID from dbo.PictureInformation  ORDER BY MIID)
	select @pagesCount=(count(*)/@PageSize) from dbo.PictureInformation
	if @PagesCount%@PageSize<>0
		set	@pageCount=@PagesCount+1
	else
		set	@pageCount=@PagesCount
GO
declare @pageCOUNT int
exec P_CutPage 10,108,@pageCOUNT output
select @pageCOUNT
 
go


alter proc pr_MovieType
(@ID  int)
as
--select b.*,c.StateName,p.[State],k.ThunderboltLink,k.BSL,k.SDLP
--from PictureInformation b inner join [Type] c
--on b.StateNameID = c.MIID inner join Statetable p
--on b.Statname = p.MIID inner join LinkInformation k
--on b.LinkID = k.LinkID 
select b.*,c.StateName 
from PictureInformation b inner join [Type] c
on b.StateNameID = c.MIID where c.ID=@ID
GO

CREATE PROC PROC_CutPageSelectByTop
@Table nvarchar(256),
@PageSize int,
@PageIndex int,
@Conditions nvarchar(300),
@UniqueColumn nvarchar(256),
@Pages int output
as
DECLARE @Context nvarchar(1024)
SET @Context='SELECT * INTO #TEMP FROM '+@Table 
IF(@Conditions IS NOT NULL AND @Conditions<>'')
	SET @Context=@Context+' WHERE '+@Conditions
SET @Context=@Context+'  SELECT TOP '+CAST(@PageSize AS nvarchar(4))+' * FROM #TEMP WHERE '+@UniqueColumn+' NOT IN(SELECT TOP '+CAST(@PageSize*(@PageIndex-1) AS nvarchar(4))+' '+@UniqueColumn+' FROM #TEMP)'
SET @Context=@Context+'  DECLARE @count INT  SELECT @count=count(*) FROM #TEMP SET @Pages=@count/'+cast(@PageSize as nvarchar(4))+'  if(@count%'+cast(@PageSize as nvarchar(4))+'<>0)SET @Pages=@Pages+1';
EXEC SP_EXECUTESQL @CONTEXT,N'@Pages int output',@Pages output
GO

--SELECT * FROM Category
--调用存储过程
DECLARE @Pages int
exec PROC_CutPageSelectByTop 'dbo.PictureInformation',10,18,'MIID=20','MIID',@Pages output
select @Pages

go
CREATE PROC vw_Name
@name nvarchar(250),
@names nvarchar(250)
as




go
  exec pr_MovieType 13
  
  exec pr_MovieType 13 


