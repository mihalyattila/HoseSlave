object ReportDm: TReportDm
  OldCreateOrder = False
  Left = 218
  Top = 113
  Height = 607
  Width = 756
  object AdatlapFejQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from adatlap where adatlapId = :adatlapId')
    Left = 40
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'adatlapId'
        ParamType = ptUnknown
        Value = '1'
      end>
    object AdatlapFejQryAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
      Origin = 'MAINDB.adatlap.AdatlapId'
    end
    object AdatlapFejQryAdatalapSzam: TStringField
      FieldName = 'AdatalapSzam'
      Origin = 'MAINDB.adatlap.AdatalapSzam'
      FixedChar = True
    end
    object AdatlapFejQryValtozat: TSmallintField
      FieldName = 'Valtozat'
      Origin = 'MAINDB.adatlap.Valtozat'
    end
    object AdatlapFejQryCegNev: TStringField
      FieldName = 'CegNev'
      Origin = 'MAINDB.adatlap.CegNev'
      Size = 50
    end
    object AdatlapFejQryOsztalyNev: TStringField
      FieldName = 'OsztalyNev'
      Origin = 'MAINDB.adatlap.OsztalyNev'
      Size = 50
    end
    object AdatlapFejQryMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.adatlap.Megnevezes'
      Size = 50
    end
    object AdatlapFejQryAltalanosNev: TStringField
      FieldName = 'AltalanosNev'
      Origin = 'MAINDB.adatlap.AltalanosNev'
      Size = 50
    end
    object AdatlapFejQrySzabvany: TStringField
      FieldName = 'Szabvany'
      Origin = 'MAINDB.adatlap.Szabvany'
      Size = 50
    end
    object AdatlapFejQryId: TFloatField
      FieldName = 'Id'
      Origin = 'MAINDB.adatlap.Id'
    end
    object AdatlapFejQryNyomas: TFloatField
      FieldName = 'Nyomas'
      Origin = 'MAINDB.adatlap.Nyomas'
    end
    object AdatlapFejQryKeszitette: TStringField
      FieldName = 'Keszitette'
      Origin = 'MAINDB.adatlap.Keszitette'
      Size = 50
    end
    object AdatlapFejQryKeszitesDatuma: TDateTimeField
      FieldName = 'KeszitesDatuma'
      Origin = 'MAINDB.adatlap.KeszitesDatuma'
    end
    object AdatlapFejQryEllenorizve: TBooleanField
      FieldName = 'Ellenorizve'
      Origin = 'MAINDB.adatlap.Ellenorizve'
    end
    object AdatlapFejQryEllenorizte: TStringField
      FieldName = 'Ellenorizte'
      Origin = 'MAINDB.adatlap.Ellenorizte'
      Size = 50
    end
    object AdatlapFejQryEllenorzesDatuma: TDateTimeField
      FieldName = 'EllenorzesDatuma'
      Origin = 'MAINDB.adatlap.EllenorzesDatuma'
    end
    object AdatlapFejQryEgyedi: TBooleanField
      FieldName = 'Egyedi'
      Origin = 'MAINDB.adatlap.Egyedi'
    end
    object AdatlapFejQryKiadva: TBooleanField
      FieldName = 'Kiadva'
      Origin = 'MAINDB.adatlap.Kiadva'
    end
    object AdatlapFejQryKiadasIdopontja: TDateTimeField
      FieldName = 'KiadasIdopontja'
      Origin = 'MAINDB.adatlap.KiadasIdopontja'
    end
    object AdatlapFejQryKiadta: TStringField
      FieldName = 'Kiadta'
      Origin = 'MAINDB.adatlap.Kiadta'
      Size = 50
    end
    object AdatlapFejQryErvenyes: TBooleanField
      FieldName = 'Ervenyes'
      Origin = 'MAINDB.adatlap.Ervenyes'
    end
    object AdatlapFejQryErvenyesitesIdopontja: TDateTimeField
      FieldName = 'ErvenyesitesIdopontja'
      Origin = 'MAINDB.adatlap.ErvenyesitesIdopontja'
    end
    object AdatlapFejQryErvenyesitette: TStringField
      FieldName = 'Ervenyesitette'
      Origin = 'MAINDB.adatlap.Ervenyesitette'
      Size = 50
    end
  end
  object AdatlapFejQryDs: TDataSource
    DataSet = AdatlapFejQry
    Left = 104
    Top = 40
  end
  object AdatlapKonf: TTable
    DatabaseName = 'MainDb'
    IndexFieldNames = 'AdatlapId'
    MasterFields = 'AdatlapId'
    MasterSource = AdatlapFejQryDs
    TableName = 'dbo.AdatlapKonf'
    Left = 40
    Top = 88
    object AdatlapKonfAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
      Required = True
    end
    object AdatlapKonfTetelszam: TSmallintField
      FieldName = 'Tetelszam'
      Required = True
    end
    object AdatlapKonfRajzszam: TStringField
      FieldName = 'Rajzszam'
      FixedChar = True
    end
    object AdatlapKonfMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object AdatlapKonfTomloKulatm: TFloatField
      FieldName = 'TomloKulatm'
    end
    object AdatlapKonfCsatlKulatm: TFloatField
      FieldName = 'CsatlKulatm'
    end
    object AdatlapKonfTomeg: TFloatField
      FieldName = 'Tomeg'
    end
    object AdatlapKonfMinHajlitas: TFloatField
      FieldName = 'MinHajlitas'
    end
    object AdatlapKonfAnyagnormaSzam: TStringField
      FieldName = 'AnyagnormaSzam'
      FixedChar = True
    end
    object AdatlapKonfMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object AdatlapKonfAktiv: TBooleanField
      FieldName = 'Aktiv'
      Required = True
    end
  end
end
