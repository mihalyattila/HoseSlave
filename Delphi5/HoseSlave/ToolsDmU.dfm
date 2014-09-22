object ToolsDm: TToolsDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 447
  Top = 112
  Height = 837
  Width = 1154
  object dsMarkazas: TDataSource
    DataSet = qMarkazas
    Left = 40
    Top = 80
  end
  object qMarkazas: TQuery
    CachedUpdates = True
    AfterOpen = qMarkazasAfterOpen
    BeforePost = qMarkazasBeforePost
    AfterPost = qMarkazasAfterPost
    AfterDelete = qMarkazasAfterDelete
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'Markazas'
      'where'
      #9'MarkTypeId = :MarkTypeId')
    UpdateObject = uMarkazas
    Left = 104
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MarkTypeId'
        ParamType = ptUnknown
      end>
    object qMarkazasMarkId: TIntegerField
      FieldName = 'MarkId'
      Origin = 'MAINDB.Markazas.MarkId'
    end
    object qMarkazasMarkTypeId: TIntegerField
      FieldName = 'MarkTypeId'
      Origin = 'MAINDB.Markazas.MarkTypeId'
    end
    object qMarkazasMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.Markazas.Megnevezes'
      Size = 200
    end
    object qMarkazasMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.Markazas.Megjegyzes'
      Size = 250
    end
    object qMarkazasRajzszam: TStringField
      FieldName = 'Rajzszam'
      Origin = 'MAINDB.Markazas.Rajzszam'
      Size = 50
    end
    object qMarkazasErvtRajzszam: TStringField
      FieldName = 'ErvtRajzszam'
      Origin = 'MAINDB.Markazas.ErvtRajzszam'
      Size = 50
    end
    object qMarkazasUtvonal: TStringField
      FieldName = 'Utvonal'
      Origin = 'MAINDB.Markazas.Utvonal'
      Size = 250
    end
    object qMarkazasStatusz: TSmallintField
      FieldName = 'Statusz'
      Origin = 'MAINDB.Markazas.Statusz'
    end
    object qMarkazasRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.Markazas.Rogzitette'
      Size = 50
    end
    object qMarkazasRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.Markazas.RogzIdopont'
    end
    object qMarkazasStatuszNev: TStringField
      FieldKind = fkLookup
      FieldName = 'StatuszNev'
      LookupDataSet = Dm.RekordStatusz
      LookupKeyFields = 'StatuszKod'
      LookupResultField = 'StatuszNev'
      KeyFields = 'Statusz'
      Lookup = True
    end
  end
  object uMarkazas: TUpdateSQL
    ModifySQL.Strings = (
      'update Markazas'
      'set'
      '  MarkTypeId = :MarkTypeId,'
      '  Megnevezes = :Megnevezes,'
      '  Megjegyzes = :Megjegyzes,'
      '  Rajzszam = :Rajzszam,'
      '  ErvtRajzszam = :ErvtRajzszam,'
      '  Utvonal = :Utvonal,'
      '  Statusz = :Statusz,'
      '  Rogzitette = :Rogzitette,'
      '  RogzIdopont = :RogzIdopont'
      'where'
      '  MarkId = :OLD_MarkId')
    InsertSQL.Strings = (
      'insert into Markazas'
      
        '  (MarkTypeId, Megnevezes, Megjegyzes, Rajzszam, ErvtRajzszam, U' +
        'tvonal, '
      '   Statusz, Rogzitette, RogzIdopont)'
      'values'
      
        '  (:MarkTypeId, :Megnevezes, :Megjegyzes, :Rajzszam, :ErvtRajzsz' +
        'am, :Utvonal, '
      '   :Statusz, :Rogzitette, :RogzIdopont)')
    DeleteSQL.Strings = (
      'delete from Markazas'
      'where'
      '  MarkId = :OLD_MarkId')
    Left = 168
    Top = 80
  end
  object spGetMarkingItem: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetMarkingItem'
    Left = 104
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MarkId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@MarkTypeId'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = '@Rajzszam'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = '@MarkazasTipusa'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = '@Megnevezes'
        ParamType = ptInputOutput
      end>
  end
  object qDwgFiles: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'Id,'
      
        '        Path = Cast(Replace(Path, '#39'\\SDFS002\TMORajztar$'#39', '#39'\\Sd' +
        'fs002\Group\Fluid\TMO Rajztar'#39') as varchar(250)),'
      #9'FileName'
      'from '
      #9'DwgFiles '
      'order '
      #9'by FileName'
      ' ')
    Left = 104
    Top = 192
    object qDwgFilesId: TIntegerField
      FieldName = 'Id'
      Origin = 'MAINDB.DwgFiles.Id'
    end
    object qDwgFilesFileName: TStringField
      FieldName = 'FileName'
      Origin = 'MAINDB.DwgFiles.FileName'
      Size = 100
    end
    object qDwgFilesPath: TStringField
      FieldName = 'Path'
      Size = 250
    end
  end
  object dsDwgFiles: TDataSource
    DataSet = qDwgFiles
    Left = 40
    Top = 176
  end
  object spFindDraw: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_FindDraw'
    Left = 104
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@FileName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@FullPath'
        ParamType = ptInputOutput
      end>
  end
  object qMsoRajzLista: TQuery
    CachedUpdates = True
    BeforePost = qMsoRajzListaBeforePost
    AfterPost = qMsoRajzListaAfterPost
    AfterDelete = qMsoRajzListaAfterDelete
    AfterScroll = qMsoRajzListaAfterScroll
    OnNewRecord = qMsoRajzListaNewRecord
    AutoRefresh = True
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from MsoRajzlista order by MsoId')
    UpdateObject = uMsoRajzLista
    Left = 104
    Top = 288
    object qMsoRajzListaMsoId: TIntegerField
      FieldName = 'MsoId'
      Origin = 'MAINDB.MsoRajzlista.MsoId'
    end
    object qMsoRajzListaFocsoportKod: TSmallintField
      FieldName = 'FocsoportKod'
      Origin = 'MAINDB.MsoRajzlista.FocsoportKod'
    end
    object qMsoRajzListaFocsoportNev: TStringField
      FieldKind = fkLookup
      FieldName = 'FocsoportNev'
      LookupDataSet = qMsoFocsoport
      LookupKeyFields = 'FocsoportKod'
      LookupResultField = 'FocsoportNev'
      KeyFields = 'FocsoportKod'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qMsoRajzListaCsoportKod: TSmallintField
      FieldName = 'CsoportKod'
      Origin = 'MAINDB.MsoRajzlista.CsoportKod'
    end
    object qMsoRajzListaCsoportNev: TStringField
      FieldKind = fkLookup
      FieldName = 'CsoportNev'
      LookupDataSet = qMsoCsopList
      LookupKeyFields = 'CsoportKod'
      LookupResultField = 'CsoportNev'
      KeyFields = 'CsoportKod'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qMsoRajzListaAlcsoportKod: TSmallintField
      FieldName = 'AlcsoportKod'
      Origin = 'MAINDB.MsoRajzlista.AlcsoportKod'
    end
    object qMsoRajzListaAlcsoportNev: TStringField
      FieldKind = fkLookup
      FieldName = 'AlcsoportNev'
      LookupDataSet = qMsoAlcsList
      LookupKeyFields = 'AlcsoportKod'
      LookupResultField = 'AlcsoportNev'
      KeyFields = 'AlcsoportKod'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qMsoRajzListaTipusjel: TStringField
      FieldName = 'Tipusjel'
      Origin = 'MAINDB.MsoRajzlista.Tipusjel'
      FixedChar = True
      Size = 10
    end
    object qMsoRajzListaSorozatszam: TStringField
      FieldName = 'Sorozatszam'
      Origin = 'MAINDB.MsoRajzlista.Sorozatszam'
      EditMask = '!000999;1'
      FixedChar = True
      Size = 10
    end
    object qMsoRajzListaSorszam: TStringField
      FieldName = 'Sorszam'
      Origin = 'MAINDB.MsoRajzlista.Sorszam'
      EditMask = '!000;1;_'
      FixedChar = True
      Size = 10
    end
    object qMsoRajzListaVerzio: TStringField
      FieldName = 'Verzio'
      Origin = 'MAINDB.MsoRajzlista.Verzio'
      EditMask = 'l;1;_'
      FixedChar = True
      Size = 10
    end
    object qMsoRajzListaFilenev: TStringField
      FieldName = 'Filenev'
      Origin = 'MAINDB.MsoRajzlista.Filenev'
      Size = 50
    end
    object qMsoRajzListaUtvonal: TStringField
      FieldName = 'Utvonal'
      Origin = 'MAINDB.MsoRajzlista.Utvonal'
      Size = 250
    end
    object qMsoRajzListaSharePointLink: TStringField
      FieldName = 'SharePointLink'
      Origin = 'MAINDB.MsoRajzlista.SharePointLink'
      Size = 250
    end
    object qMsoRajzListaMsoKategoriaKod: TSmallintField
      FieldName = 'MsoKategoriaKod'
      Origin = 'MAINDB.MsoRajzlista.MsoKategoriaKod'
    end
    object qMsoRajzListaMsoKategoriaNev: TStringField
      FieldKind = fkLookup
      FieldName = 'MsoKategoriaNev'
      LookupDataSet = qMsoKategoriak
      LookupKeyFields = 'MsoKategoriaKod'
      LookupResultField = 'MsoKategoriaNev'
      KeyFields = 'MsoKategoriaKod'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qMsoRajzListaMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.MsoRajzlista.Megnevezes'
      Size = 255
    end
    object qMsoRajzListaMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.MsoRajzlista.Megjegyzes'
      Size = 255
    end
    object qMsoRajzListaKotesszam: TStringField
      FieldName = 'Kotesszam'
      Origin = 'MAINDB.MsoRajzlista.Kotesszam'
      Size = 50
    end
    object qMsoRajzListaEgyebKapcsolat: TStringField
      FieldName = 'EgyebKapcsolat'
      Origin = 'MAINDB.MsoRajzlista.EgyebKapcsolat'
      Size = 50
    end
    object qMsoRajzListaMsoDokTipusKod: TSmallintField
      FieldName = 'MsoDokTipusKod'
      Origin = 'MAINDB.MsoRajzlista.MsoDokTipusKod'
    end
    object qMsoRajzListaMsoDoktipusNev: TStringField
      FieldKind = fkLookup
      FieldName = 'MsoDoktipusNev'
      LookupDataSet = qMsoDoktipusok
      LookupKeyFields = 'MsoDokTipusKod'
      LookupResultField = 'MsoDokTipusNev'
      KeyFields = 'MsoDokTipusKod'
      LookupCache = True
      Size = 100
      Lookup = True
    end
    object qMsoRajzListaErvenyes: TBooleanField
      FieldName = 'Ervenyes'
      Origin = 'MAINDB.MsoRajzlista.Ervenyes'
    end
    object qMsoRajzListaRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.MsoRajzlista.Rogzitette'
      Size = 50
    end
    object qMsoRajzListaRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.MsoRajzlista.RogzIdopont'
    end
  end
  object dsMsoRajzLista: TDataSource
    DataSet = qMsoRajzLista
    Left = 40
    Top = 272
  end
  object uMsoRajzLista: TUpdateSQL
    ModifySQL.Strings = (
      'update MsoRajzlista'
      'set'
      '  FocsoportKod = :FocsoportKod,'
      '  CsoportKod = :CsoportKod,'
      '  AlcsoportKod = :AlcsoportKod,'
      '  Tipusjel = :Tipusjel,'
      '  Sorozatszam = :Sorozatszam,'
      '  Sorszam = :Sorszam,'
      '  Verzio = :Verzio,'
      '  Filenev = :Filenev,'
      '  Utvonal = :Utvonal,'
      '  SharePointLink = :SharePointLink,'
      '  MsoKategoriaKod = :MsoKategoriaKod,'
      '  Megnevezes = :Megnevezes,'
      '  Megjegyzes = :Megjegyzes,'
      '  Kotesszam = :Kotesszam,'
      '  EgyebKapcsolat = :EgyebKapcsolat,'
      '  MsoDokTipusKod = :MsoDokTipusKod,'
      '  Ervenyes = :Ervenyes,'
      '  Rogzitette = :Rogzitette,'
      '  RogzIdopont = :RogzIdopont'
      'where'
      '  MsoId = :OLD_MsoId')
    InsertSQL.Strings = (
      'insert into MsoRajzlista'
      
        '  (FocsoportKod, CsoportKod, AlcsoportKod, Tipusjel, Sorozatszam' +
        ', Sorszam, '
      
        '   Verzio, Filenev, Utvonal, SharePointLink, MsoKategoriaKod, Me' +
        'gnevezes, '
      
        '   Megjegyzes, Kotesszam, EgyebKapcsolat, MsoDokTipusKod, Erveny' +
        'es, Rogzitette, '
      '   RogzIdopont)'
      'values'
      
        '  (:FocsoportKod, :CsoportKod, :AlcsoportKod, :Tipusjel, :Soroza' +
        'tszam, '
      
        '   :Sorszam, :Verzio, :Filenev, :Utvonal, :SharePointLink, :MsoK' +
        'ategoriaKod, '
      
        '   :Megnevezes, :Megjegyzes, :Kotesszam, :EgyebKapcsolat, :MsoDo' +
        'kTipusKod, '
      '   :Ervenyes, :Rogzitette, :RogzIdopont)')
    DeleteSQL.Strings = (
      'delete from MsoRajzlista'
      'where'
      '  MsoId = :OLD_MsoId')
    Left = 176
    Top = 272
  end
  object qMsoDoktipusok: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'MsoDokTipusok'
      'order by'
      #9'MsoDokTipusNev')
    Left = 104
    Top = 336
    object qMsoDoktipusokMsoDokTipusKod: TSmallintField
      FieldName = 'MsoDokTipusKod'
      Origin = 'MAINDB.MsoDokTipusok.MsoDokTipusKod'
    end
    object qMsoDoktipusokMsoDokTipusNev: TStringField
      FieldName = 'MsoDokTipusNev'
      Origin = 'MAINDB.MsoDokTipusok.MsoDokTipusNev'
      Size = 50
    end
    object qMsoDoktipusokRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.MsoDokTipusok.Rogzitette'
      Size = 50
    end
    object qMsoDoktipusokRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.MsoDokTipusok.RogzIdopont'
    end
  end
  object qMsoKategoriak: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'MsoKategoriak'
      'order by'
      #9'MsoKategoriaNev')
    Left = 104
    Top = 384
    object qMsoKategoriakMsoKategoriaKod: TSmallintField
      FieldName = 'MsoKategoriaKod'
      Origin = 'MAINDB.MsoKategoriak.MsoKategoriaKod'
    end
    object qMsoKategoriakMsoKategoriaNev: TStringField
      FieldName = 'MsoKategoriaNev'
      Origin = 'MAINDB.MsoKategoriak.MsoKategoriaNev'
      Size = 100
    end
    object qMsoKategoriakRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.MsoKategoriak.Rogzitette'
      Size = 50
    end
    object qMsoKategoriakRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.MsoKategoriak.RogzIdopont'
    end
  end
  object spMsoDrawExist: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_MsoDrawExist'
    Left = 104
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MsoId'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Tipusjel'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Sorozatszam'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Sorszam'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Verzio'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Exist'
        ParamType = ptInputOutput
      end>
  end
  object qProgHistory: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'h.*'
      'from'
      #9'Programs p,'
      #9'ProgramHistory h'
      'where'
      #9'p.ProgName = :ProgName'
      #9'and p.ProgCode = h.ProgCode'
      'order by'
      #9'BevezetesNapja desc ')
    Left = 104
    Top = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'ProgName'
        ParamType = ptUnknown
        Value = 'HoseSlave'
      end>
    object qProgHistoryProgCode: TIntegerField
      FieldName = 'ProgCode'
      Origin = 'MAINDB.ProgramHistory.ProgCode'
    end
    object qProgHistoryVersion: TStringField
      FieldName = 'Version'
      Origin = 'MAINDB.ProgramHistory.Version'
      Size = 50
    end
    object qProgHistoryHistory: TStringField
      FieldName = 'History'
      Origin = 'MAINDB.ProgramHistory.History'
      Size = 250
    end
    object qProgHistoryBevezetesNapja: TDateTimeField
      FieldName = 'BevezetesNapja'
      Origin = 'MAINDB.ProgramHistory.BevezetesNapja'
    end
    object qProgHistoryRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.ProgramHistory.Rogzitette'
      Size = 50
    end
    object qProgHistoryRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.ProgramHistory.RogzIdopont'
    end
  end
  object dsProgHistory: TDataSource
    DataSet = qProgHistory
    Left = 40
    Top = 464
  end
  object spGetCouplingWeight: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetCouplingWeight'
    Left = 408
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@CsatlRsz'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Weight'
        ParamType = ptInputOutput
      end>
  end
  object spGetTechLapData: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetTechLapData'
    Left = 408
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@CsatlRsz'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@L1Caption'
        ParamType = ptInputOutput
      end
      item
        DataType = ftFloat
        Name = '@L1'
        ParamType = ptInputOutput
      end>
  end
  object spGetBodyWeight: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetBodyWeight'
    Left = 408
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@KonstrLsz'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Weight'
        ParamType = ptInputOutput
      end>
  end
  object spGetToleranceText: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetToleranceText'
    Left = 408
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftFloat
        Name = '@Id'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ToleranceText'
        ParamType = ptInputOutput
      end>
  end
  object dsMsoAlcsoport: TDataSource
    DataSet = qMsoAlcsoport
    Left = 328
    Top = 328
  end
  object dsMsoCsoport: TDataSource
    DataSet = qMsoCsoport
    Left = 328
    Top = 280
  end
  object dsMsoFocsoport: TDataSource
    DataSet = qMsoFocsoport
    Left = 328
    Top = 232
  end
  object qMsoFocsoport: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from MsoFocsoport order by FocsoportNev')
    Left = 408
    Top = 248
    object qMsoFocsoportFocsoportKod: TSmallintField
      FieldName = 'FocsoportKod'
      Origin = 'MAINDB."dbo.MsoFocsoport".FocsoportKod'
    end
    object qMsoFocsoportFocsoportNev: TStringField
      FieldName = 'FocsoportNev'
      Origin = 'MAINDB."dbo.MsoFocsoport".FocsoportNev'
      Size = 50
    end
    object qMsoFocsoportRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB."dbo.MsoFocsoport".Rogzitette'
      Size = 50
    end
    object qMsoFocsoportRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB."dbo.MsoFocsoport".RogzIdopont'
    end
  end
  object qMsoCsoport: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'MsoCsoport'
      'where'
      
        #9'CsoportKod in (select CsoportKod from MsoCsoportCfg where Focso' +
        'portKod = :FocsoportKod)'
      'order by'
      '        CsoportNev')
    Left = 408
    Top = 296
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'FocsoportKod'
        ParamType = ptUnknown
      end>
  end
  object qMsoAlcsoport: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'MsoAlcsoport'
      'where'
      
        #9'AlcsoportKod in (select AlcsoportKod from MsoCsoportCfg where C' +
        'soportKod = :CsoportKod)'
      'order by'
      '      AlcsoportNev'
      ''
      ' ')
    Left = 408
    Top = 344
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'CsoportKod'
        ParamType = ptUnknown
      end>
  end
  object dsMsoDoktipusok: TDataSource
    DataSet = qMsoDoktipusok
    Left = 40
    Top = 320
  end
  object qMsoCsopList: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'MsoCsoport'
      'order by'
      '        CsoportNev')
    Left = 488
    Top = 280
    object qMsoCsopListCsoportKod: TSmallintField
      FieldName = 'CsoportKod'
      Origin = 'MAINDB.MsoCsoport.CsoportKod'
    end
    object qMsoCsopListCsoportNev: TStringField
      FieldName = 'CsoportNev'
      Origin = 'MAINDB.MsoCsoport.CsoportNev'
      Size = 50
    end
    object qMsoCsopListRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.MsoCsoport.Rogzitette'
      Size = 50
    end
    object qMsoCsopListRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.MsoCsoport.RogzIdopont'
    end
  end
  object qMsoAlcsList: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'MsoAlcsoport'
      'order by'
      '      AlcsoportNev'
      ''
      ' ')
    Left = 488
    Top = 328
    object qMsoAlcsListAlcsoportKod: TSmallintField
      FieldName = 'AlcsoportKod'
      Origin = 'MAINDB.MsoAlcsoport.AlcsoportKod'
    end
    object qMsoAlcsListAlcsoportNev: TStringField
      FieldName = 'AlcsoportNev'
      Origin = 'MAINDB.MsoAlcsoport.AlcsoportNev'
      Size = 50
    end
    object qMsoAlcsListRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.MsoAlcsoport.Rogzitette'
      Size = 50
    end
    object qMsoAlcsListRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.MsoAlcsoport.RogzIdopont'
    end
  end
  object spNewMsoItem: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_NewMsoItem'
    Left = 408
    Top = 392
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@MsoId'
        ParamType = ptInputOutput
      end>
  end
  object tMTRajzkonyv: TTable
    BeforePost = tMTRajzkonyvBeforePost
    BeforeDelete = tMTRajzkonyvBeforeDelete
    DatabaseName = 'MainDb'
    IndexName = 'PK_MTRajzkonyv'
    TableName = 'dbo.MTRajzkonyv'
    Left = 408
    Top = 440
    object tMTRajzkonyvrajzszam: TStringField
      FieldName = 'rajzszam'
      Required = True
      Size = 50
    end
    object tMTRajzkonyvrendelesszam: TStringField
      FieldName = 'rendelesszam'
    end
    object tMTRajzkonyvmegnevezes: TStringField
      FieldName = 'megnevezes'
      Size = 200
    end
    object tMTRajzkonyvID: TStringField
      FieldName = 'ID'
    end
    object tMTRajzkonyvnyomas: TStringField
      FieldName = 'nyomas'
    end
    object tMTRajzkonyvrev_datum: TStringField
      FieldName = 'rev_datum'
    end
    object tMTRajzkonyvmegjegyzes: TStringField
      FieldName = 'megjegyzes'
      Size = 200
    end
    object tMTRajzkonyvRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
    object tMTRajzkonyvRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
  end
  object dsMTRajzkonyv: TDataSource
    DataSet = tMTRajzkonyv
    Left = 336
    Top = 424
  end
  object tSzerelveny: TTable
    AfterOpen = tSzerelvenyAfterOpen
    BeforeInsert = tSzerelvenyBeforeInsert
    BeforePost = tSzerelvenyBeforePost
    BeforeDelete = tSzerelvenyBeforeDelete
    OnNewRecord = tSzerelvenyNewRecord
    DatabaseName = 'MainDb'
    IndexName = 'PK_Szerelveny'
    TableName = 'dbo.Szerelveny'
    Left = 408
    Top = 488
    object tSzerelvenySrsz: TIntegerField
      FieldName = 'Srsz'
    end
    object tSzerelvenyTipusKod: TIntegerField
      FieldName = 'TipusKod'
    end
    object tSzerelvenyTipusNev: TStringField
      FieldKind = fkLookup
      FieldName = 'TipusNev'
      LookupDataSet = tSzerelvenyTipus
      LookupKeyFields = 'TipusKod'
      LookupResultField = 'TipusNev'
      KeyFields = 'TipusKod'
      Size = 50
      Lookup = True
    end
    object tSzerelvenyinch: TFloatField
      FieldName = 'inch'
    end
    object tSzerelvenyGegecsoOD: TFloatField
      FieldName = 'GegecsoOD'
    end
    object tSzerelvenyOD: TFloatField
      FieldName = 'OD'
    end
    object tSzerelvenyID: TFloatField
      FieldName = 'ID'
    end
    object tSzerelvenyv1: TIntegerField
      FieldName = 'v1'
    end
    object tSzerelvenyOD1: TFloatField
      FieldName = 'OD1'
    end
    object tSzerelvenyOD2: TFloatField
      FieldName = 'OD2'
    end
    object tSzerelvenyL: TFloatField
      FieldName = 'L'
    end
    object tSzerelvenyMeret1: TStringField
      FieldName = 'Meret1'
      Size = 50
    end
    object tSzerelvenyMeret2: TStringField
      FieldName = 'Meret2'
      Size = 50
    end
    object tSzerelvenypsi: TFloatField
      FieldName = 'psi'
    end
    object tSzerelvenyMPa: TFloatField
      FieldName = 'MPa'
    end
    object tSzerelvenyRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object tSzerelvenyMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object tSzerelvenyAveg: TStringField
      FieldName = 'Aveg'
      Size = 50
    end
    object tSzerelvenyBveg: TStringField
      FieldName = 'Bveg'
      Size = 50
    end
    object tSzerelvenyOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Size = 50
    end
    object tSzerelvenyAnyag: TStringField
      FieldName = 'Anyag'
      Size = 50
    end
    object tSzerelvenyTomeg: TFloatField
      FieldName = 'Tomeg'
    end
    object tSzerelvenyMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object tSzerelvenyRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
    object tSzerelvenyRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tSzerelvenyv: TFloatField
      FieldName = 'v'
    end
    object tSzerelvenyOD3: TFloatField
      FieldName = 'OD3'
    end
    object tSzerelvenyL1: TFloatField
      FieldName = 'L1'
    end
    object tSzerelvenyL2: TFloatField
      FieldName = 'L2'
    end
    object tSzerelvenyL3: TFloatField
      FieldName = 'L3'
    end
    object tSzerelvenyL4: TFloatField
      FieldName = 'L4'
    end
    object tSzerelvenyL5: TFloatField
      FieldName = 'L5'
    end
    object tSzerelvenya: TFloatField
      FieldName = 'a'
    end
    object tSzerelvenyR1: TFloatField
      FieldName = 'R1'
    end
    object tSzerelvenyR2: TFloatField
      FieldName = 'R2'
    end
    object tSzerelvenypitch: TFloatField
      FieldName = 'pitch'
    end
    object tSzerelvenyalfa1: TFloatField
      FieldName = 'alfa1'
    end
    object tSzerelvenyalfa2: TFloatField
      FieldName = 'alfa2'
    end
  end
  object dsSzerelveny: TDataSource
    DataSet = tSzerelveny
    Left = 336
    Top = 472
  end
  object tSzerelvenyTipus: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.SzerelvenyTipus'
    Left = 408
    Top = 536
    object tSzerelvenyTipusTipusKod: TIntegerField
      FieldName = 'TipusKod'
      Required = True
    end
    object tSzerelvenyTipusTipusNev: TStringField
      FieldName = 'TipusNev'
      Size = 50
    end
    object tSzerelvenyTipusRogzitette: TStringField
      FieldName = 'Rogzitette'
      Required = True
      Size = 50
    end
    object tSzerelvenyTipusRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Required = True
    end
  end
  object tHoronyvedelem: TTable
    BeforePost = tHoronyvedelemBeforePost
    BeforeDelete = tHoronyvedelemBeforeDelete
    DatabaseName = 'MainDb'
    IndexName = 'PK_Horonyvedelem'
    TableName = 'dbo.Horonyvedelem'
    Left = 408
    Top = 584
    object tHoronyvedelemId: TIntegerField
      FieldName = 'Id'
    end
    object tHoronyvedelemHorony: TStringField
      FieldName = 'Horony'
      Size = 50
    end
    object tHoronyvedelemHomokfuvozashoz: TStringField
      FieldName = 'Homokfuvozashoz'
      Size = 50
    end
    object tHoronyvedelemKiszallitashoz: TStringField
      FieldName = 'Kiszallitashoz'
      Size = 50
    end
    object tHoronyvedelemMosatashoz: TStringField
      FieldName = 'Mosatashoz'
      Size = 50
    end
    object tHoronyvedelemMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 200
    end
    object tHoronyvedelemRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tHoronyvedelemRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsHoronyvedelem: TDataSource
    DataSet = tHoronyvedelem
    Left = 336
    Top = 568
  end
  object tKikuldottRajzok: TTable
    BeforePost = tKikuldottRajzokBeforePost
    BeforeDelete = tKikuldottRajzokBeforeDelete
    DatabaseName = 'MainDb'
    IndexName = 'PK_KikuldottRajzok'
    TableName = 'dbo.KikuldottRajzok'
    Left = 408
    Top = 632
    object tKikuldottRajzokId: TIntegerField
      FieldName = 'Id'
    end
    object tKikuldottRajzokOsszeallRajz: TStringField
      FieldName = 'OsszeallRajz'
      Size = 50
    end
    object tKikuldottRajzokMSORajz: TStringField
      FieldName = 'MSORajz'
      Size = 50
    end
    object tKikuldottRajzokKotes: TStringField
      FieldName = 'Kotes'
      Size = 50
    end
    object tKikuldottRajzokCsatlakozo: TStringField
      FieldName = 'Csatlakozo'
      Size = 50
    end
    object tKikuldottRajzokMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 200
    end
    object tKikuldottRajzokRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tKikuldottRajzokRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsKikuldottRajzok: TDataSource
    DataSet = tKikuldottRajzok
    Left = 336
    Top = 616
  end
  object tElorendelesTetelek: TTable
    BeforePost = tElorendelesTetelekBeforePost
    DatabaseName = 'MainDb'
    TableName = 'dbo.ElorendelesTetelek'
    Left = 672
    Top = 48
    object tElorendelesTetelekRendelesszam: TStringField
      FieldName = 'Rendelesszam'
      Required = True
    end
    object tElorendelesTetelekRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tElorendelesTetelekRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsElorendelesTetelek: TDataSource
    DataSet = tElorendelesTetelek
    Left = 600
    Top = 32
  end
  object tElorendelesAdatok: TTable
    BeforePost = tElorendelesTetelekBeforePost
    AfterPost = tElorendelesAdatokAfterPost
    DatabaseName = 'MainDb'
    TableName = 'dbo.ElorendelesAdatok'
    Left = 672
    Top = 96
    object tElorendelesAdatokElorendelesAdatId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ElorendelesAdatId'
    end
    object tElorendelesAdatokTipus: TStringField
      FieldName = 'Tipus'
      Required = True
      Size = 50
    end
    object tElorendelesAdatokRajzszam: TStringField
      FieldName = 'Rajzszam'
      Required = True
      Size = 50
    end
    object tElorendelesAdatokIdMin: TFloatField
      FieldName = 'IdMin'
      Required = True
    end
    object tElorendelesAdatokIdMax: TFloatField
      FieldName = 'IdMax'
      Required = True
    end
    object tElorendelesAdatokFestes: TStringField
      FieldName = 'Festes'
      Required = True
      Size = 50
    end
    object tElorendelesAdatokAr: TFloatField
      FieldName = 'Ar'
      DisplayFormat = ',#'
    end
    object tElorendelesAdatokCikkszamVeg: TStringField
      FieldName = 'CikkszamVeg'
      Size = 50
    end
    object tElorendelesAdatokRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tElorendelesAdatokRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsElorendelesAdatok: TDataSource
    DataSet = tElorendelesAdatok
    Left = 600
    Top = 80
  end
  object qElorendeles: TQuery
    CachedUpdates = True
    BeforePost = qElorendelesBeforePost
    DatabaseName = 'MainDb'
    ParamCheck = False
    SQL.Strings = (
      'select'
      '      *'
      'from'
      '      Elorendeles'
      'where'
      '      Rendsz between :RendszKezd and :RendszVeg'
      'order by'
      '      RendSz, TetelSrsz, Sorszam'
      ''
      ' '
      ' '
      ' ')
    UpdateObject = uElorendeles
    Left = 672
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'RendszKezd'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'RendszVeg'
        ParamType = ptUnknown
      end>
    object qElorendelesId: TIntegerField
      FieldName = 'Id'
      Origin = 'MAINDB.Elorendeles.Id'
    end
    object qElorendelesRendSz: TStringField
      FieldName = 'RendSz'
      Origin = 'MAINDB.Elorendeles.RendSz'
      Size = 50
    end
    object qElorendelesRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.Elorendeles.RendelesAz'
    end
    object qElorendelesTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.Elorendeles.TetelSrsz'
    end
    object qElorendelesSorszam: TIntegerField
      FieldName = 'Sorszam'
      Origin = 'MAINDB.Elorendeles.Sorszam'
    end
    object qElorendelesMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.Elorendeles.Megnevezes'
      Size = 200
    end
    object qElorendelesSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Origin = 'MAINDB.Elorendeles.Specifikacio'
      Size = 200
    end
    object qElorendelesRajzszam: TStringField
      FieldName = 'Rajzszam'
      Origin = 'MAINDB.Elorendeles.Rajzszam'
      Size = 50
    end
    object qElorendelesAnyag: TStringField
      FieldName = 'Anyag'
      Origin = 'MAINDB.Elorendeles.Anyag'
      Size = 50
    end
    object qElorendelesMeret: TFloatField
      FieldName = 'Meret'
      Origin = 'MAINDB.Elorendeles.Meret'
    end
    object qElorendelesFestes: TStringField
      FieldName = 'Festes'
      Origin = 'MAINDB.Elorendeles.Festes'
      Size = 200
    end
    object qElorendelesAzonosito: TStringField
      FieldName = 'Azonosito'
      Origin = 'MAINDB.Elorendeles.Azonosito'
      Size = 200
    end
    object qElorendelesMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.Elorendeles.Megjegyzes'
      Size = 200
    end
    object qElorendelesKiszallitando: TBooleanField
      FieldName = 'Kiszallitando'
      Origin = 'MAINDB.Elorendeles.Kiszallitando'
    end
    object qElorendelesdb: TFloatField
      FieldName = 'db'
      Origin = 'MAINDB.Elorendeles.db'
    end
    object qElorendelesDiszponensMegjegyzes: TStringField
      FieldName = 'DiszponensMegjegyzes'
      Origin = 'MAINDB.Elorendeles.DiszponensMegjegyzes'
      Size = 200
    end
    object qElorendelesBeszallitoMegjegyzes: TStringField
      FieldName = 'BeszallitoMegjegyzes'
      Origin = 'MAINDB.Elorendeles.BeszallitoMegjegyzes'
      Size = 200
    end
    object qElorendelesBeszallitoNev: TStringField
      FieldKind = fkLookup
      FieldName = 'BeszallitoNev'
      LookupDataSet = tBeszallitok
      LookupKeyFields = 'BeszallitoKod'
      LookupResultField = 'BeszallitoNev'
      KeyFields = 'BeszallitoKod'
      LookupCache = True
      Size = 50
      Lookup = True
    end
    object qElorendelesBeszallitoKod: TIntegerField
      FieldName = 'BeszallitoKod'
      Origin = 'MAINDB.Elorendeles.BeszallitoKod'
    end
    object qElorendelesBeszallitoiHatarido: TDateTimeField
      FieldName = 'BeszallitoiHatarido'
      Origin = 'MAINDB.Elorendeles.BeszallitoiHatarido'
    end
    object qElorendelesHozzaadottElem: TBooleanField
      FieldName = 'HozzaadottElem'
      Origin = 'MAINDB.Elorendeles.HozzaadottElem'
    end
    object qElorendelesAktiv: TBooleanField
      FieldName = 'Aktiv'
      Origin = 'MAINDB.Elorendeles.Aktiv'
    end
    object qElorendelesKivalasztva: TBooleanField
      FieldName = 'Kivalasztva'
      Origin = 'MAINDB.Elorendeles.Kivalasztva'
    end
    object qElorendelesFeldolgozva: TBooleanField
      FieldName = 'Feldolgozva'
      Origin = 'MAINDB.Elorendeles.Feldolgozva'
    end
    object qElorendelesRaktarra: TBooleanField
      FieldName = 'Raktarra'
      Origin = 'MAINDB.Elorendeles.Raktarra'
    end
    object qElorendelesBeerkezesDatuma: TDateTimeField
      FieldName = 'BeerkezesDatuma'
      Origin = 'MAINDB.Elorendeles.BeerkezesDatuma'
    end
    object qElorendelesFelosztva: TBooleanField
      FieldName = 'Felosztva'
      Origin = 'MAINDB.Elorendeles.Felosztva'
    end
    object qElorendelesRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.Elorendeles.Rogzitette'
      Size = 50
    end
    object qElorendelesRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.Elorendeles.RogzIdopont'
    end
    object qElorendelesModositva: TBooleanField
      FieldName = 'Modositva'
      Origin = 'MAINDB.Elorendeles.Modositva'
    end
  end
  object dsElorendeles: TDataSource
    DataSet = qElorendeles
    Left = 600
    Top = 176
  end
  object uElorendeles: TUpdateSQL
    ModifySQL.Strings = (
      'update Elorendeles'
      'set'
      '  RendSz = :RendSz,'
      '  RendelesAz = :RendelesAz,'
      '  TetelSrsz = :TetelSrsz,'
      '  Sorszam = :Sorszam,'
      '  Megnevezes = :Megnevezes,'
      '  Specifikacio = :Specifikacio,'
      '  Rajzszam = :Rajzszam,'
      '  Anyag = :Anyag,'
      '  Meret = :Meret,'
      '  Festes = :Festes,'
      '  Azonosito = :Azonosito,'
      '  Megjegyzes = :Megjegyzes,'
      '  Kiszallitando = :Kiszallitando,'
      '  db = :db,'
      '  DiszponensMegjegyzes = :DiszponensMegjegyzes,'
      '  BeszallitoMegjegyzes = :BeszallitoMegjegyzes,'
      '  BeszallitoKod = :BeszallitoKod,'
      '  BeszallitoiHatarido = :BeszallitoiHatarido,'
      '  HozzaadottElem = :HozzaadottElem,'
      '  Aktiv = :Aktiv,'
      '  Kivalasztva = :Kivalasztva,'
      '  Feldolgozva = :Feldolgozva,'
      '  Raktarra = :Raktarra,'
      '  BeerkezesDatuma = :BeerkezesDatuma,'
      '  Felosztva = :Felosztva,'
      '  Modositva = :Modositva,'
      '  Rogzitette = :Rogzitette,'
      '  RogzIdopont = :RogzIdopont'
      'where'
      '  Id = :OLD_Id')
    InsertSQL.Strings = (
      'insert into Elorendeles'
      
        '  (RendSz, RendelesAz, TetelSrsz, Sorszam, Megnevezes, Specifika' +
        'cio, Rajzszam, '
      
        '   Anyag, Meret, Festes, Azonosito, Megjegyzes, Kiszallitando, d' +
        'b, DiszponensMegjegyzes, '
      
        '   BeszallitoMegjegyzes, BeszallitoKod, BeszallitoiHatarido, Hoz' +
        'zaadottElem, '
      
        '   Aktiv, Kivalasztva, Feldolgozva, Raktarra, BeerkezesDatuma, F' +
        'elosztva, '
      '   Modositva, Rogzitette, RogzIdopont)'
      'values'
      
        '  (:RendSz, :RendelesAz, :TetelSrsz, :Sorszam, :Megnevezes, :Spe' +
        'cifikacio, '
      
        '   :Rajzszam, :Anyag, :Meret, :Festes, :Azonosito, :Megjegyzes, ' +
        ':Kiszallitando, '
      
        '   :db, :DiszponensMegjegyzes, :BeszallitoMegjegyzes, :Beszallit' +
        'oKod, :BeszallitoiHatarido, '
      
        '   :HozzaadottElem, :Aktiv, :Kivalasztva, :Feldolgozva, :Raktarr' +
        'a, :BeerkezesDatuma, '
      '   :Felosztva, :Modositva, :Rogzitette, :RogzIdopont)')
    DeleteSQL.Strings = (
      'delete from Elorendeles'
      'where'
      '  Id = :OLD_Id')
    Left = 744
    Top = 176
  end
  object AddElorendItem: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'AddElorendItem;1'
    Left = 672
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@RendelesAz'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RendSz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TetelSrsz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Id'
        ParamType = ptInputOutput
      end>
  end
  object SetElorendesOk: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'SetElorendesOk;1'
    Left = 672
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Id'
        ParamType = ptInput
      end>
  end
  object qRendTetel: TQuery
    DatabaseName = 'MainDb'
    DataSource = dsElorendeles
    SQL.Strings = (
      'select'
      
        #9'RendelesAz, TetelSrsz, Cikkszam, Specifikacio, Atmero, AtmeroMe' +
        ', psi, MPa, Lang, Bg, Kg, Pa, Kv,'
      
        #9'KgInter, KvMua, KvFedHelix, KvNFedHelix, H2S, Tipus, Csatl1, Cs' +
        'atl1Rsz, Csatl1MaxAtmero, Csatl1MaxAtmeroMe, '
      
        #9'Csatl2, Csatl2Rsz, Csatl2MaxAtmero, Csatl2MaxAtmeroMe, DarabSza' +
        'm, Hossz, HosszMe, HosszMe2, TErtek, '
      
        #9'TPenznem, OsszeallRsz, Konstrukcio, Konstrukcio2, KonstrukcioMa' +
        'xAtmero, KonstrukcioMaxAtmeroMe, TKonfekcio, '
      
        #9'TKonfekDatum, NormaIdo, DbjDatum, MuvDatum, KonstrDatum, FszHat' +
        'arido, FszBeerk, Anyag, Csomagolas, Egyeb, '
      
        #9'TMegj, TRogzit, TRogzIdo, TModosit, TModIdo, ModMezok, Torolt, ' +
        'Beszolg, TModHatarido, BeszolgIdo, BeszolgDb, '
      
        #9'BeszolgHossz, Tomeg, GyartasInd, BefejezoMuv, AccListExist, Acc' +
        'ListDate, AccCreator, BelsoHuvely, BhAnyag, '
      
        #9'Huvely, Spiralkup, Emelobilincs, EbMeret, BiztBilincs, BbMeret,' +
        ' TomitoGyuru1, TomitoGyuru2, Feneklap1, Feneklap2, '
      
        #9'NyomPrBilincs1, NyomPrBilincs2, VedoHuvely, OsztottHuvely, Egye' +
        'bek, AtveteliKesz, AtveteliIdopont, AtvetelitKeszitette, '
      
        #9'Inspector, InspectorMegj, Stamp, SapTypeOfCoupling1, SapTypeOfC' +
        'oupling2, TAutoUpdate, Marking, Standard, StandardText, '
      
        #9'TypeOfPacking, WorkingPressure, WorkingPressureUnit, DesignPres' +
        'sure, DesignPressureUnit, TestPressure, TestPressureUnit, '
      
        #9'SafetyFactor, TypeOfLining, MaxDesignTemperature, MinDesignTemp' +
        'erature, AccListMailDate, AccListMailSender, '
      #9'AccListMailSent, MarkingId, '
      #9'EBAzonosito = dbo.OrderLcScIdToStr(RendelesAz, TetelSrsz, 1), '
      #9'EBFestes = dbo.OrderPaintToStr(RendelesAz, TetelSrsz, 1),'
      #9'BBAzonosito = dbo.OrderLcScIdToStr(RendelesAz, TetelSrsz, 2), '
      #9'BBFestes = dbo.OrderPaintToStr(RendelesAz, TetelSrsz, 2)'
      'from'
      '        RendelesTetel'
      'where'
      #9'RendelesAz = :RendelesAz'
      #9'and TetelSrsz = :TetelSrsz'
      ' '
      ' '
      ' ')
    Left = 680
    Top = 624
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TetelSrsz'
        ParamType = ptUnknown
      end>
    object qRendTetelRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesTetel.RendelesAz'
    end
    object qRendTetelTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.RendelesTetel.TetelSrsz'
    end
    object qRendTetelCikkszam: TStringField
      FieldName = 'Cikkszam'
      Origin = 'MAINDB.RendelesTetel.Cikkszam'
    end
    object qRendTetelSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Origin = 'MAINDB.RendelesTetel.Specifikacio'
      Size = 100
    end
    object qRendTetelAtmero: TFloatField
      FieldName = 'Atmero'
      Origin = 'MAINDB.RendelesTetel.Atmero'
      DisplayFormat = ',0.###'
    end
    object qRendTetelAtmeroMe: TSmallintField
      FieldName = 'AtmeroMe'
      Origin = 'MAINDB.RendelesTetel.AtmeroMe'
    end
    object qRendTetelpsi: TFloatField
      FieldName = 'psi'
      Origin = 'MAINDB.RendelesTetel.psi'
      DisplayFormat = ',0.###'
    end
    object qRendTetelMPa: TFloatField
      FieldName = 'MPa'
      Origin = 'MAINDB.RendelesTetel.MPa'
      DisplayFormat = ',0.###'
    end
    object qRendTetelLang: TBooleanField
      FieldName = 'Lang'
      Origin = 'MAINDB.RendelesTetel.Lang'
    end
    object qRendTetelBg: TBooleanField
      FieldName = 'Bg'
      Origin = 'MAINDB.RendelesTetel.Bg'
    end
    object qRendTetelKg: TBooleanField
      FieldName = 'Kg'
      Origin = 'MAINDB.RendelesTetel.Kg'
    end
    object qRendTetelPa: TBooleanField
      FieldName = 'Pa'
      Origin = 'MAINDB.RendelesTetel.Pa'
    end
    object qRendTetelKv: TBooleanField
      FieldName = 'Kv'
      Origin = 'MAINDB.RendelesTetel.Kv'
    end
    object qRendTetelKgInter: TBooleanField
      FieldName = 'KgInter'
      Origin = 'MAINDB.RendelesTetel.KgInter'
    end
    object qRendTetelKvMua: TBooleanField
      FieldName = 'KvMua'
      Origin = 'MAINDB.RendelesTetel.KvMua'
    end
    object qRendTetelKvFedHelix: TBooleanField
      FieldName = 'KvFedHelix'
      Origin = 'MAINDB.RendelesTetel.KvFedHelix'
    end
    object qRendTetelKvNFedHelix: TBooleanField
      FieldName = 'KvNFedHelix'
      Origin = 'MAINDB.RendelesTetel.KvNFedHelix'
    end
    object qRendTetelH2S: TSmallintField
      FieldName = 'H2S'
      Origin = 'MAINDB.RendelesTetel.H2S'
    end
    object qRendTetelTipus: TStringField
      FieldName = 'Tipus'
      Origin = 'MAINDB.RendelesTetel.Tipus'
      Size = 50
    end
    object qRendTetelCsatl1: TStringField
      FieldName = 'Csatl1'
      Origin = 'MAINDB.RendelesTetel.Csatl1'
      Size = 50
    end
    object qRendTetelCsatl1Rsz: TStringField
      FieldName = 'Csatl1Rsz'
      Origin = 'MAINDB.RendelesTetel.Csatl1Rsz'
    end
    object qRendTetelCsatl1MaxAtmero: TFloatField
      FieldName = 'Csatl1MaxAtmero'
      Origin = 'MAINDB.RendelesTetel.Csatl1MaxAtmero'
      DisplayFormat = ',0.###'
    end
    object qRendTetelCsatl1MaxAtmeroMe: TIntegerField
      FieldName = 'Csatl1MaxAtmeroMe'
      Origin = 'MAINDB.RendelesTetel.Csatl1MaxAtmeroMe'
    end
    object qRendTetelCsatl2: TStringField
      FieldName = 'Csatl2'
      Origin = 'MAINDB.RendelesTetel.Csatl2'
      Size = 50
    end
    object qRendTetelCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
      Origin = 'MAINDB.RendelesTetel.Csatl2Rsz'
    end
    object qRendTetelCsatl2MaxAtmero: TFloatField
      FieldName = 'Csatl2MaxAtmero'
      Origin = 'MAINDB.RendelesTetel.Csatl2MaxAtmero'
      DisplayFormat = ',0.###'
    end
    object qRendTetelCsatl2MaxAtmeroMe: TIntegerField
      FieldName = 'Csatl2MaxAtmeroMe'
      Origin = 'MAINDB.RendelesTetel.Csatl2MaxAtmeroMe'
    end
    object qRendTetelDarabSzam: TFloatField
      FieldName = 'DarabSzam'
      Origin = 'MAINDB.RendelesTetel.DarabSzam'
    end
    object qRendTetelHossz: TFloatField
      FieldName = 'Hossz'
      Origin = 'MAINDB.RendelesTetel.Hossz'
      DisplayFormat = ',0.###'
    end
    object qRendTetelHosszMe: TStringField
      FieldName = 'HosszMe'
      Origin = 'MAINDB.RendelesTetel.HosszMe'
      Size = 10
    end
    object qRendTetelHosszMe2: TSmallintField
      FieldName = 'HosszMe2'
      Origin = 'MAINDB.RendelesTetel.HosszMe2'
    end
    object qRendTetelTErtek: TFloatField
      FieldName = 'TErtek'
      Origin = 'MAINDB.RendelesTetel.TErtek'
      DisplayFormat = ',0.###'
    end
    object qRendTetelTPenznem: TStringField
      FieldName = 'TPenznem'
      Origin = 'MAINDB.RendelesTetel.TPenznem'
      Size = 50
    end
    object qRendTetelOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Origin = 'MAINDB.RendelesTetel.OsszeallRsz'
      Size = 50
    end
    object qRendTetelKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Origin = 'MAINDB.RendelesTetel.Konstrukcio'
      Size = 50
    end
    object qRendTetelKonstrukcio2: TStringField
      FieldName = 'Konstrukcio2'
      Origin = 'MAINDB.RendelesTetel.Konstrukcio2'
      Size = 50
    end
    object qRendTetelKonstrukcioMaxAtmero: TFloatField
      FieldName = 'KonstrukcioMaxAtmero'
      Origin = 'MAINDB.RendelesTetel.KonstrukcioMaxAtmero'
    end
    object qRendTetelKonstrukcioMaxAtmeroMe: TIntegerField
      FieldName = 'KonstrukcioMaxAtmeroMe'
      Origin = 'MAINDB.RendelesTetel.KonstrukcioMaxAtmeroMe'
    end
    object qRendTetelTKonfekcio: TStringField
      FieldName = 'TKonfekcio'
      Origin = 'MAINDB.RendelesTetel.TKonfekcio'
      Size = 50
    end
    object qRendTetelTKonfekDatum: TDateTimeField
      FieldName = 'TKonfekDatum'
      Origin = 'MAINDB.RendelesTetel.TKonfekDatum'
    end
    object qRendTetelNormaIdo: TFloatField
      FieldName = 'NormaIdo'
      Origin = 'MAINDB.RendelesTetel.NormaIdo'
    end
    object qRendTetelDbjDatum: TDateTimeField
      FieldName = 'DbjDatum'
      Origin = 'MAINDB.RendelesTetel.DbjDatum'
    end
    object qRendTetelMuvDatum: TDateTimeField
      FieldName = 'MuvDatum'
      Origin = 'MAINDB.RendelesTetel.MuvDatum'
    end
    object qRendTetelKonstrDatum: TDateTimeField
      FieldName = 'KonstrDatum'
      Origin = 'MAINDB.RendelesTetel.KonstrDatum'
    end
    object qRendTetelFszHatarido: TDateTimeField
      FieldName = 'FszHatarido'
      Origin = 'MAINDB.RendelesTetel.FszHatarido'
    end
    object qRendTetelFszBeerk: TDateTimeField
      FieldName = 'FszBeerk'
      Origin = 'MAINDB.RendelesTetel.FszBeerk'
    end
    object qRendTetelAnyag: TStringField
      FieldName = 'Anyag'
      Origin = 'MAINDB.RendelesTetel.Anyag'
      Size = 50
    end
    object qRendTetelCsomagolas: TStringField
      FieldName = 'Csomagolas'
      Origin = 'MAINDB.RendelesTetel.Csomagolas'
      Size = 50
    end
    object qRendTetelEgyeb: TStringField
      FieldName = 'Egyeb'
      Origin = 'MAINDB.RendelesTetel.Egyeb'
      Size = 50
    end
    object qRendTetelTMegj: TStringField
      FieldName = 'TMegj'
      Origin = 'MAINDB.RendelesTetel.TMegj'
      Size = 50
    end
    object qRendTetelTRogzit: TStringField
      FieldName = 'TRogzit'
      Origin = 'MAINDB.RendelesTetel.TRogzit'
      Size = 50
    end
    object qRendTetelTRogzIdo: TDateTimeField
      FieldName = 'TRogzIdo'
      Origin = 'MAINDB.RendelesTetel.TRogzIdo'
    end
    object qRendTetelTModosit: TStringField
      FieldName = 'TModosit'
      Origin = 'MAINDB.RendelesTetel.TModosit'
      Size = 50
    end
    object qRendTetelTModIdo: TDateTimeField
      FieldName = 'TModIdo'
      Origin = 'MAINDB.RendelesTetel.TModIdo'
    end
    object qRendTetelModMezok: TFloatField
      FieldName = 'ModMezok'
      Origin = 'MAINDB.RendelesTetel.ModMezok'
    end
    object qRendTetelTorolt: TBooleanField
      FieldName = 'Torolt'
      Origin = 'MAINDB.RendelesTetel.Torolt'
    end
    object qRendTetelBeszolg: TBooleanField
      FieldName = 'Beszolg'
      Origin = 'MAINDB.RendelesTetel.Beszolg'
    end
    object qRendTetelTModHatarido: TDateTimeField
      FieldName = 'TModHatarido'
      Origin = 'MAINDB.RendelesTetel.TModHatarido'
    end
    object qRendTetelBeszolgIdo: TDateTimeField
      FieldName = 'BeszolgIdo'
      Origin = 'MAINDB.RendelesTetel.BeszolgIdo'
    end
    object qRendTetelBeszolgDb: TFloatField
      FieldName = 'BeszolgDb'
      Origin = 'MAINDB.RendelesTetel.BeszolgDb'
    end
    object qRendTetelBeszolgHossz: TFloatField
      FieldName = 'BeszolgHossz'
      Origin = 'MAINDB.RendelesTetel.BeszolgHossz'
    end
    object qRendTetelTomeg: TFloatField
      FieldName = 'Tomeg'
      Origin = 'MAINDB.RendelesTetel.Tomeg'
      DisplayFormat = ',0.###'
    end
    object qRendTetelGyartasInd: TDateTimeField
      FieldName = 'GyartasInd'
      Origin = 'MAINDB.RendelesTetel.GyartasInd'
    end
    object qRendTetelBefejezoMuv: TDateTimeField
      FieldName = 'BefejezoMuv'
      Origin = 'MAINDB.RendelesTetel.BefejezoMuv'
    end
    object qRendTetelAccListExist: TBooleanField
      FieldName = 'AccListExist'
      Origin = 'MAINDB.RendelesTetel.AccListExist'
    end
    object qRendTetelAccListDate: TDateTimeField
      FieldName = 'AccListDate'
      Origin = 'MAINDB.RendelesTetel.AccListDate'
    end
    object qRendTetelAccCreator: TStringField
      FieldName = 'AccCreator'
      Origin = 'MAINDB.RendelesTetel.AccCreator'
      Size = 50
    end
    object qRendTetelBelsoHuvely: TStringField
      FieldName = 'BelsoHuvely'
      Origin = 'MAINDB.RendelesTetel.BelsoHuvely'
    end
    object qRendTetelBhAnyag: TStringField
      FieldName = 'BhAnyag'
      Origin = 'MAINDB.RendelesTetel.BhAnyag'
      Size = 50
    end
    object qRendTetelHuvely: TStringField
      FieldName = 'Huvely'
      Origin = 'MAINDB.RendelesTetel.Huvely'
    end
    object qRendTetelSpiralkup: TStringField
      FieldName = 'Spiralkup'
      Origin = 'MAINDB.RendelesTetel.Spiralkup'
    end
    object qRendTetelEmelobilincs: TStringField
      FieldName = 'Emelobilincs'
      Origin = 'MAINDB.RendelesTetel.Emelobilincs'
    end
    object qRendTetelEbMeret: TFloatField
      FieldName = 'EbMeret'
      Origin = 'MAINDB.RendelesTetel.EbMeret'
      DisplayFormat = ',0.###'
    end
    object qRendTetelBiztBilincs: TStringField
      FieldName = 'BiztBilincs'
      Origin = 'MAINDB.RendelesTetel.BiztBilincs'
    end
    object qRendTetelBbMeret: TFloatField
      FieldName = 'BbMeret'
      Origin = 'MAINDB.RendelesTetel.BbMeret'
      DisplayFormat = ',0.###'
    end
    object qRendTetelTomitoGyuru1: TStringField
      FieldName = 'TomitoGyuru1'
      Origin = 'MAINDB.RendelesTetel.TomitoGyuru1'
    end
    object qRendTetelTomitoGyuru2: TStringField
      FieldName = 'TomitoGyuru2'
      Origin = 'MAINDB.RendelesTetel.TomitoGyuru2'
    end
    object qRendTetelFeneklap1: TStringField
      FieldName = 'Feneklap1'
      Origin = 'MAINDB.RendelesTetel.Feneklap1'
    end
    object qRendTetelFeneklap2: TStringField
      FieldName = 'Feneklap2'
      Origin = 'MAINDB.RendelesTetel.Feneklap2'
    end
    object qRendTetelNyomPrBilincs1: TStringField
      FieldName = 'NyomPrBilincs1'
      Origin = 'MAINDB.RendelesTetel.NyomPrBilincs1'
    end
    object qRendTetelNyomPrBilincs2: TStringField
      FieldName = 'NyomPrBilincs2'
      Origin = 'MAINDB.RendelesTetel.NyomPrBilincs2'
    end
    object qRendTetelVedoHuvely: TStringField
      FieldName = 'VedoHuvely'
      Origin = 'MAINDB.RendelesTetel.VedoHuvely'
    end
    object qRendTetelOsztottHuvely: TStringField
      FieldName = 'OsztottHuvely'
      Origin = 'MAINDB.RendelesTetel.OsztottHuvely'
    end
    object qRendTetelEgyebek: TMemoField
      FieldName = 'Egyebek'
      Origin = 'MAINDB.RendelesTetel.Egyebek'
      BlobType = ftMemo
      Size = 1
    end
    object qRendTetelAtveteliKesz: TBooleanField
      FieldName = 'AtveteliKesz'
      Origin = 'MAINDB.RendelesTetel.AtveteliKesz'
    end
    object qRendTetelAtveteliIdopont: TDateTimeField
      FieldName = 'AtveteliIdopont'
      Origin = 'MAINDB.RendelesTetel.AtveteliIdopont'
    end
    object qRendTetelAtvetelitKeszitette: TStringField
      FieldName = 'AtvetelitKeszitette'
      Origin = 'MAINDB.RendelesTetel.AtvetelitKeszitette'
      Size = 50
    end
    object qRendTetelInspector: TStringField
      FieldName = 'Inspector'
      Origin = 'MAINDB.RendelesTetel.Inspector'
      Size = 50
    end
    object qRendTetelInspectorMegj: TStringField
      FieldName = 'InspectorMegj'
      Size = 200
    end
    object qRendTetelStamp: TBytesField
      FieldName = 'Stamp'
      Origin = 'MAINDB.RendelesTetel.Stamp'
      Size = 8
    end
    object qRendTetelSapTypeOfCoupling1: TStringField
      FieldName = 'SapTypeOfCoupling1'
      Origin = 'MAINDB.RendelesTetel.SapTypeOfCoupling1'
      Size = 250
    end
    object qRendTetelSapTypeOfCoupling2: TStringField
      FieldName = 'SapTypeOfCoupling2'
      Origin = 'MAINDB.RendelesTetel.SapTypeOfCoupling2'
      Size = 250
    end
    object qRendTetelTAutoUpdate: TBooleanField
      FieldName = 'TAutoUpdate'
      Origin = 'MAINDB.RendelesTetel.TAutoUpdate'
    end
    object qRendTetelMarking: TStringField
      FieldName = 'Marking'
      Origin = 'MAINDB.RendelesTetel.Marking'
      Size = 50
    end
    object qRendTetelStandard: TStringField
      FieldName = 'Standard'
      Origin = 'MAINDB.RendelesTetel.Standard'
      Size = 50
    end
    object qRendTetelStandardText: TStringField
      FieldName = 'StandardText'
      Origin = 'MAINDB.RendelesTetel.StandardText'
      Size = 50
    end
    object qRendTetelTypeOfPacking: TStringField
      FieldName = 'TypeOfPacking'
      Origin = 'MAINDB.RendelesTetel.TypeOfPacking'
      Size = 50
    end
    object qRendTetelWorkingPressure: TFloatField
      FieldName = 'WorkingPressure'
      Origin = 'MAINDB.RendelesTetel.WorkingPressure'
    end
    object qRendTetelWorkingPressureUnit: TStringField
      FieldName = 'WorkingPressureUnit'
      Origin = 'MAINDB.RendelesTetel.WorkingPressureUnit'
      FixedChar = True
      Size = 10
    end
    object qRendTetelDesignPressure: TFloatField
      FieldName = 'DesignPressure'
      Origin = 'MAINDB.RendelesTetel.DesignPressure'
    end
    object qRendTetelDesignPressureUnit: TStringField
      FieldName = 'DesignPressureUnit'
      Origin = 'MAINDB.RendelesTetel.DesignPressureUnit'
      FixedChar = True
      Size = 10
    end
    object qRendTetelTestPressure: TFloatField
      FieldName = 'TestPressure'
      Origin = 'MAINDB.RendelesTetel.TestPressure'
    end
    object qRendTetelTestPressureUnit: TStringField
      FieldName = 'TestPressureUnit'
      Origin = 'MAINDB.RendelesTetel.TestPressureUnit'
      FixedChar = True
      Size = 10
    end
    object qRendTetelSafetyFactor: TFloatField
      FieldName = 'SafetyFactor'
      Origin = 'MAINDB.RendelesTetel.SafetyFactor'
    end
    object qRendTetelTypeOfLining: TStringField
      FieldName = 'TypeOfLining'
      Origin = 'MAINDB.RendelesTetel.TypeOfLining'
      Size = 50
    end
    object qRendTetelMaxDesignTemperature: TFloatField
      FieldName = 'MaxDesignTemperature'
      Origin = 'MAINDB.RendelesTetel.MaxDesignTemperature'
    end
    object qRendTetelMinDesignTemperature: TFloatField
      FieldName = 'MinDesignTemperature'
      Origin = 'MAINDB.RendelesTetel.MinDesignTemperature'
    end
    object qRendTetelAccListMailDate: TDateTimeField
      FieldName = 'AccListMailDate'
      Origin = 'MAINDB.RendelesTetel.AccListMailDate'
    end
    object qRendTetelAccListMailSender: TStringField
      FieldName = 'AccListMailSender'
      Origin = 'MAINDB.RendelesTetel.AccListMailSender'
      Size = 50
    end
    object qRendTetelAccListMailSent: TBooleanField
      FieldName = 'AccListMailSent'
      Origin = 'MAINDB.RendelesTetel.AccListMailSent'
    end
    object qRendTetelMarkingId: TIntegerField
      FieldName = 'MarkingId'
      Origin = 'MAINDB.RendelesTetel.MarkingId'
    end
    object qRendTetelEBAzonosito: TMemoField
      FieldName = 'EBAzonosito'
      BlobType = ftMemo
      Size = 1
    end
    object qRendTetelEBFestes: TMemoField
      FieldName = 'EBFestes'
      BlobType = ftMemo
      Size = 1
    end
    object qRendTetelBBAzonosito: TMemoField
      FieldName = 'BBAzonosito'
      BlobType = ftMemo
      Size = 1
    end
    object qRendTetelBBFestes: TMemoField
      FieldName = 'BBFestes'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsRendTetel: TDataSource
    DataSet = qRendTetel
    Left = 608
    Top = 608
  end
  object tElorendelesRaktarra: TTable
    BeforePost = tElorendelesRaktarraBeforePost
    AutoRefresh = True
    DatabaseName = 'MainDb'
    TableName = 'dbo.ElorendelesRaktarra'
    Left = 672
    Top = 240
    object tElorendelesRaktarraId: TIntegerField
      FieldName = 'Id'
    end
    object tElorendelesRaktarraRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object tElorendelesRaktarraMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 200
    end
    object tElorendelesRaktarraRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tElorendelesRaktarraRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsElorendelesRaktarra: TDataSource
    DataSet = tElorendelesRaktarra
    Left = 600
    Top = 224
  end
  object tBeszallitok: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.Beszallitok'
    Left = 672
    Top = 480
    object tBeszallitokBeszallitoKod: TIntegerField
      FieldName = 'BeszallitoKod'
      Required = True
    end
    object tBeszallitokBeszallitoNev: TStringField
      FieldName = 'BeszallitoNev'
      Required = True
      Size = 50
    end
    object tBeszallitokBeszallitoCim: TStringField
      FieldName = 'BeszallitoCim'
      Size = 50
    end
    object tBeszallitokElorendelesiMegjegyzes: TStringField
      FieldName = 'ElorendelesiMegjegyzes'
      Size = 200
    end
    object tBeszallitokRogzitette: TStringField
      FieldName = 'Rogzitette'
      Required = True
      Size = 50
    end
    object tBeszallitokRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Required = True
    end
  end
  object dsBeszallitok: TDataSource
    DataSet = tBeszallitok
    Left = 608
    Top = 464
  end
  object qBeszallitok: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * '
      'from '
      #9'Beszallitok')
    Left = 672
    Top = 528
    object qBeszallitokBeszallitoKod: TIntegerField
      FieldName = 'BeszallitoKod'
      Origin = 'MAINDB.Beszallitok.BeszallitoKod'
    end
    object qBeszallitokBeszallitoNev: TStringField
      FieldName = 'BeszallitoNev'
      Origin = 'MAINDB.Beszallitok.BeszallitoNev'
      Size = 50
    end
    object qBeszallitokBeszallitoCim: TStringField
      FieldName = 'BeszallitoCim'
      Origin = 'MAINDB.Beszallitok.BeszallitoCim'
      Size = 50
    end
    object qBeszallitokRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.Beszallitok.Rogzitette'
      Size = 50
    end
    object qBeszallitokRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.Beszallitok.RogzIdopont'
    end
  end
  object ElorendelesTetelFeloszt: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'ElorendelesTetelFeloszt;1'
    Left = 672
    Top = 432
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@ChildNum'
        ParamType = ptInput
      end>
  end
  object qUndo: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      '-- Elõrendelés feldolgozott státuszának törlése'
      'update Elorendeles'
      'set'
      #9'Feldolgozva = 0'
      'where'
      #9'IsNull(Feldolgozva, 0) = 1'
      ''
      '--'
      'update Elorendeles'
      'set'
      #9'Raktarra = 0'
      'where'
      #9'IsNull(Raktarra, 0) = 1'
      ''
      'update Elorendeles'
      'set'
      #9'Kivalasztva = 0'
      'where'
      #9'IsNull(Kivalasztva, 0) = 1'
      ''
      'update Elorendeles'
      'set'
      #9'Felosztva = 0'
      'where'
      #9'IsNull(Felosztva, 0) = 1'
      ''
      'delete from Elorendeles'
      'where'
      #9'HozzaadottElem = 1')
    Left = 864
    Top = 176
  end
end
