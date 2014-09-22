object OrderDm: TOrderDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 312
  Top = 126
  Height = 886
  Width = 1155
  object dsRendFej: TDataSource
    DataSet = tRendFej
    Left = 48
    Top = 64
  end
  object dsRendTetel: TDataSource
    DataSet = tRendTetel
    Left = 48
    Top = 112
  end
  object spGetUserProductList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetUserProductList'
    Left = 120
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Uid'
        ParamType = ptInput
      end>
    object spGetUserProductListTermekKod: TSmallintField
      FieldName = 'TermekKod'
    end
    object spGetUserProductListTermekNev: TStringField
      FieldName = 'TermekNev'
      FixedChar = True
      Size = 50
    end
    object spGetUserProductListTomloTipNev: TStringField
      FieldName = 'TomloTipNev'
      Size = 50
    end
  end
  object dsGetUserProductList: TDataSource
    DataSet = spGetUserProductList
    Left = 48
    Top = 8
  end
  object qRendEgyeb: TQuery
    DatabaseName = 'MainDb'
    DataSource = dsRendTetel
    SQL.Strings = (
      'declare @RendelesAz int, @TetelSrsz smallint'
      'select @RendelesAz = :RendelesAz'
      'select @TetelSrsz = :TetelSrsz'
      ''
      'select'
      #9'Tipus = 1, RendelesAz, TetelSrsz, Sorszam, Megnevezes,'
      #9'Azonosito = Rajzszam, Festes = '#39#39', Darabszam, Megjegyzes,'
      #9'Active, CreatorName, CreateDate, Kiszallitando'
      'from'
      #9'RendelesTetelEgyebek'
      'where'
      #9'RendelesAz = @RendelesAz and TetelSrsz = @TetelSrsz'
      ''
      'union all'
      'select'
      
        #9'Tipus = 2, RendelesAz, TetelSrsz, Sorszam = Id, Megnevezes = Es' +
        'zkozFajta,'
      #9'Azonosito, Festes = '#39#39', Darabszam = 1, Megjegyzes = '#39#39','
      
        #9'Active = Cast(1 as bit), CreatorName = Rogzitette, CreateDate =' +
        ' RogzIdopont,'
      #9'Kiszallitando = Cast(1 as bit)'
      'from'
      #9'BiztonsagiSzerelvenyek'
      'where'
      #9'RendelesAz = @RendelesAz and TetelSrsz = @TetelSrsz'
      ''
      'union all'
      'select'
      #9'Tipus = 3, RendelesAz, TetelSrsz, Sorszam = Counter,'
      #9'Megnevezes ='
      #9'case'
      #9#9'when tipus = 1 then '#39'Emelõ bilincs'#39
      #9#9'when tipus = 2 then '#39'Biztonsági bilincs'#39
      #9#9'else '#39#39
      #9'end,'
      
        #9'Azonosito, Festes, Darabszam = null, Megjegyzes, Active = Cast(' +
        '1 as bit),'
      
        '        CreatorName = Rogzitette, CreateDate = RogzIdopont, Kisz' +
        'allitando = Cast(1 as bit)'
      'from'
      #9'RendelesTetelBilincs'
      'where'
      #9'RendelesAz = @RendelesAz'
      #9'and TetelSrsz = @TetelSrsz'
      ''
      ' '
      ' ')
    Left = 120
    Top = 176
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
    object qRendEgyebTipus: TIntegerField
      FieldName = 'Tipus'
    end
    object qRendEgyebRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesTetelEgyebek.RendelesAz'
    end
    object qRendEgyebTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.RendelesTetelEgyebek.TetelSrsz'
    end
    object qRendEgyebSorszam: TIntegerField
      FieldName = 'Sorszam'
      Origin = 'MAINDB.RendelesTetelEgyebek.Sorszam'
    end
    object qRendEgyebMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.RendelesTetelEgyebek.Megnevezes'
    end
    object qRendEgyebKiszallitando: TBooleanField
      FieldName = 'Kiszallitando'
      Origin = 'MAINDB.RendelesTetelEgyebek.Kiszallitando'
    end
    object qRendEgyebAzonosito: TStringField
      FieldName = 'Azonosito'
    end
    object qRendEgyebFestes: TStringField
      FieldName = 'Festes'
      Size = 50
    end
    object qRendEgyebDarabszam: TSmallintField
      FieldName = 'Darabszam'
      Origin = 'MAINDB.RendelesTetelEgyebek.Darabszam'
    end
    object qRendEgyebMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.RendelesTetelEgyebek.Megjegyzes'
      Size = 50
    end
    object qRendEgyebActive: TBooleanField
      FieldName = 'Active'
      Origin = 'MAINDB.RendelesTetelEgyebek.Active'
    end
    object qRendEgyebCreatorName: TStringField
      FieldName = 'CreatorName'
      Origin = 'MAINDB.RendelesTetelEgyebek.CreatorName'
      Size = 50
    end
    object qRendEgyebCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Origin = 'MAINDB.RendelesTetelEgyebek.CreateDate'
    end
  end
  object dsRendEgyeb: TDataSource
    DataSet = qRendEgyeb
    Left = 48
    Top = 160
  end
  object qPenznem: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from Penznem Order by ShortName')
    Left = 120
    Top = 272
    object qPenznemDevizaId: TIntegerField
      FieldName = 'DevizaId'
      Origin = 'MAINDB.Penznem.DevizaId'
    end
    object qPenznemShortName: TStringField
      FieldName = 'ShortName'
      Origin = 'MAINDB.Penznem.ShortName'
      Size = 10
    end
    object qPenznemFullName: TStringField
      FieldName = 'FullName'
      Origin = 'MAINDB.Penznem.FullName'
      Size = 50
    end
  end
  object qSalesAreas: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'ProductCode, sag.SalesAreaCode, SalesAreaName'
      'from'
      #9'SalesAreaGroups sag'
      
        #9'Left Outer Join SalesAreas sa On (sa.SalesAreaCode = sag.SalesA' +
        'reaCode)'
      'where'
      #9'ProductCode = :TermekKod'
      '        and Active = 1'
      'order by'
      #9'SalesAreaName'
      ' ')
    Left = 120
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TermekKod'
        ParamType = ptUnknown
      end>
    object qSalesAreasProductCode: TSmallintField
      FieldName = 'ProductCode'
      Origin = 'MAINDB.SalesAreaGroups.ProductCode'
    end
    object qSalesAreasSalesAreaCode: TSmallintField
      FieldName = 'SalesAreaCode'
      Origin = 'MAINDB.SalesAreaGroups.SalesAreaCode'
    end
    object qSalesAreasSalesAreaName: TStringField
      FieldName = 'SalesAreaName'
      Origin = 'MAINDB.SalesAreas.SalesAreaName'
    end
  end
  object tRendTetel: TTable
    BeforeInsert = tRendTetelBeforeInsert
    BeforePost = tRendTetelBeforePost
    AfterPost = tRendTetelAfterPost
    BeforeDelete = tRendTetelBeforeDelete
    AfterScroll = tRendTetelAfterScroll
    OnNewRecord = tRendTetelNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = dsRendFej
    TableName = 'dbo.RendelesTetel'
    Left = 120
    Top = 128
    object tRendTetelRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object tRendTetelTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Required = True
    end
    object tRendTetelCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object tRendTetelSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Size = 100
    end
    object tRendTetelAtmero: TFloatField
      FieldName = 'Atmero'
    end
    object tRendTetelpsi: TFloatField
      FieldName = 'psi'
      DisplayFormat = ',0.##'
    end
    object tRendTetelMPa: TFloatField
      FieldName = 'MPa'
    end
    object tRendTetelLang: TBooleanField
      FieldName = 'Lang'
      Required = True
    end
    object tRendTetelBg: TBooleanField
      FieldName = 'Bg'
      Required = True
    end
    object tRendTetelKg: TBooleanField
      FieldName = 'Kg'
      Required = True
    end
    object tRendTetelPa: TBooleanField
      FieldName = 'Pa'
      Required = True
    end
    object tRendTetelKv: TBooleanField
      FieldName = 'Kv'
      Required = True
    end
    object tRendTetelKgInter: TBooleanField
      FieldName = 'KgInter'
      Required = True
    end
    object tRendTetelKvMua: TBooleanField
      FieldName = 'KvMua'
      Required = True
    end
    object tRendTetelKvFedHelix: TBooleanField
      FieldName = 'KvFedHelix'
      Required = True
    end
    object tRendTetelKvNFedHelix: TBooleanField
      FieldName = 'KvNFedHelix'
      Required = True
    end
    object tRendTetelH2S: TSmallintField
      FieldName = 'H2S'
    end
    object tRendTetelTipus: TStringField
      FieldName = 'Tipus'
      Size = 30
    end
    object tRendTetelCsatl1: TStringField
      FieldName = 'Csatl1'
      Size = 50
    end
    object tRendTetelCsatl1Rsz: TStringField
      FieldName = 'Csatl1Rsz'
    end
    object tRendTetelCsatl2: TStringField
      FieldName = 'Csatl2'
      Size = 50
    end
    object tRendTetelCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
    end
    object tRendTetelDarabSzam: TFloatField
      FieldName = 'DarabSzam'
    end
    object tRendTetelHossz: TFloatField
      FieldName = 'Hossz'
    end
    object tRendTetelHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
    object tRendTetelTErtek: TFloatField
      FieldName = 'TErtek'
      DisplayFormat = ',0.##'
    end
    object tRendTetelTPenznem: TStringField
      FieldName = 'TPenznem'
      Size = 50
    end
    object tRendTetelOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Size = 50
    end
    object tRendTetelKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Size = 50
    end
    object tRendTetelKonstrukcio2: TStringField
      FieldName = 'Konstrukcio2'
      Size = 50
    end
    object tRendTetelMarkingId: TIntegerField
      FieldName = 'MarkingId'
    end
    object tRendTetelTKonfekcio: TStringField
      FieldName = 'TKonfekcio'
      Size = 50
    end
    object tRendTetelTKonfekDatum: TDateTimeField
      FieldName = 'TKonfekDatum'
    end
    object tRendTetelNormaIdo: TFloatField
      FieldName = 'NormaIdo'
    end
    object tRendTetelDbjDatum: TDateTimeField
      FieldName = 'DbjDatum'
    end
    object tRendTetelMuvDatum: TDateTimeField
      FieldName = 'MuvDatum'
    end
    object tRendTetelKonstrDatum: TDateTimeField
      FieldName = 'KonstrDatum'
    end
    object tRendTetelFszHatarido: TDateTimeField
      FieldName = 'FszHatarido'
    end
    object tRendTetelFszBeerk: TDateTimeField
      FieldName = 'FszBeerk'
    end
    object tRendTetelAnyag: TStringField
      FieldName = 'Anyag'
      Size = 50
    end
    object tRendTetelCsomagolas: TStringField
      FieldName = 'Csomagolas'
      Size = 50
    end
    object tRendTetelEgyeb: TStringField
      FieldName = 'Egyeb'
      Size = 50
    end
    object tRendTetelTMegj: TStringField
      FieldName = 'TMegj'
      Size = 50
    end
    object tRendTetelTRogzit: TStringField
      FieldName = 'TRogzit'
      Size = 50
    end
    object tRendTetelTRogzIdo: TDateTimeField
      FieldName = 'TRogzIdo'
    end
    object tRendTetelTModosit: TStringField
      FieldName = 'TModosit'
      Size = 50
    end
    object tRendTetelTModIdo: TDateTimeField
      FieldName = 'TModIdo'
    end
    object tRendTetelModMezok: TFloatField
      FieldName = 'ModMezok'
    end
    object tRendTetelTorolt: TBooleanField
      FieldName = 'Torolt'
      Required = True
    end
    object tRendTetelBeszolg: TBooleanField
      FieldName = 'Beszolg'
      Required = True
    end
    object tRendTetelTModHatarido: TDateTimeField
      FieldName = 'TModHatarido'
    end
    object tRendTetelBeszolgIdo: TDateTimeField
      FieldName = 'BeszolgIdo'
    end
    object tRendTetelBeszolgDb: TFloatField
      FieldName = 'BeszolgDb'
    end
    object tRendTetelBeszolgHossz: TFloatField
      FieldName = 'BeszolgHossz'
    end
    object tRendTetelTomeg: TFloatField
      FieldName = 'Tomeg'
    end
    object tRendTetelGyartasInd: TDateTimeField
      FieldName = 'GyartasInd'
    end
    object tRendTetelBefejezoMuv: TDateTimeField
      FieldName = 'BefejezoMuv'
    end
    object tRendTetelAccListExist: TBooleanField
      FieldName = 'AccListExist'
    end
    object tRendTetelAccListDate: TDateTimeField
      FieldName = 'AccListDate'
    end
    object tRendTetelAccCreator: TStringField
      FieldName = 'AccCreator'
      Size = 50
    end
    object tRendTetelBelsoHuvely: TStringField
      FieldName = 'BelsoHuvely'
    end
    object tRendTetelHuvely: TStringField
      FieldName = 'Huvely'
    end
    object tRendTetelSpiralkup: TStringField
      FieldName = 'Spiralkup'
    end
    object tRendTetelEmelobilincs: TStringField
      FieldName = 'Emelobilincs'
    end
    object tRendTetelBiztBilincs: TStringField
      FieldName = 'BiztBilincs'
    end
    object tRendTetelTomitoGyuru1: TStringField
      FieldName = 'TomitoGyuru1'
    end
    object tRendTetelTomitoGyuru2: TStringField
      FieldName = 'TomitoGyuru2'
    end
    object tRendTetelFeneklap1: TStringField
      FieldName = 'Feneklap1'
    end
    object tRendTetelFeneklap2: TStringField
      FieldName = 'Feneklap2'
    end
    object tRendTetelNyomPrBilincs1: TStringField
      FieldName = 'NyomPrBilincs1'
    end
    object tRendTetelNyomPrBilincs2: TStringField
      FieldName = 'NyomPrBilincs2'
    end
    object tRendTetelVedoHuvely: TStringField
      FieldName = 'VedoHuvely'
    end
    object tRendTetelOsztottHuvely: TStringField
      FieldName = 'OsztottHuvely'
    end
    object tRendTetelEgyebek: TMemoField
      FieldName = 'Egyebek'
      BlobType = ftMemo
      Size = 1
    end
    object tRendTetelAtveteliKesz: TBooleanField
      FieldName = 'AtveteliKesz'
    end
    object tRendTetelAtveteliIdopont: TDateTimeField
      FieldName = 'AtveteliIdopont'
    end
    object tRendTetelAtvetelitKeszitette: TStringField
      FieldName = 'AtvetelitKeszitette'
      Size = 50
    end
    object tRendTetelInspector: TStringField
      FieldName = 'Inspector'
      Size = 50
    end
    object tRendTetelInspectorMegj: TStringField
      FieldName = 'InspectorMegj'
      Size = 200
    end
    object tRendTetelStamp: TBytesField
      FieldName = 'Stamp'
      Size = 8
    end
    object tRendTetelSapTypeOfCoupling1: TStringField
      FieldName = 'SapTypeOfCoupling1'
      Size = 250
    end
    object tRendTetelSapTypeOfCoupling2: TStringField
      FieldName = 'SapTypeOfCoupling2'
      Size = 250
    end
    object tRendTetelTAutoUpdate: TBooleanField
      FieldName = 'TAutoUpdate'
    end
    object tRendTetelMarking: TStringField
      FieldName = 'Marking'
      Size = 50
    end
    object tRendTetelStandard: TStringField
      FieldName = 'Standard'
      Size = 50
    end
    object tRendTetelStandardText: TStringField
      FieldName = 'StandardText'
      Size = 50
    end
    object tRendTetelTypeOfPacking: TStringField
      FieldName = 'TypeOfPacking'
      Size = 50
    end
    object tRendTetelWorkingPressure: TFloatField
      FieldName = 'WorkingPressure'
    end
    object tRendTetelWorkingPressureUnit: TStringField
      FieldName = 'WorkingPressureUnit'
      FixedChar = True
      Size = 10
    end
    object tRendTetelDesignPressure: TFloatField
      FieldName = 'DesignPressure'
    end
    object tRendTetelDesignPressureUnit: TStringField
      FieldName = 'DesignPressureUnit'
      FixedChar = True
      Size = 10
    end
    object tRendTetelTestPressure: TFloatField
      FieldName = 'TestPressure'
    end
    object tRendTetelTestPressureUnit: TStringField
      FieldName = 'TestPressureUnit'
      FixedChar = True
      Size = 10
    end
    object tRendTetelSafetyFactor: TFloatField
      FieldName = 'SafetyFactor'
    end
    object tRendTetelTypeOfLining: TStringField
      FieldName = 'TypeOfLining'
      Size = 50
    end
    object tRendTetelMaxDesignTemperature: TFloatField
      FieldName = 'MaxDesignTemperature'
    end
    object tRendTetelMinDesignTemperature: TFloatField
      FieldName = 'MinDesignTemperature'
    end
    object tRendTetelBhAnyag: TStringField
      FieldName = 'BhAnyag'
      Size = 50
    end
    object tRendTetelEbMeret: TFloatField
      FieldName = 'EbMeret'
      DisplayFormat = ',0.##'
    end
    object tRendTetelBbMeret: TFloatField
      FieldName = 'BbMeret'
      DisplayFormat = ',0.##'
    end
    object tRendTetelAccListMailDate: TDateTimeField
      FieldName = 'AccListMailDate'
    end
    object tRendTetelAccListMailSender: TStringField
      FieldName = 'AccListMailSender'
      Size = 50
    end
    object tRendTetelAccListMailSent: TBooleanField
      FieldName = 'AccListMailSent'
    end
  end
  object tRendFej: TTable
    AfterInsert = tRendFejAfterInsert
    BeforeEdit = tRendFejBeforeEdit
    AfterEdit = tRendFejAfterEdit
    BeforePost = tRendFejBeforePost
    AfterPost = tRendFejAfterPost
    BeforeDelete = tRendFejBeforeDelete
    OnNewRecord = tRendFejNewRecord
    DatabaseName = 'MainDb'
    FieldDefs = <
      item
        Name = 'RendelesAz'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TermekKod'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RendSz'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PhxRendSz'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VevoRendSz'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Vevo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Felhasznalo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Hatarido'
        DataType = ftDateTime
      end
      item
        Name = 'ExtrKtsg'
        DataType = ftFloat
      end
      item
        Name = 'ExtrPenznem'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ErtTerulet'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RKonfekcio'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'LevelSzama'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LevelDatuma'
        DataType = ftDateTime
      end
      item
        Name = 'RMegj'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RRogzit'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RRogzIdo'
        DataType = ftDateTime
      end
      item
        Name = 'RModosit'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RModIdo'
        DataType = ftDateTime
      end
      item
        Name = 'RModMezok'
        DataType = ftFloat
      end
      item
        Name = 'Torolt'
        Attributes = [faRequired]
        DataType = ftBoolean
      end
      item
        Name = 'Enged'
        Attributes = [faRequired]
        DataType = ftBoolean
      end
      item
        Name = 'Vissza'
        Attributes = [faRequired]
        DataType = ftBoolean
      end
      item
        Name = 'IgertHatarido'
        DataType = ftDateTime
      end
      item
        Name = 'AjanlatSzam'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SapRevizio'
        DataType = ftSmallint
      end
      item
        Name = 'FAutoUpdate'
        Attributes = [faRequired]
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'PK_RendelesFej'
        Fields = 'RendelesAz'
        Options = [ixUnique]
      end
      item
        Name = 'SK_RendSz'
        Fields = 'RendSz'
      end
      item
        Name = 'SK_Termek_Rendsz'
        Fields = 'TermekKod;RendSz'
      end
      item
        Name = 'SK_TermekKod'
        Fields = 'TermekKod'
      end>
    IndexFieldNames = 'TermekKod'
    MasterFields = 'TermekKod'
    MasterSource = dsGetUserProductList
    StoreDefs = True
    TableName = 'dbo.RendelesFej'
    Left = 120
    Top = 80
    object tRendFejRendelesAz: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RendelesAz'
    end
    object tRendFejTermekKod: TIntegerField
      FieldName = 'TermekKod'
      Required = True
    end
    object tRendFejRendSz: TStringField
      FieldName = 'RendSz'
    end
    object tRendFejPhxRendSz: TStringField
      FieldName = 'PhxRendSz'
    end
    object tRendFejVevoRendSz: TStringField
      FieldName = 'VevoRendSz'
    end
    object tRendFejVevo: TStringField
      FieldName = 'Vevo'
      Size = 50
    end
    object tRendFejFelhasznalo: TStringField
      FieldName = 'Felhasznalo'
      Size = 50
    end
    object tRendFejHatarido: TDateTimeField
      FieldName = 'Hatarido'
      EditMask = '!99/99/00;1;_'
    end
    object tRendFejExtrKtsg: TFloatField
      FieldName = 'ExtrKtsg'
      DisplayFormat = ',0.##'
    end
    object tRendFejExtrPenznem: TStringField
      FieldName = 'ExtrPenznem'
      Size = 10
    end
    object tRendFejErtTerulet: TStringField
      FieldName = 'ErtTerulet'
    end
    object tRendFejRKonfekcio: TStringField
      FieldName = 'RKonfekcio'
      Size = 50
    end
    object tRendFejLevelSzama: TStringField
      FieldName = 'LevelSzama'
    end
    object tRendFejLevelDatuma: TDateTimeField
      FieldName = 'LevelDatuma'
      EditMask = '99/99/00;1;_'
    end
    object tRendFejRMegj: TStringField
      FieldName = 'RMegj'
      Size = 50
    end
    object tRendFejRRogzit: TStringField
      FieldName = 'RRogzit'
      Size = 50
    end
    object tRendFejRRogzIdo: TDateTimeField
      FieldName = 'RRogzIdo'
    end
    object tRendFejRModosit: TStringField
      FieldName = 'RModosit'
      Size = 50
    end
    object tRendFejRModIdo: TDateTimeField
      FieldName = 'RModIdo'
    end
    object tRendFejRModMezok: TFloatField
      FieldName = 'RModMezok'
    end
    object tRendFejTorolt: TBooleanField
      FieldName = 'Torolt'
      OnChange = tRendFejToroltChange
    end
    object tRendFejEnged: TBooleanField
      FieldName = 'Enged'
    end
    object tRendFejVissza: TBooleanField
      FieldName = 'Vissza'
    end
    object tRendFejIgertHatarido: TDateTimeField
      FieldName = 'IgertHatarido'
      EditMask = '!99/99/00;1;_'
    end
    object tRendFejAjanlatSzam: TStringField
      FieldName = 'AjanlatSzam'
    end
    object tRendFejSapRevizio: TSmallintField
      FieldName = 'SapRevizio'
      OnChange = tRendFejSapRevizioChange
    end
    object tRendFejFAutoUpdate: TBooleanField
      FieldName = 'FAutoUpdate'
    end
  end
  object qRendSpec: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      
        #9'Cikkszam, Specifikacio, Atmero, psi, mpa, hossz, hosszme, lang,' +
        ' bg, kg, pa,'
      #9'kv, KgInter, KvMua, KvFedHelix, KvNFedHelix'
      'from'
      '        RendelesTetel'
      'where'
      #9'Cikkszam = :Cikkszam'
      'Order by'
      '        TRogzIdo desc'
      ''
      ' '
      ' ')
    Left = 120
    Top = 560
    ParamData = <
      item
        DataType = ftString
        Name = 'Cikkszam'
        ParamType = ptUnknown
      end>
    object qRendSpecCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object qRendSpecSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Size = 50
    end
    object qRendSpecAtmero: TFloatField
      FieldName = 'Atmero'
    end
    object qRendSpecpsi: TFloatField
      FieldName = 'psi'
    end
    object qRendSpecmpa: TFloatField
      FieldName = 'mpa'
    end
    object qRendSpechossz: TFloatField
      FieldName = 'hossz'
    end
    object qRendSpechosszme: TStringField
      FieldName = 'hosszme'
      Size = 10
    end
    object qRendSpeclang: TBooleanField
      FieldName = 'lang'
    end
    object qRendSpecbg: TBooleanField
      FieldName = 'bg'
    end
    object qRendSpeckg: TBooleanField
      FieldName = 'kg'
    end
    object qRendSpecpa: TBooleanField
      FieldName = 'pa'
    end
    object qRendSpeckv: TBooleanField
      FieldName = 'kv'
    end
    object qRendSpecKgInter: TBooleanField
      FieldName = 'KgInter'
    end
    object qRendSpecKvMua: TBooleanField
      FieldName = 'KvMua'
    end
    object qRendSpecKvFedHelix: TBooleanField
      FieldName = 'KvFedHelix'
    end
    object qRendSpecKvNFedHelix: TBooleanField
      FieldName = 'KvNFedHelix'
    end
  end
  object qTomloNev: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'TomloMegnevezesek'
      'where'
      '        TermekKod = :TermekKod '
      'order by'
      #9'Megnevezes ')
    Left = 352
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TermekKod'
        ParamType = ptUnknown
        Value = 1
      end>
    object qTomloNevMegnevezesId: TIntegerField
      FieldName = 'MegnevezesId'
      Origin = 'MAINDB.TomloMegnevezesek.MegnevezesId'
    end
    object qTomloNevMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.TomloMegnevezesek.Megnevezes'
      Size = 50
    end
    object qTomloNevTermekKod: TIntegerField
      FieldName = 'TermekKod'
      Origin = 'MAINDB.TomloMegnevezesek.TermekKod'
    end
    object qTomloNevRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.TomloMegnevezesek.Rogzitette'
      Size = 50
    end
    object qTomloNevRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.TomloMegnevezesek.RogzIdopont'
    end
  end
  object CouplingCodeQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select couplingDNb, endFittingName'
      'from coupling '
      'where status = 0'
      'order by couplingDNb, endFittingName')
    UniDirectional = True
    Left = 352
    Top = 464
    object CouplingCodeQrycouplingDNb: TStringField
      FieldName = 'couplingDNb'
      Origin = 'coupling.couplingDNb'
    end
    object CouplingCodeQryendFittingName: TStringField
      FieldName = 'endFittingName'
      Origin = 'coupling.endFittingName'
      Size = 60
    end
  end
  object qPack: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct csomagolas'
      'from '
      #9'rendelesfej f,'
      #9'rendelestetel t'
      'where'
      #9'f.RendelesAz = t.RendelesAz'
      #9'and TermekKod = :TermekKod'
      #9'and isnull(RTrim(csomagolas), '#39#39') <> '#39#39
      'order by'
      #9'csomagolas'
      ' ')
    Left = 120
    Top = 608
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TermekKod'
        ParamType = ptUnknown
      end>
    object qPackcsomagolas: TStringField
      FieldName = 'csomagolas'
      Size = 50
    end
  end
  object dsPack: TDataSource
    DataSet = qPack
    Left = 48
    Top = 592
  end
  object spNewSapOrders: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_NewSapOrders'
    Left = 352
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end>
    object spNewSapOrdersID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 50
    end
    object spNewSapOrdersRendelesszam: TStringField
      FieldName = 'Rendelesszam'
    end
    object spNewSapOrdersRevizio: TIntegerField
      FieldName = 'Revizio'
    end
    object spNewSapOrdersPozicio: TIntegerField
      FieldName = 'Pozicio'
    end
    object spNewSapOrdersUzlKotCsop: TStringField
      FieldName = 'UzlKotCsop'
      Size = 10
    end
    object spNewSapOrdersOrszag: TStringField
      FieldName = 'Orszag'
      Size = 50
    end
    object spNewSapOrdersMegrendelo: TStringField
      FieldName = 'Megrendelo'
      Size = 255
    end
    object spNewSapOrdersVevoRefSz: TStringField
      FieldName = 'VevoRefSz'
      Size = 255
    end
    object spNewSapOrdersKontakt: TStringField
      FieldName = 'Kontakt'
      Size = 255
    end
    object spNewSapOrdersArufogado: TStringField
      FieldName = 'Arufogado'
      Size = 255
    end
    object spNewSapOrdersMegrendDatuma: TDateTimeField
      FieldName = 'MegrendDatuma'
    end
    object spNewSapOrdersSzallHatarido: TDateTimeField
      FieldName = 'SzallHatarido'
    end
    object spNewSapOrdersRefBiz: TStringField
      FieldName = 'RefBiz'
      Size = 50
    end
    object spNewSapOrdersHozzSzam: TStringField
      FieldName = 'HozzSzam'
      Size = 50
    end
    object spNewSapOrdersFizetesiMod: TStringField
      FieldName = 'FizetesiMod'
      Size = 255
    end
    object spNewSapOrdersIncoterms1: TStringField
      FieldName = 'Incoterms1'
    end
    object spNewSapOrdersIncoterms2: TStringField
      FieldName = 'Incoterms2'
      Size = 255
    end
    object spNewSapOrdersPenznem: TStringField
      FieldName = 'Penznem'
    end
    object spNewSapOrdersArfolyam: TFloatField
      FieldName = 'Arfolyam'
    end
    object spNewSapOrdersSzallitas: TIntegerField
      FieldName = 'Szallitas'
    end
    object spNewSapOrdersCsomagolas: TIntegerField
      FieldName = 'Csomagolas'
    end
    object spNewSapOrdersSzerzPot: TFloatField
      FieldName = 'SzerzPot%'
    end
    object spNewSapOrdersSzerzRab: TFloatField
      FieldName = 'SzerzRab'
    end
    object spNewSapOrdersSpecKtg1: TFloatField
      FieldName = 'SpecKtg1'
    end
    object spNewSapOrdersSzerszamKtg: TFloatField
      FieldName = 'SzerszamKtg'
    end
    object spNewSapOrdersCikkszam: TStringField
      FieldName = 'Cikkszam'
      Size = 50
    end
    object spNewSapOrdersMennyiseg: TFloatField
      FieldName = 'Mennyiseg'
    end
    object spNewSapOrdersMe: TStringField
      FieldName = 'Me'
      Size = 10
    end
    object spNewSapOrdersNettoAr: TFloatField
      FieldName = 'NettoAr'
    end
    object spNewSapOrdersHataratert: TFloatField
      FieldName = 'Hataratert'
    end
    object spNewSapOrdersMennyCsok: TFloatField
      FieldName = 'MennyCsok'
    end
    object spNewSapOrdersRabat: TFloatField
      FieldName = 'Rabat%'
    end
    object spNewSapOrdersSpecKtg2: TFloatField
      FieldName = 'SpecKtg2'
    end
    object spNewSapOrdersSpecCsom: TFloatField
      FieldName = 'SpecCsom'
    end
    object spNewSapOrdersUgynJut: TFloatField
      FieldName = 'UgynJut%'
    end
    object spNewSapOrdersUgynJut2: TFloatField
      FieldName = 'UgynJut'
    end
    object spNewSapOrdersPotlek: TFloatField
      FieldName = 'Potlek%'
    end
    object spNewSapOrdersKikonyvDat: TDateTimeField
      FieldName = 'KikonyvDat'
    end
    object spNewSapOrdersSzamlaDat: TDateTimeField
      FieldName = 'SzamlaDat'
    end
    object spNewSapOrdersKalkulalt: TFloatField
      FieldName = 'Kalkulalt'
    end
    object spNewSapOrdersStndErtek: TFloatField
      FieldName = 'StndErtek'
    end
    object spNewSapOrdersNettoArbHuf: TFloatField
      FieldName = 'NettoArbHuf'
    end
    object spNewSapOrdersAnyagNeve: TStringField
      FieldName = 'AnyagNeve'
      Size = 50
    end
    object spNewSapOrdersMarking: TStringField
      FieldName = 'Marking'
      Size = 50
    end
    object spNewSapOrdersStandard: TStringField
      FieldName = 'Standard'
      Size = 50
    end
    object spNewSapOrdersStandardText: TStringField
      FieldName = 'StandardText'
      Size = 50
    end
    object spNewSapOrdersTypeOfPacking: TStringField
      FieldName = 'TypeOfPacking'
      Size = 50
    end
    object spNewSapOrdersInsideDia: TFloatField
      FieldName = 'InsideDia'
    end
    object spNewSapOrdersLength: TFloatField
      FieldName = 'Length'
    end
    object spNewSapOrdersLengthUnit: TStringField
      FieldName = 'LengthUnit'
      Size = 10
    end
    object spNewSapOrdersLength2: TFloatField
      FieldName = 'Length2'
    end
    object spNewSapOrdersTypeOfCoupling1: TStringField
      FieldName = 'TypeOfCoupling1'
      Size = 50
    end
    object spNewSapOrdersTypeOfCoupling1Text: TStringField
      FieldName = 'TypeOfCoupling1Text'
      Size = 255
    end
    object spNewSapOrdersTypeOfCoupling2: TStringField
      FieldName = 'TypeOfCoupling2'
      Size = 50
    end
    object spNewSapOrdersTypeOfCoupling2Text: TStringField
      FieldName = 'TypeOfCoupling2Text'
      Size = 255
    end
    object spNewSapOrdersSpecialImportOrder: TStringField
      FieldName = 'SpecialImportOrder'
      Size = 50
    end
    object spNewSapOrdersPressureCategory: TStringField
      FieldName = 'PressureCategory'
      Size = 10
    end
    object spNewSapOrdersWorkingPressure: TFloatField
      FieldName = 'WorkingPressure'
    end
    object spNewSapOrdersWorkingPressureUnit: TStringField
      FieldName = 'WorkingPressureUnit'
    end
    object spNewSapOrdersDesignPressure: TFloatField
      FieldName = 'DesignPressure'
    end
    object spNewSapOrdersDesignPressureUnit: TStringField
      FieldName = 'DesignPressureUnit'
      Size = 10
    end
    object spNewSapOrdersTestPressure: TFloatField
      FieldName = 'TestPressure'
    end
    object spNewSapOrdersTestPressureUnit: TStringField
      FieldName = 'TestPressureUnit'
      Size = 10
    end
    object spNewSapOrdersSafetyFactor: TFloatField
      FieldName = 'SafetyFactor'
    end
    object spNewSapOrdersCover: TStringField
      FieldName = 'Cover'
      Size = 50
    end
    object spNewSapOrdersOutsideProtection: TStringField
      FieldName = 'OutsideProtection'
      Size = 50
    end
    object spNewSapOrdersInternalStripwoundTube: TStringField
      FieldName = 'InternalStripwoundTube'
      Size = 50
    end
    object spNewSapOrdersTypeOfLining: TStringField
      FieldName = 'TypeOfLining'
      Size = 50
    end
    object spNewSapOrdersSafetyClamp: TStringField
      FieldName = 'SafetyClamp'
      Size = 50
    end
    object spNewSapOrdersLiftingCollar: TStringField
      FieldName = 'LiftingCollar'
      Size = 50
    end
    object spNewSapOrdersElementC: TStringField
      FieldName = 'ElementC'
      Size = 50
    end
    object spNewSapOrdersMaxDesignTemperature: TIntegerField
      FieldName = 'MaxDesignTemperature'
    end
    object spNewSapOrdersMinDesignTemperature: TIntegerField
      FieldName = 'MinDesignTemperature'
    end
    object spNewSapOrdersPBLCollarChain: TStringField
      FieldName = 'PBLCollarChain'
      Size = 50
    end
    object spNewSapOrdersText1: TStringField
      FieldName = 'Text1'
      Size = 50
    end
    object spNewSapOrdersText2: TStringField
      FieldName = 'Text2'
      Size = 50
    end
    object spNewSapOrdersText3: TStringField
      FieldName = 'Text3'
      Size = 50
    end
    object spNewSapOrdersLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object spNewSapOrdersOsszetettKulcs: TStringField
      FieldName = 'OsszetettKulcs'
      Size = 27
    end
    object spNewSapOrdersH2S: TIntegerField
      FieldName = 'H2S'
    end
  end
  object dsNewSapOrders: TDataSource
    DataSet = spNewSapOrders
    Left = 288
    Top = 8
  end
  object Table1: TTable
    DatabaseName = 'MainDb'
    Left = 120
    Top = 656
  end
  object spCreateOrderHead: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'ut_CreateOrderHead'
    Left = 352
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@TermekKod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RendSz'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@PhxRendSz'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@VevoRendSz'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Vevo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Felhasznalo'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@Hatarido'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@ExtrKtsg'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ExtrPenznem'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ErtTerulet'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RKonfekcio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RMegj'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RRogzit'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@RRogzIdo'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RModosit'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@RModIdo'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@RModMezok'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Torolt'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Enged'
        ParamType = ptInput
      end
      item
        DataType = ftBoolean
        Name = '@Vissza'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@IgertHatarido'
        ParamType = ptInput
      end>
  end
  object qGetMaxItemNum: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select Sorszam = IsNull(max(TetelSrsz), 0)'
      'from rendelestetel'
      'where RendelesAz = :RendelesAz')
    Left = 352
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end>
    object qGetMaxItemNumSorszam: TIntegerField
      FieldName = 'Sorszam'
    end
  end
  object mNewOrderList: TRxMemoryData
    FieldDefs = <>
    Left = 352
    Top = 168
    object mNewOrderListRendelesszam: TStringField
      FieldName = 'Rendelesszam'
    end
    object mNewOrderListRevizio: TIntegerField
      FieldName = 'Revizio'
    end
  end
  object mRendSorok: TRxMemoryData
    FieldDefs = <>
    OnNewRecord = mRendSorokNewRecord
    Left = 352
    Top = 216
    object mRendSorokCounter: TIntegerField
      FieldName = 'Counter'
    end
    object mRendSorokUpdatable: TBooleanField
      FieldName = 'Updatable'
    end
    object mRendSorokRendelesAz: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'RendelesAz'
    end
    object mRendSorokTermekKod: TIntegerField
      Tag = 1
      FieldName = 'TermekKod'
      Required = True
    end
    object mRendSorokRendSz: TStringField
      FieldName = 'RendSz'
    end
    object mRendSorokSapRevizio: TSmallintField
      Tag = 1
      FieldName = 'SapRevizio'
    end
    object mRendSorokPhxRendSz: TStringField
      Tag = 1
      FieldName = 'PhxRendSz'
    end
    object mRendSorokVevoRendSz: TStringField
      Tag = 1
      FieldName = 'VevoRendSz'
    end
    object mRendSorokVevo: TStringField
      Tag = 1
      FieldName = 'Vevo'
      Size = 50
    end
    object mRendSorokFelhasznalo: TStringField
      Tag = 1
      FieldName = 'Felhasznalo'
      Size = 50
    end
    object mRendSorokHatarido: TDateTimeField
      Tag = 1
      FieldName = 'Hatarido'
      EditMask = '!99/99/00;1;_'
    end
    object mRendSorokExtrKtsg: TFloatField
      Tag = 1
      FieldName = 'ExtrKtsg'
      DisplayFormat = ',0.##'
    end
    object mRendSorokExtrPenznem: TStringField
      Tag = 1
      FieldName = 'ExtrPenznem'
      Size = 10
    end
    object mRendSorokErtTerulet: TStringField
      Tag = 1
      FieldName = 'ErtTerulet'
    end
    object mRendSorokRKonfekcio: TStringField
      FieldName = 'RKonfekcio'
      Size = 50
    end
    object mRendSorokLevelSzama: TStringField
      FieldName = 'LevelSzama'
    end
    object mRendSorokLevelDatuma: TDateTimeField
      FieldName = 'LevelDatuma'
      EditMask = '99/99/00;1;_'
    end
    object mRendSorokRMegj: TStringField
      FieldName = 'RMegj'
      Size = 50
    end
    object mRendSorokRRogzit: TStringField
      FieldName = 'RRogzit'
      Size = 50
    end
    object mRendSorokRRogzIdo: TDateTimeField
      FieldName = 'RRogzIdo'
    end
    object mRendSorokRModosit: TStringField
      FieldName = 'RModosit'
      Size = 50
    end
    object mRendSorokRModIdo: TDateTimeField
      FieldName = 'RModIdo'
    end
    object mRendSorokRModMezok: TFloatField
      FieldName = 'RModMezok'
    end
    object mRendSorokTorolt: TBooleanField
      FieldName = 'Torolt'
    end
    object mRendSorokEnged: TBooleanField
      FieldName = 'Enged'
    end
    object mRendSorokVissza: TBooleanField
      FieldName = 'Vissza'
    end
    object mRendSorokIgertHatarido: TDateTimeField
      FieldName = 'IgertHatarido'
      EditMask = '!99/99/00;1;_'
    end
    object mRendSorokAjanlatSzam: TStringField
      FieldName = 'AjanlatSzam'
    end
    object mRendSorokTetelSrsz: TIntegerField
      Tag = 2
      FieldName = 'TetelSrsz'
      Required = True
    end
    object mRendSorokCikkszam: TStringField
      Tag = 2
      FieldName = 'Cikkszam'
    end
    object mRendSorokSpecifikacio: TStringField
      Tag = 2
      FieldName = 'Specifikacio'
      Size = 100
    end
    object mRendSorokAtmero: TFloatField
      Tag = 2
      FieldName = 'Atmero'
    end
    object mRendSorokpsi: TFloatField
      Tag = 2
      FieldName = 'psi'
    end
    object mRendSorokMPa: TFloatField
      Tag = 2
      FieldName = 'MPa'
    end
    object mRendSorokLang: TBooleanField
      Tag = 2
      FieldName = 'Lang'
      Required = True
    end
    object mRendSorokBg: TBooleanField
      Tag = 2
      FieldName = 'Bg'
      Required = True
    end
    object mRendSorokKg: TBooleanField
      Tag = 2
      FieldName = 'Kg'
      Required = True
    end
    object mRendSorokPa: TBooleanField
      Tag = 2
      FieldName = 'Pa'
      Required = True
    end
    object mRendSorokKv: TBooleanField
      Tag = 2
      FieldName = 'Kv'
      Required = True
    end
    object mRendSorokKgInter: TBooleanField
      Tag = 2
      FieldName = 'KgInter'
      Required = True
    end
    object mRendSorokKvMua: TBooleanField
      Tag = 2
      FieldName = 'KvMua'
      Required = True
    end
    object mRendSorokKvFedHelix: TBooleanField
      Tag = 2
      FieldName = 'KvFedHelix'
      Required = True
    end
    object mRendSorokKvNFedHelix: TBooleanField
      Tag = 2
      FieldName = 'KvNFedHelix'
      Required = True
    end
    object mRendSorokH2S: TIntegerField
      Tag = 2
      FieldName = 'H2S'
    end
    object mRendSorokTipus: TStringField
      FieldName = 'Tipus'
      Size = 30
    end
    object mRendSorokCsatl1: TStringField
      FieldName = 'Csatl1'
      Size = 50
    end
    object mRendSorokCsatl1Rsz: TStringField
      FieldName = 'Csatl1Rsz'
    end
    object mRendSorokCsatl2: TStringField
      FieldName = 'Csatl2'
      Size = 50
    end
    object mRendSorokCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
    end
    object mRendSorokDarabSzam: TFloatField
      Tag = 2
      FieldName = 'DarabSzam'
    end
    object mRendSorokHossz: TFloatField
      Tag = 2
      FieldName = 'Hossz'
    end
    object mRendSorokHosszMe: TStringField
      Tag = 2
      FieldName = 'HosszMe'
      Size = 10
    end
    object mRendSorokTErtek: TFloatField
      Tag = 2
      FieldName = 'TErtek'
    end
    object mRendSorokTPenznem: TStringField
      Tag = 2
      FieldName = 'TPenznem'
      Size = 50
    end
    object mRendSorokOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Size = 50
    end
    object mRendSorokKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Size = 50
    end
    object mRendSorokKonstrukcio2: TStringField
      FieldName = 'Konstrukcio2'
      Size = 50
    end
    object mRendSorokTKonfekcio: TStringField
      FieldName = 'TKonfekcio'
      Size = 50
    end
    object mRendSorokTKonfekDatum: TDateTimeField
      FieldName = 'TKonfekDatum'
    end
    object mRendSorokNormaIdo: TFloatField
      FieldName = 'NormaIdo'
    end
    object mRendSorokDbjDatum: TDateTimeField
      FieldName = 'DbjDatum'
    end
    object mRendSorokMuvDatum: TDateTimeField
      FieldName = 'MuvDatum'
    end
    object mRendSorokKonstrDatum: TDateTimeField
      FieldName = 'KonstrDatum'
    end
    object mRendSorokFszHatarido: TDateTimeField
      FieldName = 'FszHatarido'
    end
    object mRendSorokFszBeerk: TDateTimeField
      FieldName = 'FszBeerk'
    end
    object mRendSorokAnyag: TStringField
      FieldName = 'Anyag'
      Size = 50
    end
    object mRendSorokCsomagolas: TStringField
      FieldName = 'Csomagolas'
      Size = 50
    end
    object mRendSorokEgyeb: TStringField
      FieldName = 'Egyeb'
      Size = 50
    end
    object mRendSorokTMegj: TStringField
      FieldName = 'TMegj'
      Size = 50
    end
    object mRendSorokTRogzit: TStringField
      FieldName = 'TRogzit'
      Size = 50
    end
    object mRendSorokTRogzIdo: TDateTimeField
      FieldName = 'TRogzIdo'
    end
    object mRendSorokTModosit: TStringField
      FieldName = 'TModosit'
      Size = 50
    end
    object mRendSorokTModIdo: TDateTimeField
      FieldName = 'TModIdo'
    end
    object mRendSorokModMezok: TFloatField
      FieldName = 'ModMezok'
    end
    object mRendSorokBeszolg: TBooleanField
      FieldName = 'Beszolg'
      Required = True
    end
    object mRendSorokTModHatarido: TDateTimeField
      Tag = 2
      FieldName = 'TModHatarido'
    end
    object mRendSorokBeszolgIdo: TDateTimeField
      FieldName = 'BeszolgIdo'
    end
    object mRendSorokBeszolgDb: TFloatField
      FieldName = 'BeszolgDb'
    end
    object mRendSorokBeszolgHossz: TFloatField
      FieldName = 'BeszolgHossz'
    end
    object mRendSorokTomeg: TFloatField
      FieldName = 'Tomeg'
    end
    object mRendSorokGyartasInd: TDateTimeField
      FieldName = 'GyartasInd'
    end
    object mRendSorokBefejezoMuv: TDateTimeField
      FieldName = 'BefejezoMuv'
    end
    object mRendSorokAccListExist: TBooleanField
      FieldName = 'AccListExist'
    end
    object mRendSorokAccListDate: TDateTimeField
      FieldName = 'AccListDate'
    end
    object mRendSorokAccCreator: TStringField
      FieldName = 'AccCreator'
      Size = 50
    end
    object mRendSorokBelsoHuvely: TStringField
      FieldName = 'BelsoHuvely'
    end
    object mRendSorokHuvely: TStringField
      FieldName = 'Huvely'
    end
    object mRendSorokSpiralkup: TStringField
      FieldName = 'Spiralkup'
    end
    object mRendSorokEmelobilincs: TStringField
      Tag = 2
      FieldName = 'Emelobilincs'
    end
    object mRendSorokBiztBilincs: TStringField
      Tag = 2
      FieldName = 'BiztBilincs'
    end
    object mRendSorokTomitoGyuru1: TStringField
      FieldName = 'TomitoGyuru1'
    end
    object mRendSorokTomitoGyuru2: TStringField
      FieldName = 'TomitoGyuru2'
    end
    object mRendSorokFeneklap1: TStringField
      FieldName = 'Feneklap1'
    end
    object mRendSorokFeneklap2: TStringField
      FieldName = 'Feneklap2'
    end
    object mRendSorokNyomPrBilincs1: TStringField
      FieldName = 'NyomPrBilincs1'
    end
    object mRendSorokNyomPrBilincs2: TStringField
      FieldName = 'NyomPrBilincs2'
    end
    object mRendSorokVedoHuvely: TStringField
      FieldName = 'VedoHuvely'
    end
    object mRendSorokOsztottHuvely: TStringField
      Tag = 2
      FieldName = 'OsztottHuvely'
    end
    object mRendSorokEgyebek: TMemoField
      FieldName = 'Egyebek'
      BlobType = ftMemo
      Size = 1
    end
    object mRendSorokAtveteliKesz: TBooleanField
      FieldName = 'AtveteliKesz'
    end
    object mRendSorokAtveteliIdopont: TDateTimeField
      FieldName = 'AtveteliIdopont'
    end
    object mRendSorokAtvetelitKeszitette: TStringField
      FieldName = 'AtvetelitKeszitette'
      Size = 50
    end
    object mRendSorokInspector: TStringField
      FieldName = 'Inspector'
      Size = 50
    end
    object mRendSorokInspectorMegj: TMemoField
      FieldName = 'InspectorMegj'
      BlobType = ftMemo
      Size = 1
    end
    object mRendSorokSapTypeOfCoupling2: TStringField
      Tag = 2
      FieldName = 'SapTypeOfCoupling2'
      Size = 250
    end
    object mRendSorokSapTypeOfCoupling1: TStringField
      Tag = 2
      FieldName = 'SapTypeOfCoupling1'
      Size = 250
    end
    object mRendSorokMarking: TStringField
      Tag = 2
      FieldName = 'Marking'
      Size = 50
    end
    object mRendSorokStandard: TStringField
      Tag = 2
      FieldName = 'Standard'
      Size = 50
    end
    object mRendSorokStandardText: TStringField
      Tag = 2
      FieldName = 'StandardText'
      Size = 50
    end
    object mRendSorokTypeOfPacking: TStringField
      Tag = 2
      FieldName = 'TypeOfPacking'
      Size = 50
    end
    object mRendSorokWorkingPressure: TFloatField
      Tag = 2
      FieldName = 'WorkingPressure'
    end
    object mRendSorokWorkingPressureUnit: TStringField
      Tag = 2
      FieldName = 'WorkingPressureUnit'
      FixedChar = True
      Size = 10
    end
    object mRendSorokDesignPressure: TFloatField
      Tag = 2
      FieldName = 'DesignPressure'
    end
    object mRendSorokDesignPressureUnit: TStringField
      Tag = 2
      FieldName = 'DesignPressureUnit'
      FixedChar = True
      Size = 10
    end
    object mRendSorokTestPressure: TFloatField
      Tag = 2
      FieldName = 'TestPressure'
    end
    object mRendSorokTestPressureUnit: TStringField
      Tag = 2
      FieldName = 'TestPressureUnit'
      FixedChar = True
      Size = 10
    end
    object mRendSorokSafetyFactor: TFloatField
      Tag = 2
      FieldName = 'SafetyFactor'
    end
    object mRendSorokTypeOfLining: TStringField
      Tag = 2
      FieldName = 'TypeOfLining'
      Size = 50
    end
    object mRendSorokMaxDesignTemperature: TFloatField
      Tag = 2
      FieldName = 'MaxDesignTemperature'
    end
    object mRendSorokMinDesignTemperature: TFloatField
      Tag = 2
      FieldName = 'MinDesignTemperature'
    end
  end
  object dsRendSorok: TDataSource
    DataSet = mRendSorok
    Left = 424
    Top = 232
  end
  object spCreateNewOrder: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_CreateNewOrder'
    Left = 352
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@TermekKod'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@RendSz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@RendelesAz'
        ParamType = ptInputOutput
      end>
  end
  object spGetExtraKtg: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetExtraKtg'
    Left = 352
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@RendSz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Revizio'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@ExtraKtg'
        ParamType = ptInputOutput
      end>
  end
  object spDeleteVoidOrderItem: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_DeleteVoidOrderItem'
    Left = 352
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Rendelesszam'
        ParamType = ptInput
      end>
  end
  object qMeo: TQuery
    CachedUpdates = True
    BeforePost = qMeoBeforePost
    AfterPost = qMeoAfterPost
    AfterDelete = qMeoAfterDelete
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @date1 datetime, @date2 datetime'
      'set @date1 = :Date1'
      'set @date2 = :Date2'
      ''
      'select'
      #9'm.*, rt.Specifikacio'
      'from'
      #9'meo m'
      
        #9'Left Outer Join RendelesTetel rt On (m.RendelesAz = rt.Rendeles' +
        'Az and m.TetelSrsz = rt.TetelSrsz)'
      'where'
      
        '     Isnull(RogzitesIdopontja, '#39'1900.01.01'#39') between @Date1 and ' +
        '@Date2'
      'order by Meo_Az desc'
      '')
    UpdateObject = uMeo
    Left = 552
    Top = 40
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Date1'
        ParamType = ptUnknown
        Value = '2000.01.01'
      end
      item
        DataType = ftDateTime
        Name = 'Date2'
        ParamType = ptUnknown
        Value = '9999.12.31'
      end>
    object qMeoMeo_Az: TIntegerField
      Tag = 1
      FieldName = 'Meo_Az'
      Origin = 'MAINDB.meo.Meo_Az'
    end
    object qMeoGY_SZ: TStringField
      Tag = 1
      FieldName = 'GY_SZ'
    end
    object qMeoK_SZ: TIntegerField
      Tag = 1
      FieldName = 'K_SZ'
      Origin = 'MAINDB.meo.K_SZ'
    end
    object qMeoRendsz: TStringField
      Tag = 1
      FieldName = 'Rendsz'
      Origin = 'MAINDB.meo.Rendsz'
    end
    object qMeoMERET: TStringField
      Tag = 1
      FieldName = 'MERET'
      Origin = 'MAINDB.meo.MERET'
    end
    object qMeoId: TFloatField
      Tag = 1
      FieldName = 'Id'
      Origin = 'MAINDB.meo.Id'
      DisplayFormat = ',#.##'
    end
    object qMeoIdU: TSmallintField
      Tag = 1
      FieldName = 'IdU'
      Origin = 'MAINDB.meo.IdU'
    end
    object qMeoIdMe: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'IdMe'
      LookupDataSet = qLengthUnits
      LookupKeyFields = 'UnitCode'
      LookupResultField = 'UnitSign'
      KeyFields = 'IdU'
      Size = 10
      Lookup = True
    end
    object qMeoEgyebAdat: TFloatField
      Tag = 1
      FieldName = 'EgyebAdat'
      Origin = 'MAINDB.meo.EgyebAdat'
    end
    object qMeoEgyebAdatU: TSmallintField
      Tag = 1
      FieldName = 'EgyebAdatU'
      Origin = 'MAINDB.meo.EgyebAdatU'
    end
    object qMeoUzemiNyomas: TFloatField
      Tag = 1
      FieldName = 'UzemiNyomas'
      Origin = 'MAINDB.meo.UzemiNyomas'
      DisplayFormat = ',#.##'
    end
    object qMeoUzemiNyomasU: TSmallintField
      Tag = 1
      FieldName = 'UzemiNyomasU'
      Origin = 'MAINDB.meo.UzemiNyomasU'
    end
    object qMeoUzemiNyomasMe: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'UzemiNyomasMe'
      LookupDataSet = qPressUnits
      LookupKeyFields = 'UnitCode'
      LookupResultField = 'UnitSign'
      KeyFields = 'UzemiNyomasU'
      Size = 10
      Lookup = True
    end
    object qMeoNevlegesHossz: TFloatField
      Tag = 1
      FieldName = 'NevlegesHossz'
      Origin = 'MAINDB.meo.NevlegesHossz'
      DisplayFormat = ',#.###'
    end
    object qMeoNevlegesHosszU: TSmallintField
      Tag = 1
      FieldName = 'NevlegesHosszU'
      Origin = 'MAINDB.meo.NevlegesHosszU'
    end
    object qMeoNevlegesHosszMe: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'NevlegesHosszMe'
      LookupDataSet = qLengthUnits
      LookupKeyFields = 'UnitCode'
      LookupResultField = 'UnitSign'
      KeyFields = 'NevlegesHosszU'
      Size = 10
      Lookup = True
    end
    object qMeoTIPUS: TStringField
      FieldName = 'TIPUS'
      Origin = 'MAINDB.meo.TIPUS'
      Size = 30
    end
    object qMeoCSATL_TIP: TStringField
      FieldName = 'CSATL_TIP'
      Origin = 'MAINDB.meo.CSATL_TIP'
      Size = 30
    end
    object qMeoCSATL_SZ: TStringField
      Tag = 1
      FieldName = 'CSATL_SZ'
      Origin = 'MAINDB.meo.CSATL_SZ'
      Size = 30
    end
    object qMeoANYAGC: TStringField
      FieldName = 'ANYAGC'
      Origin = 'MAINDB.meo.ANYAGC'
      Size = 30
    end
    object qMeoSZUK_TIP: TStringField
      FieldName = 'SZUK_TIP'
      Origin = 'MAINDB.meo.SZUK_TIP'
      Size = 30
    end
    object qMeoSZUK_SZ: TStringField
      Tag = 1
      FieldName = 'SZUK_SZ'
      Origin = 'MAINDB.meo.SZUK_SZ'
      Size = 30
    end
    object qMeoANYAGS: TStringField
      FieldName = 'ANYAGS'
      Origin = 'MAINDB.meo.ANYAGS'
      Size = 30
    end
    object qMeoFEMSZ_TIP: TStringField
      FieldName = 'FEMSZ_TIP'
      Origin = 'MAINDB.meo.FEMSZ_TIP'
      Size = 30
    end
    object qMeoFEMSZ_SZ: TStringField
      Tag = 1
      FieldName = 'FEMSZ_SZ'
      Origin = 'MAINDB.meo.FEMSZ_SZ'
      Size = 30
    end
    object qMeoANYAGF: TStringField
      FieldName = 'ANYAGF'
      Origin = 'MAINDB.meo.ANYAGF'
      Size = 30
    end
    object qMeoSZEMREVET: TStringField
      FieldName = 'SZEMREVET'
      Origin = 'MAINDB.meo.SZEMREVET'
      Size = 30
    end
    object qMeoMERTH: TStringField
      Tag = 1
      FieldName = 'MERTH'
      Origin = 'MAINDB.meo.MERTH'
      Size = 30
    end
    object qMeoMertHossz: TFloatField
      Tag = 1
      FieldName = 'MertHossz'
      Origin = 'MAINDB.meo.MertHossz'
      DisplayFormat = ',#.###'
    end
    object qMeoMertHosszU: TSmallintField
      FieldName = 'MertHosszU'
      Origin = 'MAINDB.meo.MertHosszU'
    end
    object qMeoMertHosszMe: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'MertHosszMe'
      LookupDataSet = qLengthUnits
      LookupKeyFields = 'UnitCode'
      LookupResultField = 'UnitSign'
      KeyFields = 'MertHosszU'
      Size = 10
      Lookup = True
    end
    object qMeoPROBANYOM: TStringField
      FieldName = 'PROBANYOM'
      Origin = 'MAINDB.meo.PROBANYOM'
      Size = 30
    end
    object qMeoVIZSGALO: TStringField
      FieldName = 'VIZSGALO'
      Origin = 'MAINDB.meo.VIZSGALO'
      Size = 30
    end
    object qMeoINSPEKT: TStringField
      FieldName = 'INSPEKT'
      Origin = 'MAINDB.meo.INSPEKT'
      Size = 30
    end
    object qMeoMINOS: TStringField
      FieldName = 'MINOS'
      Origin = 'MAINDB.meo.MINOS'
      Size = 30
    end
    object qMeoM_DAT: TStringField
      FieldName = 'M_DAT'
      Origin = 'MAINDB.meo.M_DAT'
      Size = 30
    end
    object qMeoDatum: TDateTimeField
      FieldName = 'Datum'
      Origin = 'MAINDB.meo.Datum'
    end
    object qMeoMEGJEGYZES: TStringField
      FieldName = 'MEGJEGYZES'
      Origin = 'MAINDB.meo.MEGJEGYZES'
      Size = 50
    end
    object qMeoDOSZIE_SZ: TIntegerField
      Tag = 1
      FieldName = 'DOSZIE_SZ'
      Origin = 'MAINDB.meo.DOSZIE_SZ'
    end
    object qMeoRogzitette: TStringField
      Tag = 1
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.meo.Rogzitette'
      Size = 50
    end
    object qMeoRogzitesIdopontja: TDateTimeField
      Tag = 1
      FieldName = 'RogzitesIdopontja'
      Origin = 'MAINDB.meo.RogzitesIdopontja'
    end
    object qMeoTorolt: TBooleanField
      Tag = 1
      FieldName = 'Torolt'
      Origin = 'MAINDB.meo.Torolt'
    end
    object qMeoOrderModified: TBooleanField
      Tag = 1
      FieldName = 'OrderModified'
      Origin = 'MAINDB.meo.OrderModified'
    end
    object qMeoOrderDeleted: TBooleanField
      Tag = 1
      FieldName = 'OrderDeleted'
      Origin = 'MAINDB.meo.OrderDeleted'
    end
    object qMeopsi: TFloatField
      Tag = 1
      FieldName = 'psi'
      Origin = 'MAINDB.meo.psi'
      DisplayFormat = ',#.##'
    end
    object qMeoStamp: TVarBytesField
      Tag = 1
      FieldName = 'Stamp'
      Origin = 'MAINDB.meo.Stamp'
      Size = 8
    end
    object qMeoRendelesAz: TIntegerField
      Tag = 1
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.meo.RendelesAz'
    end
    object qMeoTetelSrsz: TIntegerField
      Tag = 1
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.meo.TetelSrsz'
    end
    object qMeoChipId: TStringField
      Tag = 1
      FieldName = 'ChipId'
      Size = 50
    end
    object qMeoChipDataExportDate: TDateTimeField
      Tag = 1
      FieldName = 'ChipDataExportDate'
    end
    object qMeoTomeg: TFloatField
      Tag = 1
      FieldName = 'Tomeg'
    end
    object qMeoSpecifikacio: TStringField
      Tag = 1
      FieldName = 'Specifikacio'
      Size = 100
    end
  end
  object dsMeo: TDataSource
    DataSet = qMeo
    Left = 488
    Top = 32
  end
  object qLengthUnits: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from units where unitgroup = 1 order by UnitSign')
    Left = 488
    Top = 128
    object qLengthUnitsUnitCode: TSmallintField
      FieldName = 'UnitCode'
      Origin = 'MAINDB.units.UnitCode'
    end
    object qLengthUnitsUnitGroup: TSmallintField
      FieldName = 'UnitGroup'
      Origin = 'MAINDB.units.UnitGroup'
    end
    object qLengthUnitsUnitName: TStringField
      FieldName = 'UnitName'
      Origin = 'MAINDB.units.UnitName'
    end
    object qLengthUnitsUnitSign: TStringField
      FieldName = 'UnitSign'
      Origin = 'MAINDB.units.UnitSign'
      Size = 10
    end
    object qLengthUnitsConversionFactor: TFloatField
      FieldName = 'ConversionFactor'
      Origin = 'MAINDB.units.ConversionFactor'
    end
    object qLengthUnitsConstans: TFloatField
      FieldName = 'Constans'
      Origin = 'MAINDB.units.Constans'
    end
  end
  object qPressUnits: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from units where unitgroup = 6 order by UnitSign')
    Left = 488
    Top = 176
  end
  object uMeo: TUpdateSQL
    ModifySQL.Strings = (
      'update meo'
      'set'
      '  GY_SZ = :GY_SZ,'
      '  K_SZ = :K_SZ,'
      '  Rendsz = :Rendsz,'
      '  MERET = :MERET,'
      '  Id = :Id,'
      '  IdU = :IdU,'
      '  EgyebAdat = :EgyebAdat,'
      '  EgyebAdatU = :EgyebAdatU,'
      '  UzemiNyomas = :UzemiNyomas,'
      '  UzemiNyomasU = :UzemiNyomasU,'
      '  NevlegesHossz = :NevlegesHossz,'
      '  NevlegesHosszU = :NevlegesHosszU,'
      '  TIPUS = :TIPUS,'
      '  CSATL_TIP = :CSATL_TIP,'
      '  CSATL_SZ = :CSATL_SZ,'
      '  ANYAGC = :ANYAGC,'
      '  SZUK_TIP = :SZUK_TIP,'
      '  SZUK_SZ = :SZUK_SZ,'
      '  ANYAGS = :ANYAGS,'
      '  FEMSZ_TIP = :FEMSZ_TIP,'
      '  FEMSZ_SZ = :FEMSZ_SZ,'
      '  ANYAGF = :ANYAGF,'
      '  SZEMREVET = :SZEMREVET,'
      '  MERTH = :MERTH,'
      '  MertHossz = :MertHossz,'
      '  MertHosszU = :MertHosszU,'
      '  PROBANYOM = :PROBANYOM,'
      '  VIZSGALO = :VIZSGALO,'
      '  INSPEKT = :INSPEKT,'
      '  MINOS = :MINOS,'
      '  M_DAT = :M_DAT,'
      '  Datum = :Datum,'
      '  MEGJEGYZES = :MEGJEGYZES,'
      '  DOSZIE_SZ = :DOSZIE_SZ,'
      '  Rogzitette = :Rogzitette,'
      '  RogzitesIdopontja = :RogzitesIdopontja,'
      '  Torolt = :Torolt,'
      '  OrderModified = :OrderModified,'
      '  OrderDeleted = :OrderDeleted,'
      '  ChipId = :ChipId,'
      '  ChipDataExportDate = :ChipDataExportDate,'
      '  Tomeg = :Tomeg'
      'where'
      '  Meo_Az = :OLD_Meo_Az')
    InsertSQL.Strings = (
      'insert into meo'
      
        '  (GY_SZ, K_SZ, Rendsz, MERET, Id, IdU, EgyebAdat, EgyebAdatU, U' +
        'zemiNyomas, '
      
        '   UzemiNyomasU, NevlegesHossz, NevlegesHosszU, TIPUS, CSATL_TIP' +
        ', CSATL_SZ, '
      
        '   ANYAGC, SZUK_TIP, SZUK_SZ, ANYAGS, FEMSZ_TIP, FEMSZ_SZ, ANYAG' +
        'F, SZEMREVET, '
      
        '   MERTH, MertHossz, MertHosszU, PROBANYOM, VIZSGALO, INSPEKT, M' +
        'INOS, M_DAT, '
      
        '   Datum, MEGJEGYZES, DOSZIE_SZ, Rogzitette, RogzitesIdopontja, ' +
        'Torolt, '
      
        '   OrderModified, OrderDeleted, ChipId, ChipDataExportDate, Tome' +
        'g)'
      'values'
      
        '  (:GY_SZ, :K_SZ, :Rendsz, :MERET, :Id, :IdU, :EgyebAdat, :Egyeb' +
        'AdatU, '
      
        '   :UzemiNyomas, :UzemiNyomasU, :NevlegesHossz, :NevlegesHosszU,' +
        ' :TIPUS, '
      
        '   :CSATL_TIP, :CSATL_SZ, :ANYAGC, :SZUK_TIP, :SZUK_SZ, :ANYAGS,' +
        ' :FEMSZ_TIP, '
      
        '   :FEMSZ_SZ, :ANYAGF, :SZEMREVET, :MERTH, :MertHossz, :MertHoss' +
        'zU, :PROBANYOM, '
      
        '   :VIZSGALO, :INSPEKT, :MINOS, :M_DAT, :Datum, :MEGJEGYZES, :DO' +
        'SZIE_SZ, '
      
        '   :Rogzitette, :RogzitesIdopontja, :Torolt, :OrderModified, :Or' +
        'derDeleted, '
      '   :ChipId, :ChipDataExportDate, :Tomeg)')
    DeleteSQL.Strings = (
      'delete from meo'
      'where'
      '  Meo_Az = :OLD_Meo_Az')
    Left = 616
    Top = 32
  end
  object qInspektors: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct inspekt '
      'from meo '
      'where not inspekt is null'
      'order by inspekt')
    Left = 488
    Top = 224
    object qInspektorsinspekt: TStringField
      FieldName = 'inspekt'
      Size = 30
    end
  end
  object qHoseTypes: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct tipus'
      'from meo'
      'where not tipus is null'
      'order by tipus')
    Left = 488
    Top = 272
    object qHoseTypestipus: TStringField
      FieldName = 'tipus'
      Size = 30
    end
  end
  object qHoseUsers: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @TomloTipus smallint'
      'select @TomloTipus = :TomloTipus'
      ''
      'select distinct Felhasznalo'
      'from'
      #9'RendelesFej'
      'where'
      #9'TermekKod = @TomloTipus'
      #9'and RTrim(IsNull(Felhasznalo, '#39#39')) <> '#39#39
      'order by'
      #9'Felhasznalo')
    Left = 120
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TomloTipus'
        ParamType = ptUnknown
      end>
    object qHoseUsersFelhasznalo: TStringField
      FieldName = 'Felhasznalo'
      Size = 50
    end
  end
  object qHoseDealers: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @TomloTipus smallint'
      'select @TomloTipus = :TomloTipus'
      ''
      'select distinct Vevo'
      'from'
      #9'RendelesFej'
      'where'
      #9'TermekKod = @TomloTipus'
      #9'and RTrim(IsNull(Vevo, '#39#39')) <> '#39#39
      'order by'
      #9'Vevo'
      ' ')
    Left = 120
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TomloTipus'
        ParamType = ptUnknown
      end>
    object qHoseDealersVevo: TStringField
      FieldName = 'Vevo'
      Size = 50
    end
  end
  object dsChipData: TDataSource
    DataSet = spCreateChipData
    Left = 552
    Top = 336
  end
  object qCheckNumber: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @Number varchar(20), @Azonosito int'
      'select @Number = :Number'
      'select @Azonosito = :Meo_Az'
      'select *'
      'from'
      #9'Meo'
      'where'
      #9'GY_SZ = @Number'
      '        and Meo_Az <> @Azonosito'
      #9
      ' '
      ' '
      ' ')
    Left = 488
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'Number'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Meo_Az'
        ParamType = ptUnknown
      end>
    object qCheckNumberMeo_Az: TIntegerField
      FieldName = 'Meo_Az'
    end
    object qCheckNumberGY_SZ: TStringField
      FieldName = 'GY_SZ'
    end
    object qCheckNumberK_SZ: TIntegerField
      FieldName = 'K_SZ'
    end
    object qCheckNumberRendsz: TStringField
      FieldName = 'Rendsz'
    end
    object qCheckNumberMERET: TStringField
      FieldName = 'MERET'
    end
    object qCheckNumberId: TFloatField
      FieldName = 'Id'
    end
    object qCheckNumberIdU: TSmallintField
      FieldName = 'IdU'
    end
    object qCheckNumberEgyebAdat: TFloatField
      FieldName = 'EgyebAdat'
    end
    object qCheckNumberEgyebAdatU: TSmallintField
      FieldName = 'EgyebAdatU'
    end
    object qCheckNumberUzemiNyomas: TFloatField
      FieldName = 'UzemiNyomas'
    end
    object qCheckNumberUzemiNyomasU: TSmallintField
      FieldName = 'UzemiNyomasU'
    end
    object qCheckNumberNevlegesHossz: TFloatField
      FieldName = 'NevlegesHossz'
    end
    object qCheckNumberNevlegesHosszU: TSmallintField
      FieldName = 'NevlegesHosszU'
    end
    object qCheckNumberTIPUS: TStringField
      FieldName = 'TIPUS'
      Size = 30
    end
    object qCheckNumberCSATL_TIP: TStringField
      FieldName = 'CSATL_TIP'
      Size = 30
    end
    object qCheckNumberCSATL_SZ: TStringField
      FieldName = 'CSATL_SZ'
      Size = 30
    end
    object qCheckNumberANYAGC: TStringField
      FieldName = 'ANYAGC'
      Size = 30
    end
    object qCheckNumberSZUK_TIP: TStringField
      FieldName = 'SZUK_TIP'
      Size = 30
    end
    object qCheckNumberSZUK_SZ: TStringField
      FieldName = 'SZUK_SZ'
      Size = 30
    end
    object qCheckNumberANYAGS: TStringField
      FieldName = 'ANYAGS'
      Size = 30
    end
    object qCheckNumberFEMSZ_TIP: TStringField
      FieldName = 'FEMSZ_TIP'
      Size = 30
    end
    object qCheckNumberFEMSZ_SZ: TStringField
      FieldName = 'FEMSZ_SZ'
      Size = 30
    end
    object qCheckNumberANYAGF: TStringField
      FieldName = 'ANYAGF'
      Size = 30
    end
    object qCheckNumberSZEMREVET: TStringField
      FieldName = 'SZEMREVET'
      Size = 30
    end
    object qCheckNumberMERTH: TStringField
      FieldName = 'MERTH'
      Size = 30
    end
    object qCheckNumberMertHossz: TFloatField
      FieldName = 'MertHossz'
    end
    object qCheckNumberMertHosszU: TSmallintField
      FieldName = 'MertHosszU'
    end
    object qCheckNumberPROBANYOM: TStringField
      FieldName = 'PROBANYOM'
      Size = 30
    end
    object qCheckNumberVIZSGALO: TStringField
      FieldName = 'VIZSGALO'
      Size = 30
    end
    object qCheckNumberINSPEKT: TStringField
      FieldName = 'INSPEKT'
      Size = 30
    end
    object qCheckNumberMINOS: TStringField
      FieldName = 'MINOS'
      Size = 30
    end
    object qCheckNumberM_DAT: TStringField
      FieldName = 'M_DAT'
      Size = 30
    end
    object qCheckNumberDatum: TDateTimeField
      FieldName = 'Datum'
    end
    object qCheckNumberMEGJEGYZES: TStringField
      FieldName = 'MEGJEGYZES'
      Size = 50
    end
    object qCheckNumberDOSZIE_SZ: TIntegerField
      FieldName = 'DOSZIE_SZ'
    end
    object qCheckNumberRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object qCheckNumberRogzitesIdopontja: TDateTimeField
      FieldName = 'RogzitesIdopontja'
    end
    object qCheckNumberTorolt: TBooleanField
      FieldName = 'Torolt'
    end
    object qCheckNumberOrderModified: TBooleanField
      FieldName = 'OrderModified'
    end
    object qCheckNumberOrderDeleted: TBooleanField
      FieldName = 'OrderDeleted'
    end
    object qCheckNumberpsi: TFloatField
      FieldName = 'psi'
    end
    object qCheckNumberStamp: TVarBytesField
      FieldName = 'Stamp'
      Size = 8
    end
    object qCheckNumberRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object qCheckNumberTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object qCheckNumberChipId: TStringField
      FieldName = 'ChipId'
      Size = 50
    end
    object qCheckNumberChipDataExportDate: TDateTimeField
      FieldName = 'ChipDataExportDate'
    end
  end
  object tRendCsomEszk: TTable
    BeforePost = tRendCsomEszkBeforePost
    AfterPost = tRendCsomEszkAfterPost
    OnNewRecord = tRendCsomEszkNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = dsRendFej
    TableName = 'dbo.RendelesCsomEszk'
    Left = 120
    Top = 224
    object tRendCsomEszkPackageId: TIntegerField
      FieldName = 'PackageId'
    end
    object tRendCsomEszkRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object tRendCsomEszkTetelSrsz: TSmallintField
      FieldName = 'TetelSrsz'
      Required = True
    end
    object tRendCsomEszkPackDevTypeCode: TIntegerField
      FieldName = 'PackDevTypeCode'
    end
    object tRendCsomEszkPackDevTypeName: TStringField
      FieldName = 'PackDevTypeName'
      Size = 50
    end
    object tRendCsomEszkPackDevCode: TIntegerField
      FieldName = 'PackDevCode'
    end
    object tRendCsomEszkPackDevName: TStringField
      FieldName = 'PackDevName'
      Size = 50
    end
    object tRendCsomEszkPackDevNum: TIntegerField
      FieldName = 'PackDevNum'
    end
    object tRendCsomEszkNote: TStringField
      FieldName = 'Note'
      Size = 250
    end
    object tRendCsomEszkRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tRendCsomEszkRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
    object tRendCsomEszkOrdered: TBooleanField
      FieldName = 'Ordered'
    end
    object tRendCsomEszkOrderName: TStringField
      FieldName = 'OrderName'
      Size = 50
    end
    object tRendCsomEszkOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object tRendCsomEszkDeleted: TBooleanField
      FieldName = 'Deleted'
      Required = True
    end
  end
  object dsRendCsomEszk: TDataSource
    DataSet = tRendCsomEszk
    Left = 48
    Top = 208
  end
  object qRendCsomEszk: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * '
      'from'
      #9'RendelesCsomEszk e'
      #9'Left Outer Join PackDevice d On (d.DeviceId = e.PackDevCode)'
      'where'
      #9'RendelesAz = :RendelesAz'
      #9'and TetelSrsz = :TetelSrsz'
      '        and Deleted = 0'
      ' '
      ' ')
    Left = 488
    Top = 368
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
    object qRendCsomEszkPackageId: TIntegerField
      FieldName = 'PackageId'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesCsomEszk.RendelesAz'
    end
    object qRendCsomEszkTetelSrsz: TSmallintField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.RendelesCsomEszk.TetelSrsz'
    end
    object qRendCsomEszkPackDevTypeCode: TIntegerField
      FieldName = 'PackDevTypeCode'
      Origin = 'MAINDB.RendelesCsomEszk.PackDevTypeCode'
    end
    object qRendCsomEszkPackDevTypeName: TStringField
      FieldName = 'PackDevTypeName'
      Origin = 'MAINDB.RendelesCsomEszk.PackDevTypeName'
      Size = 50
    end
    object qRendCsomEszkPackDevCode: TIntegerField
      FieldName = 'PackDevCode'
      Origin = 'MAINDB.RendelesCsomEszk.PackDevCode'
    end
    object qRendCsomEszkPackDevName: TStringField
      FieldName = 'PackDevName'
      Origin = 'MAINDB.RendelesCsomEszk.PackDevName'
      Size = 50
    end
    object qRendCsomEszkPackDevNum: TIntegerField
      FieldName = 'PackDevNum'
      Origin = 'MAINDB.RendelesCsomEszk.PackDevNum'
    end
    object qRendCsomEszkNote: TStringField
      FieldName = 'Note'
      Origin = 'MAINDB.RendelesCsomEszk.Note'
      Size = 250
    end
    object qRendCsomEszkRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.RendelesCsomEszk.Rogzitette'
      Size = 50
    end
    object qRendCsomEszkRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.RendelesCsomEszk.RogzIdopont'
    end
    object qRendCsomEszkOrdered: TBooleanField
      FieldName = 'Ordered'
      Origin = 'MAINDB.RendelesCsomEszk.Ordered'
    end
    object qRendCsomEszkOrderName: TStringField
      FieldName = 'OrderName'
      Origin = 'MAINDB.RendelesCsomEszk.OrderName'
      Size = 50
    end
    object qRendCsomEszkOrderDate: TDateTimeField
      FieldName = 'OrderDate'
      Origin = 'MAINDB.RendelesCsomEszk.OrderDate'
    end
    object qRendCsomEszkDeleted: TBooleanField
      FieldName = 'Deleted'
      Origin = 'MAINDB.RendelesCsomEszk.Deleted'
    end
    object qRendCsomEszkDeviceId: TIntegerField
      FieldName = 'DeviceId'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkListOrder: TIntegerField
      FieldName = 'ListOrder'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkDeviceName: TStringField
      FieldName = 'DeviceName'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
      FixedChar = True
      Size = 25
    end
    object qRendCsomEszkDeviceTypeCode: TIntegerField
      FieldName = 'DeviceTypeCode'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim1: TFloatField
      FieldName = 'dim1'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim2: TFloatField
      FieldName = 'dim2'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim3: TFloatField
      FieldName = 'dim3'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim4: TFloatField
      FieldName = 'dim4'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim5: TFloatField
      FieldName = 'dim5'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim6: TFloatField
      FieldName = 'dim6'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim7: TFloatField
      FieldName = 'dim7'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim8: TFloatField
      FieldName = 'dim8'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim9: TFloatField
      FieldName = 'dim9'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkdim10: TFloatField
      FieldName = 'dim10'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
    object qRendCsomEszkNote_1: TStringField
      FieldName = 'Note_1'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
      Size = 250
    end
    object qRendCsomEszkPicture: TBlobField
      FieldName = 'Picture'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
      BlobType = ftBlob
      Size = 1
    end
    object qRendCsomEszkTorolt: TBooleanField
      FieldName = 'Torolt'
      Origin = 'MAINDB.RendelesCsomEszk.PackageId'
    end
  end
  object spRequiredPacks: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetRequiredPacks'
    Left = 488
    Top = 416
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end>
    object spRequiredPacksID_Num: TIntegerField
      FieldName = 'ID_Num'
    end
    object spRequiredPacksRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object spRequiredPacksRendSz: TStringField
      FieldName = 'RendSz'
    end
    object spRequiredPacksTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object spRequiredPacksTModHatarido: TDateTimeField
      FieldName = 'TModHatarido'
    end
  end
  object dsRequiredPacks: TDataSource
    DataSet = spRequiredPacks
    Left = 552
    Top = 432
  end
  object spGetErtTerulet: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetErtTerulet'
    Left = 488
    Top = 464
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Vevo'
        ParamType = ptInput
      end>
    object spGetErtTeruletErtTerulet: TStringField
      FieldName = 'ErtTerulet'
      Size = 50
    end
  end
  object tInfoChipConversion: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.InfoChipConversion'
    Left = 352
    Top = 512
    object tInfoChipConversionId: TSmallintField
      FieldName = 'Id'
      Required = True
    end
    object tInfoChipConversionExportName: TStringField
      FieldName = 'ExportName'
      Required = True
      Size = 50
    end
    object tInfoChipConversionHSName: TStringField
      FieldName = 'HSName'
      Size = 50
    end
    object tInfoChipConversionDefValue: TStringField
      FieldName = 'DefValue'
      Size = 50
    end
  end
  object mICData: TRxMemoryData
    FieldDefs = <>
    Left = 352
    Top = 560
    object mICDataMeo_Az: TIntegerField
      FieldName = 'Meo_Az'
    end
    object mICDataRendSz: TStringField
      FieldName = 'RendSz'
    end
    object mICDataTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object mICDataAssetNumber: TStringField
      FieldName = 'AssetNumber'
      Size = 100
    end
    object mICDataCategoryID: TStringField
      FieldName = 'CategoryID'
      Size = 100
    end
    object mICDataItemDescription: TStringField
      FieldName = 'ItemDescription'
      Size = 100
    end
    object mICDataDistributorID: TStringField
      FieldName = 'DistributorID'
      Size = 100
    end
    object mICDataClientID: TStringField
      FieldName = 'ClientID'
      Size = 100
    end
    object mICDataLocationID: TStringField
      FieldName = 'LocationID'
      Size = 100
    end
    object mICDataChipID: TStringField
      FieldName = 'ChipID'
      Size = 100
    end
    object mICDataCertificationStatus: TStringField
      FieldName = 'CertificationStatus'
      Size = 100
    end
    object mICDataCertificationInterval: TStringField
      FieldName = 'CertificationInterval'
      Size = 100
    end
    object mICDataBoreSize: TStringField
      FieldName = 'BoreSize'
      Size = 100
    end
    object mICDataNominalLegth: TStringField
      FieldName = 'NominalLegth'
      Size = 100
    end
    object mICDataDesignPressure: TStringField
      FieldName = 'DesignPressure'
      Size = 100
    end
    object mICDataTestPressure: TStringField
      FieldName = 'TestPressure'
      Size = 100
    end
    object mICDataInternalStripwoundTube: TStringField
      FieldName = 'InternalStripwoundTube'
      Size = 100
    end
    object mICDataEndCoupling1: TStringField
      FieldName = 'EndCoupling1'
      Size = 100
    end
    object mICDataEndCoupling2: TStringField
      FieldName = 'EndCoupling2'
      Size = 100
    end
    object mICDataMaxDesignTemp: TStringField
      FieldName = 'MaxDesignTemp'
      Size = 100
    end
    object mICDataMinDesignTemp: TStringField
      FieldName = 'MinDesignTemp'
      Size = 100
    end
    object mICDataManufacturer: TStringField
      FieldName = 'Manufacturer'
      Size = 100
    end
    object mICDataHoseType: TStringField
      FieldName = 'HoseType'
      Size = 100
    end
    object mICDataHoseStandard: TStringField
      FieldName = 'HoseStandard'
      Size = 100
    end
    object mICDataHoseCover: TStringField
      FieldName = 'HoseCover'
      Size = 100
    end
    object mICDataOutsideProtection: TStringField
      FieldName = 'OutsideProtection'
      Size = 100
    end
    object mICDataOpDynamicMBR: TStringField
      FieldName = 'OpDynamicMBR'
      Size = 100
    end
    object mICDataStorageMBR: TStringField
      FieldName = 'StorageMBR'
      FixedChar = True
      Size = 100
    end
    object mICDataOpStaticMBR: TStringField
      FieldName = 'OpStaticMBR'
      FixedChar = True
      Size = 100
    end
    object mICDataNotes: TStringField
      FieldName = 'Notes'
      Size = 100
    end
  end
  object dsICData: TDataSource
    DataSet = mICData
    Left = 416
    Top = 576
  end
  object spSetMeoExportDate: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_SetMeoExportDate'
    Left = 488
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Meo_az'
        ParamType = ptInput
      end>
  end
  object spCreateChipData: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_CreateChipData'
    Left = 488
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftDateTime
        Name = '@Date1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@Date2'
        ParamType = ptInput
      end>
    object spCreateChipDataMeo_Az: TIntegerField
      FieldName = 'Meo_Az'
    end
    object spCreateChipDataRendSz: TStringField
      FieldName = 'RendSz'
    end
    object spCreateChipDataTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object spCreateChipDataAssetNumber: TStringField
      FieldName = 'AssetNumber'
      Size = 27
    end
    object spCreateChipDataCategoryID: TStringField
      FieldName = 'CategoryID'
      Size = 4
    end
    object spCreateChipDataItemDescription: TStringField
      FieldName = 'ItemDescription'
      Size = 84
    end
    object spCreateChipDataDistributorID: TStringField
      FieldName = 'DistributorID'
      Size = 2
    end
    object spCreateChipDataClientID: TStringField
      FieldName = 'ClientID'
      Size = 4
    end
    object spCreateChipDataLocationID: TStringField
      FieldName = 'LocationID'
      Size = 4
    end
    object spCreateChipDataChipID: TStringField
      FieldName = 'ChipID'
      Size = 50
    end
    object spCreateChipDataCertificationStatus: TStringField
      FieldName = 'CertificationStatus'
      Size = 12
    end
    object spCreateChipDataCertificationInterval: TStringField
      FieldName = 'CertificationInterval'
      Size = 7
    end
    object spCreateChipDataBoreSize: TStringField
      FieldName = 'BoreSize'
      Size = 13
    end
    object spCreateChipDataNominalLegth: TStringField
      FieldName = 'NominalLegth'
      Size = 21
    end
    object spCreateChipDataDesignPressure: TStringField
      FieldName = 'DesignPressure'
      Size = 41
    end
    object spCreateChipDataTestPressure: TStringField
      FieldName = 'TestPressure'
      Size = 41
    end
    object spCreateChipDataInternalStripwoundTube: TStringField
      FieldName = 'InternalStripwoundTube'
      Size = 50
    end
    object spCreateChipDataEndCoupling1: TStringField
      FieldName = 'EndCoupling1'
      Size = 50
    end
    object spCreateChipDataEndCoupling2: TStringField
      FieldName = 'EndCoupling2'
      Size = 50
    end
    object spCreateChipDataMaxDesignTemp: TStringField
      FieldName = 'MaxDesignTemp'
      Size = 32
    end
    object spCreateChipDataMinDesignTemp: TStringField
      FieldName = 'MinDesignTemp'
      Size = 32
    end
    object spCreateChipDataManufacturer: TStringField
      FieldName = 'Manufacturer'
      Size = 21
    end
    object spCreateChipDataHoseType: TStringField
      FieldName = 'HoseType'
      Size = 30
    end
    object spCreateChipDataHoseStandard: TStringField
      FieldName = 'HoseStandard'
      Size = 50
    end
    object spCreateChipDataHoseCover: TStringField
      FieldName = 'HoseCover'
      Size = 50
    end
    object spCreateChipDataOutsideProtection: TStringField
      FieldName = 'OutsideProtection'
      Size = 50
    end
    object spCreateChipDataOpDynamicMBR: TStringField
      FieldName = 'OpDynamicMBR'
      Size = 128
    end
    object spCreateChipDataStorageMBR: TStringField
      FieldName = 'StorageMBR'
      Size = 12
    end
    object spCreateChipDataOpStaticMBR: TStringField
      FieldName = 'OpStaticMBR'
      Size = 12
    end
    object spCreateChipDataNotes: TStringField
      FieldName = 'Notes'
      Size = 30
    end
    object spCreateChipDataICExportDate: TDateTimeField
      FieldName = 'ICExportDate'
    end
    object spCreateChipDataICExporter: TStringField
      FieldName = 'ICExporter'
      Size = 50
    end
  end
  object vMarkingX: TTable
    DatabaseName = 'MainDb'
    IndexFieldNames = 'MarkId'
    MasterFields = 'MarkingId'
    MasterSource = dsRendTetel
    TableName = 'dbo.vMarking'
    Left = 192
    Top = 112
    object vMarkingXMarkId: TIntegerField
      FieldName = 'MarkId'
      Required = True
    end
    object vMarkingXMarkTypeId: TIntegerField
      FieldName = 'MarkTypeId'
      Required = True
    end
    object vMarkingXMarkazasTipusa: TStringField
      FieldName = 'MarkazasTipusa'
      Size = 250
    end
    object vMarkingXMegjegyzes1: TStringField
      FieldName = 'Megjegyzes1'
      Size = 250
    end
    object vMarkingXMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 200
    end
    object vMarkingXRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object vMarkingXMegjegyzes2: TStringField
      FieldName = 'Megjegyzes2'
      Size = 250
    end
    object vMarkingXDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsMarking: TDataSource
    DataSet = vMarkingX
    Left = 192
    Top = 160
  end
  object qNewHoseTypeName: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'insert into TomloMegnevezesek'
      '       (Megnevezes, TermekKod)'
      'Values'
      '       (:Megnevezes, :TermekKod)')
    Left = 120
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'Megnevezes'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TermekKod'
        ParamType = ptUnknown
      end>
  end
  object spNewHoseName: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_NewHoseName'
    Left = 120
    Top = 512
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@NewName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TermekKod'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Count'
        ParamType = ptInputOutput
      end>
  end
  object qRendelesNorma: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      
        #9'rf.RendelesAz, rf.RendSz, rf.Vevo, rf.Felhasznalo, TetelSrsz, C' +
        'ikkszam, Specifikacio, '
      #9'Atmero = dbo.UnitConv(AtmeroMe, 6, Atmero), AtmeroMe = '#39'in'#39', '
      #9'Hossz, HosszMe = Lower(HosszMe), Darabszam, TModHatarido, '
      
        #9'RendRogzDatum = Case when TModIdo is null then TRogzIdo else TM' +
        'odIdo end,'
      #9'xx.AnormaId, xx.KonstrukcioKod, xx.AnormaKod, xx.AnormaNev'
      'from'
      #9'RendelesFej rf,'
      #9'RendelesTetel rt'
      #9'Left Outer Join '
      #9'(select'
      #9#9'AnormaId, af.KonstrukcioKod, AnormaKod, AnormaNev,  '
      
        #9#9'Datum = Case when af.ModositasDatuma is null then af.KeszitesD' +
        'atuma else af.ModositasDatuma end'
      #9'from'
      #9#9'AnyagnormaFej af,'
      #9#9'(select KonstrukcioKod, KeszitesDatuma = Max(KeszitesDatuma)'
      #9#9'from AnyagnormaFej'
      #9#9'where TermekKod = 1 and IsNull(KonstrukcioKod, '#39#39') <> '#39#39
      #9#9'group by KonstrukcioKod) x'
      #9'where'
      #9#9'af.KonstrukcioKod = x.KonstrukcioKod'
      #9#9'and af.KeszitesDatuma = x.KeszitesDatuma) xx'
      #9'On (xx.KonstrukcioKod = rt.Konstrukcio)'
      'where'
      #9'rf.RendelesAz = rt.RendelesAz'
      #9'and rf.Torolt = 0'
      #9'and rt.Torolt = 0'
      #9'and TermekKod = 1'
      #9'and IsNull(BeszolgDb, 0) < IsNull(Darabszam, 0)'
      #9'and TModHatarido > '#39'2009.12.31'#39
      '        and Hossz <> 0 and Atmero <> 0'
      'order by'
      #9'TModHatarido '
      ' ')
    Left = 352
    Top = 608
    object qRendelesNormaRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object qRendelesNormaRendSz: TStringField
      FieldName = 'RendSz'
    end
    object qRendelesNormaVevo: TStringField
      FieldName = 'Vevo'
      Size = 50
    end
    object qRendelesNormaFelhasznalo: TStringField
      FieldName = 'Felhasznalo'
      Size = 50
    end
    object qRendelesNormaTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object qRendelesNormaCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object qRendelesNormaSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Size = 100
    end
    object qRendelesNormaAtmero: TStringField
      FieldName = 'Atmero'
      Size = 50
    end
    object qRendelesNormaAtmeroMe: TStringField
      FieldName = 'AtmeroMe'
      Size = 2
    end
    object qRendelesNormaHossz: TFloatField
      FieldName = 'Hossz'
    end
    object qRendelesNormaHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
    object qRendelesNormaDarabszam: TFloatField
      FieldName = 'Darabszam'
    end
    object qRendelesNormaTModHatarido: TDateTimeField
      FieldName = 'TModHatarido'
    end
    object qRendelesNormaRendRogzDatum: TDateTimeField
      FieldName = 'RendRogzDatum'
    end
    object qRendelesNormaAnormaId: TIntegerField
      FieldName = 'AnormaId'
    end
    object qRendelesNormaKonstrukcioKod: TStringField
      FieldName = 'KonstrukcioKod'
      FixedChar = True
      Size = 30
    end
    object qRendelesNormaAnormaKod: TStringField
      FieldName = 'AnormaKod'
      FixedChar = True
      Size = 30
    end
    object qRendelesNormaAnormaNev: TStringField
      FieldName = 'AnormaNev'
      FixedChar = True
      Size = 40
    end
  end
  object dsRendelesNorma: TDataSource
    DataSet = qRendelesNorma
    Left = 416
    Top = 624
  end
  object qAnyagszTetel: TQuery
    CachedUpdates = True
    OnNewRecord = qAnyagszTetelNewRecord
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      '    AnyagszuksegletTetel'
      'where'
      '     Id = :Id')
    UpdateObject = uAnyagszTetel
    Left = 720
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptUnknown
      end>
    object qAnyagszTetelId: TIntegerField
      FieldName = 'Id'
    end
    object qAnyagszTetelItemId: TIntegerField
      FieldName = 'ItemId'
    end
    object qAnyagszTetelRendelesszam: TStringField
      FieldName = 'Rendelesszam'
    end
    object qAnyagszTetelTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object qAnyagszTetelCikkszam: TStringField
      FieldName = 'Cikkszam'
      Size = 50
    end
    object qAnyagszTetelKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Size = 50
    end
    object qAnyagszTetelAnormaId: TIntegerField
      FieldName = 'AnormaId'
    end
    object qAnyagszTetelHossz: TFloatField
      FieldName = 'Hossz'
    end
    object qAnyagszTeteldb: TSmallintField
      FieldName = 'db'
    end
  end
  object spAddAnyagszList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_AddAnyagszList'
    Left = 720
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Id'
        ParamType = ptInputOutput
      end>
  end
  object dsAnyagszTetel: TDataSource
    DataSet = qAnyagszTetel
    Left = 784
    Top = 96
  end
  object uAnyagszTetel: TUpdateSQL
    ModifySQL.Strings = (
      'update AnyagszuksegletTetel'
      'set'
      '  Id = :Id,'
      '  Rendelesszam = :Rendelesszam,'
      '  TetelSrsz = :TetelSrsz,'
      '  Cikkszam = :Cikkszam,'
      '  Konstrukcio = :Konstrukcio,'
      '  AnormaId = :AnormaId,'
      '  Hossz = :Hossz,'
      '  db = :db'
      'where'
      '  ItemId = :OLD_ItemId')
    InsertSQL.Strings = (
      'insert into AnyagszuksegletTetel'
      
        '  (Id, Rendelesszam, TetelSrsz, Cikkszam, Konstrukcio, AnormaId,' +
        ' Hossz, '
      '   db)'
      'values'
      
        '  (:Id, :Rendelesszam, :TetelSrsz, :Cikkszam, :Konstrukcio, :Ano' +
        'rmaId, '
      '   :Hossz, :db)')
    DeleteSQL.Strings = (
      'delete from AnyagszuksegletTetel'
      'where'
      '  ItemId = :OLD_ItemId')
    Left = 856
    Top = 80
  end
  object qAnyagszList: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from dbo.AnyagszuksegletFej order by Id')
    Left = 720
    Top = 128
    object qAnyagszListId: TIntegerField
      FieldName = 'Id'
      Origin = 'MAINDB.AnyagszuksegletFej.Id'
    end
    object qAnyagszListRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.AnyagszuksegletFej.Rogzitette'
      Size = 50
    end
    object qAnyagszListRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.AnyagszuksegletFej.RogzIdopont'
    end
  end
  object dsAnyagszList: TDataSource
    DataSet = qAnyagszList
    Left = 784
    Top = 144
  end
  object spMRP: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_MRP'
    Left = 720
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@id'
        ParamType = ptInput
      end>
    object spMRPx: TIntegerField
      FieldName = 'x'
    end
    object spMRPRendelesszam: TStringField
      FieldName = 'Rendelesszam'
    end
    object spMRPTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object spMRPKeszCikkszam: TStringField
      FieldName = 'KeszCikkszam'
      Size = 50
    end
    object spMRPKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Size = 50
    end
    object spMRPAnormaTetelSzam: TSmallintField
      FieldName = 'AnormaTetelSzam'
    end
    object spMRPTetelNev: TStringField
      FieldName = 'TetelNev'
      FixedChar = True
      Size = 40
    end
    object spMRPCikkszam: TStringField
      FieldName = 'Cikkszam'
      FixedChar = True
    end
    object spMRPAnyagnev: TStringField
      FieldName = 'Anyagnev'
      FixedChar = True
      Size = 40
    end
    object spMRPBruttoUzme: TFloatField
      FieldName = 'BruttoUzme'
      DisplayFormat = '0.###'
    end
    object spMRPUzme: TStringField
      FieldName = 'Uzme'
      Size = 10
    end
    object spMRPBruttoTomeg: TFloatField
      FieldName = 'BruttoTomeg'
      DisplayFormat = '0.###'
    end
    object spMRPMe: TStringField
      FieldName = 'Me'
      Size = 2
    end
  end
  object dsMRP: TDataSource
    DataSet = spMRP
    Left = 784
    Top = 192
  end
  object qCouplingMaterial: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select CouplingMaterial = dbo.GetCouplingMaterial(:CouplingDNb)')
    Left = 352
    Top = 656
    ParamData = <
      item
        DataType = ftString
        Name = 'CouplingDNb'
        ParamType = ptUnknown
      end>
    object qCouplingMaterialCouplingMaterial: TStringField
      FieldName = 'CouplingMaterial'
      Size = 50
    end
  end
  object spJoinedMarkingList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_JoinedMarkingList'
    Left = 352
    Top = 704
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end>
    object spJoinedMarkingListId: TIntegerField
      FieldName = 'Id'
    end
    object spJoinedMarkingListFocsoportNev: TStringField
      FieldName = 'FocsoportNev'
      Size = 50
    end
    object spJoinedMarkingListCsoportNev: TStringField
      FieldName = 'CsoportNev'
      Size = 50
    end
    object spJoinedMarkingListAlcsoportNev: TStringField
      FieldName = 'AlcsoportNev'
      Size = 250
    end
    object spJoinedMarkingListMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 255
    end
    object spJoinedMarkingListMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 255
    end
    object spJoinedMarkingListRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 250
    end
    object spJoinedMarkingListUtvonal: TStringField
      FieldName = 'Utvonal'
      Size = 250
    end
    object spJoinedMarkingListSharePointLink: TStringField
      FieldName = 'SharePointLink'
      Size = 250
    end
    object spJoinedMarkingListErvenyes: TBooleanField
      FieldName = 'Ervenyes'
    end
  end
  object dsJoinedMarkingList: TDataSource
    DataSet = spJoinedMarkingList
    Left = 416
    Top = 720
  end
  object spGetJoinedMarkingItem: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetJoinedMarkingItem'
    Left = 352
    Top = 752
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
  object qSerials: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @RendelesAz int'
      'set @RendelesAz = :RendelesAz'
      ''
      'select'
      #9'Meo_Az, GY_SZ, Rendsz, RendelesAz, TetelSrsz'
      'from'
      #9'Meo'
      'where'
      #9'RendelesAz = @RendelesAz'
      ''
      ' ')
    Left = 720
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end>
    object qSerialsMeo_Az: TIntegerField
      FieldName = 'Meo_Az'
    end
    object qSerialsGY_SZ: TStringField
      FieldName = 'GY_SZ'
    end
    object qSerialsRendsz: TStringField
      FieldName = 'Rendsz'
    end
    object qSerialsRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object qSerialsTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
  end
  object dsSerials: TDataSource
    DataSet = qSerials
    Left = 784
    Top = 240
  end
  object GetOrderComment: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'GetOrderComment;1'
    Left = 720
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@RendSz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Revizio'
        ParamType = ptInput
      end>
    object GetOrderCommentMellekletEng: TMemoField
      FieldName = 'MellekletEng'
      BlobType = ftMemo
      Size = 1
    end
    object GetOrderCommentMellekletHu: TMemoField
      FieldName = 'MellekletHu'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsGetOrderComment: TDataSource
    DataSet = GetOrderComment
    Left = 784
    Top = 288
  end
  object EbBbOhElorendeles: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'EbBbOhElorendeles;1'
    Left = 720
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 1713398048
      end>
    object EbBbOhElorendelesRendelesszam: TStringField
      FieldName = 'Rendelesszam'
      Size = 32
    end
    object EbBbOhElorendelesdb: TFloatField
      FieldName = 'db'
    end
    object EbBbOhElorendelesMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 2
    end
    object EbBbOhElorendelesRajzszam: TStringField
      FieldName = 'Rajzszam'
    end
    object EbBbOhElorendelesMeret: TStringField
      FieldName = 'Meret'
      Size = 10
    end
    object EbBbOhElorendelesFestes: TMemoField
      FieldName = 'Festes'
      BlobType = ftMemo
      Size = 1
    end
    object EbBbOhElorendelesEgyediAzonosito: TMemoField
      FieldName = 'EgyediAzonosito'
      BlobType = ftMemo
      Size = 1
    end
    object EbBbOhElorendelesTipus: TIntegerField
      FieldName = 'Tipus'
    end
    object EbBbOhElorendelesAr: TFloatField
      FieldName = 'Ar'
    end
    object EbBbOhElorendelesCikkszamVeg: TStringField
      FieldName = 'CikkszamVeg'
      Size = 50
    end
  end
  object dsEbBbOhElorendeles: TDataSource
    DataSet = EbBbOhElorendeles
    Left = 792
    Top = 424
  end
  object qImportOrderRev: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'distinct Rendelesszam, Revizio'
      'from'
      #9'RendelesSap'
      'order by'
      #9'Rendelesszam, Revizio')
    Left = 720
    Top = 512
    object qImportOrderRevRendelesszam: TStringField
      FieldName = 'Rendelesszam'
      Origin = 'MAINDB."dbo.RendelesSap".Rendelesszam'
    end
    object qImportOrderRevRevizio: TIntegerField
      FieldName = 'Revizio'
      Origin = 'MAINDB."dbo.RendelesSap".Revizio'
    end
  end
  object dsGetAllOrderComment: TDataSource
    DataSet = GetAllOrderComment
    Left = 784
    Top = 336
  end
  object GetAllOrderComment: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'GetAllOrderComment;1'
    Left = 720
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@Rendsz'
        ParamType = ptInput
        Value = '539408'
      end>
    object GetAllOrderCommentRendelesszam: TStringField
      FieldName = 'Rendelesszam'
    end
    object GetAllOrderCommentRevizio: TIntegerField
      FieldName = 'Revizio'
    end
    object GetAllOrderCommentPozicio: TIntegerField
      FieldName = 'Pozicio'
    end
    object GetAllOrderCommentMellekletEng: TMemoField
      FieldName = 'MellekletEng'
      BlobType = ftMemo
      Size = 1
    end
    object GetAllOrderCommentMellekletHu: TMemoField
      FieldName = 'MellekletHu'
      BlobType = ftMemo
      Size = 1
    end
  end
end
