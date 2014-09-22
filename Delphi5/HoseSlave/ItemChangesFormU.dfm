object ItemChangesForm: TItemChangesForm
  Left = 172
  Top = 97
  Width = 696
  Height = 480
  BorderStyle = bsSizeToolWin
  Caption = 'Változások'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ItemChangesGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 688
    Height = 417
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Id'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    DataSource = Dm.RendModDs
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'ItemChangesGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object ItemChangesGridRendelesszam: TdxDBGridColumn
      Caption = 'Rendelésszám'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rendelesszam'
    end
    object ItemChangesGridTetelSorszam: TdxDBGridColumn
      Caption = 'Tétel sorszám'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSorszam'
    end
    object ItemChangesGridSorszam: TdxDBGridColumn
      Caption = 'Sorszám'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Sorszam'
    end
    object ItemChangesGridFieldName: TdxDBGridColumn
      Caption = 'Mezõnév'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FieldName'
    end
    object ItemChangesGridOldValue: TdxDBGridColumn
      Caption = 'Régi érték'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OldValue'
    end
    object ItemChangesGridNewValue: TdxDBGridColumn
      Caption = 'Új érték'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NewValue'
    end
    object ItemChangesGridModifierName: TdxDBGridColumn
      Caption = 'Módosította'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifierName'
    end
    object ItemChangesGridModifyDate: TdxDBGridColumn
      Caption = 'Idõpont'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModifyDate'
    end
    object ItemChangesGridId: TdxDBGridColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Id'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 417
    Width = 688
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 296
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkCancel
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'ItemChangesForm'
    Left = 160
    Top = 80
  end
end
