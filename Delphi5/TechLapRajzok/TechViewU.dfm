object Form1: TForm1
  Left = 248
  Top = 110
  Width = 1142
  Height = 656
  Caption = 'Form1'
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
    Top = 581
    Width = 1134
    Height = 41
    Align = alBottom
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 240
      Height = 25
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object DBImage1: TDBImage
    Left = 0
    Top = 0
    Width = 1134
    Height = 581
    Align = alClient
    DataField = 'Picture'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Database1: TDatabase
    AliasName = 'TMO_Test'
    Connected = True
    DatabaseName = 'MainDb'
    SessionName = 'Default'
    Left = 48
    Top = 24
  end
  object Table1: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.VegzodesTipusok'
    Left = 48
    Top = 72
    object Table1VegzodesId: TIntegerField
      FieldName = 'VegzodesId'
      Required = True
    end
    object Table1Megnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 200
    end
    object Table1Picture: TBlobField
      FieldName = 'Picture'
      BlobType = ftBlob
      Size = 1
    end
    object Table1Rogzitette: TStringField
      FieldName = 'Rogzitette'
      Required = True
      Size = 50
    end
    object Table1RogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 48
    Top = 120
  end
end
