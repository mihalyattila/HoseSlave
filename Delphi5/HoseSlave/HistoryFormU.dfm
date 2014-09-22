object HistoryForm: THistoryForm
  Left = 595
  Top = 402
  BorderStyle = bsToolWindow
  Caption = 'History'
  ClientHeight = 304
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 275
    Width = 539
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object CloseBtn: TBitBtn
      Left = 232
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object HistoryGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 539
    Height = 275
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Version'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    BandFont.Charset = DEFAULT_CHARSET
    BandFont.Color = clWindowText
    BandFont.Height = -11
    BandFont.Name = 'MS Sans Serif'
    BandFont.Style = []
    DataSource = ToolsDm.dsProgHistory
    Filter.Criteria = {00000000}
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoRowSelect, edgoUseBitmap]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    ShowGrid = False
    ShowPreviewGrid = False
    object HistoryGridProgCode: TdxDBGridMaskColumn
      Visible = False
      Width = 56
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ProgCode'
    end
    object HistoryGridVersion: TdxDBGridMaskColumn
      Caption = 'Verzió'
      HeaderAlignment = taCenter
      Width = 66
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Version'
    end
    object HistoryGridHistory: TdxDBGridMaskColumn
      Caption = 'Történet'
      HeaderAlignment = taCenter
      Width = 338
      BandIndex = 0
      RowIndex = 0
      FieldName = 'History'
    end
    object HistoryGridBevezetesNapja: TdxDBGridDateColumn
      Caption = 'Bevezetés napja'
      HeaderAlignment = taCenter
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BevezetesNapja'
    end
    object HistoryGridRogzitette: TdxDBGridMaskColumn
      Visible = False
      Width = 269
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rogzitette'
    end
    object HistoryGridRogzIdopont: TdxDBGridDateColumn
      Visible = False
      Width = 98
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RogzIdopont'
    end
  end
end
