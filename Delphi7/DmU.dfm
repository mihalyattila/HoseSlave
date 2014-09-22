object Dm: TDm
  OldCreateOrder = False
  Left = 271
  Top = 123
  Height = 839
  Width = 1015
  object MainConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLNCLI.1;Integrated Security=SSPI;Persist Security Inf' +
      'o=False;Initial Catalog=TMO-Test;Data Source=sdas009\sdsq2'
    LoginPrompt = False
    Provider = 'SQLNCLI.1'
    Left = 56
    Top = 32
  end
  object qMfCikkszamok: TADOQuery
    Connection = MainConnection
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from'
      #9'MfCikkszamok')
    Left = 56
    Top = 96
    object qMfCikkszamokItemId: TAutoIncField
      FieldName = 'ItemId'
      ReadOnly = True
    end
    object qMfCikkszamokJelzes: TStringField
      FieldName = 'Jelzes'
      Size = 10
    end
    object qMfCikkszamokPrDatum: TDateTimeField
      FieldName = 'PrDatum'
    end
    object qMfCikkszamokMtKeszDatum: TDateTimeField
      FieldName = 'MtKeszDatum'
    end
    object qMfCikkszamokRegiCksz: TStringField
      FieldName = 'RegiCksz'
    end
    object qMfCikkszamokSAPCksz: TStringField
      FieldName = 'SAPCksz'
    end
    object qMfCikkszamokMtFelkeszDatum: TDateTimeField
      FieldName = 'MtFelkeszDatum'
    end
    object qMfCikkszamokNev: TStringField
      FieldName = 'Nev'
      Size = 80
    end
    object qMfCikkszamokHossz: TFloatField
      FieldName = 'Hossz'
    end
    object qMfCikkszamokFelkesz5: TStringField
      FieldName = 'Felkesz5'
    end
    object qMfCikkszamokVulk5: TStringField
      FieldName = 'Vulk5'
    end
    object qMfCikkszamokTomloveg5: TStringField
      FieldName = 'Tomloveg5'
    end
    object qMfCikkszamokFelkesz6: TStringField
      FieldName = 'Felkesz6'
    end
    object qMfCikkszamokVulk6: TStringField
      FieldName = 'Vulk6'
    end
    object qMfCikkszamokTomloveg6: TStringField
      FieldName = 'Tomloveg6'
    end
    object qMfCikkszamokFelkesz7: TStringField
      FieldName = 'Felkesz7'
    end
    object qMfCikkszamokVulk7: TStringField
      FieldName = 'Vulk7'
    end
    object qMfCikkszamokTomloveg7: TStringField
      FieldName = 'Tomloveg7'
    end
    object qMfCikkszamokFelkesz9: TStringField
      FieldName = 'Felkesz9'
    end
    object qMfCikkszamokVulk9: TStringField
      FieldName = 'Vulk9'
    end
    object qMfCikkszamokTomloveg9: TStringField
      FieldName = 'Tomloveg9'
    end
    object qMfCikkszamokMuszJell: TStringField
      FieldName = 'MuszJell'
      Size = 50
    end
    object qMfCikkszamokKonstr: TStringField
      FieldName = 'Konstr'
      Size = 50
    end
    object qMfCikkszamokKsz: TStringField
      FieldName = 'Ksz'
    end
    object qMfCikkszamokAsz: TStringField
      FieldName = 'Asz'
    end
    object qMfCikkszamokMtfKesz: TStringField
      FieldName = 'MtfKesz'
      Size = 50
    end
    object qMfCikkszamokMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object qMfCikkszamokMtfFelkesz: TStringField
      FieldName = 'MtfFelkesz'
      Size = 50
    end
    object qMfCikkszamokKeszitette: TStringField
      FieldName = 'Keszitette'
      Size = 50
    end
    object qMfCikkszamokKeszitesDatuma: TDateTimeField
      FieldName = 'KeszitesDatuma'
    end
    object qMfCikkszamokModositotta: TStringField
      FieldName = 'Modositotta'
      Size = 50
    end
    object qMfCikkszamokModositasDatuma: TDateTimeField
      FieldName = 'ModositasDatuma'
    end
    object qMfCikkszamokJelzesKod: TSmallintField
      FieldName = 'JelzesKod'
    end
    object qMfCikkszamokNorma: TBooleanField
      FieldName = 'Norma'
    end
    object qMfCikkszamokSAP: TBooleanField
      FieldName = 'SAP'
    end
    object qMfCikkszamokTBP: TBooleanField
      FieldName = 'TBP'
    end
    object qMfCikkszamokGraf: TBooleanField
      FieldName = 'Graf'
    end
    object qMfCikkszamokTorzslap: TBooleanField
      FieldName = 'Torzslap'
    end
    object qMfCikkszamokDarabjegyzek: TBooleanField
      FieldName = 'Darabjegyzek'
    end
    object qMfCikkszamokSzin: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Szin'
      LookupDataSet = qJelzesek
      LookupKeyFields = 'JelzesKod'
      LookupResultField = 'Jelzoszin'
      KeyFields = 'JelzesKod'
      LookupCache = True
      Lookup = True
    end
    object qMfCikkszamokJelzesNev: TStringField
      FieldKind = fkLookup
      FieldName = 'JelzesNev'
      LookupDataSet = qJelzesek
      LookupKeyFields = 'JelzesKod'
      LookupResultField = 'JelzoString'
      KeyFields = 'JelzesKod'
      Size = 50
      Lookup = True
    end
  end
  object dsMfCikkszamok: TDataSource
    DataSet = qMfCikkszamok
    Left = 128
    Top = 112
  end
  object qJelzesek: TADOQuery
    Connection = MainConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * '
      'from MfCikkszamJelzesek'
      'order by JelzoString')
    Left = 56
    Top = 144
    object qJelzesekJelzoString: TStringField
      FieldName = 'JelzoString'
    end
    object qJelzesekJelzoszin: TIntegerField
      FieldName = 'Jelzoszin'
    end
    object qJelzesekJelzesKod: TSmallintField
      FieldName = 'JelzesKod'
    end
  end
  object dsJelzesek: TDataSource
    DataSet = qJelzesek
    Left = 128
    Top = 160
  end
end
