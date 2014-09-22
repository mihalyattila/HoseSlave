object AccessoryQryForm: TAccessoryQryForm
  Left = 363
  Top = 344
  Width = 696
  Height = 398
  BorderStyle = bsSizeToolWin
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
    Top = 335
    Width = 688
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    OnResize = Panel1Resize
    object SpeedButton1: TSpeedButton
      Left = 4
      Top = 4
      Width = 23
      Height = 22
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
      OnClick = SpeedButton1Click
    end
    object BitBtn1: TBitBtn
      Left = 194
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 418
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Mégsem'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object AccessoryQryGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 335
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'COLUMN1'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = Dm.AccessoryQryDs
    Filter.Active = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'AccessoryQryGrid'
    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object AccessoryQryGridCOLUMN1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COLUMN1'
    end
    object AccessoryQryGridaccessoryCounter: TdxDBGridMaskColumn
      Caption = 'Azonosító'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'accessoryCounter'
    end
    object AccessoryQryGridaccessoryANb: TdxDBGridMaskColumn
      Caption = 'Cikkszám'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'accessoryANb'
    end
    object AccessoryQryGridaccessoryDNb: TdxDBGridMaskColumn
      Caption = 'Rajzszám'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'accessoryDNb'
    end
    object AccessoryQryGridAccDescriptionH: TdxDBGridMaskColumn
      Caption = 'Megnevezés 1.'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AccDescriptionH'
    end
    object AccessoryQryGriddescription: TdxDBGridMaskColumn
      Caption = 'Megnevezés 2.'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'description'
    end
    object AccessoryQryGriddescriptionH: TdxDBGridMaskColumn
      Caption = 'Megnevezés 3.'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'descriptionH'
    end
    object AccessoryQryGriddate: TdxDBGridDateColumn
      Caption = 'Dátum'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'date'
    end
    object AccessoryQryGridweight: TdxDBGridMaskColumn
      Caption = 'Tömeg'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'weight'
    end
    object AccessoryQryGridpriceSAP: TdxDBGridMaskColumn
      Caption = 'SAP ár'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'priceSAP'
    end
    object AccessoryQryGridprice: TdxDBGridMaskColumn
      Caption = 'HM ár'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'price'
    end
    object AccessoryQryGriddatePrice: TdxDBGridDateColumn
      Caption = 'Ár dátuma'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'datePrice'
    end
    object AccessoryQryGridmaterial: TdxDBGridMaskColumn
      Caption = 'Anyag'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'material'
    end
    object AccessoryQryGridSteel: TdxDBGridMaskColumn
      Caption = 'Acél'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Steel'
    end
    object AccessoryQryGridID: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ID'
    end
    object AccessoryQryGridOD: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OD'
    end
    object AccessoryQryGridL: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'L'
    end
    object AccessoryQryGridM1: TdxDBGridMaskColumn
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'M1'
    end
    object AccessoryQryGridstatus: TdxDBGridMaskColumn
      Caption = 'Státusz'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'status'
    end
    object AccessoryQryGridnote: TdxDBGridMaskColumn
      Caption = 'Megjegyzés'
      DisableEditor = True
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'note'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'AccessoryQryForm'
    Left = 216
    Top = 96
  end
end
