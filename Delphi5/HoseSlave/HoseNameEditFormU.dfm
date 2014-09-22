object HoseNameEditForm: THoseNameEditForm
  Left = 412
  Top = 323
  Width = 405
  Height = 477
  BorderStyle = bsSizeToolWin
  Caption = 'Tömlõ megnevezések karbantartása'
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
    Top = 414
    Width = 397
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 2
      Width = 240
      Height = 25
      DataSource = dsTomloMegnevezesek
      Align = alLeft
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object HoseNameEditGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 397
    Height = 414
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'MegnevezesId'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = dsTomloMegnevezesek
    Filter.Active = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'HoseNameEditGrid'
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object HoseNameEditGridMegnevezesId: TdxDBGridMaskColumn
      Caption = 'Id'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MegnevezesId'
    end
    object HoseNameEditGridMegnevezes: TdxDBGridMaskColumn
      Caption = 'Megnevezés'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object HoseNameEditGridTermekKod: TdxDBGridMaskColumn
      Caption = 'Termékkód'
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TermekKod'
    end
    object HoseNameEditGridRogzitette: TdxDBGridColumn
      Caption = 'Rögzítette'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rogzitette'
    end
    object HoseNameEditGridRogzIdopont: TdxDBGridColumn
      Caption = 'Idõpont'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RogzIdopont'
    end
  end
  object tTomloMegnevezesek: TTable
    BeforePost = tTomloMegnevezesekBeforePost
    OnNewRecord = tTomloMegnevezesekNewRecord
    DatabaseName = 'MainDb'
    TableName = 'dbo.TomloMegnevezesek'
    Left = 48
    Top = 56
    object tTomloMegnevezesekMegnevezesId: TIntegerField
      FieldName = 'MegnevezesId'
    end
    object tTomloMegnevezesekMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object tTomloMegnevezesekTermekKod: TIntegerField
      FieldName = 'TermekKod'
    end
    object tTomloMegnevezesekRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tTomloMegnevezesekRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsTomloMegnevezesek: TDataSource
    DataSet = tTomloMegnevezesek
    Left = 48
    Top = 112
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'HoseNameEditForm'
    Left = 176
    Top = 216
  end
end
