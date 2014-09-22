object dmOrder: TdmOrder
  OldCreateOrder = False
  Left = 219
  Top = 114
  Height = 643
  Width = 775
  object tRendelesFej: TTable
    DatabaseName = 'MainDb'
    IndexFieldNames = 'TermekKod'
    MasterFields = 'TomloTipKod'
    MasterSource = dsTomloTip
    TableName = 'dbo.RendelesFej'
    Left = 32
    Top = 16
    object tRendelesFejRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object tRendelesFejTermekKod: TIntegerField
      FieldName = 'TermekKod'
      Required = True
    end
    object tRendelesFejRendSz: TStringField
      FieldName = 'RendSz'
    end
    object tRendelesFejPhxRendSz: TStringField
      FieldName = 'PhxRendSz'
    end
    object tRendelesFejVevoRendSz: TStringField
      FieldName = 'VevoRendSz'
    end
    object tRendelesFejVevo: TStringField
      FieldName = 'Vevo'
      Size = 50
    end
    object tRendelesFejFelhasznalo: TStringField
      FieldName = 'Felhasznalo'
      Size = 50
    end
    object tRendelesFejHatarido: TDateTimeField
      FieldName = 'Hatarido'
    end
    object tRendelesFejExtrKtsg: TFloatField
      FieldName = 'ExtrKtsg'
    end
    object tRendelesFejExtrPenznem: TStringField
      FieldName = 'ExtrPenznem'
      Size = 10
    end
    object tRendelesFejErtTerulet: TStringField
      FieldName = 'ErtTerulet'
    end
    object tRendelesFejRKonfekcio: TStringField
      FieldName = 'RKonfekcio'
      Size = 50
    end
    object tRendelesFejLevelSzama: TStringField
      FieldName = 'LevelSzama'
    end
    object tRendelesFejLevelDatuma: TDateTimeField
      FieldName = 'LevelDatuma'
    end
    object tRendelesFejRMegj: TStringField
      FieldName = 'RMegj'
      Size = 50
    end
    object tRendelesFejRRogzit: TStringField
      FieldName = 'RRogzit'
      Size = 50
    end
    object tRendelesFejRRogzIdo: TDateTimeField
      FieldName = 'RRogzIdo'
    end
    object tRendelesFejRModosit: TStringField
      FieldName = 'RModosit'
      Size = 50
    end
    object tRendelesFejRModIdo: TDateTimeField
      FieldName = 'RModIdo'
    end
    object tRendelesFejRModMezok: TFloatField
      FieldName = 'RModMezok'
    end
    object tRendelesFejTorolt: TBooleanField
      FieldName = 'Torolt'
      Required = True
    end
    object tRendelesFejEnged: TBooleanField
      FieldName = 'Enged'
      Required = True
    end
    object tRendelesFejVissza: TBooleanField
      FieldName = 'Vissza'
      Required = True
    end
    object tRendelesFejIgertHatarido: TDateTimeField
      FieldName = 'IgertHatarido'
    end
    object tRendelesFejAjanlatSzam: TStringField
      FieldName = 'AjanlatSzam'
    end
  end
  object tRendelesTetel: TTable
    OnPostError = tRendelesTetelPostError
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = dsRendelesFej
    TableName = 'dbo.RendelesTetel'
    Left = 32
    Top = 64
    object tRendelesTetelRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object tRendelesTetelTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Required = True
    end
    object tRendelesTetelCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object tRendelesTetelSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Size = 50
    end
    object tRendelesTetelAtmero: TFloatField
      FieldName = 'Atmero'
    end
    object tRendelesTetelpsi: TFloatField
      FieldName = 'psi'
    end
    object tRendelesTetelMPa: TFloatField
      FieldName = 'MPa'
    end
    object tRendelesTetelLang: TBooleanField
      FieldName = 'Lang'
      Required = True
    end
    object tRendelesTetelBg: TBooleanField
      FieldName = 'Bg'
      Required = True
    end
    object tRendelesTetelKg: TBooleanField
      FieldName = 'Kg'
      Required = True
    end
    object tRendelesTetelPa: TBooleanField
      FieldName = 'Pa'
      Required = True
    end
    object tRendelesTetelTipus: TStringField
      FieldName = 'Tipus'
      Size = 30
    end
    object tRendelesTetelCsatl1: TStringField
      FieldName = 'Csatl1'
      Size = 50
    end
    object tRendelesTetelCsatl1Rsz: TStringField
      FieldName = 'Csatl1Rsz'
    end
    object tRendelesTetelCsatl2: TStringField
      FieldName = 'Csatl2'
      Size = 50
    end
    object tRendelesTetelCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
    end
    object tRendelesTetelDarabSzam: TFloatField
      FieldName = 'DarabSzam'
    end
    object tRendelesTetelHossz: TFloatField
      FieldName = 'Hossz'
    end
    object tRendelesTetelHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
    object tRendelesTetelTErtek: TFloatField
      FieldName = 'TErtek'
    end
    object tRendelesTetelTPenznem: TStringField
      FieldName = 'TPenznem'
      Size = 50
    end
    object tRendelesTetelOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Size = 50
    end
    object tRendelesTetelKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Size = 50
    end
    object tRendelesTetelKonstrukcio2: TStringField
      FieldName = 'Konstrukcio2'
      Size = 50
    end
    object tRendelesTetelTKonfekcio: TStringField
      FieldName = 'TKonfekcio'
      Size = 50
    end
    object tRendelesTetelTKonfekDatum: TDateTimeField
      FieldName = 'TKonfekDatum'
    end
    object tRendelesTetelNormaIdo: TFloatField
      FieldName = 'NormaIdo'
    end
    object tRendelesTetelDbjDatum: TDateTimeField
      FieldName = 'DbjDatum'
    end
    object tRendelesTetelMuvDatum: TDateTimeField
      FieldName = 'MuvDatum'
    end
    object tRendelesTetelKonstrDatum: TDateTimeField
      FieldName = 'KonstrDatum'
    end
    object tRendelesTetelFszHatarido: TDateTimeField
      FieldName = 'FszHatarido'
    end
    object tRendelesTetelFszBeerk: TDateTimeField
      FieldName = 'FszBeerk'
    end
    object tRendelesTetelAnyag: TStringField
      FieldName = 'Anyag'
      Size = 50
    end
    object tRendelesTetelCsomagolas: TStringField
      FieldName = 'Csomagolas'
      Size = 50
    end
    object tRendelesTetelEgyeb: TStringField
      FieldName = 'Egyeb'
      Size = 50
    end
    object tRendelesTetelTMegj: TStringField
      FieldName = 'TMegj'
      Size = 50
    end
    object tRendelesTetelTRogzit: TStringField
      FieldName = 'TRogzit'
      Size = 50
    end
    object tRendelesTetelTRogzIdo: TDateTimeField
      FieldName = 'TRogzIdo'
    end
    object tRendelesTetelTModosit: TStringField
      FieldName = 'TModosit'
      Size = 50
    end
    object tRendelesTetelTModIdo: TDateTimeField
      FieldName = 'TModIdo'
    end
    object tRendelesTetelModMezok: TFloatField
      FieldName = 'ModMezok'
    end
    object tRendelesTetelTorolt: TBooleanField
      FieldName = 'Torolt'
      Required = True
    end
    object tRendelesTetelBeszolg: TBooleanField
      FieldName = 'Beszolg'
      Required = True
    end
    object tRendelesTetelTModHatarido: TDateTimeField
      FieldName = 'TModHatarido'
    end
    object tRendelesTetelBeszolgIdo: TDateTimeField
      FieldName = 'BeszolgIdo'
    end
    object tRendelesTetelBeszolgDb: TFloatField
      FieldName = 'BeszolgDb'
    end
    object tRendelesTetelBeszolgHossz: TFloatField
      FieldName = 'BeszolgHossz'
    end
    object tRendelesTetelTomeg: TFloatField
      FieldName = 'Tomeg'
    end
    object tRendelesTetelGyartasInd: TDateTimeField
      FieldName = 'GyartasInd'
    end
    object tRendelesTetelBefejezoMuv: TDateTimeField
      FieldName = 'BefejezoMuv'
    end
    object tRendelesTetelAccListExist: TBooleanField
      FieldName = 'AccListExist'
    end
    object tRendelesTetelAccListDate: TDateTimeField
      FieldName = 'AccListDate'
    end
    object tRendelesTetelAccCreator: TStringField
      FieldName = 'AccCreator'
      Size = 50
    end
    object tRendelesTetelBelsoHuvely: TStringField
      FieldName = 'BelsoHuvely'
    end
    object tRendelesTetelHuvely: TStringField
      FieldName = 'Huvely'
    end
    object tRendelesTetelSpiralkup: TStringField
      FieldName = 'Spiralkup'
    end
    object tRendelesTetelEmelobilincs: TStringField
      FieldName = 'Emelobilincs'
    end
    object tRendelesTetelBiztBilincs: TStringField
      FieldName = 'BiztBilincs'
    end
    object tRendelesTetelTomitoGyuru1: TStringField
      FieldName = 'TomitoGyuru1'
    end
    object tRendelesTetelTomitoGyuru2: TStringField
      FieldName = 'TomitoGyuru2'
    end
    object tRendelesTetelFeneklap1: TStringField
      FieldName = 'Feneklap1'
    end
    object tRendelesTetelFeneklap2: TStringField
      FieldName = 'Feneklap2'
    end
    object tRendelesTetelNyomPrBilincs1: TStringField
      FieldName = 'NyomPrBilincs1'
    end
    object tRendelesTetelNyomPrBilincs2: TStringField
      FieldName = 'NyomPrBilincs2'
    end
    object tRendelesTetelVedoHuvely: TStringField
      FieldName = 'VedoHuvely'
    end
    object tRendelesTetelOsztottHuvely: TStringField
      FieldName = 'OsztottHuvely'
    end
    object tRendelesTetelEgyebek: TMemoField
      FieldName = 'Egyebek'
      BlobType = ftMemo
      Size = 1
    end
    object tRendelesTetelAtveteliKesz: TBooleanField
      FieldName = 'AtveteliKesz'
    end
    object tRendelesTetelAtveteliIdopont: TDateTimeField
      FieldName = 'AtveteliIdopont'
    end
    object tRendelesTetelAtvetelitKeszitette: TStringField
      FieldName = 'AtvetelitKeszitette'
      Size = 50
    end
  end
  object dsRendelesFej: TDataSource
    DataSet = tRendelesFej
    Left = 96
    Top = 32
  end
  object dsRendelesTetel: TDataSource
    DataSet = tRendelesTetel
    Left = 96
    Top = 80
  end
  object tTomloTip: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.TomloTipusok'
    Left = 32
    Top = 112
    object tTomloTipTomloTipKod: TIntegerField
      FieldName = 'TomloTipKod'
      Required = True
    end
    object tTomloTipTomloTipNev: TStringField
      FieldName = 'TomloTipNev'
      Required = True
      Size = 50
    end
    object tTomloTipHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
  end
  object dsTomloTip: TDataSource
    DataSet = tTomloTip
    Left = 96
    Top = 128
  end
end
