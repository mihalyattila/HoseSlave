object SerialForm: TSerialForm
  Left = 435
  Top = 326
  Width = 242
  Height = 229
  BorderStyle = bsSizeToolWin
  Caption = 'Gyártási számok'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object SerialsGrid: TdxDBGrid
    Left = 0
    Top = 29
    Width = 226
    Height = 133
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = OrderDm.dsSerials
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'SerialsGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object SerialsGridRendsz: TdxDBGridMaskColumn
      Caption = 'Rendeléssz.'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rendsz'
    end
    object SerialsGridTetelSrsz: TdxDBGridMaskColumn
      Caption = 'Tétel srsz.'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object SerialsGridGY_SZ: TdxDBGridMaskColumn
      Caption = 'Gyárt.sz.'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GY_SZ'
    end
    object SerialsGridMeo_Az: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Meo_Az'
    end
    object SerialsGridRendelesAz: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RendelesAz'
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 226
    Height = 29
    Caption = 'ToolBar1'
    Images = MainForm.ImageList1
    TabOrder = 1
    object ToolButton1: TToolButton
      Left = 0
      Top = 2
      Hint = 'Adatok másolása a vágólapra'
      Caption = 'ToolButton1'
      ImageIndex = 7
      ParentShowHint = False
      ShowHint = True
      OnClick = ToolButton1Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 162
    Width = 226
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 76
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'SerialsForm'
    MinMaxInfo.MinTrackHeight = 160
    MinMaxInfo.MinTrackWidth = 240
    Left = 32
    Top = 64
  end
end
