object MarkingForm: TMarkingForm
  Left = 431
  Top = 323
  Width = 828
  Height = 608
  BorderStyle = bsSizeToolWin
  Caption = 'Márkázások listázása'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 545
    Width = 820
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel3Resize
    object OKBtn: TBitBtn
      Left = 167
      Top = 2
      Width = 145
      Height = 25
      TabOrder = 0
      OnClick = OKBtnClick
      Kind = bkOK
    end
    object CancelBtn: TBitBtn
      Left = 508
      Top = 2
      Width = 145
      Height = 25
      TabOrder = 1
      OnClick = CancelBtnClick
      Kind = bkCancel
    end
  end
  object MarkingGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 820
    Height = 545
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Id'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = OrderDm.dsJoinedMarkingList
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'MarkingGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    OnCustomDrawCell = MarkingGridCustomDrawCell
    object MarkingGridCsoportNev: TdxDBGridMaskColumn
      Caption = 'Csoportnév'
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CsoportNev'
      GroupIndex = 0
    end
    object MarkingGridAlcsoportNev: TdxDBGridMaskColumn
      Caption = 'Alcsoportnév'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AlcsoportNev'
    end
    object MarkingGridId: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Id'
    end
    object MarkingGridFocsoportNev: TdxDBGridMaskColumn
      Caption = 'Fõcsoportnév'
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FocsoportNev'
    end
    object MarkingGridMegnevezes: TdxDBGridMaskColumn
      Caption = 'Megnevezés'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object MarkingGridMegjegyzes: TdxDBGridMaskColumn
      Caption = 'Megjegyzés'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megjegyzes'
    end
    object MarkingGridRajzszam: TdxDBGridMaskColumn
      Caption = 'Rajzszám'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rajzszam'
    end
    object MarkingGridUtvonal: TdxDBGridHyperLinkColumn
      Caption = 'Útvonal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Utvonal'
      SingleClick = True
      OnStartClick = MarkingGridUtvonalStartClick
    end
    object MarkingGridErvenyes: TdxDBGridCheckColumn
      Caption = 'Érvényes'
      HeaderAlignment = taCenter
      Width = 64
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ervenyes'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'MarkingForm'
    StoredValues = <>
    Left = 736
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'dwg'
    Filter = 'AutoCad fájlok|*.dwg'
    Left = 48
    Top = 72
  end
end
