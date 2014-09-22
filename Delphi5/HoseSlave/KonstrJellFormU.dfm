object KonstrJellForm: TKonstrJellForm
  Left = 295
  Top = 210
  Width = 571
  Height = 240
  BorderStyle = bsSizeToolWin
  Caption = 'HM konstrukciók'
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
    Top = 177
    Width = 563
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 4
      Width = 23
      Height = 22
      Hint = 'Adatok frissítése'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 196
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 364
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Mégsem'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object KonstrJellQryGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 563
    Height = 177
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
    DataSource = Dm.KonstrJellQryDs
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.CaseInsensitive = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'KonstrJellQryForm'
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object KonstrJellQryGridCOLUMN1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COLUMN1'
    end
    object KonstrJellQryGridbodyANb: TdxDBGridMaskColumn
      Caption = 'Cikkszám'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'bodyANb'
    end
    object KonstrJellQryGridbodyDNb: TdxDBGridMaskColumn
      Caption = 'Rajzszám'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'bodyDNb'
    end
    object KonstrJellQryGriddescriptionH: TdxDBGridMaskColumn
      Caption = 'Megnevezés'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'descriptionH'
    end
    object KonstrJellQryGridcharacteristics: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'characteristics'
    end
    object KonstrJellQryGridla: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'la'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridkg: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'kg'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridbg: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'bg'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridhe: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'he'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridpa: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'pa'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridfu: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'fu'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridga: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ga'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridus: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'us'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGriddc: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dc'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridnh: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'nh'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridwp: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'wp'
    end
    object KonstrJellQryGridtp: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'tp'
    end
    object KonstrJellQryGriddp: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'dp'
    end
    object KonstrJellQryGridIDrated: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'IDrated'
    end
    object KonstrJellQryGridOD: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OD'
    end
    object KonstrJellQryGridweight: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'weight'
    end
    object KonstrJellQryGridMBRcalc: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MBRcalc'
    end
    object KonstrJellQryGridMBRstatic: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MBRstatic'
    end
    object KonstrJellQryGridMBRdynamic: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MBRdynamic'
    end
    object KonstrJellQryGridMBRstorage: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MBRstorage'
    end
    object KonstrJellQryGridpreCureTemperature1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'preCureTemperature1'
    end
    object KonstrJellQryGridpreCureTime1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'preCureTime1'
    end
    object KonstrJellQryGridpreCureTemperature2: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'preCureTemperature2'
    end
    object KonstrJellQryGridpreCureTime2: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'preCureTime2'
    end
    object KonstrJellQryGridpreCureTemperature3: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'preCureTemperature3'
    end
    object KonstrJellQryGridpreCureTime3: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'preCureTime3'
    end
    object KonstrJellQryGridcureTemperature1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cureTemperature1'
    end
    object KonstrJellQryGridcureTime1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cureTime1'
    end
    object KonstrJellQryGridcureTemperature2: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cureTemperature2'
    end
    object KonstrJellQryGridcureTime2: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cureTime2'
    end
    object KonstrJellQryGridcureTemperature3: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cureTemperature3'
    end
    object KonstrJellQryGridcureTime3: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'cureTime3'
    end
    object KonstrJellQryGridstatus: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'status'
    end
    object KonstrJellQryGridtemperatureMin: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'temperatureMin'
    end
    object KonstrJellQryGridtemperatureMax: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'temperatureMax'
    end
    object KonstrJellQryGridnote: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'note'
    end
    object KonstrJellQryGridlinerResistance: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'linerResistance'
    end
    object KonstrJellQryGridOlaj: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Olaj'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridGazEdes: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GazEdes'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridGazSav: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GazSav'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridViz: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Viz'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridFoszfat: TdxDBGridCheckColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Foszfat'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object KonstrJellQryGridsafetyFactor: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'safetyFactor'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'KonstrJellform'
    MinMaxInfo.MinTrackHeight = 240
    MinMaxInfo.MinTrackWidth = 320
    Left = 184
    Top = 96
  end
end
