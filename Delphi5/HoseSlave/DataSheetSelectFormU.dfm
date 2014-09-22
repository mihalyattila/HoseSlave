object DataSheetSelectForm: TDataSheetSelectForm
  Left = 259
  Top = 379
  Width = 696
  Height = 348
  BorderStyle = bsSizeToolWin
  Caption = 'Adatlap kiválasztása'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 273
    Width = 688
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DataSheetSelectGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 273
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'COLUMN1'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dsAdatlap
    Filter.Active = True
    Filter.CaseInsensitive = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'DataSheetSelectGrid'
    OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object DataSheetSelectGridCOLUMN1: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COLUMN1'
    end
    object DataSheetSelectGridAdatlapId: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AdatlapId'
    end
    object DataSheetSelectGridAdatlapSzam: TdxDBGridMaskColumn
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AdatlapSzam'
    end
    object DataSheetSelectGridValtozat: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Valtozat'
    end
    object DataSheetSelectGridCegNev: TdxDBGridMaskColumn
      Width = 62
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CegNev'
    end
    object DataSheetSelectGridOsztalyNev: TdxDBGridMaskColumn
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OsztalyNev'
    end
    object DataSheetSelectGridMegnevezes: TdxDBGridMaskColumn
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object DataSheetSelectGridAltalanosNev: TdxDBGridMaskColumn
      Width = 86
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AltalanosNev'
    end
    object DataSheetSelectGridSzabvany: TdxDBGridMaskColumn
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Szabvany'
    end
    object DataSheetSelectGridId: TdxDBGridMaskColumn
      Width = 32
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Id'
    end
    object DataSheetSelectGridNyomas: TdxDBGridMaskColumn
      Width = 61
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Nyomas'
    end
    object DataSheetSelectGridKeszitette: TdxDBGridMaskColumn
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Keszitette'
    end
    object DataSheetSelectGridKeszitesDatuma: TdxDBGridDateColumn
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KeszitesDatuma'
    end
    object DataSheetSelectGridEllenorizve: TdxDBGridCheckColumn
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ellenorizve'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DataSheetSelectGridEllenorizte: TdxDBGridMaskColumn
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ellenorizte'
    end
    object DataSheetSelectGridEllenorzesDatuma: TdxDBGridDateColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EllenorzesDatuma'
    end
    object DataSheetSelectGridEgyedi: TdxDBGridCheckColumn
      Width = 55
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Egyedi'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DataSheetSelectGridKiadva: TdxDBGridCheckColumn
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kiadva'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DataSheetSelectGridKiadasIdopontja: TdxDBGridDateColumn
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KiadasIdopontja'
    end
    object DataSheetSelectGridKiadta: TdxDBGridMaskColumn
      Width = 53
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kiadta'
    end
    object DataSheetSelectGridErvenyes: TdxDBGridCheckColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ervenyes'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DataSheetSelectGridErvenyesitesIdopontja: TdxDBGridDateColumn
      Width = 127
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ErvenyesitesIdopontja'
    end
    object DataSheetSelectGridErvenyesitette: TdxDBGridMaskColumn
      Width = 90
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ervenyesitette'
    end
  end
  object qAdatlap: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select cast(NewId() as char(50)), * '
      'from adatlap'
      ' ')
    Left = 32
    Top = 32
    object qAdatlapCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 50
    end
    object qAdatlapAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
    end
    object qAdatlapAdatlapSzam: TStringField
      FieldName = 'AdatlapSzam'
      FixedChar = True
    end
    object qAdatlapValtozat: TSmallintField
      FieldName = 'Valtozat'
    end
    object qAdatlapCegNev: TStringField
      FieldName = 'CegNev'
      Size = 50
    end
    object qAdatlapOsztalyNev: TStringField
      FieldName = 'OsztalyNev'
      Size = 50
    end
    object qAdatlapMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object qAdatlapAltalanosNev: TStringField
      FieldName = 'AltalanosNev'
      Size = 50
    end
    object qAdatlapSzabvany: TStringField
      FieldName = 'Szabvany'
      Size = 50
    end
    object qAdatlapId: TFloatField
      FieldName = 'Id'
    end
    object qAdatlapNyomas: TFloatField
      FieldName = 'Nyomas'
    end
    object qAdatlapKeszitette: TStringField
      FieldName = 'Keszitette'
      Size = 50
    end
    object qAdatlapKeszitesDatuma: TDateTimeField
      FieldName = 'KeszitesDatuma'
    end
    object qAdatlapEllenorizve: TBooleanField
      FieldName = 'Ellenorizve'
    end
    object qAdatlapEllenorizte: TStringField
      FieldName = 'Ellenorizte'
      Size = 50
    end
    object qAdatlapEllenorzesDatuma: TDateTimeField
      FieldName = 'EllenorzesDatuma'
    end
    object qAdatlapEgyedi: TBooleanField
      FieldName = 'Egyedi'
    end
    object qAdatlapKiadva: TBooleanField
      FieldName = 'Kiadva'
    end
    object qAdatlapKiadasIdopontja: TDateTimeField
      FieldName = 'KiadasIdopontja'
    end
    object qAdatlapKiadta: TStringField
      FieldName = 'Kiadta'
      Size = 50
    end
    object qAdatlapErvenyes: TBooleanField
      FieldName = 'Ervenyes'
    end
    object qAdatlapErvenyesitesIdopontja: TDateTimeField
      FieldName = 'ErvenyesitesIdopontja'
    end
    object qAdatlapErvenyesitette: TStringField
      FieldName = 'Ervenyesitette'
      Size = 50
    end
  end
  object dsAdatlap: TDataSource
    DataSet = qAdatlap
    Left = 72
    Top = 32
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'DataSheetSelectGrid'
    Left = 112
    Top = 32
  end
end
