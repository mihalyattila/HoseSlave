USE [TMO-Test]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SendMail]
		@_recipients = N'attila.mihaly@fluid.contitech.hu',
		@_subject = N'Proba3',
		@_body = N'Nem t�l sok a sz�veg? <BR> Tal�n.'

SELECT	'Return Value' = @return_value

GO
