object FindItemForm: TFindItemForm
  Left = 496
  Top = 375
  Width = 696
  Height = 480
  BorderStyle = bsSizeToolWin
  Caption = 'Kor�bbi csomagol�sok keres�se'
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
    Top = 417
    Width = 688
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 144
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 416
      Top = 2
      Width = 75
      Height = 25
      Caption = 'M�gsem'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object FindItemGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 417
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'COLUMN1'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    ParentShowHint = False
    PopupMenu = PopupMenu1
    ShowHint = True
    TabOrder = 1
    DataSource = Dm.PackItemListQryDs
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.CaseInsensitive = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'FindItemGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSmartReload, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object FindItemGridCOLUMN1: TdxDBGridMaskColumn
      Visible = False
      Width = 292
      BandIndex = 0
      RowIndex = 0
      FieldName = 'COLUMN1'
    end
    object FindItemGridPackId: TdxDBGridMaskColumn
      Caption = 'Azonos�t�'
      HeaderAlignment = taCenter
      Sorted = csUp
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackId'
    end
    object FindItemGridPackNum: TdxDBGridMaskColumn
      Caption = 'Csom.sz�m'
      HeaderAlignment = taCenter
      Width = 76
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackNum'
    end
    object FindItemGridPackRevision: TdxDBGridMaskColumn
      Caption = 'Rev�zi�'
      HeaderAlignment = taCenter
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackRevision'
    end
    object FindItemGridPackVersion: TdxDBGridMaskColumn
      Caption = 'Verzi�'
      HeaderAlignment = taCenter
      Width = 52
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackVersion'
    end
    object FindItemGridIdent1: TdxDBGridMaskColumn
      Caption = 'Azonos�t� 1.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ident1'
    end
    object FindItemGridIdent2: TdxDBGridMaskColumn
      Caption = 'Azonos�t� 2.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ident2'
    end
    object FindItemGridName: TdxDBGridMaskColumn
      Caption = 'Megnevez�s'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object FindItemGridOfferPerson: TdxDBGridMaskColumn
      Caption = 'Aj�nlatk�r�'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OfferPerson'
    end
    object FindItemGridNote: TdxDBGridMaskColumn
      Caption = 'Megjegyz�s'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Note'
    end
    object FindItemGridStatuszNev: TdxDBGridMaskColumn
      Caption = '�llapot'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'StatuszNev'
    end
    object FindItemGridCreatorName: TdxDBGridMaskColumn
      Caption = 'K�sz�tette'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatorName'
    end
    object FindItemGridCreateDate: TdxDBGridDateColumn
      Caption = 'K�sz�t�s id�pontja'
      HeaderAlignment = taCenter
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreateDate'
    end
    object FindItemGridPackItemId: TdxDBGridMaskColumn
      Caption = 'Csom.t�telsz�m'
      HeaderAlignment = taCenter
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackItemId'
    end
    object FindItemGridDescription: TdxDBGridMaskColumn
      Caption = 'Specifik�ci�'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Description'
    end
    object FindItemGridPieces: TdxDBGridMaskColumn
      Caption = 'Darabsz�m'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pieces'
    end
    object FindItemGridBodyId: TdxDBGridMaskColumn
      Caption = 'T�ml� bel�tm�r�'
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BodyId'
    end
    object FindItemGridBodyLength: TdxDBGridMaskColumn
      Caption = 'T�ml�hossz'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BodyLength'
    end
    object FindItemGridBodyCode: TdxDBGridMaskColumn
      Caption = 'T�ml� rsz.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BodyCode'
    end
    object FindItemGridBodyName: TdxDBGridMaskColumn
      Caption = 'T�ml� megnevez�s'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BodyName'
    end
    object FindItemGridBodyOd: TdxDBGridMaskColumn
      Caption = 'T�ml� �tm�r�'
      HeaderAlignment = taCenter
      Width = 70
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BodyOd'
    end
    object FindItemGridMBRstorage: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MBRstorage'
    end
    object FindItemGridBodyWeight: TdxDBGridMaskColumn
      Caption = 'M�ters�ly'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BodyWeight'
    end
    object FindItemGridInnerSteel: TdxDBGridCheckColumn
      Caption = 'Bg'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'InnerSteel'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridFireResistant: TdxDBGridCheckColumn
      Caption = 'L�'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FireResistant'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridOuterSteel: TdxDBGridCheckColumn
      Caption = 'Kg'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OuterSteel'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridPa: TdxDBGridCheckColumn
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pa'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridHelix: TdxDBGridCheckColumn
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Helix'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridHeatRaced: TdxDBGridCheckColumn
      Caption = 'F�thet�'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HeatRaced'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridDragChain: TdxDBGridCheckColumn
      Caption = 'Drag Chain'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DragChain'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridLongHose: TdxDBGridCheckColumn
      Caption = 'Nagyhossz�s�g�'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LongHose'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridCouplingExists: TdxDBGridCheckColumn
      Caption = 'Csatlakoz�s'
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingExists'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridCouplingCode1: TdxDBGridMaskColumn
      Caption = 'Csatl.1.rsz.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingCode1'
    end
    object FindItemGridCouplingName1: TdxDBGridMaskColumn
      Caption = 'Csatl.1.n�v'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingName1'
    end
    object FindItemGridCouplingWeight1: TdxDBGridMaskColumn
      Caption = 'Csatl.1.t�meg'
      HeaderAlignment = taCenter
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingWeight1'
    end
    object FindItemGridCouplingOd1: TdxDBGridMaskColumn
      Caption = 'Csatl.1.Od'
      HeaderAlignment = taCenter
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingOd1'
    end
    object FindItemGridOdMax1: TdxDBGridMaskColumn
      Caption = 'Csatl.1.OdMax'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OdMax1'
    end
    object FindItemGridCouplingCode2: TdxDBGridMaskColumn
      Caption = 'Csatl.2.rsz.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingCode2'
    end
    object FindItemGridCouplingName2: TdxDBGridMaskColumn
      Caption = 'Csatl.2.n�v'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingName2'
    end
    object FindItemGridCouplingWeight2: TdxDBGridMaskColumn
      Caption = 'Csatl.2.t�meg'
      HeaderAlignment = taCenter
      Width = 87
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingWeight2'
    end
    object FindItemGridCouplingOd2: TdxDBGridMaskColumn
      Caption = 'Csatl.2.Od'
      HeaderAlignment = taCenter
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CouplingOd2'
    end
    object FindItemGridOdMax2: TdxDBGridMaskColumn
      Caption = 'Csatl.2.OdMax'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OdMax2'
    end
    object FindItemGridLiftingCollarExists: TdxDBGridCheckColumn
      Caption = 'Emel�bilincs'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarExists'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridLiftingCollarName: TdxDBGridMaskColumn
      Caption = 'Em.bil.n�v'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarName'
    end
    object FindItemGridLiftingCollarCode: TdxDBGridMaskColumn
      Caption = 'Em.bil.rsz.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarCode'
    end
    object FindItemGridLiftingCollarId: TdxDBGridMaskColumn
      Caption = 'Em.bil.Id'
      HeaderAlignment = taCenter
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarId'
    end
    object FindItemGridLiftingCollarOd: TdxDBGridMaskColumn
      Caption = 'Em.bil.Od'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarOd'
    end
    object FindItemGridLiftingCollarWeight: TdxDBGridMaskColumn
      Caption = 'Em.bil.t�meg'
      HeaderAlignment = taCenter
      Width = 94
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarWeight'
    end
    object FindItemGridLiftingCollarReinforced: TdxDBGridCheckColumn
      Caption = 'Er�s�tett em.bil.'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarReinforced'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridLiftingCollarPieces: TdxDBGridMaskColumn
      Caption = 'Em.bil.db'
      HeaderAlignment = taCenter
      Width = 92
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LiftingCollarPieces'
    end
    object FindItemGridSafetyClampExists: TdxDBGridCheckColumn
      Caption = 'Bizt.bilincs'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampExists'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridSafetyClampName: TdxDBGridMaskColumn
      Caption = 'Bizt.bil.n�v'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampName'
    end
    object FindItemGridSafetyClampCode: TdxDBGridMaskColumn
      Caption = 'Bizt.bil.rsz.'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampCode'
    end
    object FindItemGridSafetyClampId: TdxDBGridMaskColumn
      Caption = 'Bizt.bil.Id'
      HeaderAlignment = taCenter
      Width = 74
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampId'
    end
    object FindItemGridSafetyClampOd: TdxDBGridMaskColumn
      Caption = 'Bizt.bil.Od'
      HeaderAlignment = taCenter
      Width = 79
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampOd'
    end
    object FindItemGridSafetyClampWeight: TdxDBGridMaskColumn
      Caption = 'Bizt.bil.t�meg'
      HeaderAlignment = taCenter
      Width = 99
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampWeight'
    end
    object FindItemGridSafetyClampPieces: TdxDBGridMaskColumn
      Caption = 'Bizt.bil.db'
      HeaderAlignment = taCenter
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyClampPieces'
    end
    object FindItemGridSafetyChainExists: TdxDBGridCheckColumn
      Caption = 'Bizt.l�nc'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyChainExists'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridSafetyChainWeight: TdxDBGridMaskColumn
      Caption = 'Bizt.l�nc t�meg'
      HeaderAlignment = taCenter
      Width = 97
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SafetyChainWeight'
    end
    object FindItemGridOtherAccExists: TdxDBGridCheckColumn
      Caption = 'Egy�b tartoz�k'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OtherAccExists'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridOtherAccessories: TdxDBGridMaskColumn
      Caption = 'Tartoz�k megnevez�s'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OtherAccessories'
    end
    object FindItemGridOtherAccWeight: TdxDBGridMaskColumn
      Caption = 'Tartoz�k t�meg'
      HeaderAlignment = taCenter
      Width = 85
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OtherAccWeight'
    end
    object FindItemGridSleeveExists: TdxDBGridCheckColumn
      Caption = 'Has�tott h�vely'
      HeaderAlignment = taCenter
      MinWidth = 20
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SleeveExists'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object FindItemGridSumWeight: TdxDBGridMaskColumn
      Caption = '�ssz t�meg'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SumWeight'
    end
    object FindItemGridItemCreatorName: TdxDBGridMaskColumn
      Caption = 'K�sz�tette'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemCreatorName'
    end
    object FindItemGridItemCreateDate: TdxDBGridColumn
      Caption = 'K�sz�t�s id�pontja'
      HeaderAlignment = taCenter
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ItemCreateDate'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'FindItemForm'
    Left = 128
    Top = 104
  end
  object PopupMenu1: TPopupMenu
    Left = 128
    Top = 144
    object Oszlopokigaztsa1: TMenuItem
      Caption = 'Oszlopok igaz�t�sa'
      ShortCut = 16457
      OnClick = Oszlopokigaztsa1Click
    end
  end
end
