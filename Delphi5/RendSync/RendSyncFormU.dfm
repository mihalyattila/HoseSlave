object RendSyncForm: TRendSyncForm
  Left = 240
  Top = 111
  Width = 870
  Height = 640
  Align = alLeft
  Caption = 'RendSyncForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 587
    Width = 862
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 546
    Width = 862
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 546
    Align = alClient
    TabOrder = 2
    object dxDBGrid1: TdxDBGrid
      Left = 1
      Top = 1
      Width = 860
      Height = 544
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'ID'
      ShowGroupPanel = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      PopupMenu = PopupMenu1
      TabOrder = 0
      DataSource = Dm.dsRendeles
      Filter.Active = True
      Filter.Criteria = {00000000}
      IniFileName = 'D:\MyDevelop\Projects\HoseSlave\Delphi5\RendSync\RendSync.ini'
      IniSectionName = 'Grid'
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGrid1ID: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ID'
      end
      object dxDBGrid1Rendelesszam: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Rendelesszam'
      end
      object dxDBGrid1Revizio: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Revizio'
      end
      object dxDBGrid1Pozicio: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Pozicio'
      end
      object dxDBGrid1UzlKotCsop: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UzlKotCsop'
      end
      object dxDBGrid1Orszag: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Orszag'
      end
      object dxDBGrid1Megrendelo: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Megrendelo'
      end
      object dxDBGrid1VevoRefSz: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VevoRefSz'
      end
      object dxDBGrid1Kontakt: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kontakt'
      end
      object dxDBGrid1Arufogado: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Arufogado'
      end
      object dxDBGrid1MegrendDatuma: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MegrendDatuma'
      end
      object dxDBGrid1SzallHatarido: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SzallHatarido'
      end
      object dxDBGrid1RefBiz: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RefBiz'
      end
      object dxDBGrid1HozzSzam: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HozzSzam'
      end
      object dxDBGrid1FizetesiMod: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FizetesiMod'
      end
      object dxDBGrid1Incoterms1: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Incoterms1'
      end
      object dxDBGrid1Incoterms2: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Incoterms2'
      end
      object dxDBGrid1Penznem: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Penznem'
      end
      object dxDBGrid1Arfolyam: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Arfolyam'
      end
      object dxDBGrid1Szallitas: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Szallitas'
      end
      object dxDBGrid1Csomagolas: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Csomagolas'
      end
      object dxDBGrid1SzerzPot: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SzerzPot%'
      end
      object dxDBGrid1SzerzRab: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SzerzRab'
      end
      object dxDBGrid1SpecKtg1: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SpecKtg1'
      end
      object dxDBGrid1SzerszamKtg: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SzerszamKtg'
      end
      object dxDBGrid1Cikkszam: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Cikkszam'
      end
      object dxDBGrid1Mennyiseg: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Mennyiseg'
      end
      object dxDBGrid1Me: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Me'
      end
      object dxDBGrid1NettoAr: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NettoAr'
      end
      object dxDBGrid1Hataratert: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Hataratert'
      end
      object dxDBGrid1MennyCsok: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MennyCsok'
      end
      object dxDBGrid1Rabat: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Rabat%'
      end
      object dxDBGrid1SpecKtg2: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SpecKtg2'
      end
      object dxDBGrid1SpecCsom: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SpecCsom'
      end
      object dxDBGrid1UgynJut: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UgynJut%'
      end
      object dxDBGrid1Column36: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UgynJut'
      end
      object dxDBGrid1Potlek: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Potlek%'
      end
      object dxDBGrid1KikonyvDat: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KikonyvDat'
      end
      object dxDBGrid1SzamlaDat: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SzamlaDat'
      end
      object dxDBGrid1Kalkulalt: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kalkulalt'
      end
      object dxDBGrid1StndErtek: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StndErtek'
      end
      object dxDBGrid1NettoArbHuf: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NettoArbHuf'
      end
      object dxDBGrid1AnyagNeve: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AnyagNeve'
      end
      object dxDBGrid1Marking: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Marking'
      end
      object dxDBGrid1Standard: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Standard'
      end
      object dxDBGrid1StandardText: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'StandardText'
      end
      object dxDBGrid1TypeOfPacking: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeOfPacking'
      end
      object dxDBGrid1InsideDia: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'InsideDia'
      end
      object dxDBGrid1Length: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Length'
      end
      object dxDBGrid1LengthUnit: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LengthUnit'
      end
      object dxDBGrid1Length2: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Length2'
      end
      object dxDBGrid1TypeOfCoupling1: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeOfCoupling1'
      end
      object dxDBGrid1TypeOfCoupling1Text: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeOfCoupling1Text'
      end
      object dxDBGrid1TypeOfCoupling2: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeOfCoupling2'
      end
      object dxDBGrid1TypeOfCoupling2Text: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeOfCoupling2Text'
      end
      object dxDBGrid1SpecialImportOrder: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SpecialImportOrder'
      end
      object dxDBGrid1PressureCategory: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PressureCategory'
      end
      object dxDBGrid1WorkingPressure: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WorkingPressure'
      end
      object dxDBGrid1WorkingPressureUnit: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'WorkingPressureUnit'
      end
      object dxDBGrid1DesignPressure: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DesignPressure'
      end
      object dxDBGrid1DesignPressureUnit: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DesignPressureUnit'
      end
      object dxDBGrid1TestPressure: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TestPressure'
      end
      object dxDBGrid1TestPressureUnit: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TestPressureUnit'
      end
      object dxDBGrid1SafetyFactor: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SafetyFactor'
      end
      object dxDBGrid1Cover: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Cover'
      end
      object dxDBGrid1OutsideProtection: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OutsideProtection'
      end
      object dxDBGrid1InternalStripwoundTube: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'InternalStripwoundTube'
      end
      object dxDBGrid1TypeOfLining: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TypeOfLining'
      end
      object dxDBGrid1SafetyClamp: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SafetyClamp'
      end
      object dxDBGrid1LiftingCollar: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LiftingCollar'
      end
      object dxDBGrid1ElementC: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ElementC'
      end
      object dxDBGrid1MaxDesignTemperature: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MaxDesignTemperature'
      end
      object dxDBGrid1MinDesignTemperature: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MinDesignTemperature'
      end
      object dxDBGrid1PBLCollarChain: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PBLCollarChain'
      end
      object dxDBGrid1Text1: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Text1'
      end
      object dxDBGrid1Text2: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Text2'
      end
      object dxDBGrid1Text3: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Text3'
      end
      object dxDBGrid1LastUpdate: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LastUpdate'
      end
      object dxDBGrid1OsszetettKulcs: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OsszetettKulcs'
      end
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = 'RendSync.ini'
    IniSection = 'Main'
    StoredValues = <>
    Left = 32
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    Top = 56
    object FullExpand1: TMenuItem
      Caption = 'FullExpand'
      OnClick = FullExpand1Click
    end
    object FullCollapse1: TMenuItem
      Caption = 'FullCollapse'
      OnClick = FullCollapse1Click
    end
    object Oszlopokigaztsa1: TMenuItem
      Caption = 'Oszlopok igazítása'
      OnClick = Oszlopokigaztsa1Click
    end
  end
end
