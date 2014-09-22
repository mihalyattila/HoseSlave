USE [TMO]
GO
/****** Object:  Trigger [dbo].[UpdateMail]    Script Date: 04/17/2014 10:05:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2014.04.17
-- Description:	Levélküldő teszt trigger
-- =============================================
CREATE TRIGGER [dbo].[UpdateMail] ON [dbo].[RendelesTetel] 
   AFTER UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	if update (AccListDate) 
	begin
		declare 
			@AcclistDate datetime, 
			@AccCreator varchar(50),
			@AtveteliIdopont datetime, 
			@Msg varchar(4000),
			@AtvetelitKeszitette varchar(50),
			@mail varchar(50),
			@RendelesAz int,
			@RendSz varchar(20),
			@TetelSrsz int,
			@subjectStr varchar(250)

		select 
			@AccListDate = IsNull(AccListDate, '1900.01.01'),
			@AccCreator = IsNull(AccCreator, ''), 
			@AtveteliIdopont = IsNull(AtveteliIdopont, '1900.01.01'), 
			@AtvetelitKeszitette = IsNull(AtvetelitKeszitette, ''),
			@RendelesAz = RendelesAz,
			@TetelSrsz = TetelSrsz
		from 
			inserted

		set @mail = ''
		if (@AtvetelitKeszitette <> '')
		begin
			select @mail = IsNull(dbo.GetUserMail(@AtvetelitKeszitette), '') ;
			if @mail = '' select @mail = 'Attila.Mihaly@fluid.contitech.hu'
		end
		if (@mail <> '') --and (@AtveteliIdopont < @AcclistDate)
		begin
			select @RendSz = Rendsz from RendelesFej where RendelesAz = @RendelesAz
			select @subjectStr = 'HoseSlave alkatrészlista változás - ' + @RendSz + ', ' + Cast(@TetelSrsz as varchar(20)) + '. tétel'
			select 
				@Msg = 'Hello, <BR><BR>'
					+ 'Átvételit készítette: ' + @AtvetelitKeszitette + '<BR>'
					+ 'Készítés időpontja: ' + Convert(varchar(20), @AtveteliIdopont, 20) + '<BR><BR>'
					+ 'Alkatrészlistát módosította: ' + @AccCreator + '<BR>'
					+ 'Módosítás időpontja: ' + Convert(varchar(20), @AcclistDate, 20) 
					+ '<BR><BR>' + ':-)'
			EXEC msdb.dbo.sp_send_dbmail
			@profile_name = 'SDAS009\SDSQ2',
			@recipients = @mail,
			@blind_copy_recipients = 'Attila.Mihaly@fluid.contitech.hu',
			@subject = @subjectStr,
			@body = @Msg,
			@body_format = 'HTML'
		end
	end

END
