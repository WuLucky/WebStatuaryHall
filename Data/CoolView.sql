use	master
create	database	CoolView
go
Create table UserInformation				--�û���Ϣ��
(
	UIID int primary key identity(1,1),
	Name nvarchar(max) not null,								--�ƺ���
	[Password] nvarchar(max) not null,					--����
	loginName nvarchar(max) not null,						--�˺�
	[Age] nvarchar(max) not null,				--���� check(Age=18) 
	Gender nvarchar(max) not null,				--�Ա�
	Telephone nvarchar(max) not null,			--�绰
	qq nvarchar(max) not null,					--QQ
	Mailbox nvarchar(max) not null,				--����
	SecurityID int not null,					--�ܱ����
	[delete] int not null check([delete]=0),	--ɾ��,����ɾ��Ϊ0��ɾ��Ϊ1
	StateID int not null check(StateID=0)		--���
)
--select * from dbo.Customer
go
select * from UserInformation
delete from UserInformation 

Insert into UserInformation values('mouse','143114','1431533387','','','','','','','','')
insert into UserInformation values('admin','1234','1431533388','','','','','','','','')



Create table [Type]										--���ͱ�
(
	ID int primary key identity(1,1),
	StateName nvarchar(20) not null,						--��������
	MIID int not null,								--���ͱ��
	[delete] int not null check([delete]=0),				--ɾ��
	StateID int not null check(StateID=0)					--���
)
insert into [Type] values('�羰ͼ','101','0','')
insert into [Type] values('����','102','0','')
insert into [Type] values('����','103','0','')
insert into [Type] values('��ʳͼƬ','104','0','')
insert into [Type] values('�ǿ�','105','0','')
insert into [Type] values('����ͼƬ','106','0','')
go
select	* from Type
go
create table [Security]						--�ܱ���
(
	SecID int primary key identity,
	Secret nvarchar(250) not null,				--�ܱ�����
	SecretAnswer nvarchar(250) not null,		--�ܱ���
	SecurityID int not null,					--�ܱ����
	[delete] int not null check([delete]=0),	--ɾ��
	StateID int not null check(StateID=0)		--���
)
go

Create table PictureInformation				--ͼƬ��Ϣ��
(
	MIID int primary key identity,
	PictureName nvarchar(max) not null,			--ͼƬ��
	Performer nvarchar(max) not null,           --������
	Region nvarchar(max),						--��ͼ����
	ParticularYear datetime,					--��ͼ���
	UpdateDate datetime,						--��������
	Plotintroduction nvarchar(max),				--ͼƬ����
	PictureNumber int not null,					--ͼƬ���
	StateNameID int not null,					--���ͱ��
	LinkID int not null,						--���ӱ��
	Statname int not null,						--״̬���
	[delete] int not null check([delete]=0),	--ɾ��
	StateID int not null check(StateID=0)		--���
)

insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10001','101','10001','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10002','101','10002','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10003','101','10003','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10004','101','10004','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10005','101','10005','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10006','101','10006','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10007','101','10007','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10008','101','10008','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10009','101','10009','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10010','101','10010','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10011','101','10011','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10012','101','10012','201','0','')
insert into PictureInformation values('ɽˮ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','10013','101','10013','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20000','102','20000','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20001','102','20001','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20002','102','20002','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20003','102','20003','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20004','102','20004','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20005','102','20005','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20006','102','20006','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20007','102','20007','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20008','102','20008','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20009','102','20009','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20010','102','20010','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20011','102','20011','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20012','102','20012','201','0','')
insert into PictureInformation values('��','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','20013','102','20013','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60001','103','60001','201','0','')
insert into PictureInformation values('����','����','�ձ�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60002','103','60002','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60003','103','60003','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60004','103','60004','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60005','103','60005','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60006','103','60006','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60007','103','60007','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60008','103','60008','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60009','103','60009','201','0','')
insert into PictureInformation values('����','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','60010','103','60010','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30001','104','30001','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30002','104','30002','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30003','104','30003','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30004','104','30004','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30005','104','30005','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30006','104','30006','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30007','104','30007','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30008','104','30008','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30009','104','30009','201','0','')
insert into PictureInformation values('��ʳͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','30010','104','30010','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40001','105','40001','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40002','105','40002','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40003','105','40003','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40004','105','40004','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40005','105','40005','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40006','105','40006','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40007','105','40007','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40008','105','40008','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40009','105','40009','201','0','')
insert into PictureInformation values('�ǿ�','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','40010','105','40010','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50001','106','50001','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50002','106','50002','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50003','106','50002','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50004','106','50004','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50005','106','50005','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50006','106','50006','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50007','106','50007','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50008','106','50008','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50009','106','50009','201','0','')
insert into PictureInformation values('����ͼƬ','����','�й�','2017','2017/10/15 0:58','���Խ���۶������ɽˮ','50010','106','50010','201','0','')
select * from dbo.PictureInformation
go
create	table	Picture
(
	PictureNumber int not null,					--ͼƬ���
	StateNameID int not null,					--���ͱ��
	LinkID int not null,						--���ӱ��
	Statname int not null,						--״̬���
)
go
Create table LinkInformation					--���ӱ�
(
	LIID int primary key identity,
	ThunderboltLink nvarchar(max),					--Ѹ������
	BSL nvarchar(max),								--�ٶ�����
	SDLP nvarchar(max),								--�ٶ���������
	LinkID int not null,							--���ӱ��
	[delete] int not null check([delete]=0),		--ɾ��
	StateID int not null check(StateID=0)			--���
)
go
insert into LinkInformation values('','','lqqn','100001','0','')
select * from LinkInformation
go
Create table dbo.Statetable										--���ͱ�
(
	ID int primary key identity(1,1),
	State nvarchar(20) not null,						--��������
	MIID int not null,									--���ͱ��
	[delete] int not null check([delete]=0),				--ɾ��
	StateID int not null check(StateID=0)					--���
)
insert into dbo.Statetable values('ԭ��','201','0','')
insert into dbo.Statetable values('����','202','0','')
insert into dbo.Statetable values('����','203','0','')
insert into dbo.Statetable values('��׼','204','0','')
go
select * from dbo.Statetable
go

create proc vw_TypeInformation
as
select * from dbo.PictureInformation t left join dbo.LinkInformation s on t.StateID=s.StateID left join dbo.Type j on t.StateID=j.StateID
go
exec vw_TypeInformation


go

--�洢����(��ѯʲô����ͼƬ
create proc vw_StatuaryHallselect
@StateName nvarchar output
as
select * from dbo.Type t inner join dbo.PictureInformation m on t.StatNameID=m.StataNameID where StateName = @StateName
go

--�������
create proc vw_StatuaryHallinnerjoin
as
select * from dbo.Type t inner join dbo.PictureInformation m on t.StatNameID=m.StataNameID
inner join dbo.LinkInformation l on m.StateID =l.StateID
go
--��
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
--���ô洢����
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


