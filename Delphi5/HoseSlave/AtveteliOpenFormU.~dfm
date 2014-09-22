object AtveteliOpenForm: TAtveteliOpenForm
  Left = 1006
  Top = 275
  Width = 194
  Height = 241
  BorderStyle = bsSizeToolWin
  Caption = 'Átvételi utasítások megnyitása'
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
    Top = 178
    Width = 186
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 107
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkClose
    end
  end
  object AtveteliOpenGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 186
    Height = 178
    Hint = 'Behívás - bal egérgomb egy klikk '
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'LeafName'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    DataSource = SPDm.dsAtveteliList
    Filter.Criteria = {00000000}
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object AtveteliOpenGridLeafName: TdxDBGridHyperLinkColumn
      Caption = 'Átvételi száma'
      HeaderAlignment = taCenter
      Sorted = csUp
      Width = 158
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LeafName'
      SingleClick = True
      OnStartClick = AtveteliOpenGridLeafNameStartClick
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'AtveteliOpenForm'
    MinMaxInfo.MaxTrackHeight = 240
    MinMaxInfo.MaxTrackWidth = 200
    MinMaxInfo.MinTrackHeight = 120
    MinMaxInfo.MinTrackWidth = 120
    Left = 24
    Top = 48
  end
end
