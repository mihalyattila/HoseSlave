object ICDataExportForm: TICDataExportForm
  Left = 399
  Top = 240
  Width = 702
  Height = 463
  BorderStyle = bsSizeToolWin
  Caption = 'InfoChip adatok exportálása'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 400
    Width = 694
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 165
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 453
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object ICDataExportGrid: TdxDBGrid
    Left = 0
    Top = 17
    Width = 694
    Height = 383
    Bands = <
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end>
    DefaultLayout = False
    HeaderPanelRowCount = 1
    KeyField = 'Meo_Az'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    BandColor = 12639424
    DataSource = OrderDm.dsICData
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'ICDataExportGrid'
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    ShowBands = True
    object ICDataExportGridMeo_Az: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Meo_Az'
    end
    object ICDataExportGridRendSz: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 1
      RowIndex = 0
      FieldName = 'RendSz'
    end
    object ICDataExportGridTetelSrsz: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 2
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object ICDataExportGridAssetNumber: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 3
      RowIndex = 0
      FieldName = 'AssetNumber'
    end
    object ICDataExportGridCategoryID: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 4
      RowIndex = 0
      FieldName = 'CategoryID'
    end
    object ICDataExportGridItemDescription: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 5
      RowIndex = 0
      FieldName = 'ItemDescription'
    end
    object ICDataExportGridDistributorID: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 6
      RowIndex = 0
      FieldName = 'DistributorID'
    end
    object ICDataExportGridClientID: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 7
      RowIndex = 0
      FieldName = 'ClientID'
    end
    object ICDataExportGridLocationID: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 8
      RowIndex = 0
      FieldName = 'LocationID'
    end
    object ICDataExportGridChipID: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 9
      RowIndex = 0
      FieldName = 'ChipID'
    end
    object ICDataExportGridCertificationStatus: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 10
      RowIndex = 0
      FieldName = 'CertificationStatus'
    end
    object ICDataExportGridCertificationInterval: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 11
      RowIndex = 0
      FieldName = 'CertificationInterval'
    end
    object ICDataExportGridBoreSize: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 12
      RowIndex = 0
      FieldName = 'BoreSize'
    end
    object ICDataExportGridNominalLegth: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 13
      RowIndex = 0
      FieldName = 'NominalLegth'
    end
    object ICDataExportGridDesignPressure: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 14
      RowIndex = 0
      FieldName = 'DesignPressure'
    end
    object ICDataExportGridTestPressure: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 15
      RowIndex = 0
      FieldName = 'TestPressure'
    end
    object ICDataExportGridInternalStripwoundTube: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 16
      RowIndex = 0
      FieldName = 'InternalStripwoundTube'
    end
    object ICDataExportGridEndCoupling1: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 17
      RowIndex = 0
      FieldName = 'EndCoupling1'
    end
    object ICDataExportGridEndCoupling2: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 18
      RowIndex = 0
      FieldName = 'EndCoupling2'
    end
    object ICDataExportGridMaxDesignTemp: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 19
      RowIndex = 0
      FieldName = 'MaxDesignTemp'
    end
    object ICDataExportGridMinDesignTemp: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 20
      RowIndex = 0
      FieldName = 'MinDesignTemp'
    end
    object ICDataExportGridManufacturer: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 21
      RowIndex = 0
      FieldName = 'Manufacturer'
    end
    object ICDataExportGridHoseType: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 22
      RowIndex = 0
      FieldName = 'HoseType'
    end
    object ICDataExportGridHoseStandard: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 23
      RowIndex = 0
      FieldName = 'HoseStandard'
    end
    object ICDataExportGridHoseCover: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 24
      RowIndex = 0
      FieldName = 'HoseCover'
    end
    object ICDataExportGridOutsideProtection: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 25
      RowIndex = 0
      FieldName = 'OutsideProtection'
    end
    object ICDataExportGridOpDynamicMBR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 26
      RowIndex = 0
      FieldName = 'OpDynamicMBR'
    end
    object ICDataExportGridStorageMBR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 27
      RowIndex = 0
      FieldName = 'StorageMBR'
    end
    object ICDataExportGridOpStaticMBR: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 28
      RowIndex = 0
      FieldName = 'OpStaticMBR'
    end
    object ICDataExportGridNotes: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 29
      RowIndex = 0
      FieldName = 'Notes'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 17
    Align = alTop
    TabOrder = 2
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'ICDataExportForm'
    Left = 48
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'ICExport.txt'
    Filter = 'Text files (*.txt)|*.TXT'
    Left = 48
    Top = 112
  end
end
