object InspEditForm: TInspEditForm
  Left = 248
  Top = 110
  Width = 746
  Height = 669
  Caption = 'InspEditForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 602
    Width = 730
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 2
      Width = 240
      Height = 25
      DataSource = dsRendelesTetel
      Align = alLeft
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 730
    Height = 417
    Align = alClient
    DataSource = dsRendelesTetel
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 0
    Top = 417
    Width = 730
    Height = 185
    Align = alBottom
    TabOrder = 2
    object RxDBRichEdit1: TRxDBRichEdit
      Left = 1
      Top = 1
      Width = 728
      Height = 183
      DataField = 'InspectorMegj'
      DataSource = dsRendelesTetel
      Align = alClient
      TabOrder = 0
    end
  end
  object MainDb: TDatabase
    AliasName = 'Hosemaster'
    Connected = True
    DatabaseName = 'MainDb'
    Params.Strings = (
      'USER NAME=as')
    SessionName = 'Default'
    Left = 32
    Top = 24
  end
  object tRendelesTetel: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.RendelesTetel'
    Left = 32
    Top = 80
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
      Size = 100
    end
    object tRendelesTetelAtmero: TFloatField
      FieldName = 'Atmero'
    end
    object tRendelesTetelAtmeroMe: TSmallintField
      FieldName = 'AtmeroMe'
      Required = True
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
    end
    object tRendelesTetelKg: TBooleanField
      FieldName = 'Kg'
    end
    object tRendelesTetelPa: TBooleanField
      FieldName = 'Pa'
    end
    object tRendelesTetelKv: TBooleanField
      FieldName = 'Kv'
    end
    object tRendelesTetelKgInter: TBooleanField
      FieldName = 'KgInter'
    end
    object tRendelesTetelKvMua: TBooleanField
      FieldName = 'KvMua'
    end
    object tRendelesTetelKvFedHelix: TBooleanField
      FieldName = 'KvFedHelix'
    end
    object tRendelesTetelKvNFedHelix: TBooleanField
      FieldName = 'KvNFedHelix'
    end
    object tRendelesTetelH2S: TSmallintField
      FieldName = 'H2S'
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
    object tRendelesTetelCsatl1MaxAtmero: TFloatField
      FieldName = 'Csatl1MaxAtmero'
    end
    object tRendelesTetelCsatl1MaxAtmeroMe: TIntegerField
      FieldName = 'Csatl1MaxAtmeroMe'
    end
    object tRendelesTetelCsatl2: TStringField
      FieldName = 'Csatl2'
      Size = 50
    end
    object tRendelesTetelCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
    end
    object tRendelesTetelCsatl2MaxAtmero: TFloatField
      FieldName = 'Csatl2MaxAtmero'
    end
    object tRendelesTetelCsatl2MaxAtmeroMe: TIntegerField
      FieldName = 'Csatl2MaxAtmeroMe'
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
    object tRendelesTetelHosszMe2: TSmallintField
      FieldName = 'HosszMe2'
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
    object tRendelesTetelKonstrukcioMaxAtmero: TFloatField
      FieldName = 'KonstrukcioMaxAtmero'
    end
    object tRendelesTetelKonstrukcioMaxAtmeroMe: TIntegerField
      FieldName = 'KonstrukcioMaxAtmeroMe'
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
    end
    object tRendelesTetelBeszolg: TBooleanField
      FieldName = 'Beszolg'
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
    object tRendelesTetelBhAnyag: TStringField
      FieldName = 'BhAnyag'
      Size = 50
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
    object tRendelesTetelEbMeret: TFloatField
      FieldName = 'EbMeret'
    end
    object tRendelesTetelBiztBilincs: TStringField
      FieldName = 'BiztBilincs'
    end
    object tRendelesTetelBbMeret: TFloatField
      FieldName = 'BbMeret'
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
    object tRendelesTetelInspector: TStringField
      FieldName = 'Inspector'
      Size = 50
    end
    object tRendelesTetelInspectorMegj: TStringField
      FieldName = 'InspectorMegj'
      Size = 200
    end
    object tRendelesTetelStamp: TBytesField
      FieldName = 'Stamp'
      Size = 8
    end
    object tRendelesTetelSapTypeOfCoupling1: TStringField
      FieldName = 'SapTypeOfCoupling1'
      Size = 250
    end
    object tRendelesTetelSapTypeOfCoupling2: TStringField
      FieldName = 'SapTypeOfCoupling2'
      Size = 250
    end
    object tRendelesTetelTAutoUpdate: TBooleanField
      FieldName = 'TAutoUpdate'
    end
    object tRendelesTetelMarking: TStringField
      FieldName = 'Marking'
      Size = 50
    end
    object tRendelesTetelStandard: TStringField
      FieldName = 'Standard'
      Size = 50
    end
    object tRendelesTetelStandardText: TStringField
      FieldName = 'StandardText'
      Size = 50
    end
    object tRendelesTetelTypeOfPacking: TStringField
      FieldName = 'TypeOfPacking'
      Size = 50
    end
    object tRendelesTetelWorkingPressure: TFloatField
      FieldName = 'WorkingPressure'
    end
    object tRendelesTetelWorkingPressureUnit: TStringField
      FieldName = 'WorkingPressureUnit'
      FixedChar = True
      Size = 10
    end
    object tRendelesTetelDesignPressure: TFloatField
      FieldName = 'DesignPressure'
    end
    object tRendelesTetelDesignPressureUnit: TStringField
      FieldName = 'DesignPressureUnit'
      FixedChar = True
      Size = 10
    end
    object tRendelesTetelTestPressure: TFloatField
      FieldName = 'TestPressure'
    end
    object tRendelesTetelTestPressureUnit: TStringField
      FieldName = 'TestPressureUnit'
      FixedChar = True
      Size = 10
    end
    object tRendelesTetelSafetyFactor: TFloatField
      FieldName = 'SafetyFactor'
    end
    object tRendelesTetelTypeOfLining: TStringField
      FieldName = 'TypeOfLining'
      Size = 50
    end
    object tRendelesTetelMaxDesignTemperature: TFloatField
      FieldName = 'MaxDesignTemperature'
    end
    object tRendelesTetelMinDesignTemperature: TFloatField
      FieldName = 'MinDesignTemperature'
    end
    object tRendelesTetelAccListMailDate: TDateTimeField
      FieldName = 'AccListMailDate'
    end
    object tRendelesTetelAccListMailSender: TStringField
      FieldName = 'AccListMailSender'
      Size = 50
    end
    object tRendelesTetelAccListMailSent: TBooleanField
      FieldName = 'AccListMailSent'
    end
    object tRendelesTetelMarkingId: TIntegerField
      FieldName = 'MarkingId'
    end
  end
  object dsRendelesTetel: TDataSource
    DataSet = tRendelesTetel
    Left = 32
    Top = 128
  end
end
