object QualificCompareForm: TQualificCompareForm
  Left = 183
  Top = 385
  Width = 696
  Height = 219
  BorderStyle = bsSizeToolWin
  Caption = 'QualificCompareForm'
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
    Top = 144
    Width = 688
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object QualificCompareGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 144
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = CompareDataData
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'QualificCompareGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    object QualificCompareGridTetelSrsz: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object QualificCompareGridTipusNev: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TipusNev'
    end
    object QualificCompareGridMegnevezes: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object QualificCompareGridRajzszam: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rajzszam'
    end
    object QualificCompareGridCikkszam: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Cikkszam'
    end
    object QualificCompareGridDarabszam: TdxDBGridMaskColumn
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Darabszam'
    end
    object QualificCompareGridSelected: TdxDBGridCheckColumn
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Selected'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object CompareData: TRxMemoryData
    FieldDefs = <>
    Left = 64
    Top = 40
    object CompareDataTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object CompareDataTipusNev: TStringField
      FieldName = 'TipusNev'
      Size = 30
    end
    object CompareDataMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object CompareDataRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object CompareDataCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object CompareDataDarabszam: TIntegerField
      FieldName = 'Darabszam'
    end
    object CompareDataSelected: TBooleanField
      FieldName = 'Selected'
    end
  end
  object CompareDataData: TDataSource
    DataSet = CompareData
    Left = 32
    Top = 40
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'QualificCompareForm'
    Left = 96
    Top = 40
  end
end
