USE [TMO-Test]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SendMail]
		@_recipients = N'attila.mihaly@fluid.contitech.hu',
		@_subject = N'Proba3',
		@_body = N'Nem túl sok a szöveg? <BR> Talán.'

SELECT	'Return Value' = @return_value

GO
