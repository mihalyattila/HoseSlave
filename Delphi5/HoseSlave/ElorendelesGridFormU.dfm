object ElorendelesGridForm: TElorendelesGridForm
  Left = 285
  Top = 123
  Width = 694
  Height = 540
  BorderStyle = bsSizeToolWin
  Caption = 'El�rendel�s'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ElorendelesCopyGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 678
    Height = 473
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Rendelesszam'
    ShowGroupPanel = True
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    PopupMenu = ElorendelesGridPopupMenu
    TabOrder = 0
    DataSource = OrderDm.dsEbBbOhElorendeles
    Filter.Active = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'ElorendelesCopyGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoExtCustomizing]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoIndicator, edgoUseBitmap]
    ShowHiddenInCustomizeBox = True
    SimpleCustomizeBox = True
    object ElorendelesCopyGridRendelesszam: TdxDBGridMaskColumn
      Caption = 'Rendel�ssz�m'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rendelesszam'
    end
    object ElorendelesCopyGriddb: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'db'
    end
    object ElorendelesCopyGridMegnevezes: TdxDBGridMaskColumn
      Caption = 'Megnevez�s'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object ElorendelesCopyGridRajzszam: TdxDBGridMaskColumn
      Caption = 'Rajzsz�m'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rajzszam'
    end
    object ElorendelesCopyGridMeret: TdxDBGridMaskColumn
      Caption = 'M�ret'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Meret'
    end
    object ElorendelesCopyGridFestes: TdxDBGridMemoColumn
      Caption = 'Fest�s'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Festes'
    end
    object ElorendelesCopyGridEgyediAzonosito: TdxDBGridMemoColumn
      Caption = 'Egyedi azonos�t�'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EgyediAzonosito'
    end
    object ElorendelesCopyGridAr: TdxDBGridMaskColumn
      Caption = '�r'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ar'
    end
    object ElorendelesCopyGridCikkszamVeg: TdxDBGridMaskColumn
      Caption = 'Cikksz�m v�g'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CikkszamVeg'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 473
    Width = 678
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 301
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkCancel
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'ElorendelesGridForm'
    Left = 32
    Top = 72
  end
  object ElorendelesGridPopupMenu: TPopupMenu
    Left = 32
    Top = 104
    object Adatokmsolsaavglapra1: TMenuItem
      Caption = 'Adatok m�sol�sa a v�g�lapra'
      ShortCut = 16451
      OnClick = Adatokmsolsaavglapra1Click
    end
    object Oszlopokigaztsa1: TMenuItem
      Caption = 'Oszlopok igaz�t�sa'
      ShortCut = 16457
      OnClick = Oszlopokigaztsa1Click
    end
    object Mindenoszlopmegjelentse1: TMenuItem
      Caption = 'Minden oszlop megjelen�t�se'
      ShortCut = 16463
      OnClick = Mindenoszlopmegjelentse1Click
    end
  end
end
