object PackBmkListForm: TPackBmkListForm
  Left = 821
  Top = 312
  Width = 229
  Height = 303
  BorderStyle = bsSizeToolWin
  Caption = 'Csomagol�si k�nyvjelz�k'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PackBmkGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 221
    Height = 242
    Hint = 'T�telhez ugr�s: dupla klikk vagy Enter'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Rendsz'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnDblClick = PackBmkGridDblClick
    OnKeyDown = PackBmkGridKeyDown
    DataSource = Dm.dsPackBmkData
    Filter.Criteria = {00000000}
    OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
    object PackBmkGridCsomSz: TdxDBGridMaskColumn
      Caption = 'Csom.sz.'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CsomSz'
    end
    object PackBmkGridRevizio: TdxDBGridMaskColumn
      Caption = 'Rev.'
      HeaderAlignment = taCenter
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Revizio'
    end
    object PackBmkGridVerzio: TdxDBGridMaskColumn
      Caption = 'Ver.'
      HeaderAlignment = taCenter
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Verzio'
    end
    object PackBmkGridSrsz: TdxDBGridMaskColumn
      Caption = 'Srsz.'
      HeaderAlignment = taCenter
      Width = 40
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Srsz'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 242
    Width = 221
    Height = 27
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 196
      Top = 2
      Width = 23
      Height = 22
      Hint = 'Az �sszes elem t�rl�se.'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
        333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
        03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
        33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
        0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
        3333333337FFF7F3333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 2
      Width = 151
      Height = 23
      DataSource = Dm.dsPackBmkData
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbCancel, nbRefresh]
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'PackBmkForm'
    MinMaxInfo.MaxTrackHeight = 600
    MinMaxInfo.MaxTrackWidth = 198
    MinMaxInfo.MinTrackHeight = 120
    MinMaxInfo.MinTrackWidth = 230
    Left = 56
    Top = 80
  end
end
