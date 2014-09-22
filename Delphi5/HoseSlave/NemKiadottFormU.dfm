object NemKiadottForm: TNemKiadottForm
  Left = 198
  Top = 180
  Width = 696
  Height = 382
  BorderStyle = bsSizeToolWin
  Caption = 'Ki nem adott tételek'
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
    Top = 307
    Width = 688
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object NemKiadottGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 307
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = Dm.dsKiadatlan
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'NemKiadottGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    object NemKiadottGridRendsz: TdxDBGridMaskColumn
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rendsz'
    end
    object NemKiadottGridRendelesAz: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RendelesAz'
    end
    object NemKiadottGridTetelSrsz: TdxDBGridMaskColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object NemKiadottGridMinId: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MinId'
    end
    object NemKiadottGridTipusnev: TdxDBGridMaskColumn
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tipusnev'
    end
    object NemKiadottGridMegnevezes: TdxDBGridMaskColumn
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object NemKiadottGridRajzszam: TdxDBGridMaskColumn
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rajzszam'
    end
    object NemKiadottGridCikkszam: TdxDBGridMaskColumn
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Cikkszam'
    end
    object NemKiadottGridDarabszam: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Darabszam'
    end
    object NemKiadottGridKiadottDarab: TdxDBGridMaskColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KiadottDarab'
    end
    object NemKiadottGridKiadando: TdxDBGridMaskColumn
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kiadando'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'NemKiadottForm'
    Left = 200
    Top = 72
  end
end
