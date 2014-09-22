USE [TMO-Test]
GO
/****** Object:  StoredProcedure [dbo].[SendMail]    Script Date: 04/18/2014 10:07:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Mihály Attila
-- Create date: 2014.04.18
-- Description:	Mail küldő eljárás
-- =============================================
CREATE PROCEDURE [dbo].[SendMail]
	@_recipients varchar(4000) = null, 
	@_copy_recipients varchar(4000) = null,
	@_blind_copy_recipients varchar(4000) = null,
	@_subject varchar(4000) = null,
	@_body varchar(4000) = null	
AS
BEGIN

	SET NOCOUNT ON;

	EXEC msdb.dbo.sp_send_dbmail
	@profile_name = 'SDAS009\SDSQ2',
	@recipients = @_recipients,
	@blind_copy_recipients = @_blind_copy_recipients,
	@subject = @_subject,
	@body = @_body,
	@body_format = 'HTML'

END
