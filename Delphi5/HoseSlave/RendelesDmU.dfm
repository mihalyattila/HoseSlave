object RendelesDm: TRendelesDm
  OldCreateOrder = False
  Height = 0
  Width = 0
  object tRendFej: TTable
    AutoRefresh = True
    DatabaseName = 'AnormaDb'
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
      end>
    IndexDefs = <
      item
        Name = 'PK_RendelesFej'
        Fields = 'RendelesAz'
        Options = [ixUnique]
      end
      item
        Name = 'SK_TermekKod'
        Fields = 'TermekKod'
      end>
    IndexFieldNames = 'TermekKod'
    MasterFields = 'TomloTipKod'
    StoreDefs = True
    TableName = 'dbo.RendelesFej'
    Left = 120
    Top = 96
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
  end
  object dsRendFej: TDataSource
    DataSet = tRendFej
    Left = 48
    Top = 80
  end
  object dsRendTetel: TDataSource
    DataSet = tRendTetel
    Left = 48
    Top = 128
  end
  object tRendTetel: TTable
    AutoRefresh = True
    DatabaseName = 'AnormaDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = dsRendFej
    TableName = 'dbo.RendelesTetel'
    Left = 120
    Top = 144
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
      DisplayFormat = ',0.#'
    end
    object tRendTetelpsi: TFloatField
      FieldName = 'psi'
      DisplayFormat = ',0.##'
    end
    object tRendTetelMPa: TFloatField
      FieldName = 'MPa'
      DisplayFormat = ',0.###'
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
    object tRendTetelKgInter: TBooleanField
      FieldName = 'KgInter'
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
      DisplayFormat = ',0.###'
    end
    object tRendTetelHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
    object tRendTetelTErtek: TFloatField
      FieldName = 'TErtek'
      DisplayFormat = ',0.###'
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
    object tRendTetelTKonfekcio: TStringField
      FieldName = 'TKonfekcio'
      Size = 50
    end
    object tRendTetelTKonfekDatum: TDateTimeField
      FieldName = 'TKonfekDatum'
    end
    object tRendTetelNormaIdo: TFloatField
      FieldName = 'NormaIdo'
      DisplayFormat = ',0.##'
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
      EditMask = '!99/99/00;1;_'
    end
    object tRendTetelBeszolgIdo: TDateTimeField
      FieldName = 'BeszolgIdo'
    end
    object tRendTetelBeszolgDb: TFloatField
      FieldName = 'BeszolgDb'
    end
    object tRendTetelBeszolgHossz: TFloatField
      FieldName = 'BeszolgHossz'
      DisplayFormat = ',0.##'
    end
    object tRendTetelTomeg: TFloatField
      FieldName = 'Tomeg'
      DisplayFormat = ',0.##'
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
    object tRendTetelInspectorMegj: TMemoField
      FieldName = 'InspectorMegj'
      BlobType = ftMemo
      Size = 1
    end
  end
  object spGetUserProductList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetUserProductList;1'
    Left = 120
    Top = 48
  end
  object dsGetUserProductList: TDataSource
    DataSet = spGetUserProductList
    Left = 48
    Top = 32
  end
end
