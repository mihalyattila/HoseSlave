 -- Start T-SQL
    USE [msdb]
    EXEC sp_send_dbmail
      @profile_name = 'SDAS009\SDSQ2',
      @recipients = 'attila.toth@cbg.contitech.hu;attila.mihaly@fluid.contitech.hu',
      @subject = 'Lehet-e mail-t küldeni az SQL szerverrõl?',
      @body = 'Úgy tûnik, igen. Alább egy lekérdezés eredménye látható.',
      @execute_query_database = 'TMO',
      @query = 'SELECT top 100 RendSz, Vevo, Felhasznalo, Hatarido, ExtrKtsg, ExtrPenznem FROM RendelesFej order by RendelesAz desc'
    -- End T-SQL