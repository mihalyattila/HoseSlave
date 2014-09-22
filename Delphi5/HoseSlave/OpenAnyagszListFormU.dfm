object OpenAnyagszListForm: TOpenAnyagszListForm
  Left = 330
  Top = 173
  Width = 375
  Height = 569
  BorderStyle = bsSizeToolWin
  Caption = 'Anyagszükséglet lista megnyitása'
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
    Top = 506
    Width = 367
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 62
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 230
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object AnyagszListGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 367
    Height = 506
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Id'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = OrderDm.dsAnyagszList
    Filter.Active = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'AnyagszListGrid'
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
    object AnyagszListGridId: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Id'
    end
    object AnyagszListGridRogzitette: TdxDBGridMaskColumn
      Caption = 'Rögzítette'
      HeaderAlignment = taCenter
      Width = 172
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rogzitette'
    end
    object AnyagszListGridRogzIdopont: TdxDBGridDateColumn
      Caption = 'Idõpont'
      HeaderAlignment = taCenter
      Width = 104
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RogzIdopont'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'AnyagszListGrid'
    MinMaxInfo.MinTrackHeight = 200
    MinMaxInfo.MinTrackWidth = 200
    Left = 88
    Top = 72
  end
end
