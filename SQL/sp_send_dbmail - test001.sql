 -- Start T-SQL
    USE [msdb]
    EXEC sp_send_dbmail
      @profile_name = 'SDAS009\SDSQ2',
      @recipients = 'attila.toth@cbg.contitech.hu;attila.mihaly@fluid.contitech.hu',
      @subject = 'Lehet-e mail-t k�ldeni az SQL szerverr�l?',
      @body = '�gy t�nik, igen. Al�bb egy lek�rdez�s eredm�nye l�that�.',
      @execute_query_database = 'TMO',
      @query = 'SELECT top 100 RendSz, Vevo, Felhasznalo, Hatarido, ExtrKtsg, ExtrPenznem FROM RendelesFej order by RendelesAz desc'
    -- End T-SQL