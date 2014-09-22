object MainForm: TMainForm
  Left = 362
  Top = 180
  Width = 1256
  Height = 815
  Caption = 'HoseSlave'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Tag = 6000
    Left = 0
    Top = 0
    Width = 1240
    Height = 734
    ActivePage = DataSheetBase
    Align = alClient
    HotTrack = True
    MultiLine = True
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = PageControl1Change
    object AnyagszSheet: TTabSheet
      Tag = 3000
      Caption = 'Anyagszüséglet'
      ImageIndex = 9
      object Splitter13: TSplitter
        Left = 0
        Top = 289
        Width = 1232
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clBtnShadow
        ParentColor = False
      end
      object Splitter17: TSplitter
        Left = 0
        Top = 489
        Width = 1232
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clBtnShadow
        ParentColor = False
      end
      object Panel7: TPanel
        Left = 0
        Top = 677
        Width = 1232
        Height = 29
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
      end
      object Panel10: TPanel
        Left = 0
        Top = 294
        Width = 1232
        Height = 195
        Align = alTop
        TabOrder = 1
        object Panel39: TPanel
          Left = 1
          Top = 1
          Width = 1230
          Height = 16
          Align = alTop
          Caption = 'Számítandó tételek'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object AnyagszTetelGrid: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1230
          Height = 148
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'ItemId'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 1
          DataSource = OrderDm.dsAnyagszTetel
          Filter.Criteria = {00000000}
          IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
          IniSectionName = 'AnyagszTetelGrid'
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          object AnyagszTetelGridId: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Id'
          end
          object AnyagszTetelGridItemId: TdxDBGridMaskColumn
            Caption = 'Id'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ItemId'
          end
          object AnyagszTetelGridRendelesszam: TdxDBGridMaskColumn
            Caption = 'Rendelésszám'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Rendelesszam'
          end
          object AnyagszTetelGridTetelSrsz: TdxDBGridMaskColumn
            Caption = 'Tétel srsz.'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TetelSrsz'
          end
          object AnyagszTetelGridCikkszam: TdxDBGridMaskColumn
            Caption = 'Cikkszám'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Cikkszam'
          end
          object AnyagszTetelGridKonstrukcio: TdxDBGridMaskColumn
            Caption = 'Konstrukció'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Konstrukcio'
          end
          object AnyagszTetelGridAnormaId: TdxDBGridMaskColumn
            Caption = 'Anyganorma sz.'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AnormaId'
          end
          object AnyagszTetelGridHossz: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Hossz'
          end
          object AnyagszTetelGriddb: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'db'
          end
        end
        object Panel77: TPanel
          Left = 1
          Top = 165
          Width = 1230
          Height = 29
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 2
          object BitBtn17: TBitBtn
            Left = 224
            Top = 2
            Width = 153
            Height = 25
            Action = UjAnyagszukseglet
            Caption = 'Új lista'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF0000FF
              FF0000FFFF00FF00FF007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF007F7F
              7F007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF00FF00FF00FF00FF00FF00
              FF0000FFFF000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00000000007F7F7F00FF00FF00FF00FF0000FFFF0000FF
              FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00FF00FF00FF00FF0000FF
              FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
              0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
              FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
              FF000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
              0000FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000FFFF00000000000000000000000000000000000000000000000000FF00
              FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF
              FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00
              FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF0000FFFF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00}
          end
          object DBNavigator6: TDBNavigator
            Left = 2
            Top = 2
            Width = 215
            Height = 25
            DataSource = OrderDm.dsAnyagszTetel
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
            Align = alLeft
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object BitBtn21: TBitBtn
            Left = 384
            Top = 2
            Width = 153
            Height = 25
            Action = SaveAnyagszList
            Caption = 'Anyagsz.lista mentése'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00000000000000
              0000000000000000000000000000000000000000FF000000FF000000FF000000
              FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
              FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
              FF000000FF000000FF000000FF000000FF000000FF000000000000000000FFFF
              FF000000000000000000FFFFFF00000000000000FF000000FF000000FF000000
              FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
              FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
              FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              00000000FF000000FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
              00000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF000000000000000000FFFFFF00000000000000000000000000000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF0000000000BFBFBF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
              000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
          object BitBtn22: TBitBtn
            Left = 544
            Top = 2
            Width = 153
            Height = 25
            Action = OpenAnyagszList
            Caption = 'Anyagsz.lsta behívása'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00000000000000000000000000000000000000000000000000000000000000
              00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              00000000000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
              FF00BFBFBF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FFFFFF000000000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBF
              BF0000FFFF00BFBFBF0000FFFF0000000000FF00FF00FF00FF00FF00FF000000
              000000FFFF00FFFFFF000000000000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
              FF00BFBFBF0000FFFF00BFBFBF0000FFFF0000000000FF00FF00FF00FF000000
              0000FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
              00000000000000000000000000000000000000000000FF00FF00FF00FF000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
              FF0000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
              FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
              000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
              000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F00000000000000000000000000000000007F7F7F00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
          object BitBtn23: TBitBtn
            Left = 704
            Top = 2
            Width = 153
            Height = 25
            Action = CalcAnyagszukseglet
            Caption = 'Anyagsz.számítása'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF007F7F7F000000000000000000000000000000000000000000000000000000
              000000000000000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF000000FF000000
              FF000000FF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
              BF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
              BF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
              BF0000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF0000000000000000000000000000000000000000000000
              000000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00000000000000000000000000FFFF000000000000FFFF
              000000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF0000000000000000000000000000000000000000000000
              000000000000BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
              BF00BFBFBF00BFBFBF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF007F7F7F000000000000000000000000000000000000000000000000000000
              000000000000000000007F7F7F00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1232
        Height = 289
        Align = alTop
        Caption = 'Panel11'
        TabOrder = 2
        object RendAnormaGrid: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1230
          Height = 242
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'RendRogzDatum'
          ShowGroupPanel = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          ParentShowHint = False
          PopupMenu = AnyagGridMenu
          ShowHint = False
          TabOrder = 0
          DataSource = OrderDm.dsRendelesNorma
          Filter.Active = True
          Filter.Criteria = {00000000}
          IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
          IniSectionName = 'RendAnormaGrid'
          OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          OnCustomDrawCell = RendAnormaGridCustomDrawCell
          object RendAnormaGridRendelesAz: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RendelesAz'
          end
          object RendAnormaGridRendSz: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RendSz'
            GroupIndex = 0
          end
          object RendAnormaGridVevo: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Vevo'
          end
          object RendAnormaGridFelhasznalo: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Felhasznalo'
          end
          object RendAnormaGridTetelSrsz: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TetelSrsz'
          end
          object RendAnormaGridCikkszam: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Cikkszam'
          end
          object RendAnormaGridSpecifikacio: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Specifikacio'
          end
          object RendAnormaGridAtmero: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Atmero'
          end
          object RendAnormaGridAtmeroMe: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AtmeroMe'
          end
          object RendAnormaGridHossz: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Hossz'
          end
          object RendAnormaGridHosszMe: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HosszMe'
          end
          object RendAnormaGridDarabszam: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Darabszam'
          end
          object RendAnormaGridTModHatarido: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TModHatarido'
          end
          object RendAnormaGridRendRogzDatum: TdxDBGridDateColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RendRogzDatum'
          end
          object RendAnormaGridAnormaId: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AnormaId'
          end
          object RendAnormaGridKonstrukcioKod: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KonstrukcioKod'
          end
          object RendAnormaGridAnormaKod: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AnormaKod'
          end
          object RendAnormaGridAnormaNev: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AnormaNev'
          end
        end
        object Panel36: TPanel
          Left = 1
          Top = 1
          Width = 1230
          Height = 16
          Align = alTop
          Caption = 'Rendelések'
          Color = clPurple
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel78: TPanel
          Left = 1
          Top = 259
          Width = 1230
          Height = 29
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 2
          object BitBtn20: TBitBtn
            Left = 204
            Top = 2
            Width = 193
            Height = 25
            Action = InsertSelected
            Caption = 'Kivélasztott elem(ek) a listába'
            TabOrder = 0
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
              0000FF000000FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
              FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
          object BitBtn13: TBitBtn
            Left = 4
            Top = 2
            Width = 193
            Height = 25
            Action = OpenOrderQry
            Caption = 'Adatok lekérdezése'
            TabOrder = 1
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF000000FF000000FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF000000FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
              FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000FF000000
              FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF000000
              FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              0000FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF000000FF000000FF00FF00000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
      object Panel41: TPanel
        Left = 0
        Top = 494
        Width = 1232
        Height = 183
        Align = alClient
        TabOrder = 3
        object Panel44: TPanel
          Left = 1
          Top = 1
          Width = 1230
          Height = 16
          Align = alTop
          Caption = 'Anyagszükségelet'
          Color = clLime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object AnyagszuksegletGrid: TdxDBGrid
          Left = 1
          Top = 17
          Width = 1230
          Height = 165
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'x'
          ShowGroupPanel = True
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  ColumnName = 'AnyagszuksegletGridBruttoUzme'
                  SummaryField = 'BruttoUzme'
                  SummaryFormat = ',0.###'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'AnyagszuksegletGridBruttoTomeg'
                  SummaryField = 'BruttoTomeg'
                  SummaryFormat = ',0.###'
                  SummaryType = cstSum
                end>
              Name = 'AnyagszuksegletGridSummaryGroup2'
            end>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = AnyagszGridMenu
          TabOrder = 1
          DataSource = OrderDm.dsMRP
          Filter.Active = True
          Filter.Criteria = {00000000}
          IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
          IniSectionName = 'AnyagszuksegletGrid'
          OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowSelect, edgoUseBitmap]
          ShowRowFooter = True
          object AnyagszuksegletGridx: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'x'
          end
          object AnyagszuksegletGridKeszCikkszam: TdxDBGridMaskColumn
            Caption = 'Készt.cksz.'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'KeszCikkszam'
          end
          object AnyagszuksegletGridRendelesszam: TdxDBGridMaskColumn
            Caption = 'Rendeléssz.'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Rendelesszam'
          end
          object AnyagszuksegletGridTetelSrsz: TdxDBGridMaskColumn
            Caption = 'Tétel srsz.'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TetelSrsz'
          end
          object AnyagszuksegletGridKonstrukcio: TdxDBGridMaskColumn
            Caption = 'Konstrukció'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Konstrukcio'
          end
          object AnyagszuksegletGridAnormaTetelSzam: TdxDBGridMaskColumn
            Caption = 'A.n.tételsz.'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'AnormaTetelSzam'
          end
          object AnyagszuksegletGridTetelNev: TdxDBGridMaskColumn
            Caption = 'Tételnév'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TetelNev'
          end
          object AnyagszuksegletGridCikkszam: TdxDBGridMaskColumn
            Caption = 'Cikkszám'
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Cikkszam'
            GroupIndex = 0
          end
          object AnyagszuksegletGridAnyagnev: TdxDBGridMaskColumn
            Caption = 'Anyagnév'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Anyagnev'
          end
          object AnyagszuksegletGridBruttoUzme: TdxDBGridMaskColumn
            Caption = 'Brutto üzme.'
            Color = clAqua
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BruttoUzme'
            SummaryFooterType = cstSum
            SummaryFooterField = 'BruttoUzme'
            SummaryFooterFormat = ',0.###'
          end
          object AnyagszuksegletGridUzme: TdxDBGridMaskColumn
            Caption = 'üzme.'
            Color = clAqua
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Uzme'
          end
          object AnyagszuksegletGridBruttoTomeg: TdxDBGridMaskColumn
            Caption = 'Brutto tömeg'
            Color = clYellow
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BruttoTomeg'
            SummaryFooterType = cstSum
            SummaryFooterField = 'BruttoTomeg'
            SummaryFooterFormat = ',0.###'
          end
          object AnyagszuksegletGridMe: TdxDBGridMaskColumn
            Caption = 'me'
            Color = clYellow
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Me'
          end
        end
      end
    end
    object PackSheet: TTabSheet
      Tag = 1000
      Caption = 'Csomagolási adatok'
      OnEnter = PackSheetEnter
      OnExit = PackSheetExit
      OnShow = PackSheetShow
      object Splitter2: TSplitter
        Left = 0
        Top = 351
        Width = 1232
        Height = 5
        Cursor = crVSplit
        Align = alTop
        Beveled = True
        Color = clBtnShadow
        ParentColor = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1232
        Height = 351
        Align = alTop
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 2
          Top = 161
          Width = 1228
          Height = 5
          Cursor = crVSplit
          Align = alTop
          Beveled = True
          Color = clBtnShadow
          ParentColor = False
        end
        object Panel4: TPanel
          Left = 2
          Top = 166
          Width = 1228
          Height = 183
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 329
            Top = 2
            Width = 5
            Height = 179
            Cursor = crHSplit
            Beveled = True
            Color = clBtnShadow
            ParentColor = False
          end
          object PackInspector: TdxDBInspector
            Left = 334
            Top = 2
            Width = 892
            Height = 179
            Align = alClient
            Color = clWindow
            DataSource = Dm.PackItemDs
            DefaultFields = False
            TabOrder = 0
            BandWidth = 198
            DividerPos = 103
            GridColor = clBtnFace
            Options = [dioAutoBandCount, dioAutoWidth, dioBandSizing, dioCancelOnExit, dioColumnSizing, dioDynamicColumnSizing, dioEditing]
            PaintStyle = ipsNET
            ShowRowHint = True
            Data = {
              5D080000080000000800000009000000120000005061636B496E73706563746F
              72526F7736300800000000000000130000005061636B496E73706563746F7250
              69656365730800000000000000170000005061636B496E73706563746F72426F
              64794C656E6774680800000000000000120000005061636B496E73706563746F
              72526F7735320800000000000000200000005061636B496E73706563746F724C
              696674696E67436F6C6C617245786973747308000000000000001E0000005061
              636B496E73706563746F72536166657479436C616D7045786973747308000000
              000000001E0000005061636B496E73706563746F72536166657479436861696E
              45786973747308000000000000001B0000005061636B496E73706563746F724F
              7468657241636345786973747308000000000000001900000064784442496E73
              706563746F72536C656576654578697374730800000000000000120000005061
              636B496E73706563746F72526F773530080000000E000000120000005061636B
              496E73706563746F72526F7735330800000000000000120000005061636B496E
              73706563746F72526F7735310800000000000000120000005061636B496E7370
              6563746F72526F7734310800000000000000150000005061636B496E73706563
              746F72426F64794E616D650800000000000000130000005061636B496E737065
              63746F72426F64794F640800000000000000170000005061636B496E73706563
              746F724D425273746F726167650800000000000000170000005061636B496E73
              706563746F72426F64795765696768740800000000000000170000005061636B
              496E73706563746F72496E6E6572537465656C08000000000000001A00000050
              61636B496E73706563746F7246697265526573697374616E7408000000000000
              00170000005061636B496E73706563746F724F75746572537465656C08000000
              000000000F0000005061636B496E73706563746F725061080000000000000012
              0000005061636B496E73706563746F7248656C69780800000000000000160000
              005061636B496E73706563746F72486561745261636564080000000000000016
              0000005061636B496E73706563746F7244726167436861696E08000000000000
              00150000005061636B496E73706563746F724C6F6E67486F7365080000000500
              0000120000005061636B496E73706563746F72526F7735340800000000000000
              120000005061636B496E73706563746F72526F77343408000000000000001A00
              00005061636B496E73706563746F72436F75706C696E674E616D653108000000
              00000000180000005061636B496E73706563746F72436F75706C696E674F6431
              0800000000000000130000005061636B496E73706563746F724F644D61783108
              000000000000001C0000005061636B496E73706563746F72436F75706C696E67
              576569676874310800000005000000120000005061636B496E73706563746F72
              526F7735350800000000000000120000005061636B496E73706563746F72526F
              77343508000000000000001A0000005061636B496E73706563746F72436F7570
              6C696E674E616D65320800000000000000180000005061636B496E7370656374
              6F72436F75706C696E674F64320800000000000000130000005061636B496E73
              706563746F724F644D61783208000000000000001C0000005061636B496E7370
              6563746F72436F75706C696E6757656967687432080000000700000012000000
              5061636B496E73706563746F72526F7735360800000000000000240000005061
              636B496E73706563746F724C696674696E67436F6C6C61725265696E666F7263
              656408000000000000001C0000005061636B496E73706563746F724C69667469
              6E67436F6C6C6172496408000000000000001E0000005061636B496E73706563
              746F724C696674696E67436F6C6C61724E616D65080000000000000012000000
              5061636B496E73706563746F72526F7734370800000000000000120000005061
              636B496E73706563746F72526F7734380800000000000000200000005061636B
              496E73706563746F724C696674696E67436F6C6C617257656967687408000000
              00000000200000005061636B496E73706563746F724C696674696E67436F6C6C
              61725069656365730800000006000000120000005061636B496E73706563746F
              72526F77353708000000000000001A0000005061636B496E73706563746F7253
              6166657479436C616D70496408000000000000001C0000005061636B496E7370
              6563746F72536166657479436C616D704E616D65080000000000000012000000
              5061636B496E73706563746F72526F7734360800000000000000120000005061
              636B496E73706563746F72526F77343908000000000000001E0000005061636B
              496E73706563746F72536166657479436C616D70576569676874080000000000
              00001E0000005061636B496E73706563746F72536166657479436C616D705069
              656365730800000003000000120000005061636B496E73706563746F72526F77
              353808000000000000001E0000005061636B496E73706563746F725361666574
              79436861696E57656967687408000000000000001D0000005061636B496E7370
              6563746F724F746865724163636573736F7269657308000000000000001B0000
              005061636B496E73706563746F724F7468657241636357656967687408000000
              02000000120000005061636B496E73706563746F72526F773539080000000000
              0000180000005061636B496E73706563746F7243726561746F724E616D650800
              000000000000170000005061636B496E73706563746F72437265617465446174
              65020000000800000048B26A06120000005061636B496E73706563746F72526F
              77363008000000D8B86A06120000005061636B496E73706563746F72526F7735
              33}
            object PackInspectorPieces: TdxInspectorDBMaskRow
              Caption = 'Db'
              FieldName = 'Pieces'
            end
            object PackInspectorBodyLength: TdxInspectorDBMaskRow
              Caption = 'Tömlõ hossz'
              FieldName = 'BodyLength'
            end
            object PackInspectorBodyOd: TdxInspectorDBMaskRow
              Caption = 'Tömlõtest OD'
              FieldName = 'BodyOd'
            end
            object PackInspectorMBRstorage: TdxInspectorDBMaskRow
              Caption = 'Hajlítási sug.'
              FieldName = 'MBRstorage'
            end
            object PackInspectorBodyWeight: TdxInspectorDBMaskRow
              Caption = 'Métersúly'
              FieldName = 'BodyWeight'
            end
            object PackInspectorInnerSteel: TdxInspectorDBCheckRow
              Caption = 'Belsõ gégecsõ'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'InnerSteel'
            end
            object PackInspectorFireResistant: TdxInspectorDBCheckRow
              Caption = 'Lángálló'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'FireResistant'
            end
            object PackInspectorOuterSteel: TdxInspectorDBCheckRow
              Caption = 'Külsõ gégecsõ'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'OuterSteel'
            end
            object PackInspectorPa: TdxInspectorDBCheckRow
              Caption = 'Poliamid'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'Pa'
            end
            object PackInspectorHelix: TdxInspectorDBCheckRow
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'Helix'
            end
            object PackInspectorHeatRaced: TdxInspectorDBCheckRow
              Caption = 'Fûthetõ'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'HeatRaced'
            end
            object PackInspectorDragChain: TdxInspectorDBCheckRow
              Caption = 'Drag Chain'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'DragChain'
            end
            object PackInspectorLongHose: TdxInspectorDBCheckRow
              Caption = 'Nagyhosszúságú'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'LongHose'
            end
            object PackInspectorCouplingWeight1: TdxInspectorDBMaskRow
              Caption = 'Tömeg'
              FieldName = 'CouplingWeight1'
            end
            object PackInspectorCouplingOd1: TdxInspectorDBMaskRow
              Caption = 'OD'
              FieldName = 'CouplingOd1'
            end
            object PackInspectorOdMax1: TdxInspectorDBMaskRow
              Caption = 'Max.OD'
              FieldName = 'OdMax1'
            end
            object PackInspectorCouplingName2: TdxInspectorDBMaskRow
              Caption = 'Megnevezés'
              FieldName = 'CouplingName2'
            end
            object PackInspectorCouplingWeight2: TdxInspectorDBMaskRow
              Caption = 'Tömeg'
              FieldName = 'CouplingWeight2'
            end
            object PackInspectorCouplingOd2: TdxInspectorDBMaskRow
              Caption = 'OD'
              FieldName = 'CouplingOd2'
            end
            object PackInspectorOdMax2: TdxInspectorDBMaskRow
              Caption = 'Max.OD'
              FieldName = 'OdMax2'
            end
            object PackInspectorLiftingCollarExists: TdxInspectorDBCheckRow
              Caption = 'Van emelõbilincs'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'LiftingCollarExists'
            end
            object PackInspectorLiftingCollarName: TdxInspectorDBMaskRow
              Caption = 'Megnevezés'
              FieldName = 'LiftingCollarName'
            end
            object PackInspectorLiftingCollarWeight: TdxInspectorDBMaskRow
              Caption = 'Tömeg'
              FieldName = 'LiftingCollarWeight'
            end
            object PackInspectorLiftingCollarReinforced: TdxInspectorDBCheckRow
              Caption = 'Erõsített'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'LiftingCollarReinforced'
            end
            object PackInspectorLiftingCollarPieces: TdxInspectorDBMaskRow
              Caption = 'Darabszám'
              FieldName = 'LiftingCollarPieces'
            end
            object PackInspectorSafetyClampExists: TdxInspectorDBCheckRow
              Caption = 'Van bizt.bilincs'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'SafetyClampExists'
            end
            object PackInspectorSafetyClampName: TdxInspectorDBMaskRow
              Caption = 'Megnevezés'
              FieldName = 'SafetyClampName'
            end
            object PackInspectorSafetyClampWeight: TdxInspectorDBMaskRow
              Caption = 'Tömeg'
              FieldName = 'SafetyClampWeight'
            end
            object PackInspectorSafetyClampPieces: TdxInspectorDBMaskRow
              Caption = 'Darabszám'
              FieldName = 'SafetyClampPieces'
            end
            object PackInspectorSafetyChainExists: TdxInspectorDBCheckRow
              Caption = 'Van bizt.lánc'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'SafetyChainExists'
            end
            object PackInspectorSafetyChainWeight: TdxInspectorDBMaskRow
              Caption = 'Bizt.lánc tömeg'
              FieldName = 'SafetyChainWeight'
            end
            object PackInspectorOtherAccExists: TdxInspectorDBCheckRow
              Caption = 'Van egyéb tartozék'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'OtherAccExists'
            end
            object PackInspectorOtherAccessories: TdxInspectorDBMaskRow
              Caption = 'Egyéb tart.megn.'
              FieldName = 'OtherAccessories'
            end
            object PackInspectorOtherAccWeight: TdxInspectorDBMaskRow
              Caption = 'Egyéb tart.tömeg'
              FieldName = 'OtherAccWeight'
            end
            object PackInspectorCreatorName: TdxInspectorDBMaskRow
              Caption = 'Készítette'
              ReadOnly = True
              FieldName = 'CreatorName'
            end
            object PackInspectorCreateDate: TdxInspectorDBMaskRow
              Caption = 'Készítés idõpontja'
              ReadOnly = True
              FieldName = 'CreateDate'
            end
            object PackInspectorRow41: TdxInspectorDBButtonRow
              Caption = 'Konstrukció'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = PackInspectorRow41ButtonClick
              FieldName = 'BodyCode'
            end
            object PackInspectorBodyName: TdxInspectorDBMaskRow
              Caption = 'Megnevezés'
              FieldName = 'BodyName'
            end
            object PackInspectorRow44: TdxInspectorDBButtonRow
              Caption = 'Rajzszám'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = PackInspectorRow44ButtonClick
              FieldName = 'CouplingCode1'
            end
            object PackInspectorRow45: TdxInspectorDBButtonRow
              Caption = 'Rajzszám'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = PackInspectorRow45ButtonClick
              FieldName = 'CouplingCode2'
            end
            object PackInspectorLiftingCollarId: TdxInspectorDBButtonRow
              Caption = 'Rajzszám'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = PackInspectorLiftingCollarIdButtonClick
              FieldName = 'LiftingCollarCode'
            end
            object PackInspectorSafetyClampId: TdxInspectorDBButtonRow
              Caption = 'Rajzszám'
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = PackInspectorSafetyClampIdButtonClick
              FieldName = 'SafetyClampCode'
            end
            object PackInspectorRow46: TdxInspectorDBMaskRow
              Caption = 'ID'
              FieldName = 'SafetyClampId'
            end
            object PackInspectorRow47: TdxInspectorDBMaskRow
              Caption = 'ID'
              FieldName = 'LiftingCollarId'
            end
            object PackInspectorRow48: TdxInspectorDBMaskRow
              Caption = 'OD'
              FieldName = 'LiftingCollarOd'
            end
            object PackInspectorRow49: TdxInspectorDBMaskRow
              Caption = 'OD'
              FieldName = 'SafetyClampOd'
            end
            object PackInspectorRow50: TdxInspectorDBMaskRow
              Caption = 'Össztömeg'
              ReadOnly = True
              FieldName = 'summa'
            end
            object dxDBInspectorSleeveExists: TdxInspectorDBCheckRow
              Caption = 'Osztott hüvely'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'SleeveExists'
            end
            object PackInspectorRow51: TdxInspectorDBMaskRow
              Caption = 'Tömlõtest ID'
              FieldName = 'BodyId'
            end
            object PackInspectorRow52: TdxInspectorDBCheckRow
              Caption = 'Csatlakozós tömlõ'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              FieldName = 'CouplingExists'
            end
            object PackInspectorCouplingName1: TdxInspectorDBMaskRow
              Caption = 'Megnevezés'
              FieldName = 'CouplingName1'
            end
            object PackInspectorRow53: TdxInspectorComplexRow
              Caption = 'Tömlõtest'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow54: TdxInspectorComplexRow
              Caption = 'Csatlakozó "A"'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow55: TdxInspectorComplexRow
              Caption = 'Csatlakozó "B"'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow56: TdxInspectorComplexRow
              Caption = 'Emelõbilincs'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow57: TdxInspectorComplexRow
              Caption = 'Biztonsági bilincs'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow58: TdxInspectorComplexRow
              Caption = 'Tartozékok'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow59: TdxInspectorComplexRow
              Caption = 'Kezelési adatok'
              IsCategory = True
              Items = <>
            end
            object PackInspectorRow60: TdxInspectorComplexRow
              Caption = 'Alapadatok'
              IsCategory = True
              Items = <>
            end
          end
          object Panel2: TPanel
            Left = 2
            Top = 2
            Width = 327
            Height = 179
            Align = alLeft
            TabOrder = 1
            object PackItemsGrid: TdxDBGrid
              Left = 1
              Top = 1
              Width = 325
              Height = 151
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'PackItemId'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              DragMode = dmAutomatic
              TabOrder = 0
              OnEndDrag = PackItemsGridEndDrag
              OnStartDrag = PackItemsGridStartDrag
              DataSource = Dm.PackItemDs
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'PackItemsGrid'
              OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              object PackItemsGridPackId: TdxDBGridMaskColumn
                Visible = False
                Width = 63
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PackId'
              end
              object PackItemsGridPackItemId: TdxDBGridMaskColumn
                Caption = 'Sorszám'
                HeaderAlignment = taCenter
                ReadOnly = True
                Sorted = csUp
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PackItemId'
              end
              object PackItemsGridDescription: TdxDBGridMaskColumn
                Caption = 'Specifikáció'
                HeaderAlignment = taCenter
                Width = 200
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Description'
              end
            end
            object ToolBar7: TToolBar
              Left = 1
              Top = 152
              Width = 325
              Height = 26
              Align = alBottom
              ButtonHeight = 24
              Caption = 'ToolBar7'
              Flat = True
              Images = ImageList1
              TabOrder = 1
              object DBNavigator1: TDBNavigator
                Left = 0
                Top = 0
                Width = 209
                Height = 24
                DataSource = Dm.PackItemDs
                Align = alLeft
                Flat = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object ToolButton44: TToolButton
                Left = 209
                Top = 0
                Width = 21
                Caption = 'ToolButton44'
                ImageIndex = 1
                Style = tbsSeparator
              end
              object ToolButton43: TToolButton
                Left = 230
                Top = 0
                Action = PackItemQuery
                ParentShowHint = False
                ShowHint = True
              end
            end
          end
        end
        object Panel5: TPanel
          Left = 2
          Top = 2
          Width = 1228
          Height = 159
          Align = alTop
          TabOrder = 1
          object PackHeadGrid: TdxDBGrid
            Left = 1
            Top = 1
            Width = 1226
            Height = 131
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'PackId'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            DataSource = Dm.PackHeadDs
            Filter.Active = True
            Filter.CaseInsensitive = True
            Filter.MaxDropDownCount = 2000
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'PackHeadGrid'
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object PackHeadGridPackId: TdxDBGridColumn
              Color = clSilver
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackId'
            end
            object PackHeadGridPackNum: TdxDBGridMaskColumn
              Caption = 'Csom.száma'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackNum'
            end
            object PackHeadGridPackRevision: TdxDBGridMaskColumn
              Caption = 'Revízió'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackRevision'
            end
            object PackHeadGridPackVersion: TdxDBGridMaskColumn
              Caption = 'Verzió'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackVersion'
            end
            object PackHeadGridIdent1: TdxDBGridMaskColumn
              Caption = 'Azonosító 1.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Ident1'
            end
            object PackHeadGridIdent2: TdxDBGridMaskColumn
              Caption = 'Azonosító 2.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Ident2'
            end
            object PackHeadGridName: TdxDBGridMaskColumn
              Caption = 'Megnevezés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Name'
            end
            object PackHeadGridOfferPerson: TdxDBGridMaskColumn
              Caption = 'Ajánlatkérõ'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OfferPerson'
            end
            object PackHeadGridNote: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Note'
            end
            object PackHeadGridStatus: TdxDBGridMaskColumn
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Status'
            end
            object PackHeadGridStatusName: TdxDBGridLookupColumn
              Caption = 'Status'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'StatusName'
            end
            object PackHeadGridCreatorName: TdxDBGridColumn
              Caption = 'Készítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CreatorName'
            end
            object PackHeadGridCreateDate: TdxDBGridColumn
              Caption = 'Készítés idõpontja'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CreateDate'
            end
          end
          object ToolBar6: TToolBar
            Left = 1
            Top = 132
            Width = 1226
            Height = 26
            Align = alBottom
            AutoSize = True
            ButtonHeight = 24
            Caption = 'ToolBar6'
            Flat = True
            Images = ImageList1
            TabOrder = 1
            object DBNavigator4: TDBNavigator
              Left = 0
              Top = 0
              Width = 223
              Height = 24
              DataSource = Dm.PackHeadDs
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel]
              Align = alLeft
              Flat = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object ToolButton39: TToolButton
              Left = 223
              Top = 0
              Width = 21
              Caption = 'ToolButton39'
              ImageIndex = 1
              Style = tbsSeparator
            end
            object ToolButton38: TToolButton
              Left = 244
              Top = 0
              Action = PackRefresh
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton41: TToolButton
              Left = 267
              Top = 0
              Action = PackQuery
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton42: TToolButton
              Left = 290
              Top = 0
              Action = SetPackColWidth
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton40: TToolButton
              Left = 313
              Top = 0
              Width = 21
              Caption = 'ToolButton40'
              ImageIndex = 29
              Style = tbsSeparator
            end
            object ToolButton20: TToolButton
              Left = 334
              Top = 0
              Action = AddPackBmk
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton23: TToolButton
              Left = 357
              Top = 0
              Action = ShowPackBmkList
              ParentShowHint = False
              ShowHint = True
            end
            object ToolButton22: TToolButton
              Left = 380
              Top = 0
              Width = 20
              Caption = 'ToolButton22'
              ImageIndex = 15
              Style = tbsSeparator
            end
            object BitBtn3: TBitBtn
              Left = 400
              Top = 0
              Width = 83
              Height = 24
              Action = NewPack
              Caption = 'Új csomagolás'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
            end
            object BitBtn9: TBitBtn
              Left = 483
              Top = 0
              Width = 83
              Height = 24
              Action = NewPackRev
              Caption = 'Új revízió'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 2
            end
            object BitBtn10: TBitBtn
              Left = 566
              Top = 0
              Width = 83
              Height = 24
              Action = NewPackVer
              Caption = 'Új verzió'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
            end
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 356
        Width = 1232
        Height = 350
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        object Splitter4: TSplitter
          Left = 841
          Top = 2
          Width = 5
          Height = 346
          Cursor = crHSplit
          Beveled = True
          Color = clBtnShadow
          ParentColor = False
        end
        object Panel6: TPanel
          Left = 2
          Top = 2
          Width = 839
          Height = 346
          Align = alLeft
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 0
          object dxDBGrid3: TdxDBGrid
            Left = 2
            Top = 2
            Width = 835
            Height = 316
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'PackageId'
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            DataSource = Dm.PackagesDs
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'Packages'
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid3PackageId: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackageId'
            end
            object dxDBGrid3PackId: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackId'
            end
            object dxDBGrid3PackDevTypeCode: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackDevTypeCode'
            end
            object dxDBGrid3PackDevTypeName: TdxDBGridButtonColumn
              Caption = 'Csom.eszk.tip.'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackDevTypeName'
              ShowButtonStyle = sbAlways
              Buttons = <
                item
                  Default = True
                end>
              OnButtonClick = dxDBGrid3PackDevTypeNameButtonClick
            end
            object dxDBGrid3PackDevCode: TdxDBGridMaskColumn
              Caption = 'Eszk.kód'
              HeaderAlignment = taCenter
              Visible = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackDevCode'
            end
            object dxDBGrid3PackDevName: TdxDBGridMaskColumn
              Caption = 'Csom.eszköz név'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackDevName'
            end
            object dxDBGrid3PackDevNum: TdxDBGridMaskColumn
              Caption = 'db'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackDevNum'
              SummaryFooterType = cstSum
              SummaryFooterField = 'PackDevNum'
              SummaryFooterFormat = '#'
            end
            object dxDBGrid3Dim1: TdxDBGridMaskColumn
              Caption = 'méret 1'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Dim1'
            end
            object dxDBGrid3Dim2: TdxDBGridMaskColumn
              Caption = 'méret 2'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Dim2'
            end
            object dxDBGrid3Dim3: TdxDBGridMaskColumn
              Caption = 'méret 3'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Dim3'
            end
            object dxDBGrid3Weight: TdxDBGridMaskColumn
              Caption = 'Tömeg/db'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Weight'
            end
            object dxDBGrid3SumWeight: TdxDBGridColumn
              Caption = 'Össz.tömeg'
              HeaderAlignment = taCenter
              Visible = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SumWeight'
            end
            object dxDBGrid3sWeight: TdxDBGridMaskColumn
              Caption = 'Össz.tömeg'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'sWeight'
              SummaryFooterType = cstSum
              SummaryFooterField = 'sWeight'
              SummaryFooterFormat = ',#.##'
            end
            object dxDBGrid3Price: TdxDBGridMaskColumn
              Caption = 'Költség'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Price'
            end
            object dxDBGrid3SumPrice: TdxDBGridMaskColumn
              Caption = 'Össz.költs.'
              HeaderAlignment = taCenter
              Visible = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SumPrice'
            end
            object dxDBGrid3sPrice: TdxDBGridMaskColumn
              Caption = 'Össz.költs.'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'sPrice'
              SummaryFooterType = cstSum
              SummaryFooterField = 'sPrice'
              SummaryFooterFormat = ',#'
            end
            object dxDBGrid3CurrencyName: TdxDBGridLookupColumn
              Caption = 'Pénznem'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CurrencyName'
            end
            object dxDBGrid3Note: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Note'
            end
            object dxDBGrid3CreatorName: TdxDBGridColumn
              Caption = 'Rögzítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CreatorName'
            end
            object dxDBGrid3CreateDate: TdxDBGridColumn
              Caption = 'Idõpont'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CreateDate'
            end
          end
          object ToolBar8: TToolBar
            Left = 2
            Top = 318
            Width = 835
            Height = 26
            Align = alBottom
            AutoSize = True
            ButtonHeight = 24
            Caption = 'ToolBar8'
            Flat = True
            Images = ImageList1
            TabOrder = 1
            object DBNavigator2: TDBNavigator
              Left = 0
              Top = 0
              Width = 240
              Height = 24
              DataSource = Dm.PackagesDs
              Align = alLeft
              Flat = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object ToolButton46: TToolButton
              Left = 240
              Top = 0
              Width = 21
              Caption = 'ToolButton46'
              ImageIndex = 1
              Style = tbsSeparator
            end
            object ToolButton45: TToolButton
              Left = 261
              Top = 0
              Action = ShowPackReport
              ParentShowHint = False
              ShowHint = True
            end
          end
        end
        object Panel8: TPanel
          Left = 846
          Top = 2
          Width = 384
          Height = 346
          Align = alClient
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 1
          object Panel9: TPanel
            Left = 2
            Top = 318
            Width = 380
            Height = 26
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object DBNavigator3: TDBNavigator
              Left = 2
              Top = 2
              Width = 240
              Height = 22
              DataSource = Dm.PackDevAssignDs
              Align = alLeft
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object PackItemGrid: TdxDBGrid
            Left = 2
            Top = 2
            Width = 380
            Height = 316
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'PackItemId'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            DragMode = dmAutomatic
            TabOrder = 1
            OnDragDrop = PackItemGridDragDrop
            OnDragOver = PackItemGridDragOver
            DataSource = Dm.PackDevAssignDs
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'PackItemGrid'
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object PackItemGridPackId: TdxDBGridMaskColumn
              Visible = False
              Width = 106
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackId'
            end
            object PackItemGridPackItemId: TdxDBGridMaskColumn
              Visible = False
              Width = 106
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackItemId'
            end
            object PackItemGridPackageId: TdxDBGridMaskColumn
              Visible = False
              Width = 106
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PackageId'
            end
            object PackItemGridDescription: TdxDBGridColumn
              Caption = 'Specifikáció'
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 195
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Description'
            end
            object PackItemGridPieces: TdxDBGridMaskColumn
              Caption = 'Darabszám'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Pieces'
            end
            object PackItemGridWeight: TdxDBGridMaskColumn
              Caption = 'Tömeg'
              HeaderAlignment = taCenter
              Width = 66
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Weight'
            end
          end
        end
      end
    end
    object MfCkszSheet: TTabSheet
      Tag = 2000
      Caption = 'Mf cikkszámok'
      ImageIndex = 1
      OnShow = MfCkszSheetShow
      object Splitter18: TSplitter
        Left = 1037
        Top = 0
        Width = 3
        Height = 679
        Cursor = crHSplit
        Align = alRight
        Beveled = True
        MinSize = 10
      end
      object MfCkszGrid: TdxDBGrid
        Left = 0
        Top = 0
        Width = 1037
        Height = 679
        Bands = <
          item
          end>
        DefaultLayout = False
        HeaderPanelRowCount = 1
        KeyField = 'ItemId'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        PopupMenu = MfCkszMenu
        TabOrder = 0
        DataSource = Dm.MfCikkszamokDs
        Filter.Active = True
        Filter.MaxDropDownCount = 20000
        Filter.Criteria = {00000000}
        IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
        IniSectionName = 'MfCkszGrid'
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMouseScroll, edgoMultiSort, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        OnChangeNodeEx = MfCkszGridChangeNodeEx
        OnCustomDrawCell = MfCkszGridCustomDrawCell
        object MfCkszGridJelzesNev: TdxDBGridLookupColumn
          Caption = 'Jelzés'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JelzesNev'
          DropDownRows = 10
        end
        object MfCkszGridPrDatum: TdxDBGridDateColumn
          Caption = 'Dbj.dátum'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PrDatum'
        end
        object MfCkszGridMtKeszDatum: TdxDBGridDateColumn
          Caption = 'Mt.kész dátum'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MtKeszDatum'
        end
        object MfCkszGridRegiCksz: TdxDBGridMaskColumn
          Caption = 'Régi cikksz.'
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RegiCksz'
        end
        object MfCkszGridSAPCksz: TdxDBGridMaskColumn
          Caption = 'SAP cikksz.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SAPCksz'
        end
        object MfCkszGridMtFelkeszDatum: TdxDBGridDateColumn
          Caption = 'Mt.félkész dátum'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MtFelkeszDatum'
        end
        object MfCkszGridNev: TdxDBGridMaskColumn
          Caption = 'Megnevezés'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Nev'
        end
        object MfCkszGridHossz: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Hossz'
        end
        object MfCkszGridFelkesz5: TdxDBGridMaskColumn
          Caption = 'Félkész (5.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Felkesz5'
        end
        object MfCkszGridVulk5: TdxDBGridMaskColumn
          Caption = 'Tömlõtest (5.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vulk5'
        end
        object MfCkszGridTomloveg5: TdxDBGridMaskColumn
          Caption = 'Tömlõvég (5.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tomloveg5'
        end
        object MfCkszGridFelkesz6: TdxDBGridMaskColumn
          Caption = 'Félkész (6.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Felkesz6'
        end
        object MfCkszGridVulk6: TdxDBGridMaskColumn
          Caption = 'Tömlõtest (6.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vulk6'
        end
        object MfCkszGridTomloveg6: TdxDBGridMaskColumn
          Caption = 'Tömlõvég (6.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tomloveg6'
        end
        object MfCkszGridFelkesz7: TdxDBGridMaskColumn
          Caption = 'Félkész (7.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Felkesz7'
        end
        object MfCkszGridVulk7: TdxDBGridMaskColumn
          Caption = 'Tömlõtest (7.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vulk7'
        end
        object MfCkszGridTomloveg7: TdxDBGridMaskColumn
          Caption = 'Tömlõvég (7.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tomloveg7'
        end
        object MfCkszGridFelkesz9: TdxDBGridMaskColumn
          Caption = 'Félkész (9.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Felkesz9'
        end
        object MfCkszGridVulk9: TdxDBGridMaskColumn
          Caption = 'Tömlõtest (9.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Vulk9'
        end
        object MfCkszGridTomloveg9: TdxDBGridMaskColumn
          Caption = 'Tömlõvég (9.hajó)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Tomloveg9'
        end
        object MfCkszGridMuszJell: TdxDBGridMaskColumn
          Caption = 'Mûsz.jell.'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MuszJell'
        end
        object MfCkszGridKonstr: TdxDBGridMaskColumn
          Caption = 'Konstr.lsz.'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Konstr'
        end
        object MfCkszGridKsz: TdxDBGridMaskColumn
          Caption = 'Rendelésszám'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Ksz'
        end
        object MfCkszGridAsz: TdxDBGridMaskColumn
          Caption = 'Átvételi sz.'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Asz'
        end
        object MfCkszGridMtfKesz: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MtfKesz'
        end
        object MfCkszGridMegjegyzes: TdxDBGridMaskColumn
          Caption = 'Megjegyzés'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Megjegyzes'
        end
        object MfCkszGridMtfFelkesz: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MtfFelkesz'
        end
        object MfCkszGridKeszitette: TdxDBGridColumn
          Caption = 'Rögzítette'
          Color = clSilver
          HeaderAlignment = taCenter
          ReadOnly = True
          TabStop = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Keszitette'
        end
        object MfCkszGridKeszitesDatuma: TdxDBGridColumn
          Caption = 'Rögz.idõpont'
          Color = clSilver
          HeaderAlignment = taCenter
          ReadOnly = True
          TabStop = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'KeszitesDatuma'
        end
        object MfCkszGridModositotta: TdxDBGridColumn
          Caption = 'Módosította'
          Color = clSilver
          HeaderAlignment = taCenter
          ReadOnly = True
          TabStop = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Modositotta'
        end
        object MfCkszGridModositasDatuma: TdxDBGridColumn
          Caption = 'Mód.idõpont'
          Color = clSilver
          HeaderAlignment = taCenter
          ReadOnly = True
          TabStop = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ModositasDatuma'
        end
        object MfCkszGridSzin: TdxDBGridLookupColumn
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Szin'
        end
        object MfCkszGridJelzesKod: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JelzesKod'
        end
        object MfCkszGridItemId: TdxDBGridMaskColumn
          Caption = 'Id'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HeaderAlignment = taCenter
          ReadOnly = True
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ItemId'
        end
        object MfCkszGridNorma: TdxDBGridCheckColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Norma'
          ShowNullFieldStyle = nsInactive
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object MfCkszGridSAP: TdxDBGridCheckColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SAP'
          ShowNullFieldStyle = nsInactive
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object MfCkszGridTBP: TdxDBGridCheckColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TBP'
          ShowNullFieldStyle = nsInactive
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object MfCkszGridGraf: TdxDBGridCheckColumn
          Caption = 'Gráf'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Graf'
          ShowNullFieldStyle = nsInactive
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object MfCkszGridTorzslap: TdxDBGridCheckColumn
          Caption = 'Törzslap'
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Torzslap'
          ShowNullFieldStyle = nsInactive
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object MfCkszGridDarabjegyzek: TdxDBGridCheckColumn
          Caption = 'Darabjegyzék'
          HeaderAlignment = taCenter
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Darabjegyzek'
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object ToolBar5: TToolBar
        Left = 0
        Top = 679
        Width = 1232
        Height = 27
        Align = alBottom
        AutoSize = True
        ButtonHeight = 25
        Caption = 'ToolBar5'
        Flat = True
        Images = ImageList1
        TabOrder = 1
        object DBNavigator5: TDBNavigator
          Left = 0
          Top = 0
          Width = 215
          Height = 25
          DataSource = Dm.MfCikkszamokDs
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
          Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object ToolButton33: TToolButton
          Left = 215
          Top = 0
          Width = 8
          Caption = 'ToolButton33'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object ToolButton32: TToolButton
          Left = 223
          Top = 0
          Action = MfCkszRefresh
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton34: TToolButton
          Left = 246
          Top = 0
          Width = 8
          Caption = 'ToolButton34'
          ImageIndex = 29
          Style = tbsSeparator
        end
        object ToolButton36: TToolButton
          Left = 254
          Top = 0
          Action = SetMfCkszColWidth
          ParentShowHint = False
          ShowHint = True
        end
        object ToolButton37: TToolButton
          Left = 277
          Top = 0
          Width = 21
          Caption = 'ToolButton37'
          ImageIndex = 31
          Style = tbsSeparator
        end
        object MfCkszSaveBtn: TBitBtn
          Left = 298
          Top = 0
          Width = 145
          Height = 25
          Action = SaveMfData
          Caption = 'Változások mentése'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00007F7F7F007F7F7F0000000000000000007F7F7F000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            000000000000000000007F7F7F007F7F7F0000FFFF000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            000000000000000000007F7F7F0000FFFF0000FFFF000000000000000000FFFF
            FF000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
            000000000000000000000000FF0000000000000000007F7F7F0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
            00000000FF000000FF000000FF000000FF000000FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
            FF000000000000000000FFFFFF00000000000000000000000000000000000000
            0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000BFBFBF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
            FF007F7F7F000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF000000FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00000000000000
            000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object ToolButton35: TToolButton
          Left = 443
          Top = 0
          Width = 8
          Caption = 'ToolButton35'
          ImageIndex = 30
          Style = tbsSeparator
        end
        object MfCkszUndoBtn: TBitBtn
          Left = 451
          Top = 0
          Width = 145
          Height = 25
          Action = UndoMfData
          Caption = 'Vált.visszavonása'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF000000
            FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF000000FF000000
            FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF00FF00FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
            FF000000FF00FF00FF00FF00FF000000FF000000FF00FF00FF00FF00FF000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF000000FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF000000FF000000
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object ToolButton54: TToolButton
          Left = 596
          Top = 0
          Width = 21
          Caption = 'ToolButton54'
          ImageIndex = 31
          Style = tbsSeparator
        end
        object ToolButton53: TToolButton
          Left = 617
          Top = 0
          Action = Jump2DataSheet
          ParentShowHint = False
          ShowHint = True
        end
      end
      object Panel80: TPanel
        Left = 1040
        Top = 0
        Width = 192
        Height = 679
        Align = alRight
        BorderWidth = 2
        TabOrder = 2
        object MfCkszInspector: TdxDBInspector
          Left = 3
          Top = 3
          Width = 186
          Height = 673
          Align = alClient
          DataSource = Dm.MfCikkszamokDs
          DefaultFields = False
          TabOrder = 0
          DividerPos = 93
          Options = [dioAutoWidth, dioBandSizing, dioCancelOnExit, dioColumnSizing, dioDynamicColumnSizing, dioEditing, dioEnterThrough]
          ShowRowHint = True
          Data = {
            25050000260000000800000000000000150000004D66436B737A496E73706563
            746F724974656D49640800000000000000160000004D66436B737A496E737065
            63746F725072446174756D08000000000000001A0000004D66436B737A496E73
            706563746F724D744B65737A446174756D0800000000000000170000004D6643
            6B737A496E73706563746F7252656769436B737A080000000000000016000000
            4D66436B737A496E73706563746F72534150436B737A08000000000000001D00
            00004D66436B737A496E73706563746F724D7446656C6B65737A446174756D08
            00000000000000120000004D66436B737A496E73706563746F724E6576080000
            0000000000140000004D66436B737A496E73706563746F72486F73737A080000
            0000000000170000004D66436B737A496E73706563746F7246656C6B65737A35
            0800000000000000140000004D66436B737A496E73706563746F7256756C6B35
            0800000000000000180000004D66436B737A496E73706563746F72546F6D6C6F
            766567350800000000000000170000004D66436B737A496E73706563746F7246
            656C6B65737A360800000000000000140000004D66436B737A496E7370656374
            6F7256756C6B360800000000000000180000004D66436B737A496E7370656374
            6F72546F6D6C6F766567360800000000000000170000004D66436B737A496E73
            706563746F7246656C6B65737A370800000000000000140000004D66436B737A
            496E73706563746F7256756C6B370800000000000000180000004D66436B737A
            496E73706563746F72546F6D6C6F766567370800000000000000170000004D66
            436B737A496E73706563746F7246656C6B65737A390800000000000000140000
            004D66436B737A496E73706563746F7256756C6B390800000000000000180000
            004D66436B737A496E73706563746F72546F6D6C6F7665673908000000000000
            00170000004D66436B737A496E73706563746F724D75737A4A656C6C08000000
            00000000150000004D66436B737A496E73706563746F724B6F6E737472080000
            0000000000120000004D66436B737A496E73706563746F724B737A0800000000
            000000120000004D66436B737A496E73706563746F7241737A08000000000000
            00160000004D66436B737A496E73706563746F724D74664B65737A0800000000
            000000190000004D66436B737A496E73706563746F724D65676A6567797A6573
            0800000000000000190000004D66436B737A496E73706563746F724D74664665
            6C6B65737A0800000000000000190000004D66436B737A496E73706563746F72
            4B65737A69746574746508000000000000001D0000004D66436B737A496E7370
            6563746F724B65737A69746573446174756D6108000000000000001A0000004D
            66436B737A496E73706563746F724D6F646F7369746F74746108000000000000
            001E0000004D66436B737A496E73706563746F724D6F646F7369746173446174
            756D610800000000000000180000004D66436B737A496E73706563746F724A65
            6C7A65734E65760800000000000000140000004D66436B737A496E7370656374
            6F724E6F726D610800000000000000120000004D66436B737A496E7370656374
            6F725341500800000000000000120000004D66436B737A496E73706563746F72
            5442500800000000000000130000004D66436B737A496E73706563746F724772
            61660800000000000000170000004D66436B737A496E73706563746F72546F72
            7A736C61700800000000000000140000004D66436B737A496E73706563746F72
            526F77343000000000}
          object MfCkszInspectorItemId: TdxInspectorDBMaskRow
            Caption = 'Id'
            ReadOnly = True
            FieldName = 'ItemId'
          end
          object MfCkszInspectorPrDatum: TdxInspectorDBDateRow
            Caption = 'Dbj.dátum'
            FieldName = 'PrDatum'
          end
          object MfCkszInspectorMtKeszDatum: TdxInspectorDBDateRow
            Caption = 'Mt.kész dátum'
            FieldName = 'MtKeszDatum'
          end
          object MfCkszInspectorRegiCksz: TdxInspectorDBMaskRow
            Caption = 'Régi cikksz.'
            FieldName = 'RegiCksz'
          end
          object MfCkszInspectorSAPCksz: TdxInspectorDBMaskRow
            Caption = 'SAP cikksz.'
            FieldName = 'SAPCksz'
          end
          object MfCkszInspectorMtFelkeszDatum: TdxInspectorDBDateRow
            Caption = 'Mt.félkész dátum'
            FieldName = 'MtFelkeszDatum'
          end
          object MfCkszInspectorNev: TdxInspectorDBMaskRow
            Caption = 'Megnevezés'
            FieldName = 'Nev'
          end
          object MfCkszInspectorHossz: TdxInspectorDBMaskRow
            FieldName = 'Hossz'
          end
          object MfCkszInspectorFelkesz5: TdxInspectorDBMaskRow
            Caption = 'Félkész (5.hajó)'
            FieldName = 'Felkesz5'
          end
          object MfCkszInspectorVulk5: TdxInspectorDBMaskRow
            Caption = 'Tömlõtest (5.hajó)'
            FieldName = 'Vulk5'
          end
          object MfCkszInspectorTomloveg5: TdxInspectorDBMaskRow
            Caption = 'Tömlõvég (5.hajó)'
            FieldName = 'Tomloveg5'
          end
          object MfCkszInspectorFelkesz6: TdxInspectorDBMaskRow
            Caption = 'Félkész (6.hajó)'
            FieldName = 'Felkesz6'
          end
          object MfCkszInspectorVulk6: TdxInspectorDBMaskRow
            Caption = 'Tömlõtest (6.hajó)'
            FieldName = 'Vulk6'
          end
          object MfCkszInspectorTomloveg6: TdxInspectorDBMaskRow
            Caption = 'Tömlõvég (6.hajó)'
            FieldName = 'Tomloveg6'
          end
          object MfCkszInspectorFelkesz7: TdxInspectorDBMaskRow
            Caption = 'Félkész (7.hajó)'
            FieldName = 'Felkesz7'
          end
          object MfCkszInspectorVulk7: TdxInspectorDBMaskRow
            Caption = 'Tömlõtest (7.hajó)'
            FieldName = 'Vulk7'
          end
          object MfCkszInspectorTomloveg7: TdxInspectorDBMaskRow
            Caption = 'Tömlõvég (7.hajó)'
            FieldName = 'Tomloveg7'
          end
          object MfCkszInspectorFelkesz9: TdxInspectorDBMaskRow
            Caption = 'Félkész (9.hajó)'
            FieldName = 'Felkesz9'
          end
          object MfCkszInspectorVulk9: TdxInspectorDBMaskRow
            Caption = 'Tömlõtest (9.hajó)'
            FieldName = 'Vulk9'
          end
          object MfCkszInspectorTomloveg9: TdxInspectorDBMaskRow
            Caption = 'Tömlõvég (9.hajó)'
            FieldName = 'Tomloveg9'
          end
          object MfCkszInspectorMuszJell: TdxInspectorDBMaskRow
            Caption = 'Mûsz.jell.'
            FieldName = 'MuszJell'
          end
          object MfCkszInspectorKonstr: TdxInspectorDBMaskRow
            Caption = 'Konstr.lsz.'
            FieldName = 'Konstr'
          end
          object MfCkszInspectorKsz: TdxInspectorDBMaskRow
            Caption = 'Rendelésszám'
            FieldName = 'Ksz'
          end
          object MfCkszInspectorAsz: TdxInspectorDBMaskRow
            Caption = 'Átvételi sz.'
            FieldName = 'Asz'
          end
          object MfCkszInspectorMtfKesz: TdxInspectorDBMaskRow
            FieldName = 'MtfKesz'
          end
          object MfCkszInspectorMegjegyzes: TdxInspectorDBMaskRow
            Caption = 'Megjegyzés'
            FieldName = 'Megjegyzes'
          end
          object MfCkszInspectorMtfFelkesz: TdxInspectorDBMaskRow
            FieldName = 'MtfFelkesz'
          end
          object MfCkszInspectorKeszitette: TdxInspectorDBMaskRow
            Caption = 'Rögzítette'
            ReadOnly = True
            FieldName = 'Keszitette'
          end
          object MfCkszInspectorKeszitesDatuma: TdxInspectorDBDateRow
            Caption = 'Rögz.idõpont'
            ReadOnly = True
            FieldName = 'KeszitesDatuma'
          end
          object MfCkszInspectorModositotta: TdxInspectorDBMaskRow
            Caption = 'Módosította'
            ReadOnly = True
            FieldName = 'Modositotta'
          end
          object MfCkszInspectorModositasDatuma: TdxInspectorDBDateRow
            Caption = 'Mód.idõpont'
            ReadOnly = True
            FieldName = 'ModositasDatuma'
          end
          object MfCkszInspectorJelzesKod: TdxInspectorDBMaskRow
            Visible = False
            FieldName = 'JelzesKod'
          end
          object MfCkszInspectorJelzesNev: TdxInspectorLookupRow
            Caption = 'Jelzés'
            FieldName = 'JelzesNev'
          end
          object MfCkszInspectorSzin: TdxInspectorLookupRow
            Visible = False
            FieldName = 'Szin'
          end
          object MfCkszInspectorNorma: TdxInspectorDBCheckRow
            ShowNullFieldStyle = nsInactive
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'Norma'
          end
          object MfCkszInspectorSAP: TdxInspectorDBCheckRow
            ShowNullFieldStyle = nsInactive
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'SAP'
          end
          object MfCkszInspectorTBP: TdxInspectorDBCheckRow
            ShowNullFieldStyle = nsInactive
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'TBP'
          end
          object MfCkszInspectorGraf: TdxInspectorDBCheckRow
            Caption = 'Gráf'
            ShowNullFieldStyle = nsInactive
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'Graf'
          end
          object MfCkszInspectorTorzslap: TdxInspectorDBCheckRow
            Caption = 'Törzslap'
            ShowNullFieldStyle = nsInactive
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'Torzslap'
          end
          object MfCkszInspectorRow40: TdxInspectorDBCheckRow
            Caption = 'Darabjegyzék'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
            FieldName = 'Darabjegyzek'
          end
        end
      end
    end
    object KonstrSheet: TTabSheet
      Tag = 4000
      Caption = 'Érvényes konstrukciók'
      ImageIndex = 3
      OnShow = KonstrSheetShow
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 1232
        Height = 706
        Align = alClient
        TabOrder = 0
        object Panel15: TPanel
          Left = 1
          Top = 1
          Width = 210
          Height = 704
          Align = alLeft
          TabOrder = 0
          object Panel16: TPanel
            Left = 1
            Top = 1
            Width = 208
            Height = 24
            Align = alTop
            BevelInner = bvRaised
            Caption = 'Konstrukciók'
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dxDBGrid6: TdxDBGrid
            Left = 1
            Top = 25
            Width = 208
            Height = 678
            Hint = 'Rajz megnyitása dupla kattintással'
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'KonstrLsz'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnDblClick = dxDBGrid6DblClick
            DataSource = Dm.KonstrukciokDs
            Filter.Criteria = {00000000}
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object dxDBGrid6KonstrLsz: TdxDBGridColumn
              Caption = 'Konstrukciós lap száma'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 166
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KonstrLsz'
            end
          end
        end
        object Panel14: TPanel
          Left = 211
          Top = 1
          Width = 224
          Height = 704
          Align = alLeft
          BevelInner = bvRaised
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 8
            Top = 48
            Width = 25
            Height = 13
            Caption = 'ID ["]'
            FocusControl = IdEdit
          end
          object Label2: TLabel
            Left = 80
            Top = 48
            Width = 42
            Height = 13
            Caption = 'w.p. [psi]'
            FocusControl = psiEdit
          end
          object Label3: TLabel
            Left = 152
            Top = 48
            Width = 51
            Height = 13
            Caption = 'w.p. [MPa]'
            FocusControl = MPaEdit
          end
          object Label4: TLabel
            Left = 8
            Top = 88
            Width = 26
            Height = 13
            Caption = 'Lélek'
          end
          object Label5: TLabel
            Left = 8
            Top = 128
            Width = 39
            Height = 13
            Caption = 'Sodrony'
          end
          object Label6: TLabel
            Left = 80
            Top = 168
            Width = 20
            Height = 13
            Caption = 'Súly'
            FocusControl = SulyEdit
          end
          object Label7: TLabel
            Left = 152
            Top = 168
            Width = 41
            Height = 13
            Caption = 'OD [mm]'
            FocusControl = OdEdit
          end
          object Label8: TLabel
            Left = 8
            Top = 408
            Width = 62
            Height = 13
            Caption = 'Készítette:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 8
            Top = 424
            Width = 48
            Height = 13
            Caption = 'Idõpont:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 8
            Top = 440
            Width = 72
            Height = 13
            Caption = 'Módosította:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 8
            Top = 456
            Width = 48
            Height = 13
            Caption = 'Idõpont:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 8
            Top = 360
            Width = 56
            Height = 13
            Caption = 'Megjegyzés'
            FocusControl = MegjEdit
          end
          object Label13: TLabel
            Left = 8
            Top = 168
            Width = 67
            Height = 13
            Caption = 'Gégecsõ prof.'
          end
          object Label78: TLabel
            Left = 8
            Top = 8
            Width = 111
            Height = 13
            Caption = 'Konstrukciós lap száma'
            FocusControl = KonstrLszEdit
          end
          object DBText1: TDBText
            Left = 88
            Top = 408
            Width = 129
            Height = 17
            DataField = 'Keszitette'
            DataSource = Dm.KonstrukciokDs
          end
          object DBText2: TDBText
            Left = 88
            Top = 424
            Width = 128
            Height = 17
            DataField = 'KeszitesIdeje'
            DataSource = Dm.KonstrukciokDs
          end
          object DBText3: TDBText
            Left = 88
            Top = 440
            Width = 128
            Height = 17
            DataField = 'Modositotta'
            DataSource = Dm.KonstrukciokDs
          end
          object DBText4: TDBText
            Left = 88
            Top = 456
            Width = 128
            Height = 17
            DataField = 'ModositasIdeje'
            DataSource = Dm.KonstrukciokDs
          end
          object EvCheckBox: TDBCheckBox
            Left = 8
            Top = 208
            Width = 120
            Height = 17
            Caption = 'Elõvulkanizált'
            DataField = 'Elovulk'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 9
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object LaCheckBox: TDBCheckBox
            Left = 8
            Top = 224
            Width = 120
            Height = 17
            Caption = 'Lángálló'
            DataField = 'La'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 10
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object BgCheckBox: TDBCheckBox
            Left = 8
            Top = 240
            Width = 120
            Height = 17
            Caption = 'Belsõ gégecsöves'
            DataField = 'Bg'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 11
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object KgCheckBox: TDBCheckBox
            Left = 8
            Top = 256
            Width = 120
            Height = 17
            Caption = 'Külsõ gégecsöves'
            DataField = 'Kg'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 12
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object PaCheckBox: TDBCheckBox
            Left = 8
            Top = 272
            Width = 120
            Height = 17
            Caption = 'Poliamid lelkû'
            DataField = 'Pa'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 13
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object NkCheckBox: TDBCheckBox
            Left = 8
            Top = 288
            Width = 120
            Height = 17
            Caption = 'Normál kivitelû'
            DataField = 'Norm'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 14
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object DcCheckBox: TDBCheckBox
            Left = 8
            Top = 304
            Width = 120
            Height = 17
            Caption = 'Drag Chain'
            DataField = 'DragChain'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 15
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object IdEdit: TDBEdit
            Left = 8
            Top = 64
            Width = 64
            Height = 21
            DataField = 'ID'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 1
          end
          object psiEdit: TDBEdit
            Left = 80
            Top = 64
            Width = 64
            Height = 21
            DataField = 'psi'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 2
          end
          object MPaEdit: TDBEdit
            Left = 152
            Top = 64
            Width = 64
            Height = 21
            DataField = 'mpa'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 3
          end
          object SulyEdit: TDBEdit
            Left = 80
            Top = 184
            Width = 64
            Height = 21
            DataField = 'Suly'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 7
          end
          object OdEdit: TDBEdit
            Left = 152
            Top = 184
            Width = 64
            Height = 21
            DataField = 'OD'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 8
          end
          object LelekCombo: TRxDBLookupCombo
            Left = 8
            Top = 104
            Width = 209
            Height = 21
            DropDownCount = 8
            DataField = 'Lelek'
            DataSource = Dm.KonstrukciokDs
            LookupField = 'Lelek'
            LookupDisplay = 'Lelek'
            LookupSource = Dm.LelekQryDs
            TabOrder = 4
          end
          object SodronyCombo: TRxDBLookupCombo
            Left = 7
            Top = 144
            Width = 209
            Height = 21
            DropDownCount = 8
            DataField = 'Sodrony'
            DataSource = Dm.KonstrukciokDs
            LookupField = 'Sodrony'
            LookupDisplay = 'Sodrony'
            LookupSource = Dm.SodronyQryDs
            TabOrder = 5
          end
          object MegjEdit: TDBEdit
            Left = 7
            Top = 376
            Width = 209
            Height = 21
            Color = clInfoBk
            DataField = 'Megjegyzes'
            DataSource = Dm.KonstrukciokDs
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 18
          end
          object GegeCombo: TDBComboBox
            Left = 8
            Top = 184
            Width = 65
            Height = 21
            DataField = 'GegecsoProfil'
            DataSource = Dm.KonstrukciokDs
            ItemHeight = 13
            Items.Strings = (
              '20 x 0,5'
              '25 x 0,6'
              '30 x 0,8')
            TabOrder = 6
          end
          object KvCheckBox: TDBCheckBox
            Left = 8
            Top = 320
            Width = 120
            Height = 17
            Caption = 'Külsõ védelem'
            DataField = 'Kv'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 16
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object _7kCheckBox: TDBCheckBox
            Left = 8
            Top = 336
            Width = 120
            Height = 17
            Caption = 'API Spec.17K'
            DataField = '17K'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 17
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object KonstrLszEdit: TDBEdit
            Left = 8
            Top = 24
            Width = 209
            Height = 21
            DataField = 'KonstrLsz'
            DataSource = Dm.KonstrukciokDs
            TabOrder = 0
          end
          object DBNavigator7: TDBNavigator
            Left = 1
            Top = 475
            Width = 220
            Height = 25
            DataSource = Dm.KonstrukciokDs
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 19
            BeforeAction = DBNavigator7BeforeAction
          end
        end
        object Panel17: TPanel
          Left = 435
          Top = 1
          Width = 210
          Height = 704
          Align = alLeft
          TabOrder = 2
          object Panel18: TPanel
            Left = 1
            Top = 1
            Width = 208
            Height = 24
            Align = alTop
            BevelInner = bvRaised
            Caption = 'Érvénytelenített konstrukciók'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBNavigator8: TDBNavigator
            Left = 1
            Top = 473
            Width = 208
            Height = 27
            DataSource = Dm.ErvtKonstrukciokDs
            Align = alTop
            Flat = True
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
          object ErvtGrid: TdxDBGrid
            Left = 1
            Top = 25
            Width = 208
            Height = 448
            Hint = 'Rajz megnyitása dupla kattintással'
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'Ervenytelenit'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alTop
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnDblClick = ErvtGridDblClick
            DataSource = Dm.ErvtKonstrukciokDs
            Filter.Criteria = {00000000}
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object ErvtGridKonstrLsz: TdxDBGridMaskColumn
              Visible = False
              Width = 163
              BandIndex = 0
              RowIndex = 0
              FieldName = 'KonstrLsz'
            end
            object ErvtGridErvenytelenit: TdxDBGridMaskColumn
              Caption = 'Érvénytelenített konstrukció'
              HeaderAlignment = taCenter
              Width = 181
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Ervenytelenit'
            end
          end
        end
        object ScrollBox1: TScrollBox
          Left = 645
          Top = 1
          Width = 586
          Height = 704
          Align = alClient
          TabOrder = 3
        end
      end
    end
    object DataSheetBase: TTabSheet
      Tag = 5000
      Caption = 'Adatlapok'
      ImageIndex = 5
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1232
        Height = 706
        ActivePage = DataSheetSpecific
        Align = alClient
        HotTrack = True
        MultiLine = True
        Style = tsFlatButtons
        TabOrder = 0
        object DataSheetGeneral: TTabSheet
          Tag = 5100
          Caption = 'Általános adatlapok'
          OnShow = DataSheetGeneralShow
          object Splitter5: TSplitter
            Left = 0
            Top = 217
            Width = 1000
            Height = 5
            Cursor = crVSplit
            Align = alTop
            Beveled = True
          end
          object ScrollBox2: TScrollBox
            Left = 0
            Top = 222
            Width = 1000
            Height = 457
            Align = alClient
            TabOrder = 0
            object Panel20: TPanel
              Left = 0
              Top = 0
              Width = 979
              Height = 150
              Align = alTop
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 0
              object Panel21: TPanel
                Left = 2
                Top = 120
                Width = 975
                Height = 28
                Align = alBottom
                TabOrder = 0
                object DBNavigator9: TDBNavigator
                  Left = 1
                  Top = 1
                  Width = 240
                  Height = 26
                  DataSource = Dm.AdatlapKonfDs
                  Align = alLeft
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object Panel22: TPanel
                Left = 2
                Top = 2
                Width = 975
                Height = 23
                Align = alTop
                Caption = 'Konfekciós adatok'
                Color = clMaroon
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clYellow
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object KonfGrid: TdxDBGrid
                Left = 2
                Top = 25
                Width = 975
                Height = 95
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'Tetelszam'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 2
                DataSource = Dm.AdatlapKonfDs
                Filter.Criteria = {00000000}
                IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                IniSectionName = 'AdatlapKonfGrid'
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                object KonfGridAdatlapId: TdxDBGridMaskColumn
                  Visible = False
                  Width = 59
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AdatlapId'
                end
                object KonfGridTetelszam: TdxDBGridMaskColumn
                  ReadOnly = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Tetelszam'
                end
                object KonfGridRajzszam: TdxDBGridButtonColumn
                  Width = 124
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Rajzszam'
                  OnEditButtonClick = KonfGridRajzszamEditButtonClick
                  Buttons = <
                    item
                      Default = True
                    end>
                end
                object KonfGridMegnevezes: TdxDBGridMaskColumn
                  Width = 197
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megnevezes'
                end
                object KonfGridTomloKulatm: TdxDBGridMaskColumn
                  Width = 67
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TomloKulatm'
                end
                object KonfGridCsatlKulatm: TdxDBGridMaskColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CsatlKulatm'
                end
                object KonfGridTomeg: TdxDBGridMaskColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Tomeg'
                end
                object KonfGridMinHajlitas: TdxDBGridMaskColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MinHajlitas'
                end
                object KonfGridAnyagnormaSzam: TdxDBGridMaskColumn
                  Width = 124
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AnyagnormaSzam'
                end
                object KonfGridMegjegyzes: TdxDBGridMaskColumn
                  Width = 304
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megjegyzes'
                end
                object KonfGridAktiv: TdxDBGridCheckColumn
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Aktiv'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
              end
            end
            object Panel23: TPanel
              Left = 0
              Top = 150
              Width = 979
              Height = 150
              Align = alTop
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 1
              object Panel24: TPanel
                Left = 2
                Top = 120
                Width = 975
                Height = 28
                Align = alBottom
                TabOrder = 0
                object DBNavigator10: TDBNavigator
                  Left = 1
                  Top = 1
                  Width = 240
                  Height = 26
                  DataSource = Dm.AdatlapCsomDs
                  Align = alLeft
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object Panel25: TPanel
                Left = 2
                Top = 2
                Width = 975
                Height = 23
                Align = alTop
                Caption = 'Csomagolási adatok'
                Color = clGreen
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object CsomGrid: TdxDBGrid
                Left = 2
                Top = 25
                Width = 975
                Height = 95
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 2
                DataSource = Dm.AdatlapCsomDs
                Filter.Criteria = {00000000}
                IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                IniSectionName = 'AdatlapCsomGrid'
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                object CsomGridAdatlapId: TdxDBGridMaskColumn
                  Visible = False
                  Width = 44
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AdatlapId'
                end
                object CsomGridTetelSzam: TdxDBGridMaskColumn
                  ReadOnly = True
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TetelSzam'
                end
                object CsomGridRekeszMeret: TdxDBGridMaskColumn
                  Width = 155
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'RekeszMeret'
                end
                object CsomGridMegjegyzes: TdxDBGridMaskColumn
                  Width = 300
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megjegyzes'
                end
                object CsomGridAktiv: TdxDBGridCheckColumn
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Aktiv'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
              end
            end
            object Panel26: TPanel
              Left = 0
              Top = 300
              Width = 979
              Height = 150
              Align = alTop
              BevelInner = bvLowered
              BevelOuter = bvLowered
              Caption = 'Panel5'
              TabOrder = 2
              object Panel27: TPanel
                Left = 2
                Top = 120
                Width = 975
                Height = 28
                Align = alBottom
                TabOrder = 0
                object DBNavigator11: TDBNavigator
                  Left = 1
                  Top = 1
                  Width = 240
                  Height = 26
                  DataSource = Dm.AllandoAlkDs
                  Align = alLeft
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object Panel28: TPanel
                Left = 2
                Top = 2
                Width = 975
                Height = 23
                Align = alTop
                Caption = 'Beépített, állandó alkatrészek'
                Color = 12639424
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlightText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object AllandoGrid: TdxDBGrid
                Left = 2
                Top = 25
                Width = 975
                Height = 95
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'TetelSzam'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 2
                DataSource = Dm.AllandoAlkDs
                Filter.Criteria = {00000000}
                IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoTabs, edgoTabThrough, edgoVertThrough]
                object AllandoGridAdatlapId: TdxDBGridMaskColumn
                  Visible = False
                  Width = 47
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AdatlapId'
                end
                object AllandoGridTetelSzam: TdxDBGridMaskColumn
                  ReadOnly = True
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TetelSzam'
                end
                object AllandoGridRajzszam: TdxDBGridButtonColumn
                  Width = 118
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Rajzszam'
                  OnEditButtonClick = AllandoGridRajzszamEditButtonClick
                  Buttons = <
                    item
                      Default = True
                    end>
                end
                object AllandoGridMegnevezes: TdxDBGridMaskColumn
                  Width = 259
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megnevezes'
                end
                object AllandoGridTomeg: TdxDBGridMaskColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Tomeg'
                end
                object AllandoGridMegjegyzes: TdxDBGridMaskColumn
                  Width = 210
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megjegyzes'
                end
                object AllandoGridAktiv: TdxDBGridCheckColumn
                  Width = 47
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Aktiv'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
              end
            end
            object Panel29: TPanel
              Left = 0
              Top = 450
              Width = 979
              Height = 150
              Align = alTop
              BevelInner = bvLowered
              BevelOuter = bvLowered
              Caption = 'Panel6'
              TabOrder = 3
              object Panel30: TPanel
                Left = 2
                Top = 120
                Width = 975
                Height = 28
                Align = alBottom
                TabOrder = 0
                object DBNavigator12: TDBNavigator
                  Left = 1
                  Top = 1
                  Width = 240
                  Height = 26
                  DataSource = Dm.ValtozoAlkDs
                  Align = alLeft
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object Panel31: TPanel
                Left = 2
                Top = 2
                Width = 975
                Height = 23
                Align = alTop
                Caption = 'Beépített, rendeléstõl függõ alkatrészek'
                Color = clNavy
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object ValtozoGrid: TdxDBGrid
                Left = 2
                Top = 25
                Width = 975
                Height = 95
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'TetelSzam'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 2
                DataSource = Dm.ValtozoAlkDs
                Filter.Criteria = {00000000}
                IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                IniSectionName = 'ValtozoGrid'
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                object ValtozoGridAdatlapId: TdxDBGridMaskColumn
                  Visible = False
                  Width = 95
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AdatlapId'
                end
                object ValtozoGridTetelSzam: TdxDBGridMaskColumn
                  ReadOnly = True
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TetelSzam'
                end
                object ValtozoGridRajzszam: TdxDBGridButtonColumn
                  Width = 118
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Rajzszam'
                  OnEditButtonClick = ValtozoGridRajzszamEditButtonClick
                  Buttons = <
                    item
                      Default = True
                    end>
                end
                object ValtozoGridMegnevezes: TdxDBGridMaskColumn
                  Width = 260
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megnevezes'
                end
                object ValtozoGridTomeg: TdxDBGridMaskColumn
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Tomeg'
                end
                object ValtozoGridMegjegyzes: TdxDBGridMaskColumn
                  Width = 211
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megjegyzes'
                end
                object ValtozoGridAktiv: TdxDBGridCheckColumn
                  Width = 47
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Aktiv'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
              end
            end
            object Panel32: TPanel
              Left = 0
              Top = 600
              Width = 979
              Height = 150
              Align = alTop
              BevelInner = bvLowered
              BevelOuter = bvLowered
              Caption = 'Panel7'
              TabOrder = 4
              object Panel33: TPanel
                Left = 2
                Top = 120
                Width = 975
                Height = 28
                Align = alBottom
                TabOrder = 0
                object DBNavigator13: TDBNavigator
                  Left = 1
                  Top = 1
                  Width = 240
                  Height = 26
                  DataSource = Dm.AdatlapCsatlDs
                  Align = alLeft
                  Flat = True
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object Panel34: TPanel
                Left = 2
                Top = 2
                Width = 975
                Height = 23
                Align = alTop
                Caption = 'Csatlakozókra vonatkozó adatok'
                Color = 10930928
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clHighlightText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object CsatlGrid: TdxDBGrid
                Left = 2
                Top = 25
                Width = 975
                Height = 95
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'TetelSzam'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 2
                DataSource = Dm.AdatlapCsatlDs
                Filter.Criteria = {00000000}
                IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                IniSectionName = 'CsatlGrid'
                OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                object CsatlGridAdatlapId: TdxDBGridMaskColumn
                  Visible = False
                  Width = 50
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'AdatlapId'
                end
                object CsatlGridTetelSzam: TdxDBGridMaskColumn
                  ReadOnly = True
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TetelSzam'
                end
                object CsatlGridCsatlakozoRsz: TdxDBGridButtonColumn
                  Width = 93
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CsatlakozoRsz'
                  OnEditButtonClick = CsatlGridCsatlakozoRszEditButtonClick
                  Buttons = <
                    item
                      Default = True
                    end>
                end
                object CsatlGridVegzodes: TdxDBGridMaskColumn
                  Width = 70
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Vegzodes'
                end
                object CsatlGridMegnevezes: TdxDBGridMaskColumn
                  Width = 84
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megnevezes'
                end
                object CsatlGridOsszeallitasiRsz: TdxDBGridMaskColumn
                  Width = 98
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'OsszeallitasiRsz'
                end
                object CsatlGridCsatlakozoSuly: TdxDBGridMaskColumn
                  Width = 95
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CsatlakozoSuly'
                end
                object CsatlGridMegjegyzes: TdxDBGridMaskColumn
                  Width = 79
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Megjegyzes'
                end
                object CsatlGridAktiv: TdxDBGridCheckColumn
                  Width = 47
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Aktiv'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
              end
            end
          end
          object ScrollBox3: TScrollBox
            Left = 0
            Top = 0
            Width = 1000
            Height = 217
            Align = alTop
            TabOrder = 1
            object dxDBInspector2: TdxDBInspector
              Left = 0
              Top = 0
              Width = 996
              Height = 184
              Align = alClient
              DataSource = Dm.AdatlapDs
              DefaultFields = False
              TabOrder = 0
              BandWidth = 323
              DividerPos = 149
              Images = ImageList1
              Options = [dioAutoBandCount, dioAutoWidth, dioBandSizing, dioCancelOnExit, dioColumnSizing, dioDynamicColumnSizing, dioEditing, dioEnterThrough]
              PaintStyle = ipsExtended
              ShowRowHint = True
              Data = {
                740200001100000008000000000000001A00000064784442496E73706563746F
                723241646174616C6170537A616D08000000000000001600000064784442496E
                73706563746F723256616C746F7A617408000000000000001400000064784442
                496E73706563746F72324365674E657608000000000000001800000064784442
                496E73706563746F72324F737A74616C794E6576080000000000000018000000
                64784442496E73706563746F72324D65676E6576657A65730800000000000000
                1A00000064784442496E73706563746F7232416C74616C616E6F734E65760800
                0000000000001600000064784442496E73706563746F7232537A616276616E79
                08000000000000001000000064784442496E73706563746F7232496408000000
                000000001400000064784442496E73706563746F72324E796F6D617308000000
                000000001800000064784442496E73706563746F72324B65737A697465747465
                08000000000000001C00000064784442496E73706563746F72324B65737A6974
                6573446174756D6108000000000000001800000064784442496E73706563746F
                72456C6C656E6F72697A766508000000000000001900000064784442496E7370
                6563746F7232456C6C656E6F72697A746508000000000000001E000000647844
                42496E73706563746F7232456C6C656E6F727A6573446174756D610800000000
                0000001600000064784442496E73706563746F7232457276656E796573080000
                00000000001C00000064784442496E73706563746F7232457276656E79657369
                746574746508000000000000002300000064784442496E73706563746F723245
                7276656E7965736974657349646F706F6E746A6100000000}
              object dxDBInspector2AdatlapId: TdxInspectorDBMaskRow
                Caption = 'Adatlap száma'
                Visible = False
                FieldName = 'AdatlapId'
              end
              object dxDBInspector2AdatalapSzam: TdxInspectorDBMaskRow
                Caption = 'Adatlap száma'
                IgnoreMaskBlank = True
                FieldName = 'AdatlapSzam'
              end
              object dxDBInspector2Valtozat: TdxInspectorDBMaskRow
                Caption = 'Változat'
                ReadOnly = True
                FieldName = 'Valtozat'
              end
              object dxDBInspector2CegNev: TdxInspectorDBMaskRow
                Caption = 'Cég neve'
                FieldName = 'CegNev'
              end
              object dxDBInspector2OsztalyNev: TdxInspectorDBMaskRow
                Caption = 'Osztály neve'
                FieldName = 'OsztalyNev'
              end
              object dxDBInspector2Megnevezes: TdxInspectorDBMaskRow
                Caption = 'Megnevezés'
                FieldName = 'Megnevezes'
              end
              object dxDBInspector2AltalanosNev: TdxInspectorDBMaskRow
                Caption = 'Tulajdonságok'
                FieldName = 'AltalanosNev'
              end
              object dxDBInspector2Keszitette: TdxInspectorDBMaskRow
                Caption = 'Készítette'
                ReadOnly = True
                FieldName = 'Keszitette'
              end
              object dxDBInspector2Id: TdxInspectorDBMaskRow
                Caption = 'Tömlõ belátm.["]'
                FieldName = 'Id'
              end
              object dxDBInspector2Nyomas: TdxInspectorDBMaskRow
                Caption = 'Nyomás[psi]'
                FieldName = 'Nyomas'
              end
              object dxDBInspector2Ellenorizte: TdxInspectorDBMaskRow
                Caption = 'Ellenõrizte'
                ReadOnly = True
                FieldName = 'Ellenorizte'
              end
              object dxDBInspector2Egyedi: TdxInspectorDBCheckRow
                Visible = False
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Egyedi'
              end
              object dxDBInspector2Kiadva: TdxInspectorDBCheckRow
                Visible = False
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Kiadva'
              end
              object dxDBInspector2Kiadta: TdxInspectorDBMaskRow
                ReadOnly = True
                Visible = False
                FieldName = 'Kiadta'
              end
              object dxDBInspector2Ervenyes: TdxInspectorDBCheckRow
                Alignment = taRightJustify
                Caption = 'Érvényes'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Ervenyes'
              end
              object dxDBInspector2Ervenyesitette: TdxInspectorDBMaskRow
                Caption = 'Érvényesitette'
                ReadOnly = True
                FieldName = 'Ervenyesitette'
              end
              object dxDBInspector2Szabvany: TdxInspectorDBPickRow
                Caption = 'Szabvány'
                ImmediateDropDown = False
                FieldName = 'Szabvany'
              end
              object dxDBInspectorEllenorizve: TdxInspectorDBCheckRow
                Caption = 'Ellenõrizve'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Ellenorizve'
              end
              object dxDBInspector2ErvenyesitesIdopontja: TdxInspectorDBMaskRow
                Caption = 'Érv.idõpontja'
                ReadOnly = True
                FieldName = 'ErvenyesitesIdopontja'
              end
              object dxDBInspector2KiadasIdopontja: TdxInspectorDBMaskRow
                Caption = 'Kiadás idõpontja'
                ReadOnly = True
                Visible = False
                FieldName = 'KiadasIdopontja'
              end
              object dxDBInspector2EllenorzesDatuma: TdxInspectorDBMaskRow
                Caption = 'Ellenõrzés dátuma'
                ReadOnly = True
                FieldName = 'EllenorzesDatuma'
              end
              object dxDBInspector2KeszitesDatuma: TdxInspectorDBMaskRow
                Caption = 'Készítés dátuma'
                ReadOnly = True
                FieldName = 'KeszitesDatuma'
              end
            end
            object Panel35: TPanel
              Left = 0
              Top = 184
              Width = 996
              Height = 29
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 1
              object SpeedButton4: TSpeedButton
                Left = 248
                Top = 4
                Width = 23
                Height = 22
                Action = DataSheetReport
                Flat = True
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                  00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                  00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                  F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                  F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                  F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                  FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                  0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                  0033333337FFFFFF773333333000000003333333377777777333}
                NumGlyphs = 2
                ParentShowHint = False
                ShowHint = True
              end
              object SpeedButton6: TSpeedButton
                Left = 272
                Top = 4
                Width = 23
                Height = 22
                Action = DataSheetSelection
                Flat = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                  0000FF00FF000000000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF00000000
                  00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FFFF00000000
                  000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFF00000000
                  0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
                  0000FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FFFF00000000
                  000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
                  00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FFFF00000000
                  0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
                  FF00FFFFFF0000FFFF0000000000FF00FF000000FF000000FF00FFFF00000000
                  000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
                  00000000000000000000FF00FF00FF00FF000000FF000000FF00000000000000
                  00000000000000FFFF00FFFFFF0000FFFF0000000000FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentShowHint = False
                ShowHint = True
              end
              object SpeedButton7: TSpeedButton
                Left = 296
                Top = 4
                Width = 23
                Height = 22
                Action = DataSheetCopy
                Flat = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000FFFF007F7F7F00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00007F7F7F007F7F7F0000000000000000007F7F7F000000000000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                  000000000000000000007F7F7F007F7F7F0000FFFF000000000000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                  000000000000000000007F7F7F0000FFFF0000FFFF000000000000000000FFFF
                  FF000000000000000000FFFFFF00000000000000000000000000FFFFFF000000
                  000000000000000000000000FF0000000000000000007F7F7F0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                  0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
                  FF0000000000000000000000000000000000FFFFFF0000000000FFFFFF000000
                  00000000FF000000FF000000FF000000FF000000FF00FF00FF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                  FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FFFF
                  FF000000000000000000FFFFFF00000000000000000000000000000000000000
                  0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
                  FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
                  FF0000000000BFBFBF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
                  FF007F7F7F000000FF000000FF000000FF00FF00FF00FF00FF0000000000FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF000000FF000000
                  FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00000000000000
                  000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentShowHint = False
                ShowHint = True
              end
              object SpeedButton8: TSpeedButton
                Left = 320
                Top = 4
                Width = 23
                Height = 22
                Action = DataSheetPaste
                Flat = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00000000000000
                  00000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
                  FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFF
                  FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007F7F7F000000
                  0000000000000000000000000000000000000000000000000000000000007F7F
                  7F00FFFFFF0000000000000000000000000000000000000000000000000000FF
                  FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
                  0000FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF000000000000FF
                  FF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF000000
                  0000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00FF000000000000FF
                  FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
                  0000FFFFFF000000000000000000FF00FF00FF00FF00FF00FF000000000000FF
                  FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
                  000000000000000000000000FF00FF00FF00FF00FF00FF00FF000000000000FF
                  FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
                  0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000000000FF
                  FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
                  00000000FF000000FF000000FF000000FF000000FF00FF00FF000000000000FF
                  FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
                  FF000000FF000000FF000000FF000000FF000000FF000000FF000000000000FF
                  FF007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000
                  0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00000000007F7F
                  7F0000000000000000007F7F7F007F7F7F0000000000000000007F7F7F000000
                  0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000000000FF
                  FF007F7F7F007F7F7F0000000000000000007F7F7F007F7F7F0000FFFF000000
                  0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF000000000000FF
                  FF0000FFFF007F7F7F0000000000000000007F7F7F0000FFFF0000FFFF000000
                  FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF007F7F7F000000
                  0000000000000000000000000000000000000000000000000000000000007F7F
                  7F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
                ParentShowHint = False
                ShowHint = True
              end
              object DBNavigator14: TDBNavigator
                Left = 2
                Top = 2
                Width = 240
                Height = 25
                DataSource = Dm.AdatlapDs
                Align = alLeft
                Flat = True
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
            end
          end
        end
        object DataSheetSpecific: TTabSheet
          Tag = 5200
          Caption = 'Egyedi adatlapok'
          ImageIndex = 1
          OnShow = DataSheetSpecificShow
          object PageControl3: TPageControl
            Left = 0
            Top = 0
            Width = 1224
            Height = 675
            ActivePage = DataSheetAccessory
            Align = alClient
            Images = ImageList2
            Style = tsButtons
            TabOrder = 0
            object DataSheetAccessory: TTabSheet
              Tag = 5210
              Caption = 'Alkatrészek'
              OnEnter = DataSheetAccessoryEnter
              OnExit = DataSheetAccessoryExit
              OnShow = DataSheetAccessoryShow
              object Splitter7: TSplitter
                Left = 0
                Top = 209
                Width = 1216
                Height = 5
                Cursor = crVSplit
                Align = alTop
                Beveled = True
                Color = clBtnShadow
                ParentColor = False
              end
              object Panel75: TPanel
                Left = 0
                Top = 0
                Width = 1216
                Height = 209
                Align = alTop
                TabOrder = 0
                object Splitter16: TSplitter
                  Left = 873
                  Top = 1
                  Width = 5
                  Height = 207
                  Cursor = crHSplit
                  Beveled = True
                  Color = clBtnShadow
                  ParentColor = False
                end
                object Panel37: TPanel
                  Left = 1
                  Top = 1
                  Width = 872
                  Height = 207
                  Align = alLeft
                  TabOrder = 0
                  object RendFejQryGrid: TdxDBGrid
                    Left = 1
                    Top = 1
                    Width = 870
                    Height = 181
                    Bands = <
                      item
                      end>
                    DefaultLayout = True
                    HeaderPanelRowCount = 1
                    KeyField = 'RendelesAz'
                    SummaryGroups = <>
                    SummarySeparator = ', '
                    Align = alClient
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
                    DataSource = Dm.RendFejQryDs
                    Filter.Active = True
                    Filter.MaxDropDownCount = 5000
                    Filter.Criteria = {00000000}
                    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                    IniSectionName = 'RendFejQryGrid'
                    OptionsBehavior = [edgoAnsiSort, edgoAutoCopySelectedToClipboard, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
                    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
                    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                    ShowHiddenInCustomizeBox = True
                    OnCustomDrawCell = RendFejQryGridCustomDrawCell
                    object RendFejQryGridRendelesAz: TdxDBGridMaskColumn
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendelesAz'
                    end
                    object RendFejQryGridRendSz: TdxDBGridMaskColumn
                      Caption = 'Rendelésszám'
                      HeaderAlignment = taCenter
                      Width = 61
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendSz'
                    end
                    object RendFejQryGridSapRevizio: TdxDBGridColumn
                      Caption = 'Revizio'
                      HeaderAlignment = taCenter
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'SapRevizio'
                    end
                    object RendFejQryGridAjanlatszam: TdxDBGridColumn
                      Caption = 'Ajánlatszám'
                      HeaderAlignment = taCenter
                      Width = 79
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Ajanlatszam'
                    end
                    object RendFejQryGridPhxRendSz: TdxDBGridMaskColumn
                      Caption = 'Phx rendsz.'
                      HeaderAlignment = taCenter
                      Width = 79
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'PhxRendSz'
                    end
                    object RendFejQryGridVevoRendSz: TdxDBGridMaskColumn
                      Caption = 'Vevõi rendsz.'
                      HeaderAlignment = taCenter
                      Width = 86
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VevoRendSz'
                    end
                    object RendFejQryGridVevo: TdxDBGridMaskColumn
                      Caption = 'Vevõ'
                      HeaderAlignment = taCenter
                      Width = 48
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Vevo'
                    end
                    object RendFejQryGridFelhasznalo: TdxDBGridMaskColumn
                      Caption = 'Felhasználó'
                      HeaderAlignment = taCenter
                      Width = 79
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Felhasznalo'
                    end
                    object RendFejQryGridErtTerulet: TdxDBGridColumn
                      Caption = 'Ért.terület'
                      HeaderAlignment = taCenter
                      Width = 69
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ErtTerulet'
                    end
                    object RendFejQryGridRMegj: TdxDBGridMaskColumn
                      Caption = 'Megjegyzés'
                      HeaderAlignment = taCenter
                      Width = 54
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RMegj'
                    end
                    object RendFejQryGridTorolt: TdxDBGridColumn
                      Caption = 'Törölt'
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Torolt'
                    end
                    object RendFejQryGridFAutoUpdate: TdxDBGridCheckColumn
                      Caption = 'Auto.friss.'
                      HeaderAlignment = taCenter
                      Width = 69
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FAutoUpdate'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object RendFejQryGridRevExist: TdxDBGridCheckColumn
                      Caption = 'SAP imp.'
                      HeaderAlignment = taCenter
                      Width = 64
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RevExist'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                  end
                  object ToolBar3: TToolBar
                    Left = 1
                    Top = 182
                    Width = 870
                    Height = 24
                    Align = alBottom
                    AutoSize = True
                    Caption = 'ToolBar3'
                    Flat = True
                    Images = ImageList1
                    TabOrder = 1
                    object DBNavigator15: TDBNavigator
                      Left = 0
                      Top = 0
                      Width = 103
                      Height = 22
                      DataSource = Dm.RendFejQryDs
                      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                      Align = alLeft
                      Flat = True
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                    end
                    object ToolButton17: TToolButton
                      Left = 103
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton17'
                      Style = tbsSeparator
                    end
                    object ToolButton19: TToolButton
                      Left = 111
                      Top = 0
                      Action = OrderRefresh
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton18: TToolButton
                      Left = 134
                      Top = 0
                      Width = 23
                      Caption = 'ToolButton18'
                      ImageIndex = 29
                      Style = tbsSeparator
                    end
                    object ToolButton21: TToolButton
                      Left = 157
                      Top = 0
                      Action = AddBookmark
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton51: TToolButton
                      Left = 180
                      Top = 0
                      Action = ShowBookmarkList
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton25: TToolButton
                      Left = 203
                      Top = 0
                      Width = 23
                      Caption = 'ToolButton25'
                      ImageIndex = 33
                      Style = tbsSeparator
                    end
                    object ToolButton24: TToolButton
                      Left = 226
                      Top = 0
                      Action = Jump2Order
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton31: TToolButton
                      Left = 249
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton31'
                      ImageIndex = 19
                      Style = tbsSeparator
                    end
                    object ToolButton30: TToolButton
                      Left = 257
                      Top = 0
                      Action = SetOrderHeadColWidth
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton47: TToolButton
                      Left = 280
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton47'
                      ImageIndex = 34
                      Style = tbsSeparator
                    end
                    object ToolButton48: TToolButton
                      Left = 288
                      Top = 0
                      Action = OpenAtveteliDocs
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton50: TToolButton
                      Left = 311
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton50'
                      ImageIndex = 35
                      Style = tbsSeparator
                    end
                    object ToolButton49: TToolButton
                      Left = 319
                      Top = 0
                      Action = DrawSearch
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton52: TToolButton
                      Left = 342
                      Top = 0
                      Action = Jump2MfCksz
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton64: TToolButton
                      Left = 365
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton64'
                      ImageIndex = 41
                      Style = tbsSeparator
                    end
                    object ToolButton65: TToolButton
                      Left = 373
                      Top = 0
                      Action = ShowSerials
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton66: TToolButton
                      Left = 396
                      Top = 0
                      Action = ShowOrderComment
                      ParentShowHint = False
                      ShowHint = True
                    end
                  end
                end
                object Panel40: TPanel
                  Left = 878
                  Top = 1
                  Width = 337
                  Height = 207
                  Align = alClient
                  PopupMenu = DataSheetMenu
                  TabOrder = 1
                  object dxDBGrid7: TdxDBGrid
                    Left = 1
                    Top = 1
                    Width = 335
                    Height = 205
                    Bands = <
                      item
                      end>
                    DefaultLayout = True
                    HeaderPanelRowCount = 1
                    SummaryGroups = <>
                    SummarySeparator = ', '
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    BandFont.Charset = DEFAULT_CHARSET
                    BandFont.Color = clWindowText
                    BandFont.Height = -11
                    BandFont.Name = 'MS Sans Serif'
                    BandFont.Style = []
                    DataSource = Dm.RendelesTetelDs
                    Filter.Criteria = {00000000}
                    HeaderFont.Charset = DEFAULT_CHARSET
                    HeaderFont.Color = clBlack
                    HeaderFont.Height = -11
                    HeaderFont.Name = 'MS Sans Serif'
                    HeaderFont.Style = []
                    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                    IniSectionName = 'dxDBGrid7'
                    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
                    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                    PreviewFont.Charset = DEFAULT_CHARSET
                    PreviewFont.Color = clBlue
                    PreviewFont.Height = -11
                    PreviewFont.Name = 'MS Sans Serif'
                    PreviewFont.Style = []
                    OnCustomDrawCell = dxDBGrid7CustomDrawCell
                    object dxDBGrid7RendelesAz: TdxDBGridMaskColumn
                      ReadOnly = True
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendelesAz'
                    end
                    object dxDBGrid7TetelSrsz: TdxDBGridMaskColumn
                      Caption = 'Tétel srsz.'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 53
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TetelSrsz'
                    end
                    object dxDBGrid7Cikkszam: TdxDBGridMaskColumn
                      Caption = 'Cikkszám'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 95
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Cikkszam'
                    end
                    object dxDBGrid7Specifikacio: TdxDBGridMaskColumn
                      Caption = 'Specifikáció'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Specifikacio'
                    end
                    object dxDBGrid7Atmero: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Atmero'
                    end
                    object dxDBGrid7psi: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'psi'
                    end
                    object dxDBGrid7MPa: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'MPa'
                    end
                    object dxDBGrid7Lang: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Lang'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7Bg: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Bg'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7Kg: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Kg'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7Pa: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Pa'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7Tipus: TdxDBGridMaskColumn
                      Visible = False
                      Width = 162
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Tipus'
                    end
                    object dxDBGrid7Csatl1: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Csatl1'
                    end
                    object dxDBGrid7Csatl1Rsz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Csatl1Rsz'
                    end
                    object dxDBGrid7Csatl2: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Csatl2'
                    end
                    object dxDBGrid7Csatl2Rsz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Csatl2Rsz'
                    end
                    object dxDBGrid7DarabSzam: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DarabSzam'
                    end
                    object dxDBGrid7Hossz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Hossz'
                    end
                    object dxDBGrid7HosszMe: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'HosszMe'
                    end
                    object dxDBGrid7TErtek: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TErtek'
                    end
                    object dxDBGrid7TPenznem: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TPenznem'
                    end
                    object dxDBGrid7OsszeallRsz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'OsszeallRsz'
                    end
                    object dxDBGrid7Konstrukcio: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Konstrukcio'
                    end
                    object dxDBGrid7Konstrukcio2: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Konstrukcio2'
                    end
                    object dxDBGrid7TKonfekcio: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TKonfekcio'
                    end
                    object dxDBGrid7TKonfekDatum: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TKonfekDatum'
                    end
                    object dxDBGrid7NormaIdo: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'NormaIdo'
                    end
                    object dxDBGrid7DbjDatum: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'DbjDatum'
                    end
                    object dxDBGrid7MuvDatum: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'MuvDatum'
                    end
                    object dxDBGrid7KonstrDatum: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'KonstrDatum'
                    end
                    object dxDBGrid7FszHatarido: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FszHatarido'
                    end
                    object dxDBGrid7FszBeerk: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'FszBeerk'
                    end
                    object dxDBGrid7Anyag: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Anyag'
                    end
                    object dxDBGrid7Csomagolas: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Csomagolas'
                    end
                    object dxDBGrid7Egyeb: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Egyeb'
                    end
                    object dxDBGrid7TMegj: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TMegj'
                    end
                    object dxDBGrid7TRogzit: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRogzit'
                    end
                    object dxDBGrid7TRogzIdo: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TRogzIdo'
                    end
                    object dxDBGrid7TModosit: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TModosit'
                    end
                    object dxDBGrid7TModIdo: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TModIdo'
                    end
                    object dxDBGrid7ModMezok: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ModMezok'
                    end
                    object dxDBGrid7Torolt: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Torolt'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7Beszolg: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Beszolg'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7TModHatarido: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TModHatarido'
                    end
                    object dxDBGrid7BeszolgIdo: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BeszolgIdo'
                    end
                    object dxDBGrid7BeszolgDb: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BeszolgDb'
                    end
                    object dxDBGrid7BeszolgHossz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 63
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BeszolgHossz'
                    end
                    object dxDBGrid7Tomeg: TdxDBGridMaskColumn
                      Visible = False
                      Width = 57
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Tomeg'
                    end
                    object dxDBGrid7GyartasInd: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'GyartasInd'
                    end
                    object dxDBGrid7BefejezoMuv: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BefejezoMuv'
                    end
                    object dxDBGrid7AccListExist: TdxDBGridCheckColumn
                      Visible = False
                      Width = 88
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'AccListExist'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid7AccListDate: TdxDBGridDateColumn
                      Visible = False
                      Width = 98
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'AccListDate'
                    end
                    object dxDBGrid7AccCreator: TdxDBGridMaskColumn
                      Visible = False
                      Width = 268
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'AccCreator'
                    end
                    object dxDBGrid7BelsoHuvely: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'BelsoHuvely'
                    end
                    object dxDBGrid7Huvely: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Huvely'
                    end
                    object dxDBGrid7Spiralkup: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Spiralkup'
                    end
                    object dxDBGrid7OsszeallitasiRajz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 74
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'OsszeallitasiRajz'
                    end
                    object dxDBGrid7Emelobilincs: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Emelobilincs'
                    end
                    object dxDBGrid7VedoHuvely: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VedoHuvely'
                    end
                    object dxDBGrid7OsztottHuvely: TdxDBGridMaskColumn
                      Visible = False
                      Width = 110
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'OsztottHuvely'
                    end
                    object dxDBGrid7EgyebNev1: TdxDBGridMaskColumn
                      Visible = False
                      Width = 55
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'EgyebNev1'
                    end
                    object dxDBGrid7EgyebKod1: TdxDBGridMaskColumn
                      Visible = False
                      Width = 54
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'EgyebKod1'
                    end
                    object dxDBGrid7EgyebNev2: TdxDBGridMaskColumn
                      Visible = False
                      Width = 55
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'EgyebNev2'
                    end
                    object dxDBGrid7EgyebKod2: TdxDBGridMaskColumn
                      Visible = False
                      Width = 54
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'EgyebKod2'
                    end
                    object dxDBGrid7TAutoUpdate: TdxDBGridCheckColumn
                      Caption = 'Auto.friss.'
                      HeaderAlignment = taCenter
                      Visible = False
                      Width = 69
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TAutoUpdate'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                  end
                end
              end
              object Panel42: TPanel
                Left = 0
                Top = 214
                Width = 1216
                Height = 429
                Align = alClient
                TabOrder = 1
                object Splitter10: TSplitter
                  Left = 864
                  Top = 1
                  Width = 5
                  Height = 427
                  Cursor = crHSplit
                  Align = alRight
                  Beveled = True
                  Color = clBtnShadow
                  ParentColor = False
                end
                object Panel19: TPanel
                  Left = 869
                  Top = 1
                  Width = 346
                  Height = 427
                  Align = alRight
                  TabOrder = 0
                  object Splitter14: TSplitter
                    Left = 1
                    Top = 241
                    Width = 344
                    Height = 5
                    Cursor = crVSplit
                    Align = alTop
                    Beveled = True
                    Color = clBtnShadow
                    ParentColor = False
                  end
                  object Panel38: TPanel
                    Left = 1
                    Top = 1
                    Width = 344
                    Height = 240
                    Align = alTop
                    TabOrder = 0
                    object Panel68: TPanel
                      Left = 1
                      Top = 1
                      Width = 342
                      Height = 16
                      Align = alTop
                      BevelOuter = bvNone
                      Caption = 'Egyéb alkatrészek'
                      Color = 12639424
                      TabOrder = 0
                    end
                    object RendEgyebGrid: TdxDBGrid
                      Left = 1
                      Top = 17
                      Width = 342
                      Height = 195
                      Bands = <
                        item
                        end>
                      DefaultLayout = True
                      HeaderPanelRowCount = 1
                      KeyField = 'Sorszam'
                      SummaryGroups = <>
                      SummarySeparator = ', '
                      Align = alClient
                      ParentShowHint = False
                      PopupMenu = PopupMenu2
                      ShowHint = False
                      TabOrder = 1
                      DataSource = Dm.RendEgyebDs
                      Filter.Active = True
                      Filter.AutoDataSetFilter = True
                      Filter.Criteria = {00000000}
                      IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                      IniSectionName = 'RendEgyebGrid'
                      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                      OnCustomDrawCell = RendEgyebGridCustomDrawCell
                      object RendEgyebGridRendelesAz: TdxDBGridMaskColumn
                        HeaderAlignment = taCenter
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'RendelesAz'
                      end
                      object RendEgyebGridTetelSrsz: TdxDBGridMaskColumn
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'TetelSrsz'
                      end
                      object RendEgyebGridSorszam: TdxDBGridMaskColumn
                        Caption = 'Srsz.'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        Width = 40
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Sorszam'
                      end
                      object RendEgyebGridActive: TdxDBGridCheckColumn
                        Caption = 'Aktív'
                        HeaderAlignment = taCenter
                        Width = 48
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Active'
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                      object RendEgyebGridKiszallitando: TdxDBGridCheckColumn
                        Caption = 'Kiszállítandó'
                        HeaderAlignment = taCenter
                        Width = 100
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Kiszallitando'
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                      object RendEgyebGridMegnevezes: TdxDBGridMaskColumn
                        Caption = 'Megnevezés'
                        HeaderAlignment = taCenter
                        MinWidth = 0
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Megnevezes'
                      end
                      object RendEgyebGridRajzszam: TdxDBGridMaskColumn
                        Caption = 'Rajzszám'
                        HeaderAlignment = taCenter
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Rajzszam'
                      end
                      object RendEgyebGridDarabszam: TdxDBGridMaskColumn
                        Caption = 'db'
                        HeaderAlignment = taCenter
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Darabszam'
                      end
                      object RendEgyebGridDbFuggo: TdxDBGridCheckColumn
                        Caption = 'Db.függõ'
                        HeaderAlignment = taCenter
                        MinWidth = 20
                        Width = 100
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'DbFuggo'
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                      object RendEgyebGridOsszDb: TdxDBGridColumn
                        Caption = 'Össz.db'
                        Color = clSilver
                        DisableEditor = True
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clRed
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold]
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        TabStop = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'OsszDb'
                      end
                      object RendEgyebGridMegjegyzes: TdxDBGridMaskColumn
                        Caption = 'Megjegyzés'
                        HeaderAlignment = taCenter
                        Width = 79
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Megjegyzes'
                      end
                      object RendEgyebGridCreatorName: TdxDBGridColumn
                        Caption = 'Készítette'
                        Color = clSilver
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 70
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'CreatorName'
                      end
                      object RendEgyebGridCreateDate: TdxDBGridColumn
                        Caption = 'Kész.idõp.'
                        Color = clSilver
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 72
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'CreateDate'
                      end
                      object RendEgyebGridTartozekId: TdxDBGridColumn
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'TartozekId'
                      end
                      object RendEgyebGridTomloVegId: TdxDBGridColumn
                        Caption = 'Cs.sz.'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'TomloVegId'
                      end
                    end
                    object ToolBar4: TToolBar
                      Left = 1
                      Top = 212
                      Width = 342
                      Height = 27
                      Align = alBottom
                      AutoSize = True
                      ButtonHeight = 25
                      Caption = 'ToolBar4'
                      Flat = True
                      Images = ImageList1
                      TabOrder = 2
                      object DBNavigator18: TDBNavigator
                        Left = 0
                        Top = 0
                        Width = 240
                        Height = 25
                        DataSource = Dm.RendEgyebDs
                        Align = alLeft
                        Flat = True
                        ParentShowHint = False
                        ShowHint = True
                        TabOrder = 0
                      end
                      object ToolButton27: TToolButton
                        Left = 240
                        Top = 0
                        Width = 8
                        Caption = 'ToolButton27'
                        Style = tbsDivider
                      end
                      object ToolButton28: TToolButton
                        Left = 248
                        Top = 0
                        Action = CopyMisc
                        ParentShowHint = False
                        ShowHint = True
                      end
                      object ToolButton29: TToolButton
                        Left = 271
                        Top = 0
                        Action = PasteMisc
                      end
                    end
                  end
                  object Panel69: TPanel
                    Left = 1
                    Top = 246
                    Width = 344
                    Height = 180
                    Align = alClient
                    TabOrder = 1
                    object Panel70: TPanel
                      Left = 1
                      Top = 1
                      Width = 342
                      Height = 16
                      Align = alTop
                      Caption = 'Biztonsági szerelvények'
                      Color = 10930928
                      TabOrder = 0
                    end
                    object BiztSzerelvGrid: TdxDBGrid
                      Left = 1
                      Top = 17
                      Width = 342
                      Height = 162
                      Bands = <
                        item
                        end>
                      DefaultLayout = True
                      HeaderPanelRowCount = 1
                      KeyField = 'Id'
                      SummaryGroups = <>
                      SummarySeparator = ', '
                      Align = alClient
                      PopupMenu = BiztSzerelvGridMenu
                      TabOrder = 1
                      DataSource = Dm.dsBiztSzerelvenyek
                      Filter.Criteria = {00000000}
                      IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                      IniSectionName = 'BiztSzerelvGrid'
                      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
                      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                      object BiztSzerelvGridId: TdxDBGridMaskColumn
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Id'
                      end
                      object BiztSzerelvGridEszkozFajta: TdxDBGridMaskColumn
                        Caption = 'Eszköz fajta'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 80
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'EszkozFajta'
                      end
                      object BiztSzerelvGridBeszerzes: TdxDBGridMaskColumn
                        Caption = 'Beszerzés'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 71
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Beszerzes'
                      end
                      object BiztSzerelvGridAzonosito: TdxDBGridMaskColumn
                        Caption = 'Azonositó'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 69
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Azonosito'
                      end
                      object BiztSzerelvGridRendSz: TdxDBGridMaskColumn
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'RendSz'
                      end
                      object BiztSzerelvGridRendelesAz: TdxDBGridMaskColumn
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'RendelesAz'
                      end
                      object BiztSzerelvGridTetelSrsz: TdxDBGridMaskColumn
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Visible = False
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'TetelSrsz'
                      end
                      object BiztSzerelvGridRogzitette: TdxDBGridMaskColumn
                        Caption = 'Rögzitette'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 71
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'Rogzitette'
                      end
                      object BiztSzerelvGridRogzIdopont: TdxDBGridColumn
                        Caption = 'Idõpont'
                        Color = clSilver
                        DisableEditor = True
                        HeaderAlignment = taCenter
                        ReadOnly = True
                        Width = 59
                        BandIndex = 0
                        RowIndex = 0
                        FieldName = 'RogzIdopont'
                      end
                    end
                  end
                end
                object Panel12: TPanel
                  Left = 1
                  Top = 1
                  Width = 863
                  Height = 427
                  Align = alClient
                  TabOrder = 1
                  object AdatlapInspector: TdxDBInspector
                    Left = 1
                    Top = 1
                    Width = 861
                    Height = 400
                    Align = alClient
                    Color = clWindow
                    DataSource = Dm.RendelesTetelDs
                    DefaultFields = False
                    PopupMenu = DataSheetMenu
                    TabOrder = 0
                    BandWidth = 199
                    DividerPos = 95
                    Flat = True
                    GridColor = clBtnFace
                    Images = ImageList3
                    Options = [dioAutoBandCount, dioAutoWidth, dioBandSizing, dioCancelOnExit, dioColumnSizing, dioDynamicColumnSizing, dioEditing, dioEnterThrough, dioRowAutoHeight, dioRowSizing]
                    PaintStyle = ipsNET
                    OnGetEditColor = AdatlapInspectorGetEditColor
                    ShowRowHint = True
                    Data = {
                      EB0E000007000000080000000D00000015000000416461746C6170496E737065
                      63746F72526F773632080000000000000016000000416461746C6170496E7370
                      6563746F7241746D65726F080000000000000013000000416461746C6170496E
                      73706563746F72707369080000000000000013000000416461746C6170496E73
                      706563746F724D5061080000000000000014000000416461746C6170496E7370
                      6563746F724C616E67080000000000000012000000416461746C6170496E7370
                      6563746F724267080000000100000012000000416461746C6170496E73706563
                      746F724B67080000000000000019000000416461746C6170496E73706563746F
                      72496E7465726C6F636B080000000000000012000000416461746C6170496E73
                      706563746F725061080000000300000012000000416461746C6170496E737065
                      63746F724B76080000000000000015000000416461746C6170496E7370656374
                      6F724B764D756108000000000000001A000000416461746C6170496E73706563
                      746F724B7646656448656C697808000000000000001B000000416461746C6170
                      496E73706563746F724B764E46656448656C6978080000000000000013000000
                      416461746C6170496E73706563746F7248325308000000000000001500000041
                      6461746C6170496E73706563746F725469707573080000000000000019000000
                      416461746C6170496E73706563746F724461726162537A616D08000000000000
                      0015000000416461746C6170496E73706563746F72486F73737A080000000000
                      000017000000416461746C6170496E73706563746F72486F73737A4D65080000
                      000200000015000000416461746C6170496E73706563746F72526F7736330800
                      00000000000016000000416461746C6170496E73706563746F7254457274656B
                      080000000000000018000000416461746C6170496E73706563746F725450656E
                      7A6E656D080000000800000015000000416461746C6170496E73706563746F72
                      526F773634080000000000000018000000416461746C6170496E73706563746F
                      724E6F726D6149646F08000000000000001B000000416461746C6170496E7370
                      6563746F7246737A486174617269646F08000000000000001800000041646174
                      6C6170496E73706563746F7246737A426565726B08000000000000001C000000
                      416461746C6170496E73706563746F72544D6F64486174617269646F08000000
                      0000000015000000416461746C6170496E73706563746F72416E796167080000
                      00000000001A000000416461746C6170496E73706563746F7243736F6D61676F
                      6C6173080000000000000015000000416461746C6170496E73706563746F7245
                      67796562080000000000000015000000416461746C6170496E73706563746F72
                      544D65676A080000000C00000015000000416461746C6170496E73706563746F
                      72526F773635080000000000000017000000416461746C6170496E7370656374
                      6F7254526F677A6974080000000000000018000000416461746C6170496E7370
                      6563746F7254526F677A49646F080000000000000018000000416461746C6170
                      496E73706563746F7244626A446174756D08000000000000001B000000416461
                      746C6170496E73706563746F724B6F6E737472446174756D0800000000000000
                      1C000000416461746C6170496E73706563746F72544B6F6E66656B446174756D
                      080000000000000018000000416461746C6170496E73706563746F724D757644
                      6174756D080000000000000018000000416461746C6170496E73706563746F72
                      544D6F646F736974080000000000000017000000416461746C6170496E737065
                      63746F72544D6F6449646F080000000000000016000000416461746C6170496E
                      73706563746F72546F726F6C74080000000000000015000000416461746C6170
                      496E73706563746F72526F773638080000000000000015000000416461746C61
                      70496E73706563746F72526F773639080000000000000015000000416461746C
                      6170496E73706563746F72526F77373008000000210000001500000041646174
                      6C6170496E73706563746F72526F77363108000000000000001B000000416461
                      746C6170496E73706563746F724F73737A65616C6C52737A0800000000000000
                      1B000000416461746C6170496E73706563746F724B6F6E737472756B63696F08
                      000000000000001C000000416461746C6170496E73706563746F724B6F6E7374
                      72756B63696F32080000000000000015000000416461746C6170496E73706563
                      746F72526F77393908000000000000001A000000416461746C6170496E737065
                      63746F72544B6F6E66656B63696F080000000000000016000000416461746C61
                      70496E73706563746F72437361746C3108000000000000001900000041646174
                      6C6170496E73706563746F72437361746C3152737A0800000000000000150000
                      00416461746C6170496E73706563746F72526F77393708000000000000001600
                      0000416461746C6170496E73706563746F72437361746C320800000000000000
                      19000000416461746C6170496E73706563746F72437361746C3252737A080000
                      000000000015000000416461746C6170496E73706563746F72526F7739380800
                      0000000000001B000000416461746C6170496E73706563746F7242656C736F48
                      7576656C79080000000000000015000000416461746C6170496E73706563746F
                      72526F773933080000000000000016000000416461746C6170496E7370656374
                      6F72487576656C79080000000000000019000000416461746C6170496E737065
                      63746F7253706972616C6B757008000000000000001C000000416461746C6170
                      496E73706563746F72456D656C6F62696C696E63730800000000000000150000
                      00416461746C6170496E73706563746F72526F77393408000000000000001500
                      0000416461746C6170496E73706563746F72456245787408000000000000001B
                      000000416461746C6170496E73706563746F7242697A7442696C696E63730800
                      00000000000015000000416461746C6170496E73706563746F72526F77393508
                      0000000000000015000000416461746C6170496E73706563746F724262457874
                      08000000000000001A000000416461746C6170496E73706563746F725665646F
                      487576656C7908000000000000001D000000416461746C6170496E7370656374
                      6F724F737A746F7474487576656C79080000000000000015000000416461746C
                      6170496E73706563746F724F6845787408000000000000001500000041646174
                      6C6170496E73706563746F72526F773637080000000000000019000000416461
                      746C6170496E73706563746F72496E7370656B746F7208000000000000001D00
                      0000416461746C6170496E73706563746F72496E73706563746F724D65676A08
                      000000000000001C000000416461746C6170496E73706563746F724163634C69
                      73744578697374080000000000000016000000416461746C6170496E73706563
                      746F72526F7731303308000000000000001B000000416461746C6170496E7370
                      6563746F724163634C6973744461746508000000000000001500000041646174
                      6C6170496E73706563746F72526F773932080000000000000015000000416461
                      746C6170496E73706563746F72526F7739310800000000000000150000004164
                      61746C6170496E73706563746F72526F77393008000000100000001500000041
                      6461746C6170496E73706563746F72526F773735080000000000000015000000
                      416461746C6170496E73706563746F72526F7737330800000000000000150000
                      00416461746C6170496E73706563746F72526F77373408000000000000001500
                      0000416461746C6170496E73706563746F72526F773736080000000000000015
                      000000416461746C6170496E73706563746F72526F7737370800000000000000
                      15000000416461746C6170496E73706563746F72526F77373808000000000000
                      0015000000416461746C6170496E73706563746F72526F773739080000000000
                      000015000000416461746C6170496E73706563746F72526F7738320800000000
                      00000015000000416461746C6170496E73706563746F72526F77383308000000
                      0000000015000000416461746C6170496E73706563746F72526F773830080000
                      000000000015000000416461746C6170496E73706563746F72526F7738310800
                      00000000000015000000416461746C6170496E73706563746F72526F77383408
                      0000000000000015000000416461746C6170496E73706563746F72526F773835
                      080000000000000015000000416461746C6170496E73706563746F72526F7738
                      36080000000000000015000000416461746C6170496E73706563746F72526F77
                      3837080000000000000015000000416461746C6170496E73706563746F72526F
                      773838080000000000000015000000416461746C6170496E73706563746F7252
                      6F773839080000000700000015000000416461746C6170496E73706563746F72
                      526F773636080000000000000017000000416461746C6170496E73706563746F
                      724265737A6F6C6708000000000000001A000000416461746C6170496E737065
                      63746F724265737A6F6C6749646F080000000000000019000000416461746C61
                      70496E73706563746F724265737A6F6C67446208000000000000001C00000041
                      6461746C6170496E73706563746F724265737A6F6C67486F73737A0800000000
                      00000015000000416461746C6170496E73706563746F72546F6D656708000000
                      000000001A000000416461746C6170496E73706563746F724779617274617349
                      6E6408000000000000001B000000416461746C6170496E73706563746F724265
                      66656A657A6F4D7576080000000800000000EDF00015000000416461746C6170
                      496E73706563746F72526F7736320800000028F3F10012000000416461746C61
                      70496E73706563746F724B670800000044F4F10012000000416461746C617049
                      6E73706563746F724B760800000004F4F10015000000416461746C6170496E73
                      706563746F72526F77363308000000E402F10015000000416461746C6170496E
                      73706563746F72526F77363408000000D836F10015000000416461746C617049
                      6E73706563746F72526F77363508000000F071F10015000000416461746C6170
                      496E73706563746F72526F773631080000003CA5360C15000000416461746C61
                      70496E73706563746F72526F773735}
                    object AdatlapInspectorAtmero: TdxInspectorDBMaskRow
                      Caption = 'Átmérõ'
                      ReadOnly = True
                      FieldName = 'Atmero'
                    end
                    object AdatlapInspectorpsi: TdxInspectorDBMaskRow
                      Caption = 'WP [psi]'
                      ReadOnly = True
                      FieldName = 'psi'
                    end
                    object AdatlapInspectorMPa: TdxInspectorDBMaskRow
                      Caption = 'WP [MPa]'
                      ReadOnly = True
                      FieldName = 'MPa'
                    end
                    object AdatlapInspectorLang: TdxInspectorDBCheckRow
                      Caption = 'Lángálló'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Lang'
                    end
                    object AdatlapInspectorBg: TdxInspectorDBCheckRow
                      Caption = 'Belsõgégecsõ'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Bg'
                    end
                    object AdatlapInspectorKg: TdxInspectorDBCheckRow
                      Caption = 'Külsõgégecsõ'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Kg'
                    end
                    object AdatlapInspectorPa: TdxInspectorDBCheckRow
                      Caption = 'Poliamid'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Pa'
                    end
                    object AdatlapInspectorTipus: TdxInspectorDBMaskRow
                      Caption = 'Tömlõ neve'
                      ReadOnly = True
                      FieldName = 'Tipus'
                    end
                    object AdatlapInspectorCsatl2: TdxInspectorDBMaskRow
                      Caption = 'Csatlakozó "B"'
                      FieldName = 'Csatl2'
                    end
                    object AdatlapInspectorDarabSzam: TdxInspectorDBMaskRow
                      Caption = 'Darabszám'
                      ReadOnly = True
                      FieldName = 'DarabSzam'
                    end
                    object AdatlapInspectorHossz: TdxInspectorDBMaskRow
                      Caption = 'Tömlõ hossz'
                      ReadOnly = True
                      FieldName = 'Hossz'
                    end
                    object AdatlapInspectorHosszMe: TdxInspectorDBMaskRow
                      Caption = 'Hossz mért.'
                      ReadOnly = True
                      FieldName = 'HosszMe'
                    end
                    object AdatlapInspectorTErtek: TdxInspectorDBMaskRow
                      Caption = 'Tétel érték'
                      ReadOnly = True
                      FieldName = 'TErtek'
                    end
                    object AdatlapInspectorTPenznem: TdxInspectorDBMaskRow
                      Caption = 'Pénznem'
                      ReadOnly = True
                      FieldName = 'TPenznem'
                    end
                    object AdatlapInspectorTKonfekcio: TdxInspectorDBMaskRow
                      Caption = 'Konfekció'
                      Hint = 'Nem használt mezõ!'
                      ReadOnly = True
                      ShowHint = True
                      FieldName = 'TKonfekcio'
                    end
                    object AdatlapInspectorNormaIdo: TdxInspectorDBMaskRow
                      Caption = 'Normaidõ'
                      FieldName = 'NormaIdo'
                    end
                    object AdatlapInspectorDbjDatum: TdxInspectorDBDateRow
                      Caption = 'Darabj. dátuma'
                      FieldName = 'DbjDatum'
                    end
                    object AdatlapInspectorMuvDatum: TdxInspectorDBDateRow
                      Caption = 'Mûveletterv dátuma'
                      FieldName = 'MuvDatum'
                    end
                    object AdatlapInspectorFszHatarido: TdxInspectorDBDateRow
                      Caption = 'Fémszer határidõ'
                      FieldName = 'FszHatarido'
                    end
                    object AdatlapInspectorFszBeerk: TdxInspectorDBDateRow
                      Caption = 'Fémszer.beérkezés'
                      FieldName = 'FszBeerk'
                    end
                    object AdatlapInspectorAnyag: TdxInspectorDBMaskRow
                      ReadOnly = True
                      FieldName = 'Anyag'
                    end
                    object AdatlapInspectorCsomagolas: TdxInspectorDBMaskRow
                      Caption = 'Csomagolás'
                      ReadOnly = True
                      FieldName = 'Csomagolas'
                    end
                    object AdatlapInspectorEgyeb: TdxInspectorDBMaskRow
                      Caption = 'Egyéb'
                      ReadOnly = True
                      FieldName = 'Egyeb'
                    end
                    object AdatlapInspectorTMegj: TdxInspectorDBMaskRow
                      Caption = 'Megjegyzés'
                      ReadOnly = True
                      FieldName = 'TMegj'
                    end
                    object AdatlapInspectorTModosit: TdxInspectorDBMaskRow
                      Caption = 'Módosította'
                      ReadOnly = True
                      FieldName = 'TModosit'
                    end
                    object AdatlapInspectorTorolt: TdxInspectorDBCheckRow
                      Caption = 'Törölt'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Torolt'
                    end
                    object AdatlapInspectorBeszolg: TdxInspectorDBCheckRow
                      Caption = 'Beszolgáltatva'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Beszolg'
                    end
                    object AdatlapInspectorTModHatarido: TdxInspectorDBDateRow
                      Caption = 'Mód.határidõ'
                      ReadOnly = True
                      FieldName = 'TModHatarido'
                    end
                    object AdatlapInspectorBeszolgIdo: TdxInspectorDBDateRow
                      Caption = 'Beszolg.idõpont'
                      ReadOnly = True
                      FieldName = 'BeszolgIdo'
                    end
                    object AdatlapInspectorBeszolgDb: TdxInspectorDBMaskRow
                      Caption = 'Beszolg.darab'
                      ReadOnly = True
                      FieldName = 'BeszolgDb'
                    end
                    object AdatlapInspectorBeszolgHossz: TdxInspectorDBMaskRow
                      Caption = 'Beszolg.hossz'
                      ReadOnly = True
                      FieldName = 'BeszolgHossz'
                    end
                    object AdatlapInspectorTomeg: TdxInspectorDBMaskRow
                      Caption = 'Tömeg'
                      ReadOnly = True
                      FieldName = 'Tomeg'
                    end
                    object AdatlapInspectorGyartasInd: TdxInspectorDBDateRow
                      Caption = 'Gyárt.indítás'
                      ReadOnly = True
                      FieldName = 'GyartasInd'
                    end
                    object AdatlapInspectorBefejezoMuv: TdxInspectorDBDateRow
                      Caption = 'Befejezõ mûv.'
                      ReadOnly = True
                      FieldName = 'BefejezoMuv'
                    end
                    object AdatlapInspectorAccListExist: TdxInspectorDBCheckRow
                      Caption = 'Alkatrészlista kész'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'AccListExist'
                    end
                    object AdatlapInspectorAccCreator: TdxInspectorDBMaskRow
                      Caption = 'Alkatrészlista készítõ'
                      ReadOnly = True
                      Visible = False
                      FieldName = 'AccCreator'
                    end
                    object AdatlapInspectorRow61: TdxInspectorComplexRow
                      Caption = 'Mûszaki adatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorRow62: TdxInspectorComplexRow
                      Caption = 'Alapadatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorRow63: TdxInspectorComplexRow
                      Caption = 'Érték adatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorRow64: TdxInspectorComplexRow
                      Caption = 'Egyéb adatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorRow65: TdxInspectorComplexRow
                      Caption = 'Kezelési adatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorRow66: TdxInspectorComplexRow
                      Caption = 'Gyártási adatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorCsatl1: TdxInspectorDBMaskRow
                      Caption = 'Csatlakozó "A"'
                      Hint = 'Mindig erre a végre kell kerülni a legnagyobb átmérõnek!'
                      ImageIndex = 0
                      ShowHint = True
                      FieldName = 'Csatl1'
                    end
                    object AdatlapInspectorCsatl1Rsz: TdxInspectorDBButtonRow
                      Caption = 'Csatl."A" rsz.'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ImageIndex = 0
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorCsatl1RszButtonClick
                      FieldName = 'Csatl1Rsz'
                    end
                    object AdatlapInspectorCsatl2Rsz: TdxInspectorDBButtonRow
                      Caption = 'Csatl."B" rsz.'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorCsatl2RszButtonClick
                      FieldName = 'Csatl2Rsz'
                    end
                    object AdatlapInspectorBelsoHuvely: TdxInspectorDBButtonRow
                      Caption = 'Belsõ hüvely'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorBelsoHuvelyButtonClick
                      FieldName = 'BelsoHuvely'
                    end
                    object AdatlapInspectorHuvely: TdxInspectorDBButtonRow
                      Caption = 'Hüvely'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorHuvelyButtonClick
                      FieldName = 'Huvely'
                    end
                    object AdatlapInspectorBiztBilincs: TdxInspectorDBButtonRow
                      Caption = 'Bizt.bilincs'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorBiztBilincsButtonClick
                      FieldName = 'BiztBilincs'
                    end
                    object AdatlapInspectorRow68: TdxInspectorDBCheckRow
                      Caption = 'Átvételi kész.'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'AtveteliKesz'
                    end
                    object AdatlapInspectorRow69: TdxInspectorDBMaskRow
                      Caption = 'Átvételit készítette'
                      ReadOnly = True
                      FieldName = 'AtvetelitKeszitette'
                    end
                    object AdatlapInspectorRow70: TdxInspectorDBMaskRow
                      Caption = 'Átvételi idõpontja'
                      ReadOnly = True
                      FieldName = 'AtveteliIdopont'
                    end
                    object AdatlapInspectorSpiralkup: TdxInspectorDBButtonRow
                      Caption = 'Spirálkúp'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorSpiralkupButtonClick
                      FieldName = 'Spiralkup'
                    end
                    object AdatlapInspectorEmelobilincs: TdxInspectorDBButtonRow
                      Caption = 'Emelõbilincs'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorEmelobilincsButtonClick
                      FieldName = 'Emelobilincs'
                    end
                    object AdatlapInspectorVedoHuvely: TdxInspectorDBButtonRow
                      Caption = 'Védõhüvely'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorVedoHuvelyButtonClick
                      FieldName = 'VedoHuvely'
                    end
                    object AdatlapInspectorOsztottHuvely: TdxInspectorDBButtonRow
                      Caption = 'Osztotthüvely'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorOsztottHuvelyButtonClick
                      FieldName = 'OsztottHuvely'
                    end
                    object AdatlapInspectorKonstrukcio: TdxInspectorDBButtonRow
                      Caption = 'Konstrukció'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorKonstrukcioButtonClick
                      FieldName = 'Konstrukcio'
                    end
                    object AdatlapInspectorKonstrukcio2: TdxInspectorDBButtonRow
                      Caption = 'Konstrukció 2.'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorKonstrukcio2ButtonClick
                      FieldName = 'Konstrukcio2'
                    end
                    object AdatlapInspectorKv: TdxInspectorDBCheckRow
                      Caption = 'Külsõ védelem'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'Kv'
                    end
                    object AdatlapInspectorInspektor: TdxInspectorDBExtLookupRow
                      Caption = 'Inspektor'
                      PopupFormBorderStyle = pbsSimple
                      PopupFormClientEdge = True
                      PopupFormSizeable = False
                      PopupHeight = 160
                      PopupMinHeight = 160
                      PopupWidth = 150
                      DBGridLayout = InspectorLayout
                      PickListField = 'InspectorName'
                      FieldName = 'Inspector'
                    end
                    object AdatlapInspectorInterlock: TdxInspectorDBCheckRow
                      Caption = 'Interlock'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'KgInter'
                    end
                    object AdatlapInspectorKvMua: TdxInspectorDBCheckRow
                      Caption = 'Mûanyag'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'KvMua'
                    end
                    object AdatlapInspectorKvFedHelix: TdxInspectorDBCheckRow
                      Caption = 'Fedett helix'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'KvFedHelix'
                    end
                    object AdatlapInspectorKvNFedHelix: TdxInspectorDBCheckRow
                      Caption = 'Nem fed.helix'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'KvNFedHelix'
                    end
                    object AdatlapInspectorRow73: TdxInspectorDBRow
                      Caption = 'Type Of Coupling1'
                      ReadOnly = True
                      FieldName = 'SapTypeOfCoupling1'
                    end
                    object AdatlapInspectorRow74: TdxInspectorDBRow
                      Caption = 'Type Of Coupling2'
                      ReadOnly = True
                      FieldName = 'SapTypeOfCoupling2'
                    end
                    object AdatlapInspectorRow75: TdxInspectorComplexRow
                      Caption = 'SAP mûszaki adatok'
                      IsCategory = True
                      Items = <>
                    end
                    object AdatlapInspectorRow76: TdxInspectorDBRow
                      ReadOnly = True
                      FieldName = 'Marking'
                    end
                    object AdatlapInspectorRow77: TdxInspectorDBRow
                      ReadOnly = True
                      FieldName = 'Standard'
                    end
                    object AdatlapInspectorRow78: TdxInspectorDBRow
                      Caption = 'Standard Text'
                      ReadOnly = True
                      FieldName = 'StandardText'
                    end
                    object AdatlapInspectorRow79: TdxInspectorDBRow
                      Caption = 'Type Of Packing'
                      ReadOnly = True
                      FieldName = 'TypeOfPacking'
                    end
                    object AdatlapInspectorRow80: TdxInspectorDBRow
                      Caption = 'Design Pressure'
                      ReadOnly = True
                      FieldName = 'DesignPressure'
                    end
                    object AdatlapInspectorRow81: TdxInspectorDBRow
                      Caption = 'Design Pressure Unit'
                      ReadOnly = True
                      FieldName = 'DesignPressureUnit'
                    end
                    object AdatlapInspectorRow82: TdxInspectorDBRow
                      Caption = 'Working Pressure'
                      ReadOnly = True
                      FieldName = 'WorkingPressure'
                    end
                    object AdatlapInspectorRow83: TdxInspectorDBRow
                      ReadOnly = True
                      FieldName = 'WorkingPressureUnit'
                    end
                    object AdatlapInspectorRow84: TdxInspectorDBRow
                      Caption = 'Test Pressure'
                      ReadOnly = True
                      FieldName = 'TestPressure'
                    end
                    object AdatlapInspectorRow85: TdxInspectorDBRow
                      Caption = 'Test Pressure Unit'
                      ReadOnly = True
                      FieldName = 'TestPressureUnit'
                    end
                    object AdatlapInspectorRow86: TdxInspectorDBRow
                      Caption = 'Safety Factor'
                      ReadOnly = True
                      FieldName = 'SafetyFactor'
                    end
                    object AdatlapInspectorRow87: TdxInspectorDBRow
                      Caption = 'Type Of Lining'
                      ReadOnly = True
                      FieldName = 'TypeOfLining'
                    end
                    object AdatlapInspectorRow88: TdxInspectorDBRow
                      Caption = 'Min.Temperature'
                      ReadOnly = True
                      FieldName = 'MinDesignTemperature'
                    end
                    object AdatlapInspectorRow89: TdxInspectorDBRow
                      Caption = 'Max.Temperature'
                      ReadOnly = True
                      FieldName = 'MaxDesignTemperature'
                    end
                    object AdatlapInspectorTRogzit: TdxInspectorDBRow
                      Caption = 'Rögzítette'
                      ReadOnly = True
                      FieldName = 'TRogzit'
                    end
                    object AdatlapInspectorTRogzIdo: TdxInspectorDBRow
                      Caption = 'Rögz.idõpontja'
                      ReadOnly = True
                      FieldName = 'TRogzIdo'
                    end
                    object AdatlapInspectorKonstrDatum: TdxInspectorDBRow
                      Caption = 'Konstrukció dátuma'
                      ReadOnly = True
                      FieldName = 'KonstrDatum'
                    end
                    object AdatlapInspectorTKonfekDatum: TdxInspectorDBRow
                      Caption = 'Konfekció dátuma'
                      ReadOnly = True
                      FieldName = 'TKonfekDatum'
                    end
                    object AdatlapInspectorAccListDate: TdxInspectorDBRow
                      Caption = 'Alkatrészlista dátuma'
                      ReadOnly = True
                      FieldName = 'AccListDate'
                    end
                    object AdatlapInspectorTModIdo: TdxInspectorDBRow
                      Caption = 'Mód.idõpontja'
                      ReadOnly = True
                      FieldName = 'TModIdo'
                    end
                    object AdatlapInspectorRow90: TdxInspectorDBRow
                      Caption = 'Levélküldés idõp.'
                      ReadOnly = True
                      FieldName = 'AccListMailDate'
                    end
                    object AdatlapInspectorRow91: TdxInspectorDBRow
                      Caption = 'Levelet küldte'
                      ReadOnly = True
                      FieldName = 'AccListMailSender'
                    end
                    object AdatlapInspectorRow92: TdxInspectorDBCheckRow
                      Caption = 'Levél elküldve'
                      ReadOnly = True
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                      FieldName = 'AccListMailSent'
                    end
                    object AdatlapInspectorRow93: TdxInspectorDBRow
                      Caption = 'Belsõ h. anyag'
                      FieldName = 'BhAnyag'
                    end
                    object AdatlapInspectorRow94: TdxInspectorDBRow
                      Caption = 'Emelõ bil.méret'
                      FieldName = 'EbMeret'
                    end
                    object AdatlapInspectorRow95: TdxInspectorDBRow
                      Caption = 'Bizt.bil.méret'
                      FieldName = 'BbMeret'
                    end
                    object AdatlapInspectorH2S: TdxInspectorDBCheckRow
                      Caption = 'H2S Services'
                      AllowGrayed = True
                      ShowNullFieldStyle = nsGrayedChecked
                      ValueChecked = '1'
                      ValueGrayed = '-1'
                      ValueUnchecked = '0'
                      FieldName = 'H2S'
                    end
                    object AdatlapInspectorRow97: TdxInspectorDBRow
                      Caption = '"A" vég max. OD'
                      FieldName = 'Csatl1MaxAtmero'
                    end
                    object AdatlapInspectorRow98: TdxInspectorDBRow
                      Caption = '"B" vég max. OD'
                      FieldName = 'Csatl2MaxAtmero'
                    end
                    object AdatlapInspectorRow99: TdxInspectorDBRow
                      Caption = 'Tömlõtest.max.OD'
                      FieldName = 'KonstrukcioMaxAtmero'
                    end
                    object AdatlapInspectorEbExt: TdxInspectorDBButtonRow
                      Caption = 'E.b.jellemzõk'
                      Hint = 'Emelõbilincs azonosítók'
                      ShowHint = True
                      ButtonOnly = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorEbExtButtonClick
                    end
                    object AdatlapInspectorBbExt: TdxInspectorDBButtonRow
                      Caption = 'B.b.jellemzõk'
                      ButtonOnly = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorEbExtButtonClick
                    end
                    object AdatlapInspectorOsszeallRsz: TdxInspectorDBButtonRow
                      Caption = 'Összeállítási rsz.'
                      Hint = #39'Ctrl'#39'+F = rajz behívás'
                      ShowHint = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorOsszeallRszButtonClick
                      FieldName = 'OsszeallRsz'
                    end
                    object AdatlapInspectorOhExt: TdxInspectorDBButtonRow
                      Caption = 'O.h.jellemzõk'
                      ButtonOnly = True
                      Buttons = <
                        item
                          Default = True
                        end>
                      OnButtonClick = AdatlapInspectorEbExtButtonClick
                    end
                    object AdatlapInspectorInspectorMegj: TdxInspectorDBExtLookupRow
                      Caption = 'Ins.megj.'
                      HideEditCursor = True
                      PopupFormBorderStyle = pbsSimple
                      PopupFormClientEdge = True
                      PopupFormSizeable = False
                      PopupHeight = 100
                      PopupMinHeight = 60
                      PopupWidth = 150
                      DBGridLayout = InspekcioLayout
                      PickListField = 'Inspekcio'
                      FieldName = 'InspectorMegj'
                    end
                    object AdatlapInspectorRow67: TdxInspectorDBMemoRow
                      Caption = 'Egyéb mûszaki jell. megjegyzések'
                      MaxLength = 500
                      WantTabs = True
                      FieldName = 'Egyebek'
                    end
                    object AdatlapInspectorRow103: TdxInspectorDBRow
                      Caption = 'Alkatrészlista készítõ'
                      ReadOnly = True
                      FieldName = 'AccCreator'
                    end
                  end
                  object ToolBar2: TToolBar
                    Left = 1
                    Top = 401
                    Width = 861
                    Height = 25
                    Align = alBottom
                    AutoSize = True
                    ButtonHeight = 23
                    Caption = 'ToolBar2'
                    Flat = True
                    Images = ImageList1
                    TabOrder = 1
                    object DBNavigator16: TDBNavigator
                      Left = 0
                      Top = 0
                      Width = 208
                      Height = 23
                      DataSource = Dm.RendelesTetelDs
                      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
                      Flat = True
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                    end
                    object ToolButton3: TToolButton
                      Left = 208
                      Top = 0
                      Width = 17
                      Caption = 'ToolButton3'
                      Style = tbsSeparator
                    end
                    object ToolButton10: TToolButton
                      Left = 225
                      Top = 0
                      Action = AutoChangeAccept
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton26: TToolButton
                      Left = 248
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton26'
                      ImageIndex = 5
                      Style = tbsSeparator
                    end
                    object ToolButton4: TToolButton
                      Left = 256
                      Top = 0
                      Action = AlkatreszExport
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton15: TToolButton
                      Left = 279
                      Top = 0
                      Action = EmailSent
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton16: TToolButton
                      Left = 302
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton16'
                      ImageIndex = 5
                      Style = tbsSeparator
                    end
                    object ToolButton8: TToolButton
                      Left = 310
                      Top = 0
                      Hint = 'Adatok importálása adatlapból'
                      Action = DataSheetImport
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton13: TToolButton
                      Left = 333
                      Top = 0
                      Action = CopyTechnicalData
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton14: TToolButton
                      Left = 356
                      Top = 0
                      Action = PasteTechnicalData
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton5: TToolButton
                      Left = 379
                      Top = 0
                      Width = 17
                      Caption = 'ToolButton5'
                      ImageIndex = 0
                      Style = tbsSeparator
                    end
                    object ToolButton6: TToolButton
                      Left = 396
                      Top = 0
                      Action = AtveteliExport
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton7: TToolButton
                      Left = 419
                      Top = 0
                      Width = 8
                      Caption = 'ToolButton7'
                      ImageIndex = 14
                      Style = tbsSeparator
                    end
                    object ToolButton9: TToolButton
                      Left = 427
                      Top = 0
                      Action = ItemChanges
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton11: TToolButton
                      Left = 450
                      Top = 0
                      Action = KonstrSearch
                      ParentShowHint = False
                      ShowHint = True
                    end
                    object ToolButton12: TToolButton
                      Left = 473
                      Top = 0
                      Action = CkszSearch
                      ParentShowHint = False
                      ShowHint = True
                    end
                  end
                end
              end
            end
            object DataSheetQualification: TTabSheet
              Tag = 5220
              Caption = 'Minõsítés'
              ImageIndex = 1
              OnShow = DataSheetQualificationShow
              object Panel48: TPanel
                Left = 0
                Top = 0
                Width = 923
                Height = 600
                Align = alClient
                BevelInner = bvLowered
                BevelOuter = bvLowered
                TabOrder = 0
                object Splitter11: TSplitter
                  Left = 2
                  Top = 177
                  Width = 919
                  Height = 5
                  Cursor = crVSplit
                  Align = alTop
                  Beveled = True
                end
                object Panel49: TPanel
                  Left = 2
                  Top = 564
                  Width = 919
                  Height = 34
                  Align = alBottom
                  BevelInner = bvLowered
                  BevelOuter = bvLowered
                  TabOrder = 0
                  object BitBtn1: TBitBtn
                    Left = 8
                    Top = 4
                    Width = 137
                    Height = 25
                    Action = QualificationOpen
                    Caption = 'Adatok frissítése'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 0
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
                  end
                  object BitBtn4: TBitBtn
                    Left = 152
                    Top = 4
                    Width = 137
                    Height = 25
                    Action = QualificationReport
                    Caption = 'Kiadott tételek'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 1
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                      0033333337FFFFFF773333333000000003333333377777777333}
                    NumGlyphs = 2
                  end
                  object BitBtn5: TBitBtn
                    Left = 296
                    Top = 4
                    Width = 137
                    Height = 25
                    Action = QualificationModReport
                    Caption = 'Módosítások'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 2
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                      0033333337FFFFFF773333333000000003333333377777777333}
                    NumGlyphs = 2
                  end
                  object BitBtn7: TBitBtn
                    Left = 584
                    Top = 4
                    Width = 137
                    Height = 25
                    Hint = 'Bizonylatszám megadása'
                    Caption = 'Bizonylatszám'
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 3
                    OnClick = BitBtn7Click
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
                      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
                      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
                      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
                      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
                      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
                      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
                      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
                      00333377737FFFFF773333303300000003333337337777777333}
                    NumGlyphs = 2
                  end
                  object KiadatlanBtn: TBitBtn
                    Left = 440
                    Top = 4
                    Width = 137
                    Height = 25
                    Action = KiadatlanTetelek
                    Caption = 'KiadatlanTetelek'
                    TabOrder = 4
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF0000000000FFFFFF00000000000000000000000000FFFF
                      FF0000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF0000000000FFFFFF000000000000000000FFFFFF000000
                      000000000000FFFFFF000000000000000000FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF000000000000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF0000000000FFFFFF0000FFFF000000000000000000FFFFFF000000
                      0000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF0000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF0000000000FFFF
                      FF0000FFFF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF000000
                      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
                      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF000000
                      000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
                      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
                      0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
                      FF00FFFFFF00FFFFFF0000000000000000000000000000000000FFFF00000000
                      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000000000000000
                      0000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFF0000FFFF
                      00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FF
                      FF0000000000FFFFFF0000000000FFFFFF0000000000FF00FF00FFFF0000FFFF
                      0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000
                      0000FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FFFF0000FFFF
                      0000FFFF0000FFFF000000000000000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
                  end
                end
                object Panel46: TPanel
                  Left = 2
                  Top = 182
                  Width = 919
                  Height = 382
                  Align = alClient
                  TabOrder = 1
                  object Splitter9: TSplitter
                    Left = 545
                    Top = 1
                    Width = 5
                    Height = 380
                    Cursor = crHSplit
                    Beveled = True
                  end
                  object RendMinGrid: TdxDBGrid
                    Left = 1
                    Top = 1
                    Width = 544
                    Height = 380
                    Bands = <
                      item
                      end>
                    DefaultLayout = True
                    HeaderPanelRowCount = 1
                    SummaryGroups = <>
                    SummarySeparator = ', '
                    Align = alLeft
                    DragMode = dmAutomatic
                    TabOrder = 0
                    DataSource = Dm.RendMinDs
                    Filter.Criteria = {00000000}
                    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                    IniSectionName = 'RendMinGrid'
                    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
                    OnCustomDrawCell = RendMinGridCustomDrawCell
                    object RendMinGridRendelesAz: TdxDBGridMaskColumn
                      TabStop = False
                      Visible = False
                      Width = 31
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendelesAz'
                    end
                    object RendMinGridTetelSrsz: TdxDBGridMaskColumn
                      Caption = 'Tétel srsz.'
                      Color = clInactiveCaption
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      TabStop = False
                      Width = 71
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TetelSrsz'
                    end
                    object RendMinGridMinId: TdxDBGridMaskColumn
                      TabStop = False
                      Visible = False
                      Width = 31
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'MinId'
                    end
                    object RendMinGridTipusnev: TdxDBGridMaskColumn
                      Caption = 'Típusnév'
                      Color = clInactiveCaption
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      TabStop = False
                      Width = 122
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Tipusnev'
                    end
                    object RendMinGridMegnevezes: TdxDBGridMaskColumn
                      Caption = 'Megnevezés'
                      Color = clInactiveCaption
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      TabStop = False
                      Width = 147
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Megnevezes'
                    end
                    object RendMinGridRajzszam: TdxDBGridMaskColumn
                      Caption = 'Rajzszám'
                      Color = clInactiveCaption
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      TabStop = False
                      Width = 89
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Rajzszam'
                    end
                    object RendMinGridCikkszam: TdxDBGridMaskColumn
                      Caption = 'Cikkszám'
                      HeaderAlignment = taCenter
                      Width = 66
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Cikkszam'
                    end
                    object RendMinGridDarabszam: TdxDBGridMaskColumn
                      Caption = 'Darabszám'
                      Color = clInactiveCaption
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      TabStop = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Darabszam'
                    end
                    object RendMinGridKiadottDarab: TdxDBGridMaskColumn
                      Caption = 'Kiadott db'
                      HeaderAlignment = taCenter
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'KiadottDarab'
                    end
                    object RendMinGridEgyenleg: TdxDBGridMaskColumn
                      Color = clYellow
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      TabStop = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Egyenleg'
                    end
                    object RendMinGridBizonylatszam: TdxDBGridMaskColumn
                      Caption = 'Bizonylatszám'
                      Width = 167
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Bizonylatszam'
                    end
                  end
                  object MinSarzsGrid: TdxDBGrid
                    Left = 550
                    Top = 1
                    Width = 368
                    Height = 380
                    Bands = <
                      item
                      end>
                    DefaultLayout = True
                    HeaderPanelRowCount = 1
                    SummaryGroups = <>
                    SummarySeparator = ', '
                    Align = alClient
                    TabOrder = 1
                    DataSource = Dm.RendSarzsDs
                    Filter.Criteria = {00000000}
                    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                    IniSectionName = 'MinSarzsGrid'
                    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
                    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                    object MinSarzsGridMinId: TdxDBGridMaskColumn
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'MinId'
                    end
                    object MinSarzsGridMinItemId: TdxDBGridMaskColumn
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'MinItemId'
                    end
                    object MinSarzsGridSarzsszam: TdxDBGridMaskColumn
                      Caption = 'Sarzsszám'
                      HeaderAlignment = taCenter
                      Width = 73
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Sarzsszam'
                    end
                    object MinSarzsGridMegjegyzes: TdxDBGridMaskColumn
                      Caption = 'Megjegyzés'
                      HeaderAlignment = taCenter
                      Width = 79
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Megjegyzes'
                    end
                  end
                end
                object Panel47: TPanel
                  Left = 2
                  Top = 2
                  Width = 919
                  Height = 175
                  Align = alTop
                  TabOrder = 2
                  object RendRaktarGrid: TdxDBGrid
                    Left = 1
                    Top = 1
                    Width = 917
                    Height = 144
                    Bands = <
                      item
                      end>
                    DefaultLayout = True
                    HeaderPanelRowCount = 1
                    KeyField = 'RendelesAz'
                    SummaryGroups = <>
                    SummarySeparator = ', '
                    Align = alClient
                    TabOrder = 0
                    DataSource = Dm.dsRendRaktar
                    Filter.Criteria = {00000000}
                    OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
                    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
                    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                    object RendRaktarGridRendelesAz: TdxDBGridMaskColumn
                      Visible = False
                      Width = 90
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendelesAz'
                    end
                    object RendRaktarGridRendSz: TdxDBGridMaskColumn
                      Width = 61
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendSz'
                    end
                    object RendRaktarGridPhxRendSz: TdxDBGridMaskColumn
                      Width = 79
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'PhxRendSz'
                    end
                    object RendRaktarGridVevoRendSz: TdxDBGridMaskColumn
                      Width = 86
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'VevoRendSz'
                    end
                    object RendRaktarGridVevo: TdxDBGridMaskColumn
                      Width = 48
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Vevo'
                    end
                    object RendRaktarGridFelhasznalo: TdxDBGridMaskColumn
                      Width = 79
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Felhasznalo'
                    end
                    object RendRaktarGridErtTerulet: TdxDBGridMaskColumn
                      Width = 69
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'ErtTerulet'
                    end
                    object RendRaktarGridRMegj: TdxDBGridMaskColumn
                      Width = 248
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RMegj'
                    end
                  end
                  object Panel50: TPanel
                    Left = 1
                    Top = 145
                    Width = 917
                    Height = 29
                    Align = alBottom
                    BevelInner = bvLowered
                    BevelOuter = bvLowered
                    TabOrder = 1
                    object SpeedButton9: TSpeedButton
                      Left = 112
                      Top = 3
                      Width = 23
                      Height = 22
                      Hint = 'Lista frissítése'
                      Flat = True
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
                      OnClick = SpeedButton9Click
                    end
                    object DBNavigator19: TDBNavigator
                      Left = 0
                      Top = 2
                      Width = 104
                      Height = 25
                      DataSource = Dm.dsRendRaktar
                      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                      Flat = True
                      ParentShowHint = False
                      ShowHint = True
                      TabOrder = 0
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    object CouplingSheet: TTabSheet
      Tag = 6000
      Caption = 'Csatlakozók'
      ImageIndex = 6
      OnShow = CouplingSheetShow
      object Splitter8: TSplitter
        Left = 0
        Top = 398
        Width = 1232
        Height = 5
        Cursor = crVSplit
        Align = alBottom
        Beveled = True
        Color = clBtnShadow
        MinSize = 308
        ParentColor = False
      end
      object Panel59: TPanel
        Left = 0
        Top = 0
        Width = 1232
        Height = 398
        Align = alClient
        Caption = 'Panel59'
        TabOrder = 0
        object CouplingsGrid: TdxDBGrid
          Left = 1
          Top = 19
          Width = 1230
          Height = 352
          Hint = 'CTRL + F = rajz behívás'
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'Srsz'
          ShowGroupPanel = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          ParentShowHint = False
          PopupMenu = CouplingsGridMenu
          ShowHint = True
          TabOrder = 0
          DataSource = Dm.CsatlakozokDs
          Filter.Active = True
          Filter.AutoDataSetFilter = True
          Filter.DropDownCount = 15
          Filter.Criteria = {00000000}
          IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
          IniSectionName = 'CouplingsGrid'
          OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoSeekDetail, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoKeepColumnWidth]
          OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
          OnCustomDrawCell = CouplingsGridCustomDrawCell
          object CouplingsGridSrsz: TdxDBGridMaskColumn
            Caption = 'Srsz.'
            Color = clSilver
            HeaderAlignment = taCenter
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Srsz'
          end
          object CouplingsGridCsatlErv: TdxDBGridCheckColumn
            Caption = 'Csatl.érv.'
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CsatlErv'
            ValueChecked = 'True'
            ValueGrayed = 'False'
            ValueUnchecked = 'False'
          end
          object CouplingsGridOsszeallErv: TdxDBGridCheckColumn
            Caption = 'Összeáll.érv.'
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OsszeallErv'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridinch: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'inch'
          end
          object CouplingsGridpsi: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 36
            BandIndex = 0
            RowIndex = 0
            FieldName = 'psi'
          end
          object CouplingsGridMPa: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Width = 45
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MPa'
          end
          object CouplingsGridRendSz: TdxDBGridMaskColumn
            Caption = 'Rendsz.'
            HeaderAlignment = taCenter
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RendSz'
          end
          object CouplingsGridCsatlRsz: TdxDBGridButtonColumn
            Caption = 'Csatlakozó rajzszám'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CsatlRsz'
            OnEditButtonClick = CouplingsGridCsatlRszEditButtonClick
            Buttons = <
              item
                Default = True
              end>
          end
          object CouplingsGridTechLap: TdxDBGridButtonColumn
            Caption = 'Techn.lap száma'
            HeaderAlignment = taCenter
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TechLap'
            OnEditButtonClick = CouplingsGridCsatlRszEditButtonClick
            Buttons = <
              item
                Default = True
              end>
          end
          object CouplingsGridVegzodes: TdxDBGridMaskColumn
            Caption = 'Végzõdés'
            HeaderAlignment = taCenter
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Vegzodes'
          end
          object CouplingsGridOsszRsz: TdxDBGridButtonColumn
            Caption = 'Összeáll.rajzszám'
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OsszRsz'
            OnEditButtonClick = CouplingsGridCsatlRszEditButtonClick
            Buttons = <
              item
                Default = True
              end>
          end
          object CouplingsGridKonfekcio: TdxDBGridButtonColumn
            HeaderAlignment = taCenter
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Konfekcio'
            OnEditButtonClick = CouplingsGridCsatlRszEditButtonClick
            Buttons = <
              item
                Default = True
              end>
          end
          object CouplingsGridTipus: TdxDBGridMaskColumn
            HeaderAlignment = taCenter
            Sorted = csUp
            Visible = False
            Width = 49
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Tipus'
            GroupIndex = 0
          end
          object CouplingsGridBg: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 36
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Bg'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridKg: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 36
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Kg'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridLa: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'La'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridCsLang: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 59
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CsLang'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridHe: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 37
            BandIndex = 0
            RowIndex = 0
            FieldName = 'He'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridPA: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 37
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PA'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridElov: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Elov'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridDrag: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Drag'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridNagyh: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nagyh'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridFuth: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 44
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Futh'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridSSRC: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SSRC'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridMP: TdxDBGridCheckColumn
            HeaderAlignment = taCenter
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MP'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object CouplingsGridMaxOD: TdxDBGridColumn
            HeaderAlignment = taCenter
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MaxOD'
          end
          object CouplingsGridPSL_szint: TdxDBGridPickColumn
            Caption = 'PSL szint'
            HeaderAlignment = taCenter
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PSL_szint'
            Items.Strings = (
              'nem besorolt'
              'PSL1'
              'PSL2'
              'PSL3'
              'PSL4')
          end
          object CouplingsGridMegj: TdxDBGridMaskColumn
            Caption = 'Megjegyzés'
            HeaderAlignment = taCenter
            Width = 46
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Megj'
          end
          object CouplingsGridDatum: TdxDBGridColumn
            Caption = 'Idõpont'
            Color = clSilver
            HeaderAlignment = taCenter
            ReadOnly = True
            Width = 54
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Datum'
          end
          object CouplingsGridSigno: TdxDBGridMaskColumn
            Caption = 'Rögzítette'
            Color = clSilver
            HeaderAlignment = taCenter
            ReadOnly = True
            Width = 50
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Signo'
          end
        end
        object Panel60: TPanel
          Left = 1
          Top = 1
          Width = 1230
          Height = 18
          Align = alTop
          Caption = 'Csatlakozó adatok'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Panel43: TPanel
          Left = 1
          Top = 371
          Width = 1230
          Height = 26
          Align = alBottom
          BevelInner = bvLowered
          BevelOuter = bvLowered
          TabOrder = 2
          OnResize = Panel43Resize
          object SpeedButton10: TSpeedButton
            Left = 248
            Top = 2
            Width = 23
            Height = 22
            Hint = 'Exportálás Excel fájlba'
            Glyph.Data = {
              42020000424D4202000000000000420000002800000010000000100000000100
              10000300000000020000120B0000120B00000000000000000000007C0000E003
              00001F0000008410620862086208620862086208620862086208620862086208
              6208620884104208C71DC71DA619A619A619A619A619A619A619A619A619A619
              C71DC71D4208630CC71D8D361453145314531453145314531453145314531453
              8E3AC71D630C630CA5151453FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              1453A515630C630CA619F34EDD77DE7BDE7BDE7BDE7BDD77575FF34EF34E134F
              F24AC619630C630CC619F24A4C3208222926292609264B2E6B2EC515C515B146
              F452C619630C630CA61914537A6BE821E71DE71D0822CE3A2926E71D0822FE7B
              1453A619630C630CA619134FFF7F7A6B09260822CE3A2926E8212A2A0822365B
              3557A619630C630CA619134FFF7FFF7F1453AD362926E71D0926BC73DE7BFF7F
              1453A619630C630CA6191453FF7F775FEE3A0926C619E71DE71D8D36FE7BFF7F
              134FA619630C630CA6191453B967CD360822C6198F3E2A2AE71DC6198D36FD77
              1453A619630C630CC619D24ACF3E2A2AE8219042FF7F7A6B09260926E71D365B
              3557A619630C630CA6191453FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
              1453A515630C630CC71D8E3A1453145314531453145314531453145314531453
              8D36C71D630C4208C71DC71DA619A619A619A619A619A619A619A619A619A619
              C71DC71D42088410620862086208620862086208620862086208620862086208
              620862088410}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton10Click
          end
          object DBNavigator17: TDBNavigator
            Left = 2
            Top = 2
            Width = 240
            Height = 22
            DataSource = Dm.CsatlakozokDs
            Align = alLeft
            ParentShowHint = False
            ConfirmDelete = False
            ShowHint = True
            TabOrder = 0
          end
        end
      end
      object Panel61: TPanel
        Left = 0
        Top = 403
        Width = 1232
        Height = 303
        Align = alBottom
        TabOrder = 1
        OnResize = Panel61Resize
        object VegzodesImage: TDBImage
          Left = 1
          Top = 1
          Width = 280
          Height = 301
          Align = alLeft
          DataField = 'Picture'
          DataSource = Dm.dsVegzodesTipusok
          ReadOnly = True
          Stretch = True
          TabOrder = 0
          TabStop = False
        end
        object Panel62: TPanel
          Left = 281
          Top = 1
          Width = 950
          Height = 301
          Align = alClient
          TabOrder = 1
          object Panel63: TPanel
            Left = 1
            Top = 1
            Width = 248
            Height = 299
            Align = alLeft
            TabOrder = 0
            object Label71: TLabel
              Left = 16
              Top = 8
              Width = 134
              Height = 13
              Caption = 'Végzõdés típus kiválasztása'
            end
            object Label72: TLabel
              Left = 16
              Top = 50
              Width = 109
              Height = 16
              Caption = 'Teljes hossz [mm]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label84: TLabel
              Left = 16
              Top = 98
              Width = 130
              Height = 16
              Caption = 'Tágítás kezdete [mm]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label73: TLabel
              Left = 16
              Top = 122
              Width = 113
              Height = 16
              Caption = 'Tágítás vége [mm]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label85: TLabel
              Left = 16
              Top = 146
              Width = 84
              Height = 16
              Caption = 'Max. OD [mm]'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object DBText5: TDBText
              Left = 72
              Top = 176
              Width = 161
              Height = 17
              DataField = 'Rogzitette'
              DataSource = Dm.dsTechlap
            end
            object DBText6: TDBText
              Left = 72
              Top = 192
              Width = 161
              Height = 17
              DataField = 'RogzIdopont'
              DataSource = Dm.dsTechlap
            end
            object SpeedButton21: TSpeedButton
              Left = 208
              Top = 208
              Width = 25
              Height = 25
              Hint = 'Az adatok jóváhagyása'
              Glyph.Data = {
                F2010000424DF201000000000000760000002800000024000000130000000100
                0400000000007C01000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
                3333333333388F3333333333000033334224333333333333338338F333333333
                0000333422224333333333333833338F33333333000033422222243333333333
                83333338F3333333000034222A22224333333338F33F33338F33333300003222
                A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
                38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
                2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
                0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
                333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
                33333A2224A2233333333338F338F83300003333333333A2224A333333333333
                8F338F33000033333333333A222433333333333338F338F30000333333333333
                A224333333333333338F38F300003333333333333A223333333333333338F8F3
                000033333333333333A3333333333333333383330000}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton21Click
            end
            object DBText7: TDBText
              Left = 72
              Top = 240
              Width = 161
              Height = 17
              DataField = 'Ellenorizte'
              DataSource = Dm.dsTechlap
            end
            object DBText8: TDBText
              Left = 72
              Top = 256
              Width = 161
              Height = 17
              DataField = 'EllenorzesIdopontja'
              DataSource = Dm.dsTechlap
            end
            object Label86: TLabel
              Left = 16
              Top = 240
              Width = 51
              Height = 13
              Caption = 'Ellenõrizte:'
            end
            object Label87: TLabel
              Left = 16
              Top = 256
              Width = 39
              Height = 13
              Caption = 'Idõpont:'
            end
            object Label88: TLabel
              Left = 16
              Top = 176
              Width = 52
              Height = 13
              Caption = 'Rögzítette:'
            end
            object Label89: TLabel
              Left = 16
              Top = 192
              Width = 39
              Height = 13
              Caption = 'Idõpont:'
            end
            object AbraCombo: TRxDBLookupCombo
              Left = 15
              Top = 24
              Width = 218
              Height = 21
              DropDownCount = 8
              DataField = 'VegzodesId'
              DataSource = Dm.dsTechlap
              ListStyle = lsDelimited
              LookupField = 'VegzodesId'
              LookupDisplay = 'Megnevezes'
              LookupSource = Dm.dsVegzodesTipusok
              TabOrder = 0
            end
            object L1CaptionComboBox: TDBComboBox
              Left = 16
              Top = 72
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'L1Caption'
              DataSource = Dm.dsTechlap
              ItemHeight = 13
              Items.Strings = (
                'Belsõ hüvely távolság'
                'Spirálkúp távolság')
              Sorted = True
              TabOrder = 2
            end
            object DBNavigator25: TDBNavigator
              Left = 16
              Top = 208
              Width = 185
              Height = 25
              DataSource = Dm.dsTechlap
              VisibleButtons = [nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
              Flat = True
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
            end
            object LEdit: TDBEdit
              Left = 168
              Top = 48
              Width = 64
              Height = 21
              DataField = 'L'
              DataSource = Dm.dsTechlap
              TabOrder = 1
            end
            object L1Edit: TDBEdit
              Left = 168
              Top = 72
              Width = 64
              Height = 21
              DataField = 'L1'
              DataSource = Dm.dsTechlap
              TabOrder = 3
            end
            object L2Edit: TDBEdit
              Left = 168
              Top = 96
              Width = 64
              Height = 21
              DataField = 'L2'
              DataSource = Dm.dsTechlap
              TabOrder = 4
            end
            object L3Edit: TDBEdit
              Left = 168
              Top = 120
              Width = 64
              Height = 21
              DataField = 'L3'
              DataSource = Dm.dsTechlap
              TabOrder = 5
            end
            object MaxODEdit: TDBEdit
              Left = 168
              Top = 144
              Width = 64
              Height = 21
              DataField = 'MaxOD'
              DataSource = Dm.dsTechlap
              TabOrder = 6
            end
            object BitBtn24: TBitBtn
              Left = 16
              Top = 272
              Width = 225
              Height = 25
              Hint = 'Az adatok aktív függõségeinek lekérdezése.'
              Caption = 'Az adatok aktív függõségei'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnClick = BitBtn24Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
                333333333337FF3333333333330003333333333333777F333333333333080333
                3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
                33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
                B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
                BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
                B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
                3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
                333333333337F33333333333333B333333333333333733333333}
              NumGlyphs = 2
            end
          end
          object Panel64: TPanel
            Left = 249
            Top = 1
            Width = 700
            Height = 299
            Align = alClient
            TabOrder = 1
            object Panel65: TPanel
              Left = 1
              Top = 1
              Width = 698
              Height = 16
              Align = alTop
              Caption = 'Egyéb tartozékok'
              TabOrder = 0
            end
            object Panel76: TPanel
              Left = 1
              Top = 269
              Width = 698
              Height = 29
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 1
              object DBNavigator26: TDBNavigator
                Left = 2
                Top = 2
                Width = 240
                Height = 25
                DataSource = Dm.dsCsatlRajzTart
                Align = alLeft
                ParentShowHint = False
                ShowHint = True
                TabOrder = 0
              end
              object CouplingAccessoryToolBar: TToolBar
                Left = 242
                Top = 2
                Width = 454
                Height = 25
                Align = alClient
                Caption = 'CouplingAccessoryToolBar'
                EdgeBorders = []
                Images = ImageList1
                TabOrder = 1
                object ToolButton60: TToolButton
                  Left = 0
                  Top = 2
                  Width = 17
                  Caption = 'ToolButton60'
                  Style = tbsSeparator
                end
                object ToolButton61: TToolButton
                  Left = 17
                  Top = 2
                  Action = CouplingCopyAccessories
                  ParentShowHint = False
                  ShowHint = True
                end
                object ToolButton63: TToolButton
                  Left = 40
                  Top = 2
                  Width = 8
                  Caption = 'ToolButton63'
                  ImageIndex = 12
                  Style = tbsSeparator
                end
                object ToolButton62: TToolButton
                  Left = 48
                  Top = 2
                  Action = CouplingPasteAccessories
                  ParentShowHint = False
                  ShowHint = True
                end
              end
            end
            object CsatlRajzTartGrid: TdxDBGrid
              Left = 1
              Top = 17
              Width = 698
              Height = 252
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'TartozekId'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 2
              DataSource = Dm.dsCsatlRajzTart
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'CsatlRajzTartGrid'
              OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoSyncSelection, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              object CsatlRajzTartGridSrsz: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 52
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Srsz'
              end
              object CsatlRajzTartGridTartozekId: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                Width = 52
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TartozekId'
              end
              object CsatlRajzTartGridMegnevezes: TdxDBGridColumn
                Caption = 'Megnevezés'
                HeaderAlignment = taCenter
                Width = 183
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Megnevezes'
              end
              object CsatlRajzTartGridRajzszam: TdxDBGridMaskColumn
                Caption = 'Rajzszám'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rajzszam'
              end
              object CsatlRajzTartGridDarabszam: TdxDBGridMaskColumn
                Caption = 'db'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Darabszam'
              end
              object CsatlRajzTartGridMegjegyzes: TdxDBGridMaskColumn
                Caption = 'Megjegyzés'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Megjegyzes'
              end
              object CsatlRajzTartGridRogzitette: TdxDBGridColumn
                Caption = 'Rögzítette'
                Color = clSilver
                HeaderAlignment = taCenter
                ReadOnly = True
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rogzitette'
              end
              object CsatlRajzTartGridRogzIdopont: TdxDBGridColumn
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
          end
        end
      end
    end
    object OrderSheet: TTabSheet
      Tag = 7000
      Caption = 'Rendelések'
      ImageIndex = 8
      OnShow = OrderOpenExecute
      object Panel51: TPanel
        Left = 0
        Top = 0
        Width = 1232
        Height = 706
        Align = alClient
        TabOrder = 0
        object Panel52: TPanel
          Left = 1
          Top = 1
          Width = 1230
          Height = 704
          Align = alClient
          TabOrder = 0
          object Splitter6: TSplitter
            Left = 1
            Top = 313
            Width = 1228
            Height = 5
            Cursor = crVSplit
            Align = alTop
            Beveled = True
            Color = clBtnShadow
            ParentColor = False
          end
          object Panel53: TPanel
            Left = 1
            Top = 318
            Width = 1228
            Height = 385
            Align = alClient
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object Splitter12: TSplitter
              Left = 297
              Top = 2
              Width = 5
              Height = 381
              Cursor = crHSplit
              Beveled = True
              Color = clBtnShadow
              ParentColor = False
            end
            object Panel54: TPanel
              Left = 2
              Top = 2
              Width = 295
              Height = 381
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Panel55: TPanel
                Left = 0
                Top = 352
                Width = 295
                Height = 29
                Align = alBottom
                AutoSize = True
                BevelInner = bvLowered
                BevelOuter = bvLowered
                TabOrder = 0
                object DBNavigator20: TDBNavigator
                  Left = 2
                  Top = 2
                  Width = 200
                  Height = 25
                  DataSource = OrderDm.dsRendTetel
                  Align = alLeft
                  Flat = True
                  ParentShowHint = False
                  ConfirmDelete = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object RendTetelGrid: TdxDBGrid
                Left = 0
                Top = 0
                Width = 295
                Height = 352
                Bands = <
                  item
                  end>
                DefaultLayout = True
                HeaderPanelRowCount = 1
                KeyField = 'TetelSrsz'
                SummaryGroups = <>
                SummarySeparator = ', '
                Align = alClient
                PopupMenu = RendTetelGridMenu
                TabOrder = 1
                DataSource = OrderDm.dsRendTetel
                Filter.Criteria = {00000000}
                IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                IniSectionName = 'RendTetelGrid'
                OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                OnCustomDrawCell = RendTetelGridCustomDrawCell
                object RendTetelGridTetelSrsz: TdxDBGridColumn
                  Caption = 'Srsz.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  HeaderAlignment = taCenter
                  Width = 36
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TetelSrsz'
                end
                object RendTetelGridCikkszam: TdxDBGridColumn
                  Caption = 'Cikkszám'
                  HeaderAlignment = taCenter
                  ReadOnly = True
                  Width = 68
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Cikkszam'
                end
                object RendTetelGridSpecifikacio: TdxDBGridColumn
                  Caption = 'Specifikáció'
                  HeaderAlignment = taCenter
                  ReadOnly = True
                  Width = 81
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Specifikacio'
                end
                object RendTetelGridTModHatarido: TdxDBGridColumn
                  Caption = 'Raktárra adás'
                  HeaderAlignment = taCenter
                  ReadOnly = True
                  Width = 91
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TModHatarido'
                end
                object RendTetelGridTorolt: TdxDBGridColumn
                  Visible = False
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'Torolt'
                end
                object RendTetelGridTAutoUpdate: TdxDBGridCheckColumn
                  Caption = 'Auto.friss.'
                  Visible = False
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TAutoUpdate'
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                end
              end
            end
            object PageControl4: TPageControl
              Left = 302
              Top = 2
              Width = 924
              Height = 381
              ActivePage = TabSheet5
              Align = alClient
              TabOrder = 1
              object TabSheet5: TTabSheet
                Tag = 7510
                Caption = '&Alap adatok'
                object ScrollBox4: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 916
                  Height = 353
                  Align = alClient
                  TabOrder = 0
                  TabStop = True
                  object Label16: TLabel
                    Left = 8
                    Top = 48
                    Width = 47
                    Height = 13
                    Caption = 'Át&mérõ ["]'
                    FocusControl = AtmEdit
                  end
                  object Label17: TLabel
                    Left = 8
                    Top = 128
                    Width = 60
                    Height = 13
                    Caption = 'Nyomás [ps&i]'
                    FocusControl = RendPsiEdit
                  end
                  object Label18: TLabel
                    Left = 8
                    Top = 88
                    Width = 69
                    Height = 13
                    Caption = '&Nyomás [MPa]'
                    FocusControl = RendMpaEdit
                  end
                  object Label19: TLabel
                    Left = 136
                    Top = 128
                    Width = 29
                    Height = 13
                    Caption = 'H&ossz'
                    FocusControl = HosszEdit
                  end
                  object Label20: TLabel
                    Left = 210
                    Top = 128
                    Width = 15
                    Height = 13
                    Caption = 'M&e'
                    FocusControl = HosszMeEdit
                  end
                  object Label21: TLabel
                    Left = 136
                    Top = 168
                    Width = 25
                    Height = 13
                    Caption = 'É&rték'
                    FocusControl = ErtEdit
                  end
                  object Label22: TLabel
                    Left = 202
                    Top = 168
                    Width = 44
                    Height = 13
                    Caption = '&Pénznem'
                    FocusControl = PenznemComboBox
                  end
                  object Label23: TLabel
                    Left = 136
                    Top = 88
                    Width = 53
                    Height = 13
                    Caption = '&Darabszám'
                    FocusControl = dbEdit
                  end
                  object Label24: TLabel
                    Left = 8
                    Top = 8
                    Width = 45
                    Height = 13
                    Caption = '&Cikkszám'
                    FocusControl = CkszEdit
                  end
                  object Label25: TLabel
                    Left = 88
                    Top = 8
                    Width = 58
                    Height = 13
                    Caption = '&Specifikáció'
                  end
                  object Label26: TLabel
                    Left = 216
                    Top = 88
                    Width = 67
                    Height = 13
                    Caption = 'Ra&ktárra adás'
                    FocusControl = RaktarEdit
                  end
                  object Label70: TLabel
                    Left = 264
                    Top = 128
                    Width = 40
                    Height = 13
                    Caption = 'Hossz ['#39']'
                  end
                  object SpeedButton19: TSpeedButton
                    Left = 384
                    Top = 304
                    Width = 25
                    Height = 25
                    Hint = 'Az utolsó import eredményének megtekintése'
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
                      0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
                      00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
                      00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
                      F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
                      F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
                      FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
                      0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
                      00337777FFFF77FF7733EEEE0000000003337777777777777333}
                    NumGlyphs = 2
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = SpeedButton19Click
                  end
                  object ProgLabel: TLabel
                    Left = 120
                    Top = 264
                    Width = 289
                    Height = 13
                    Alignment = taCenter
                    AutoSize = False
                  end
                  object ProgressBar1: TProgressBar
                    Left = 120
                    Top = 280
                    Width = 289
                    Height = 17
                    Min = 0
                    Max = 100
                    TabOrder = 25
                  end
                  object AtmEdit: TDBEdit
                    Left = 8
                    Top = 64
                    Width = 73
                    Height = 21
                    DataField = 'Atmero'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 1
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object RendPsiEdit: TDBEdit
                    Left = 8
                    Top = 144
                    Width = 73
                    Height = 21
                    TabStop = False
                    DataField = 'psi'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 3
                    OnKeyDown = RendPsiEditKeyDown
                  end
                  object RendMpaEdit: TDBEdit
                    Left = 8
                    Top = 104
                    Width = 73
                    Height = 21
                    DataField = 'MPa'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 2
                    OnKeyDown = RendMpaEditKeyDown
                  end
                  object HosszEdit: TDBEdit
                    Left = 136
                    Top = 144
                    Width = 73
                    Height = 21
                    DataField = 'Hossz'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 17
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object HosszMeEdit: TDBEdit
                    Left = 210
                    Top = 144
                    Width = 41
                    Height = 21
                    TabStop = False
                    DataField = 'HosszMe'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 18
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object ErtEdit: TDBEdit
                    Left = 136
                    Top = 184
                    Width = 73
                    Height = 21
                    DataField = 'TErtek'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 20
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object dbEdit: TDBEdit
                    Left = 136
                    Top = 104
                    Width = 73
                    Height = 21
                    DataField = 'DarabSzam'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 15
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object ToroltCheckBox: TDBCheckBox
                    Left = 136
                    Top = 208
                    Width = 81
                    Height = 17
                    TabStop = False
                    Caption = 'Törölt tétel'
                    DataField = 'Torolt'
                    DataSource = OrderDm.dsRendTetel
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clRed
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 22
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object CkszEdit: TDBEdit
                    Left = 8
                    Top = 24
                    Width = 73
                    Height = 21
                    DataField = 'Cikkszam'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 0
                    OnKeyDown = CkszEditKeyDown
                  end
                  object BitBtn15: TBitBtn
                    Left = 120
                    Top = 232
                    Width = 169
                    Height = 25
                    Hint = 'Adatok mentése'
                    Caption = 'Újabb tétel &felvétele'
                    ModalResult = 1
                    TabOrder = 23
                    OnClick = BitBtn15Click
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      0400000000000001000000000000000000001000000000000000000000000000
                      80000080000000808000800000008000800080800000C0C0C000808080000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333333333333333FF333333333333300033333333F33338883333333C3333
                      300033333338FF3338883333333CC333333333FFFFF88FFF3FF33CCCCCCCCCC3
                      993338888888888F88F33CCCCCCCCCC3993338888888888388333333333CC333
                      3333333333388333333F3333333C333333003333FF3833333388333993333333
                      330033388F3333333388333993333333333333F88FFF3333333F399999933333
                      33003888888F3333338839999993333333003888888333333388333993333333
                      333333388F33333333FF33399333333330003338833333333888333333333333
                      3000333333333333388833333333333333333333333333333333}
                    NumGlyphs = 2
                  end
                  object PenznemComboBox: TdxDBPickEdit
                    Left = 210
                    Top = 184
                    Width = 63
                    TabOrder = 21
                    TabStop = False
                    OnKeyDown = SpecEdit2KeyDown
                    DataField = 'TPenznem'
                    DataSource = OrderDm.dsRendTetel
                    Items.Strings = (
                      'a'
                      'b'
                      'c'
                      'd'
                      'e'
                      'f')
                  end
                  object LangCheckBox: TDBCheckBox
                    Left = 8
                    Top = 192
                    Width = 89
                    Height = 17
                    Caption = 'Lángálló'
                    DataField = 'Lang'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 5
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object BgegeCheckBox: TDBCheckBox
                    Left = 8
                    Top = 208
                    Width = 89
                    Height = 17
                    Caption = 'B. gégecsõ'
                    DataField = 'Bg'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 6
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object KGegeCheckBox: TDBCheckBox
                    Left = 8
                    Top = 224
                    Width = 89
                    Height = 17
                    Caption = 'K.gégecsõ'
                    DataField = 'Kg'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 7
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object PoliamidCheckBox: TDBCheckBox
                    Left = 8
                    Top = 256
                    Width = 89
                    Height = 17
                    Caption = 'Pa lélek'
                    DataField = 'Pa'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 9
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object RaktarEdit: TDBEdit
                    Left = 216
                    Top = 104
                    Width = 73
                    Height = 21
                    TabStop = False
                    DataField = 'TModHatarido'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 16
                  end
                  object SpecEdit: TDBMemo
                    Left = 88
                    Top = 24
                    Width = 321
                    Height = 41
                    DataField = 'Specifikacio'
                    DataSource = OrderDm.dsRendTetel
                    MaxLength = 100
                    TabOrder = 14
                    OnEnter = SpecEditEnter
                    OnExit = SpecEditExit
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object KgInterCheckBox: TDBCheckBox
                    Left = 24
                    Top = 240
                    Width = 89
                    Height = 17
                    Caption = 'Interlock'
                    DataField = 'KgInter'
                    DataSource = OrderDm.dsRendTetel
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 8
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object KVedCheckBox: TDBCheckBox
                    Left = 8
                    Top = 272
                    Width = 89
                    Height = 17
                    Caption = 'Külsõ védelem'
                    DataField = 'Kv'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 10
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object KvMuaCheckBox: TDBCheckBox
                    Left = 24
                    Top = 288
                    Width = 89
                    Height = 17
                    Caption = 'Müa.spirál'
                    DataField = 'KvMua'
                    DataSource = OrderDm.dsRendTetel
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 11
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object KvFedHelixCheckBox: TDBCheckBox
                    Left = 24
                    Top = 304
                    Width = 89
                    Height = 17
                    Caption = 'Fedett hélix'
                    DataField = 'KvFedHelix'
                    DataSource = OrderDm.dsRendTetel
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 12
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object KvNFedHelixCheckBox: TDBCheckBox
                    Left = 24
                    Top = 320
                    Width = 89
                    Height = 17
                    Caption = 'Nem fed.hélix'
                    DataField = 'KvNFedHelix'
                    DataSource = OrderDm.dsRendTetel
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 13
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                    OnKeyDown = SpecEdit2KeyDown
                  end
                  object AdatImportBtn: TBitBtn
                    Left = 120
                    Top = 304
                    Width = 257
                    Height = 25
                    Hint = 'Adatok importálása az SAP-ból'
                    Caption = 'Adatok importálása'
                    Enabled = False
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 24
                    TabStop = False
                    OnClick = AdatImportBtnClick
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000130B0000130B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
                      FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
                      00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
                      F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
                      00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
                      F033777777777337F73309999990FFF0033377777777FFF77333099999000000
                      3333777777777777333333399033333333333337773333333333333903333333
                      3333333773333333333333303333333333333337333333333333}
                    NumGlyphs = 2
                  end
                  object FeetLengthEdit: TFnpNumericEdit
                    Left = 264
                    Top = 144
                    Width = 41
                    Height = 21
                    Hint = 'A cella tartalma méterbe konvertálva '#13#10'átkerül a "Hossz" cellába'
                    TabStop = False
                    Color = 12639424
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 19
                    OnKeyDown = FeetLengthEditKeyDown
                  end
                  object H2SCheckEdit: TdxDBCheckEdit
                    Left = 5
                    Top = 174
                    Width = 100
                    TabOrder = 4
                    OnKeyDown = SpecEdit2KeyDown
                    Caption = 'H2S Services'
                    DataField = 'H2S'
                    DataSource = OrderDm.dsRendTetel
                    ValueChecked = '1'
                    ValueGrayed = '-1'
                    ValueUnchecked = '0'
                    AllowGrayed = True
                  end
                end
              end
              object TabSheet6: TTabSheet
                Tag = 7520
                Caption = '&Technológia'
                ImageIndex = 1
                object ScrollBox5: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 916
                  Height = 353
                  Align = alClient
                  TabOrder = 0
                  object Label27: TLabel
                    Left = 8
                    Top = 8
                    Width = 56
                    Height = 13
                    Caption = 'Tömlõ neve'
                  end
                  object Label28: TLabel
                    Left = 8
                    Top = 48
                    Width = 129
                    Height = 13
                    Caption = '1.csatlakozó megnevezése'
                  end
                  object Label29: TLabel
                    Left = 8
                    Top = 88
                    Width = 109
                    Height = 13
                    Caption = '1.csatlakozó rajzszáma'
                  end
                  object Label30: TLabel
                    Left = 8
                    Top = 128
                    Width = 129
                    Height = 13
                    Caption = '2.csatlakozó megnevezése'
                    FocusControl = Csatl2Edit
                  end
                  object Label31: TLabel
                    Left = 8
                    Top = 168
                    Width = 109
                    Height = 13
                    Caption = '2.csatlakozó rajzszáma'
                  end
                  object Label32: TLabel
                    Left = 8
                    Top = 208
                    Width = 107
                    Height = 13
                    Caption = 'Összeállításirajz száma'
                    FocusControl = OsszeallRszEdit
                  end
                  object Label33: TLabel
                    Left = 8
                    Top = 248
                    Width = 97
                    Height = 13
                    Caption = '1.konstrukció száma'
                    FocusControl = Konstr1Edit
                  end
                  object Label34: TLabel
                    Left = 8
                    Top = 288
                    Width = 97
                    Height = 13
                    Caption = '2.konstrukció száma'
                    FocusControl = Konstr2Edit
                  end
                  object Label35: TLabel
                    Left = 8
                    Top = 328
                    Width = 81
                    Height = 13
                    Caption = 'Konfekció száma'
                    FocusControl = KonfEdit
                  end
                  object Label36: TLabel
                    Left = 344
                    Top = 8
                    Width = 86
                    Height = 13
                    Caption = 'Konfekció dátuma'
                  end
                  object Label37: TLabel
                    Left = 216
                    Top = 48
                    Width = 103
                    Height = 13
                    Caption = 'Darabjegyzék dátuma'
                  end
                  object Label38: TLabel
                    Left = 216
                    Top = 88
                    Width = 94
                    Height = 13
                    Caption = 'Mûveletterv dátuma'
                  end
                  object Label39: TLabel
                    Left = 216
                    Top = 128
                    Width = 94
                    Height = 13
                    Caption = 'Konstrukció dátuma'
                  end
                  object Label40: TLabel
                    Left = 216
                    Top = 168
                    Width = 91
                    Height = 13
                    Caption = 'Fémszer. határideje'
                  end
                  object Label41: TLabel
                    Left = 216
                    Top = 208
                    Width = 100
                    Height = 13
                    Caption = 'Fémszer. beérkezése'
                  end
                  object Label42: TLabel
                    Left = 216
                    Top = 248
                    Width = 30
                    Height = 13
                    Caption = 'Anyag'
                    FocusControl = AnyagEdit
                  end
                  object Label49: TLabel
                    Left = 216
                    Top = 288
                    Width = 126
                    Height = 13
                    Caption = 'Csomagolás megnevezése'
                  end
                  object Label44: TLabel
                    Left = 216
                    Top = 328
                    Width = 56
                    Height = 13
                    Caption = 'Megjegyzés'
                    FocusControl = MegjEdit2
                  end
                  object Label82: TLabel
                    Left = 56
                    Top = 368
                    Width = 100
                    Height = 13
                    Caption = 'Márkázási rajz száma'
                    FocusControl = KonfEdit
                  end
                  object Label83: TLabel
                    Left = 8
                    Top = 368
                    Width = 27
                    Height = 13
                    Caption = 'Azon.'
                    FocusControl = MarkIdEdit
                  end
                  object InsertHoseTypeButton: TSpeedButton
                    Left = 312
                    Top = 24
                    Width = 23
                    Height = 22
                    Hint = 'Az aktuális elem felvétele a listába.'
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000130B0000130B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      33333333FF33333333FF333993333333300033377F3333333777333993333333
                      300033F77FFF3333377739999993333333333777777F3333333F399999933333
                      33003777777333333377333993333333330033377F3333333377333993333333
                      3333333773333333333F333333333333330033333333F33333773333333C3333
                      330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                      993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                      333333333337733333FF3333333C333330003333333733333777333333333333
                      3000333333333333377733333333333333333333333333333333}
                    NumGlyphs = 2
                    ParentShowHint = False
                    ShowHint = True
                    OnClick = InsertHoseTypeButtonClick
                  end
                  object Csatl2Edit: TDBEdit
                    Left = 8
                    Top = 144
                    Width = 201
                    Height = 21
                    DataField = 'Csatl2'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 3
                  end
                  object OsszeallRszEdit: TDBEdit
                    Left = 8
                    Top = 224
                    Width = 201
                    Height = 21
                    DataField = 'OsszeallRsz'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 5
                  end
                  object Konstr1Edit: TDBEdit
                    Left = 8
                    Top = 264
                    Width = 201
                    Height = 21
                    DataField = 'Konstrukcio'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 6
                  end
                  object Konstr2Edit: TDBEdit
                    Left = 8
                    Top = 304
                    Width = 201
                    Height = 21
                    DataField = 'Konstrukcio2'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 7
                  end
                  object KonfEdit: TDBEdit
                    Left = 8
                    Top = 344
                    Width = 201
                    Height = 21
                    Hint = 'Nem használt mezõ!'
                    TabStop = False
                    Color = clSilver
                    DataField = 'TKonfekcio'
                    DataSource = OrderDm.dsRendTetel
                    ParentShowHint = False
                    ReadOnly = True
                    ShowHint = True
                    TabOrder = 8
                  end
                  object AnyagEdit: TDBEdit
                    Left = 216
                    Top = 264
                    Width = 161
                    Height = 21
                    DataField = 'Anyag'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 17
                  end
                  object MegjEdit2: TDBEdit
                    Left = 216
                    Top = 344
                    Width = 304
                    Height = 21
                    DataField = 'TMegj'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 19
                  end
                  object KonfDateEdit: TDBDateEdit
                    Left = 344
                    Top = 24
                    Width = 97
                    Height = 21
                    DataField = 'TKonfekDatum'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 11
                  end
                  object DbjDateEdit: TDBDateEdit
                    Left = 216
                    Top = 64
                    Width = 97
                    Height = 21
                    DataField = 'DbjDatum'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 12
                  end
                  object MtDateEdit: TDBDateEdit
                    Left = 216
                    Top = 104
                    Width = 97
                    Height = 21
                    DataField = 'MuvDatum'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 13
                  end
                  object KonstrDateEdit: TDBDateEdit
                    Left = 216
                    Top = 144
                    Width = 97
                    Height = 21
                    DataField = 'KonstrDatum'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 14
                  end
                  object FemszerDateEdit: TDBDateEdit
                    Left = 216
                    Top = 184
                    Width = 97
                    Height = 21
                    DataField = 'FszHatarido'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 15
                  end
                  object FemszerDate2Edit: TDBDateEdit
                    Left = 216
                    Top = 224
                    Width = 97
                    Height = 21
                    DataField = 'FszBeerk'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 16
                  end
                  object Csatl1Edit: TDBEdit
                    Left = 8
                    Top = 64
                    Width = 201
                    Height = 21
                    DataField = 'Csatl1'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 1
                  end
                  object Csatl1RszEdit: TRxDBComboEdit
                    Left = 8
                    Top = 104
                    Width = 201
                    Height = 21
                    DataField = 'Csatl1Rsz'
                    DataSource = OrderDm.dsRendTetel
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      0400000000000001000000000000000000001000000010000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                      33003377333337F33377333333333C333300333F333337F33377339333333C33
                      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                      3000333333333377377733333333333333333333333333333333}
                    NumGlyphs = 2
                    TabOrder = 2
                    OnButtonClick = Csatl1RszEditButtonClick
                  end
                  object Csatl2RszEdit: TRxDBComboEdit
                    Left = 8
                    Top = 184
                    Width = 201
                    Height = 21
                    DataField = 'Csatl2Rsz'
                    DataSource = OrderDm.dsRendTetel
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      0400000000000001000000000000000000001000000010000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                      33003377333337F33377333333333C333300333F333337F33377339333333C33
                      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                      3000333333333377377733333333333333333333333333333333}
                    NumGlyphs = 2
                    TabOrder = 4
                    OnButtonClick = Csatl2RszEditButtonClick
                  end
                  object CsomagEdit: TRxDBComboEdit
                    Left = 216
                    Top = 304
                    Width = 300
                    Height = 21
                    Hint = 
                      'A csomagolási adatokat a "csomagoló eszközök" fülön kell kezelni' +
                      '!'
                    Color = clYellow
                    DataField = 'Csomagolas'
                    DataSource = OrderDm.dsRendTetel
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      0400000000000001000000000000000000001000000010000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                      33003377333337F33377333333333C333300333F333337F33377339333333C33
                      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                      3000333333333377377733333333333333333333333333333333}
                    NumGlyphs = 2
                    ParentShowHint = False
                    ShowHint = True
                    TabOrder = 18
                    OnButtonClick = CsomagEditButtonClick
                  end
                  object CsomagolasBtn: TBitBtn
                    Left = 344
                    Top = 64
                    Width = 161
                    Height = 25
                    Action = PackNotExistList
                    Caption = 'Csomagolásra váró tételek'
                    TabOrder = 21
                    Glyph.Data = {
                      36040000424D3604000000000000360000002800000010000000100000000100
                      2000000000000004000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                      0000000000000000000000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
                      0000FF00FF00000000000000000000000000000000000000000000000000FFFF
                      FF00FFFFFF00000000000000000000000000FFFFFF0000000000FFFF00000000
                      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
                      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
                      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
                      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
                      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
                      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
                      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
                      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
                      000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
                      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
                      0000FFFFFF0000FFFF0000000000000000000000000000000000000000000000
                      000000000000FFFFFF00FFFFFF0000000000FFFFFF0000000000000000000000
                      000000000000FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF0000000000000000000000
                      0000FFFFFF00FFFFFF0000000000000000000000000000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF0000000000FF000000FF000000FF000000FF00
                      0000FF000000FF00000000000000FFFFFF0000000000FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
                      FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00FF00FF00
                      FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
                      0000000000000000000000000000FF00FF00FF00FF00FF00FF00}
                  end
                  object MarkIdEdit: TDBEdit
                    Left = 8
                    Top = 384
                    Width = 41
                    Height = 21
                    DataField = 'MarkingId'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 9
                  end
                  object TomloNevCombo: TDBComboBox
                    Left = 8
                    Top = 24
                    Width = 305
                    Height = 21
                    DataField = 'Tipus'
                    DataSource = OrderDm.dsRendTetel
                    DropDownCount = 12
                    ItemHeight = 13
                    Sorted = True
                    TabOrder = 0
                  end
                  object MarkNumEdit: TComboEdit
                    Left = 56
                    Top = 384
                    Width = 153
                    Height = 21
                    TabStop = False
                    Color = clSilver
                    DirectInput = False
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      0400000000000001000000000000000000001000000000000000000000000000
                      8000008000000080800080000000800080008080000080808000C0C0C0000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                      33003377333337F33377333333333C333300333F333337F33377339333333C33
                      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                      3000333333333377377733333333333333333333333333333333}
                    NumGlyphs = 2
                    TabOrder = 10
                    OnButtonClick = MarkNumEditButtonClick
                  end
                  object MarkMemo: TMemo
                    Left = 216
                    Top = 384
                    Width = 305
                    Height = 33
                    Color = clSilver
                    ReadOnly = True
                    TabOrder = 20
                  end
                end
              end
              object TabSheet1: TTabSheet
                Tag = 7560
                Caption = 'Csomagoló eszközök'
                ImageIndex = 5
                object ToolBar1: TToolBar
                  Left = 0
                  Top = 0
                  Width = 916
                  Height = 41
                  ButtonHeight = 36
                  ButtonWidth = 69
                  Caption = 'ToolBar1'
                  Flat = True
                  Images = ImageList1
                  ShowCaptions = True
                  TabOrder = 0
                  object ToolButton1: TToolButton
                    Left = 0
                    Top = 0
                    Action = AddPackOrder
                  end
                  object ToolButton2: TToolButton
                    Left = 69
                    Top = 0
                    Action = AddPackItem
                  end
                end
                object Panel74: TPanel
                  Left = 0
                  Top = 324
                  Width = 916
                  Height = 29
                  Align = alBottom
                  BevelInner = bvLowered
                  BevelOuter = bvLowered
                  TabOrder = 1
                  object DBNavigator24: TDBNavigator
                    Left = 2
                    Top = 2
                    Width = 240
                    Height = 25
                    DataSource = OrderDm.dsRendCsomEszk
                    Align = alLeft
                    TabOrder = 0
                  end
                end
                object OrderPackGrid: TdxDBGrid
                  Left = 0
                  Top = 41
                  Width = 916
                  Height = 283
                  Bands = <
                    item
                    end>
                  DefaultLayout = True
                  HeaderPanelRowCount = 1
                  KeyField = 'PackageId'
                  SummaryGroups = <>
                  SummarySeparator = ', '
                  Align = alClient
                  TabOrder = 2
                  DataSource = OrderDm.dsRendCsomEszk
                  Filter.Active = True
                  Filter.Criteria = {00000000}
                  IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
                  IniSectionName = 'OrderPackGrid'
                  OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
                  OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
                  OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                  OnCustomDrawCell = OrderPackGridCustomDrawCell
                  object OrderPackGridPackageId: TdxDBGridMaskColumn
                    HeaderAlignment = taCenter
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PackageId'
                  end
                  object OrderPackGridRendelesAz: TdxDBGridMaskColumn
                    HeaderAlignment = taCenter
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'RendelesAz'
                  end
                  object OrderPackGridTetelSrsz: TdxDBGridMaskColumn
                    Caption = 'Tétel srsz.'
                    Color = clInfoBk
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    HeaderAlignment = taCenter
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'TetelSrsz'
                  end
                  object OrderPackGridPackDevTypeCode: TdxDBGridMaskColumn
                    Caption = 'Eszköz típus'
                    HeaderAlignment = taCenter
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PackDevTypeCode'
                  end
                  object OrderPackGridPackDevTypeName: TdxDBGridButtonColumn
                    Caption = 'Eszköz típus'
                    HeaderAlignment = taCenter
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PackDevTypeName'
                    Buttons = <
                      item
                        Default = True
                      end>
                    OnButtonClick = OrderPackGridPackDevTypeNameButtonClick
                  end
                  object OrderPackGridPackDevCode: TdxDBGridMaskColumn
                    HeaderAlignment = taCenter
                    Visible = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PackDevCode'
                  end
                  object OrderPackGridPackDevName: TdxDBGridMaskColumn
                    Caption = 'Megnevezés'
                    HeaderAlignment = taCenter
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PackDevName'
                  end
                  object OrderPackGridPackDevNum: TdxDBGridMaskColumn
                    Caption = 'db'
                    HeaderAlignment = taCenter
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'PackDevNum'
                    SummaryFooterType = cstSum
                    SummaryFooterField = 'PackDevNum'
                    SummaryFooterFormat = '0.##'
                  end
                  object OrderPackGridNote: TdxDBGridMaskColumn
                    Caption = 'Megjegyzés'
                    HeaderAlignment = taCenter
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'Note'
                  end
                  object OrderPackGridDeleted: TdxDBGridCheckColumn
                    Caption = 'Törölve'
                    HeaderAlignment = taCenter
                    Width = 64
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'Deleted'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object OrderPackGridRogzitette: TdxDBGridColumn
                    Caption = 'Rögzítette'
                    Color = clSilver
                    HeaderAlignment = taCenter
                    ReadOnly = True
                    TabStop = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'Rogzitette'
                  end
                  object OrderPackGridRogzIdopont: TdxDBGridColumn
                    Caption = 'Idõpont'
                    Color = clSilver
                    HeaderAlignment = taCenter
                    ReadOnly = True
                    TabStop = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'RogzIdopont'
                  end
                  object OrderPackGridOrdered: TdxDBGridCheckColumn
                    Caption = 'Megrendelve'
                    HeaderAlignment = taCenter
                    Width = 64
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'Ordered'
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object OrderPackGridOrderName: TdxDBGridMaskColumn
                    Caption = 'Megr.neve'
                    Color = clSilver
                    HeaderAlignment = taCenter
                    ReadOnly = True
                    TabStop = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'OrderName'
                  end
                  object OrderPackGridOrderDate: TdxDBGridDateColumn
                    Caption = 'Megr.idõpont'
                    Color = clSilver
                    HeaderAlignment = taCenter
                    ReadOnly = True
                    TabStop = False
                    BandIndex = 0
                    RowIndex = 0
                    FieldName = 'OrderDate'
                  end
                end
              end
              object TabSheet9: TTabSheet
                Tag = 7530
                Caption = 'Egyéb &mûszaki adatok'
                ImageIndex = 4
                object ScrollBox7: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 916
                  Height = 353
                  Align = alClient
                  TabOrder = 0
                  OnResize = ScrollBox7Resize
                  object Label57: TLabel
                    Left = 8
                    Top = 8
                    Width = 57
                    Height = 13
                    Caption = 'Belsõhüvely'
                    FocusControl = BelsoHuvelyEdit
                  end
                  object Label58: TLabel
                    Left = 216
                    Top = 8
                    Width = 33
                    Height = 13
                    Caption = 'Hüvely'
                    FocusControl = HuvelyEdit
                  end
                  object Label59: TLabel
                    Left = 8
                    Top = 48
                    Width = 44
                    Height = 13
                    Caption = 'Spirálkúp'
                    FocusControl = SpiralkupEdit
                  end
                  object Label60: TLabel
                    Left = 320
                    Top = 8
                    Width = 58
                    Height = 13
                    Caption = 'Emelõbilincs'
                    FocusControl = EmeloBilincsEdit
                  end
                  object Label61: TLabel
                    Left = 112
                    Top = 48
                    Width = 52
                    Height = 13
                    Caption = 'Bizt. bilincs'
                    FocusControl = BiztonsagiBilincsEdit
                  end
                  object Label62: TLabel
                    Left = 320
                    Top = 48
                    Width = 56
                    Height = 13
                    Caption = 'Védõhüvely'
                    FocusControl = VedohuvelyEdit
                  end
                  object Label63: TLabel
                    Left = 424
                    Top = 48
                    Width = 67
                    Height = 13
                    Caption = 'Osztott hüvely'
                    FocusControl = OsztottHuvelyEdit
                  end
                  object Label65: TLabel
                    Left = 528
                    Top = 48
                    Width = 44
                    Height = 13
                    Caption = 'Inspektor'
                    FocusControl = InspektorEdit
                  end
                  object Label64: TLabel
                    Left = 8
                    Top = 88
                    Width = 42
                    Height = 13
                    Caption = 'Egyebek'
                    FocusControl = EgyebekMemo
                  end
                  object Label66: TLabel
                    Left = 216
                    Top = 88
                    Width = 72
                    Height = 13
                    Caption = 'Inspektor megj.'
                    FocusControl = InspektorMemo
                  end
                  object Label43: TLabel
                    Left = 8
                    Top = 168
                    Width = 87
                    Height = 13
                    Caption = 'Egyéb alkatrészek'
                    FocusControl = BelsoHuvelyEdit
                  end
                  object Label79: TLabel
                    Left = 112
                    Top = 8
                    Width = 95
                    Height = 13
                    Caption = 'Belsõhüvely anyaga'
                    FocusControl = BelsoHuvelyAnyagEdit
                  end
                  object Label80: TLabel
                    Left = 424
                    Top = 8
                    Width = 93
                    Height = 13
                    Caption = 'Emelõbilincs mérete'
                    FocusControl = EmeloBilincsMeretEdit
                  end
                  object Label81: TLabel
                    Left = 216
                    Top = 48
                    Width = 87
                    Height = 13
                    Caption = 'Bizt. bilincs mérete'
                    FocusControl = BiztonsagiBilincsMeretEdit
                  end
                  object BelsoHuvelyEdit: TDBEdit
                    Left = 8
                    Top = 24
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'BelsoHuvely'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 0
                  end
                  object HuvelyEdit: TDBEdit
                    Left = 216
                    Top = 24
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'Huvely'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 2
                  end
                  object SpiralkupEdit: TDBEdit
                    Left = 8
                    Top = 64
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'Spiralkup'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 5
                  end
                  object EmeloBilincsEdit: TDBEdit
                    Left = 320
                    Top = 24
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'Emelobilincs'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object BiztonsagiBilincsEdit: TDBEdit
                    Left = 112
                    Top = 64
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'BiztBilincs'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 6
                  end
                  object VedohuvelyEdit: TDBEdit
                    Left = 320
                    Top = 64
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'VedoHuvely'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 8
                  end
                  object OsztottHuvelyEdit: TDBEdit
                    Left = 424
                    Top = 64
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'OsztottHuvely'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 9
                  end
                  object InspektorEdit: TDBEdit
                    Left = 528
                    Top = 64
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'Inspector'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 10
                  end
                  object EgyebekMemo: TDBMemo
                    Left = 8
                    Top = 104
                    Width = 201
                    Height = 57
                    Color = clBtnFace
                    DataField = 'Egyebek'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    ScrollBars = ssVertical
                    TabOrder = 11
                  end
                  object InspektorMemo: TDBMemo
                    Left = 216
                    Top = 104
                    Width = 201
                    Height = 57
                    Color = clBtnFace
                    DataField = 'InspectorMegj'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    ScrollBars = ssVertical
                    TabOrder = 12
                  end
                  object DBCheckBox6: TDBCheckBox
                    Left = 424
                    Top = 104
                    Width = 121
                    Height = 17
                    Caption = 'Alkatrészlista kész'
                    Color = clBtnFace
                    DataField = 'AccListExist'
                    DataSource = OrderDm.dsRendTetel
                    ParentColor = False
                    ReadOnly = True
                    TabOrder = 14
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object DBCheckBox7: TDBCheckBox
                    Left = 424
                    Top = 120
                    Width = 121
                    Height = 17
                    Caption = 'Átvételi kész'
                    Color = clBtnFace
                    DataField = 'AtveteliKesz'
                    DataSource = OrderDm.dsRendTetel
                    ParentColor = False
                    ReadOnly = True
                    TabOrder = 15
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object EgyebAlkatreszGrid: TdxDBGrid
                    Left = 8
                    Top = 184
                    Width = 609
                    Height = 164
                    Bands = <
                      item
                      end>
                    DefaultLayout = True
                    HeaderPanelRowCount = 1
                    KeyField = 'Sorszam'
                    SummaryGroups = <>
                    SummarySeparator = ', '
                    Color = clBtnFace
                    TabOrder = 13
                    DataSource = OrderDm.dsRendEgyeb
                    Filter.Criteria = {00000000}
                    GridLineColor = clWhite
                    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoUseBookmarks]
                    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
                    OnCustomDrawCell = EgyebAlkatreszGridCustomDrawCell
                    object dxDBGrid1RendelesAz: TdxDBGridMaskColumn
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Visible = False
                      Width = 62
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'RendelesAz'
                    end
                    object dxDBGrid1TetelSrsz: TdxDBGridMaskColumn
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Visible = False
                      Width = 62
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'TetelSrsz'
                    end
                    object dxDBGrid1Sorszam: TdxDBGridMaskColumn
                      Caption = 'Sorszám'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 47
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Sorszam'
                    end
                    object dxDBGrid1Megnevezes: TdxDBGridMaskColumn
                      Caption = 'Megnevezés'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 124
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Megnevezes'
                    end
                    object dxDBGrid1Azonosito: TdxDBGridMaskColumn
                      Caption = 'Azonosító'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 124
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Azonosito'
                    end
                    object EgyebAlkatreszGridFestes: TdxDBGridColumn
                      Caption = 'Festés'
                      HeaderAlignment = taCenter
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Festes'
                    end
                    object dxDBGrid1Darabszam: TdxDBGridMaskColumn
                      Caption = 'db'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 32
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Darabszam'
                    end
                    object EgyebAlkatreszGridKiszallitando: TdxDBGridCheckColumn
                      Caption = 'Kiszállítandó'
                      HeaderAlignment = taCenter
                      Width = 64
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Kiszallitando'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid1Active: TdxDBGridCheckColumn
                      Caption = 'Aktív'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 64
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Active'
                      ValueChecked = 'True'
                      ValueUnchecked = 'False'
                    end
                    object dxDBGrid1Megjegyzes: TdxDBGridMaskColumn
                      Caption = 'Megjegyzés'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 304
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Megjegyzes'
                    end
                    object dxDBGridCreatorName: TdxDBGridMaskColumn
                      Caption = 'Rögzítette'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 150
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CreatorName'
                    end
                    object dxDBGridCreateDate: TdxDBGridDateColumn
                      Caption = 'Idõpont'
                      HeaderAlignment = taCenter
                      ReadOnly = True
                      Width = 120
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'CreateDate'
                    end
                    object EgyebAlkatreszGridTipus: TdxDBGridColumn
                      Visible = False
                      BandIndex = 0
                      RowIndex = 0
                      FieldName = 'Tipus'
                    end
                  end
                  object BelsoHuvelyAnyagEdit: TDBEdit
                    Left = 112
                    Top = 24
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'BhAnyag'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object EmeloBilincsMeretEdit: TDBEdit
                    Left = 424
                    Top = 24
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'EbMeret'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object BiztonsagiBilincsMeretEdit: TDBEdit
                    Left = 216
                    Top = 64
                    Width = 97
                    Height = 21
                    Color = clBtnFace
                    DataField = 'BbMeret'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 7
                  end
                  object BitBtn14: TBitBtn
                    Left = 424
                    Top = 136
                    Width = 177
                    Height = 25
                    Caption = 'Bilincs, hüvely &elõrendelések'
                    TabOrder = 16
                    OnClick = BitBtn14Click
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      04000000000000010000120B0000120B00001000000000000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                      00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                      00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                      F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                      F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                      F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                      FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                      0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                      0033333337FFFFFF773333333000000003333333377777777333}
                    NumGlyphs = 2
                  end
                end
              end
              object TabSheet7: TTabSheet
                Tag = 7540
                Caption = 'Ü&zemi adatok'
                ImageIndex = 2
                object ScrollBox6: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 916
                  Height = 353
                  Align = alClient
                  TabOrder = 0
                  object Label45: TLabel
                    Left = 168
                    Top = 56
                    Width = 118
                    Height = 13
                    Caption = 'Utolsó beszolg. idõpontja'
                  end
                  object Label46: TLabel
                    Left = 80
                    Top = 56
                    Width = 81
                    Height = 13
                    Caption = 'Eddig beszolg.db'
                    FocusControl = BeszolgDbEdit
                  end
                  object Label47: TLabel
                    Left = 8
                    Top = 104
                    Width = 67
                    Height = 13
                    Caption = 'Beszolg.hossz'
                    FocusControl = BeszolgHosszEdit
                  end
                  object Label48: TLabel
                    Left = 8
                    Top = 152
                    Width = 33
                    Height = 13
                    Caption = 'Tömeg'
                    FocusControl = TomegEdit
                  end
                  object Label50: TLabel
                    Left = 80
                    Top = 152
                    Width = 45
                    Height = 13
                    Caption = 'Normaidõ'
                  end
                  object Label51: TLabel
                    Left = 8
                    Top = 8
                    Width = 76
                    Height = 13
                    Caption = 'Gyártás indítása'
                  end
                  object Label52: TLabel
                    Left = 112
                    Top = 8
                    Width = 93
                    Height = 13
                    Caption = 'Befejezõ mûveletek'
                  end
                  object Label69: TLabel
                    Left = 8
                    Top = 56
                    Width = 53
                    Height = 13
                    Caption = 'Darabszám'
                    FocusControl = DarabEdit
                  end
                  object BeszolgCheckBox: TDBCheckBox
                    Left = 80
                    Top = 120
                    Width = 97
                    Height = 17
                    Caption = 'Beszolgáltatva'
                    DataField = 'Beszolg'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 6
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object BeszolgDbEdit: TDBEdit
                    Left = 80
                    Top = 72
                    Width = 81
                    Height = 21
                    DataField = 'BeszolgDb'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 3
                  end
                  object BeszolgHosszEdit: TDBEdit
                    Left = 8
                    Top = 120
                    Width = 64
                    Height = 21
                    DataField = 'BeszolgHossz'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 5
                  end
                  object TomegEdit: TDBEdit
                    Left = 8
                    Top = 168
                    Width = 64
                    Height = 21
                    DataField = 'Tomeg'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 7
                  end
                  object BeszolgDateEdit: TDBDateEdit
                    Left = 168
                    Top = 72
                    Width = 97
                    Height = 21
                    DataField = 'BeszolgIdo'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 4
                  end
                  object NormaIdoEdit: TRxDBComboEdit
                    Left = 80
                    Top = 168
                    Width = 89
                    Height = 21
                    DataField = 'NormaIdo'
                    DataSource = OrderDm.dsRendTetel
                    Glyph.Data = {
                      76010000424D7601000000000000760000002800000020000000100000000100
                      0400000000000001000000000000000000001000000010000000000000000000
                      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                      333333333333333FF3FF3333333333CC30003333333333773777333333333C33
                      3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
                      33003377333337F33377333333333C333300333F333337F33377339333333C33
                      3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
                      330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
                      330077F377F337F33377993399333C33330077FF773337F33377399993333C33
                      33333777733337F333FF333333333C33300033333333373FF7773333333333CC
                      3000333333333377377733333333333333333333333333333333}
                    NumGlyphs = 2
                    TabOrder = 8
                  end
                  object GyartIndEdit: TDBDateEdit
                    Left = 8
                    Top = 24
                    Width = 97
                    Height = 21
                    DataField = 'GyartasInd'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 0
                  end
                  object BefMuvEdit: TDBDateEdit
                    Left = 112
                    Top = 24
                    Width = 97
                    Height = 21
                    DataField = 'BefejezoMuv'
                    DataSource = OrderDm.dsRendTetel
                    NumGlyphs = 2
                    TabOrder = 1
                  end
                  object DarabEdit: TDBEdit
                    Left = 8
                    Top = 72
                    Width = 64
                    Height = 21
                    TabStop = False
                    Color = clBtnFace
                    DataField = 'DarabSzam'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 2
                  end
                end
              end
              object TabSheet8: TTabSheet
                Tag = 7550
                Caption = 'Egyé&b'
                ImageIndex = 3
                object ScrollBox8: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 692
                  Height = 357
                  Align = alClient
                  TabOrder = 0
                  object Label53: TLabel
                    Left = 16
                    Top = 8
                    Width = 42
                    Height = 13
                    Caption = 'Egyebek'
                    FocusControl = DBEdit29
                  end
                  object Label54: TLabel
                    Left = 16
                    Top = 48
                    Width = 49
                    Height = 13
                    Caption = 'Rögzítette'
                    FocusControl = DBEdit31
                  end
                  object Label55: TLabel
                    Left = 16
                    Top = 88
                    Width = 55
                    Height = 13
                    Caption = 'Módositotta'
                    FocusControl = DBEdit33
                  end
                  object Label56: TLabel
                    Left = 208
                    Top = 88
                    Width = 95
                    Height = 13
                    Caption = 'Módosítás idõpontja'
                    FocusControl = DBEdit34
                  end
                  object Label67: TLabel
                    Left = 208
                    Top = 48
                    Width = 88
                    Height = 13
                    Caption = 'Rögzítés idõpontja'
                    FocusControl = DBEdit32
                  end
                  object DBEdit29: TDBEdit
                    Left = 16
                    Top = 24
                    Width = 304
                    Height = 21
                    DataField = 'Egyeb'
                    DataSource = OrderDm.dsRendTetel
                    TabOrder = 0
                  end
                  object DBEdit31: TDBEdit
                    Left = 16
                    Top = 64
                    Width = 185
                    Height = 21
                    Color = clBtnFace
                    DataField = 'TRogzit'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 1
                  end
                  object DBEdit33: TDBEdit
                    Left = 16
                    Top = 104
                    Width = 185
                    Height = 21
                    Color = clBtnFace
                    DataField = 'TModosit'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 3
                  end
                  object DBEdit34: TDBEdit
                    Left = 208
                    Top = 104
                    Width = 112
                    Height = 21
                    Color = clBtnFace
                    DataField = 'TModIdo'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 4
                  end
                  object DBEdit32: TDBEdit
                    Left = 208
                    Top = 64
                    Width = 112
                    Height = 21
                    Color = clBtnFace
                    DataField = 'TRogzIdo'
                    DataSource = OrderDm.dsRendTetel
                    ReadOnly = True
                    TabOrder = 2
                  end
                end
              end
            end
          end
          object Panel56: TPanel
            Left = 1
            Top = 1
            Width = 1228
            Height = 32
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label68: TLabel
              Left = 8
              Top = 8
              Width = 136
              Height = 16
              Caption = 'Termék &kiválsztása'
              FocusControl = TermekCombo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object TermekCombo: TRxDBLookupCombo
              Left = 152
              Top = 4
              Width = 209
              Height = 21
              DropDownCount = 8
              LookupField = 'TermekKod'
              LookupDisplay = 'TomloTipNev'
              LookupSource = OrderDm.dsGetUserProductList
              TabOrder = 0
              TabStop = False
              OnChange = TermekComboChange
            end
          end
          object Panel57: TPanel
            Left = 1
            Top = 33
            Width = 1228
            Height = 280
            Align = alTop
            BevelInner = bvLowered
            BevelOuter = bvLowered
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 2
            object Panel58: TPanel
              Left = 2
              Top = 248
              Width = 1224
              Height = 30
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 0
              object Panel85: TPanel
                Left = 2
                Top = 2
                Width = 231
                Height = 26
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 0
                object DBNavigator21: TDBNavigator
                  Left = 2
                  Top = 2
                  Width = 225
                  Height = 26
                  DataSource = OrderDm.dsRendFej
                  VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
                  Flat = True
                  ParentShowHint = False
                  ConfirmDelete = False
                  ShowHint = True
                  TabOrder = 0
                end
              end
              object ToolBar9: TToolBar
                Left = 233
                Top = 2
                Width = 989
                Height = 26
                Align = alClient
                Caption = 'ToolBar9'
                Images = ImageList1
                TabOrder = 1
                object ToolButton55: TToolButton
                  Left = 0
                  Top = 2
                  Hint = 'Adatok frissítése'
                  Caption = 'ToolButton55'
                  ImageIndex = 28
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton1Click
                end
                object ToolButton59: TToolButton
                  Left = 23
                  Top = 2
                  Width = 26
                  Caption = 'ToolButton59'
                  ImageIndex = 35
                  Style = tbsSeparator
                end
                object ToolButton56: TToolButton
                  Left = 49
                  Top = 2
                  Hint = 'Ugrás az adatlapok nézetre'
                  Caption = 'ToolButton56'
                  ImageIndex = 42
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = SpeedButton3Click
                end
                object ToolButton57: TToolButton
                  Left = 72
                  Top = 2
                  Width = 8
                  Caption = 'ToolButton57'
                  ImageIndex = 43
                  Style = tbsSeparator
                end
                object ToolButton58: TToolButton
                  Left = 80
                  Top = 2
                  Hint = 'Rajz keresés'
                  Caption = 'ToolButton58'
                  ImageIndex = 34
                  ParentShowHint = False
                  ShowHint = True
                  OnClick = DrawSearchExecute
                end
              end
            end
            object RendFejGrid: TdxDBGrid
              Left = 2
              Top = 2
              Width = 1224
              Height = 246
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'RendSz'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              PopupMenu = RendFejGridMenu
              TabOrder = 1
              DataSource = OrderDm.dsRendFej
              Filter.Active = True
              Filter.MaxDropDownCount = 20000
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'RendFejGrid'
              OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
              OnCustomDrawCell = RendFejGridCustomDrawCell
              object RendFejGridRendelesAz: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RendelesAz'
              end
              object RendFejGridTermekKod: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TermekKod'
              end
              object RendFejGridRendSz: TdxDBGridMaskColumn
                Caption = 'Rendeléssz.'
                HeaderAlignment = taCenter
                Width = 81
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RendSz'
              end
              object RendFejGridSapRevizio: TdxDBGridColumn
                Caption = 'Revizio'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SapRevizio'
              end
              object RendFejGridPhxRendSz: TdxDBGridMaskColumn
                Caption = 'Phx.rend.sz.'
                HeaderAlignment = taCenter
                Width = 79
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PhxRendSz'
              end
              object RendFejGridVevoRendSz: TdxDBGridMaskColumn
                Caption = 'Vevõi rend.sz.'
                HeaderAlignment = taCenter
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'VevoRendSz'
              end
              object RendFejGridVevo: TdxDBGridPickColumn
                Caption = 'Vevõ'
                HeaderAlignment = taCenter
                Width = 48
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Vevo'
              end
              object RendFejGridFelhasznalo: TdxDBGridPickColumn
                Caption = 'Felhasználó'
                HeaderAlignment = taCenter
                Width = 79
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Felhasznalo'
              end
              object RendFejGridHatarido: TdxDBGridMaskColumn
                Caption = 'Határidõ'
                HeaderAlignment = taCenter
                Width = 63
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Hatarido'
              end
              object RendFejGridIgertHatarido: TdxDBGridMaskColumn
                Caption = 'Ígért határidõ'
                HeaderAlignment = taCenter
                Width = 84
                BandIndex = 0
                RowIndex = 0
                FieldName = 'IgertHatarido'
              end
              object RendFejGridExtrKtsg: TdxDBGridMaskColumn
                Caption = 'Extra ktsg.'
                HeaderAlignment = taCenter
                Width = 62
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ExtrKtsg'
              end
              object RendFejGridExtrPenznem: TdxDBGridPickColumn
                Caption = 'Extra pénznem'
                HeaderAlignment = taCenter
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ExtrPenznem'
              end
              object RendFejGridErtTerulet: TdxDBGridPickColumn
                Caption = 'Ért.terület'
                HeaderAlignment = taCenter
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ErtTerulet'
              end
              object RendFejGridRKonfekcio: TdxDBGridMaskColumn
                Caption = 'Konfekció'
                HeaderAlignment = taCenter
                Width = 79
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RKonfekcio'
              end
              object RendFejGridLevelSzama: TdxDBGridMaskColumn
                Caption = 'Levél száma'
                HeaderAlignment = taCenter
                Width = 81
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LevelSzama'
              end
              object RendFejGridLevelDatuma: TdxDBGridDateColumn
                Caption = 'Levél dátuma'
                HeaderAlignment = taCenter
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LevelDatuma'
              end
              object RendFejGridAjanlatSzam: TdxDBGridMaskColumn
                Caption = 'Ajánlatszám'
                HeaderAlignment = taCenter
                Width = 81
                BandIndex = 0
                RowIndex = 0
                FieldName = 'AjanlatSzam'
              end
              object RendFejGridTorolt: TdxDBGridCheckColumn
                Caption = 'Törölt'
                HeaderAlignment = taCenter
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Torolt'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object RendFejGridEnged: TdxDBGridCheckColumn
                HeaderAlignment = taCenter
                Width = 54
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Enged'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object RendFejGridVissza: TdxDBGridCheckColumn
                HeaderAlignment = taCenter
                Width = 53
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Vissza'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object RendFejGridRMegj: TdxDBGridMaskColumn
                Caption = 'Megjegyzés'
                HeaderAlignment = taCenter
                Width = 54
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RMegj'
              end
              object RendFejGridRRogzit: TdxDBGridMaskColumn
                Caption = 'Rögzítette'
                Color = clSilver
                HeaderAlignment = taCenter
                TabStop = False
                Width = 61
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RRogzit'
              end
              object RendFejGridRRogzIdo: TdxDBGridColumn
                Caption = 'Rögz.idõpont'
                Color = clSilver
                HeaderAlignment = taCenter
                TabStop = False
                Width = 71
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RRogzIdo'
              end
              object RendFejGridFAutoUpdate: TdxDBGridCheckColumn
                Caption = 'Auto.friss.'
                Color = clSilver
                HeaderAlignment = taCenter
                MinWidth = 20
                ReadOnly = True
                TabStop = False
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FAutoUpdate'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
            end
          end
        end
      end
    end
    object MEOSheet: TTabSheet
      Tag = 8000
      Caption = 'MEO'
      ImageIndex = 10
      object PageControl5: TPageControl
        Left = 0
        Top = 0
        Width = 1232
        Height = 706
        ActivePage = MeoDataSheet
        Align = alClient
        HotTrack = True
        Images = ImageList2
        Style = tsButtons
        TabOrder = 0
        object MeoDataSheet: TTabSheet
          Caption = 'Adatbevitel'
          ImageIndex = 4
          object Panel67: TPanel
            Left = 0
            Top = 0
            Width = 1224
            Height = 41
            Align = alTop
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object Label74: TLabel
              Left = 8
              Top = 4
              Width = 62
              Height = 13
              Caption = 'Kezdõ dátum'
            end
            object Label75: TLabel
              Left = 104
              Top = 4
              Width = 54
              Height = 13
              Caption = 'Záró dátum'
            end
            object MeoDate1: TDateTimePicker
              Left = 8
              Top = 16
              Width = 89
              Height = 21
              CalAlignment = dtaLeft
              Date = 39082
              Time = 39082
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              MaxDate = 55153
              MinDate = 32874
              ParseInput = False
              TabOrder = 0
            end
            object MeoDate2: TDateTimePicker
              Left = 104
              Top = 16
              Width = 89
              Height = 21
              CalAlignment = dtaLeft
              Date = 2958465
              Time = 2958465
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              MaxDate = 2958465
              MinDate = 32874
              ParseInput = False
              TabOrder = 1
            end
            object BitBtn6: TBitBtn
              Left = 200
              Top = 12
              Width = 121
              Height = 25
              Caption = 'Lekérdezés'
              TabOrder = 2
              OnClick = BitBtn6Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                0033333337FFFFFF773333333000000003333333377777777333}
              NumGlyphs = 2
            end
          end
          object MeoGrid: TdxDBGrid
            Left = 0
            Top = 41
            Width = 1224
            Height = 604
            Bands = <
              item
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'Meo_Az'
            ShowGroupPanel = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = MeoGridMenu
            TabOrder = 1
            DataSource = OrderDm.dsMeo
            Filter.Active = True
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'MeoGrid'
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            SimpleCustomizeBox = True
            object MeoGridMeo_Az: TdxDBGridMaskColumn
              Caption = 'Azon.'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Meo_Az'
            end
            object MeoGridGY_SZ: TdxDBGridMaskColumn
              Caption = 'Gyárt.sz.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GY_SZ'
            end
            object MeoGridK_SZ: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'K_SZ'
            end
            object MeoGridRendsz: TdxDBGridMaskColumn
              Caption = 'Rendelésszám'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rendsz'
            end
            object MeoGridSpecifikacio: TdxDBGridColumn
              Caption = 'Specifikáció'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Specifikacio'
            end
            object MeoGridMERET: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MERET'
            end
            object MeoGridId: TdxDBGridMaskColumn
              Caption = 'ID'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Id'
            end
            object MeoGridIdU: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IdU'
            end
            object MeoGridEgyebAdat: TdxDBGridMaskColumn
              Caption = 'Egyéb'
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EgyebAdat'
            end
            object MeoGridIdMe: TdxDBGridLookupColumn
              Caption = 'ID.Me.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'IdMe'
            end
            object MeoGridEgyebAdatU: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EgyebAdatU'
            end
            object MeoGridUzemiNyomas: TdxDBGridMaskColumn
              Caption = 'WP'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UzemiNyomas'
            end
            object MeoGridUzemiNyomasU: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UzemiNyomasU'
            end
            object MeoGridUzemiNyomasMe: TdxDBGridLookupColumn
              Caption = 'WP me.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'UzemiNyomasMe'
            end
            object MeoGridNevlegesHossz: TdxDBGridMaskColumn
              Caption = 'Névl.hossz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NevlegesHossz'
            end
            object MeoGridNevlegesHosszU: TdxDBGridMaskColumn
              Caption = 'Névl.h.me.kód'
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NevlegesHosszU'
            end
            object MeoGridNevlegesHosszMe: TdxDBGridLookupColumn
              Caption = 'N.hossz me.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NevlegesHosszMe'
            end
            object MeoGridTIPUS: TdxDBGridPickColumn
              Caption = 'Tipus'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TIPUS'
            end
            object MeoGridCSATL_TIP: TdxDBGridMaskColumn
              Caption = 'Csatl.tip.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CSATL_TIP'
            end
            object MeoGridCSATL_SZ: TdxDBGridMaskColumn
              Caption = 'Csatl.sz.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CSATL_SZ'
            end
            object MeoGridANYAGC: TdxDBGridMaskColumn
              Caption = 'Csatl.anyag'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ANYAGC'
            end
            object MeoGridSZUK_TIP: TdxDBGridMaskColumn
              Caption = 'Szûk.tip.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SZUK_TIP'
            end
            object MeoGridANYAGS: TdxDBGridMaskColumn
              Caption = 'Szûk.anyag'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ANYAGS'
            end
            object MeoGridSZUK_SZ: TdxDBGridMaskColumn
              Caption = 'Szûk.sz.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SZUK_SZ'
            end
            object MeoGridFEMSZ_TIP: TdxDBGridMaskColumn
              Caption = 'Fémsz.tip.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FEMSZ_TIP'
            end
            object MeoGridFEMSZ_SZ: TdxDBGridMaskColumn
              Caption = 'Fémsz.sz.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FEMSZ_SZ'
            end
            object MeoGridANYAGF: TdxDBGridMaskColumn
              Caption = 'Fémsz.anyag'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ANYAGF'
            end
            object MeoGridSZEMREVET: TdxDBGridMaskColumn
              Caption = 'Szemrevét.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SZEMREVET'
            end
            object MeoGridMERTH: TdxDBGridMaskColumn
              Caption = 'Mért hossz'
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MERTH'
            end
            object MeoGridMertHossz: TdxDBGridMaskColumn
              Caption = 'Mért hossz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MertHossz'
            end
            object MeoGridMertHosszU: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MertHosszU'
            end
            object MeoGridMertHosszMe: TdxDBGridLookupColumn
              Caption = 'M.h.me.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MertHosszMe'
            end
            object MeoGridPROBANYOM: TdxDBGridMaskColumn
              Caption = 'Próbanyom.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'PROBANYOM'
            end
            object MeoGridVIZSGALO: TdxDBGridMaskColumn
              Caption = 'Vizsgáló'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'VIZSGALO'
            end
            object MeoGridINSPEKT: TdxDBGridPickColumn
              Caption = 'Inspektor'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'INSPEKT'
            end
            object MeoGridMINOS: TdxDBGridPickColumn
              Caption = 'Minõsítés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MINOS'
              Items.Strings = (
                'megfelel'
                'nem felel meg')
            end
            object MeoGridM_DAT: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'M_DAT'
            end
            object MeoGridDatum: TdxDBGridDateColumn
              Caption = 'Dátum'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Datum'
            end
            object MeoGridMEGJEGYZES: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MEGJEGYZES'
            end
            object MeoGridDOSZIE_SZ: TdxDBGridMaskColumn
              Caption = 'Dosszié'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DOSZIE_SZ'
            end
            object MeoGridRogzitette: TdxDBGridMaskColumn
              Caption = 'Rögzítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rogzitette'
            end
            object MeoGridRogzitesIdopontja: TdxDBGridDateColumn
              Caption = 'Idõpont'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RogzitesIdopontja'
            end
            object MeoGridTorolt: TdxDBGridCheckColumn
              Caption = 'Törölt'
              HeaderAlignment = taCenter
              Visible = False
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Torolt'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object MeoGridOrderModified: TdxDBGridCheckColumn
              Caption = 'Rend.mód.'
              HeaderAlignment = taCenter
              Visible = False
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OrderModified'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object MeoGridOrderDeleted: TdxDBGridCheckColumn
              Caption = 'Rend.tör.'
              HeaderAlignment = taCenter
              Visible = False
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OrderDeleted'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object MeoGridpsi: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'psi'
            end
            object MeoGridRendelesAz: TdxDBGridMaskColumn
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RendelesAz'
            end
            object MeoGridTetelSrsz: TdxDBGridMaskColumn
              Caption = 'Tétel srsz.'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TetelSrsz'
            end
            object MeoGridChipId: TdxDBGridMaskColumn
              Color = clInfoBk
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ChipId'
            end
            object MeoGridChipDataExportDate: TdxDBGridColumn
              Caption = 'Chip adat exp.'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ChipDataExportDate'
            end
            object MeoGridTomeg: TdxDBGridColumn
              Caption = 'Tömeg'
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Tomeg'
            end
          end
          object Panel66: TPanel
            Left = 0
            Top = 645
            Width = 1224
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 2
            object DBNavigator23: TDBNavigator
              Left = 2
              Top = 2
              Width = 240
              Height = 25
              DataSource = OrderDm.dsMeo
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
              Align = alLeft
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
            object MeoSaveBtn: TBitBtn
              Left = 256
              Top = 2
              Width = 137
              Height = 25
              Caption = 'Változások mentése'
              TabOrder = 1
              OnClick = MeoSaveBtnClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
                7700333333337777777733333333008088003333333377F73377333333330088
                88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
                000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
                FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
                99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
                99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                93337FFFF7737777733300000033333333337777773333333333}
              NumGlyphs = 2
            end
            object MeoUndoBtn: TBitBtn
              Left = 400
              Top = 2
              Width = 137
              Height = 25
              Caption = 'Vált.visszavonása'
              TabOrder = 2
              OnClick = MeoUndoBtnClick
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                3333333777333777FF3333993333339993333377FF3333377FF3399993333339
                993337777FF3333377F3393999333333993337F777FF333337FF993399933333
                399377F3777FF333377F993339993333399377F33777FF33377F993333999333
                399377F333777FF3377F993333399933399377F3333777FF377F993333339993
                399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
                99333773FF3333777733339993333339933333773FFFFFF77333333999999999
                3333333777333777333333333999993333333333377777333333}
              NumGlyphs = 2
            end
          end
        end
        object MeoChipSheet: TTabSheet
          Caption = 'InfoChip'
          ImageIndex = 3
          object Panel71: TPanel
            Left = 0
            Top = 0
            Width = 1224
            Height = 41
            Align = alTop
            TabOrder = 0
            object Label76: TLabel
              Left = 8
              Top = 4
              Width = 62
              Height = 13
              Caption = 'Kezdõ dátum'
            end
            object Label77: TLabel
              Left = 104
              Top = 4
              Width = 54
              Height = 13
              Caption = 'Záró dátum'
            end
            object ChipDate1: TDateTimePicker
              Left = 8
              Top = 16
              Width = 89
              Height = 21
              CalAlignment = dtaLeft
              Date = 39082
              Time = 39082
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              MaxDate = 55153
              MinDate = 32874
              ParseInput = False
              TabOrder = 0
            end
            object ChipDate2: TDateTimePicker
              Left = 104
              Top = 16
              Width = 89
              Height = 21
              CalAlignment = dtaLeft
              Date = 2958465
              Time = 2958465
              DateFormat = dfShort
              DateMode = dmComboBox
              Kind = dtkDate
              MaxDate = 2958465
              MinDate = 32874
              ParseInput = False
              TabOrder = 1
            end
            object BitBtn12: TBitBtn
              Left = 200
              Top = 12
              Width = 121
              Height = 25
              Caption = 'Lekérdezés'
              TabOrder = 2
              OnClick = BitBtn12Click
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                0033333337FFFFFF773333333000000003333333377777777333}
              NumGlyphs = 2
            end
          end
          object Panel72: TPanel
            Left = 0
            Top = 645
            Width = 1224
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 1
            object BitBtn19: TBitBtn
              Left = -6
              Top = 2
              Width = 199
              Height = 25
              Action = InfoChipDataExport
              Caption = 'InfoChip adatok exportálása'
              TabOrder = 0
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF000000FF000000FF0000000000FF00FF00FF00FF00FF00FF00000000000000
                0000000000000000000000000000000000000000FF000000FF000000FF000000
                FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
                FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
                FF000000FF000000FF000000FF000000FF000000FF000000000000000000FFFF
                FF000000000000000000FFFFFF00000000000000FF000000FF000000FF000000
                FF000000FF000000FF000000FF000000FF0000000000FF00FF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000FF000000FF000000
                FF000000FF000000FF000000FF0000000000FF00FF00FF00FF0000000000FFFF
                FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                00000000FF000000FF0000000000FF00FF00FF00FF00FF00FF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
                00000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
                FF000000000000000000FFFFFF00000000000000000000000000000000000000
                000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
                FF0000000000BFBFBF00FFFFFF0000000000FFFFFF0000000000FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
                FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
                000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
                FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            end
          end
          object Panel73: TPanel
            Left = 0
            Top = 41
            Width = 1224
            Height = 604
            Align = alClient
            TabOrder = 2
            object Splitter15: TSplitter
              Left = 625
              Top = 1
              Width = 5
              Height = 602
              Cursor = crHSplit
              Beveled = True
              Color = clBtnShadow
              ParentColor = False
            end
            object ChipGrid: TdxDBGrid
              Left = 1
              Top = 1
              Width = 624
              Height = 602
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'Meo_Az'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alLeft
              PopupMenu = ChipGridMenu
              TabOrder = 0
              DataSource = OrderDm.dsChipData
              Filter.Active = True
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'ChipGrid'
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              object ChipGridMeo_Az: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Meo_Az'
              end
              object ChipGridRendSz: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RendSz'
              end
              object ChipGridTetelSrsz: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TetelSrsz'
              end
              object ChipGridAssetNumber: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'AssetNumber'
              end
              object ChipGridCategoryID: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CategoryID'
              end
              object ChipGridItemDescription: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ItemDescription'
              end
              object ChipGridDistributorID: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DistributorID'
              end
              object ChipGridClientID: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ClientID'
              end
              object ChipGridLocationID: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LocationID'
              end
              object ChipGridChipID: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ChipID'
              end
              object ChipGridCertificationStatus: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CertificationStatus'
              end
              object ChipGridCertificationInterval: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CertificationInterval'
              end
              object ChipGridBoreSize: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BoreSize'
              end
              object ChipGridNominalLegth: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NominalLegth'
              end
              object ChipGridDesignPressure: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DesignPressure'
              end
              object ChipGridTestPressure: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TestPressure'
              end
              object ChipGridInternalstripwoundtube: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'InternalStripwoundTube'
              end
              object ChipGridEndcoupling1: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EndCoupling1'
              end
              object ChipGridEndcoupling2: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'EndCoupling2'
              end
              object ChipGridMaxdesigntemp: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'MaxDesignTemp'
              end
              object ChipGridMindesigntemp: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'MinDesignTemp'
              end
              object ChipGridManufacturer: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Manufacturer'
              end
              object ChipGridHoseType: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HoseType'
              end
              object ChipGridHoseStandard: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HoseStandard'
              end
              object ChipGridHoseCover: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HoseCover'
              end
              object ChipGridOutsideProtection: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'OutsideProtection'
              end
              object ChipGridDynamicMBR: TdxDBGridColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'OpDynamicMBR'
              end
              object ChipGridStorageMBR: TdxDBGridColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'StorageMBR'
              end
              object ChipGridStaticMBR: TdxDBGridColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'OpStaticMBR'
              end
              object ChipGridNotes: TdxDBGridMaskColumn
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Notes'
              end
              object ChipGridICExportDate: TdxDBGridColumn
                Caption = 'IC export dátuma'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ICExportDate'
              end
              object ChipGridICExporter: TdxDBGridColumn
                Caption = 'Exportálta'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ICExporter'
              end
            end
            object ChipInspector: TdxDBInspector
              Left = 630
              Top = 1
              Width = 593
              Height = 602
              Align = alClient
              DataSource = OrderDm.dsChipData
              DefaultFields = False
              TabOrder = 1
              DividerPos = 299
              Data = {
                7C0400002000000008000000000000001300000043686970496E73706563746F
                724D656F5F417A08000000000000001300000043686970496E73706563746F72
                52656E64537A08000000000000001600000043686970496E73706563746F7254
                6574656C5372737A08000000000000001800000043686970496E73706563746F
                7241535345544E554D42455208000000000000001700000043686970496E7370
                6563746F7243415445474F5259494408000000000000001C0000004368697049
                6E73706563746F724954454D4445534352495054494F4E08000000000000001A
                00000043686970496E73706563746F724449535452494255544F524944080000
                00000000001500000043686970496E73706563746F72434C49454E5449440800
                0000000000001700000043686970496E73706563746F724C4F434154494F4E49
                4408000000000000001300000043686970496E73706563746F72434849504944
                08000000000000002000000043686970496E73706563746F7243455254494649
                434154494F4E53544154555308000000000000002200000043686970496E7370
                6563746F7243455254494649434154494F4E494E54455256414C080000000000
                00001500000043686970496E73706563746F72426F726553697A650800000000
                0000001900000043686970496E73706563746F724E6F6D696E616C4C65677468
                08000000000000001B00000043686970496E73706563746F7244657369676E50
                7265737375726508000000000000001900000043686970496E73706563746F72
                54657374507265737375726508000000000000002300000043686970496E7370
                6563746F72496E7465726E616C7374726970776F756E64747562650800000000
                0000001900000043686970496E73706563746F72456E64636F75706C696E6731
                08000000000000001900000043686970496E73706563746F72456E64636F7570
                6C696E673208000000000000001A00000043686970496E73706563746F724D61
                7864657369676E74656D7008000000000000001A00000043686970496E737065
                63746F724D696E64657369676E74656D70080000000000000019000000436869
                70496E73706563746F724D616E75666163747572657208000000000000001500
                000043686970496E73706563746F72486F736554797065080000000000000019
                00000043686970496E73706563746F72486F73655374616E6461726408000000
                000000001600000043686970496E73706563746F72486F7365436F7665720800
                0000000000001E00000043686970496E73706563746F724F7574736964655072
                6F74656374696F6E08000000000000001200000043686970496E73706563746F
                72526F77323808000000000000001200000043686970496E73706563746F7252
                6F77323908000000000000001200000043686970496E73706563746F72526F77
                333008000000000000001200000043686970496E73706563746F724E6F746573
                08000000000000001200000043686970496E73706563746F72526F7733310800
                0000000000001200000043686970496E73706563746F72526F77333200000000}
              object ChipInspectorMeo_Az: TdxInspectorDBMaskRow
                Caption = 'Azonosító'
                FieldName = 'Meo_Az'
              end
              object ChipInspectorRendSz: TdxInspectorDBMaskRow
                Caption = 'Rendsz.'
                FieldName = 'RendSz'
              end
              object ChipInspectorTetelSrsz: TdxInspectorDBMaskRow
                Caption = 'Tétel srsz.'
                FieldName = 'TetelSrsz'
              end
              object ChipInspectorASSETNUMBER: TdxInspectorDBMaskRow
                FieldName = 'ASSETNUMBER'
              end
              object ChipInspectorCATEGORYID: TdxInspectorDBMaskRow
                FieldName = 'CATEGORYID'
              end
              object ChipInspectorITEMDESCRIPTION: TdxInspectorDBMaskRow
                FieldName = 'ITEMDESCRIPTION'
              end
              object ChipInspectorDISTRIBUTORID: TdxInspectorDBMaskRow
                FieldName = 'DISTRIBUTORID'
              end
              object ChipInspectorCLIENTID: TdxInspectorDBMaskRow
                FieldName = 'CLIENTID'
              end
              object ChipInspectorLOCATIONID: TdxInspectorDBMaskRow
                FieldName = 'LOCATIONID'
              end
              object ChipInspectorCHIPID: TdxInspectorDBMaskRow
                FieldName = 'CHIPID'
              end
              object ChipInspectorCERTIFICATIONSTATUS: TdxInspectorDBMaskRow
                FieldName = 'CERTIFICATIONSTATUS'
              end
              object ChipInspectorCERTIFICATIONINTERVAL: TdxInspectorDBMaskRow
                FieldName = 'CertificationInterval'
              end
              object ChipInspectorBoreSize: TdxInspectorDBMaskRow
                FieldName = 'BoreSize'
              end
              object ChipInspectorNominalLegth: TdxInspectorDBMaskRow
                FieldName = 'NominalLegth'
              end
              object ChipInspectorDesignPressure: TdxInspectorDBMaskRow
                FieldName = 'DesignPressure'
              end
              object ChipInspectorTestPressure: TdxInspectorDBMaskRow
                FieldName = 'TestPressure'
              end
              object ChipInspectorInternalstripwoundtube: TdxInspectorDBMaskRow
                FieldName = 'InternalStripwoundTube'
              end
              object ChipInspectorEndcoupling1: TdxInspectorDBMaskRow
                FieldName = 'EndCoupling1'
              end
              object ChipInspectorEndcoupling2: TdxInspectorDBMaskRow
                FieldName = 'EndCoupling2'
              end
              object ChipInspectorMaxdesigntemp: TdxInspectorDBMaskRow
                FieldName = 'MaxDesignTemp'
              end
              object ChipInspectorMindesigntemp: TdxInspectorDBMaskRow
                FieldName = 'MinDesignTemp'
              end
              object ChipInspectorManufacturer: TdxInspectorDBMaskRow
                FieldName = 'Manufacturer'
              end
              object ChipInspectorHoseType: TdxInspectorDBMaskRow
                FieldName = 'HoseType'
              end
              object ChipInspectorHoseStandard: TdxInspectorDBMaskRow
                FieldName = 'HoseStandard'
              end
              object ChipInspectorHoseCover: TdxInspectorDBMaskRow
                FieldName = 'HoseCover'
              end
              object ChipInspectorOutsideProtection: TdxInspectorDBMaskRow
                FieldName = 'OutsideProtection'
              end
              object ChipInspectorNotes: TdxInspectorDBMaskRow
                FieldName = 'Notes'
              end
              object ChipInspectorRow28: TdxInspectorDBRow
                FieldName = 'OpDynamicMBR'
              end
              object ChipInspectorRow29: TdxInspectorDBRow
                FieldName = 'StorageMBR'
              end
              object ChipInspectorRow30: TdxInspectorDBRow
                FieldName = 'OpStaticMBR'
              end
              object ChipInspectorRow31: TdxInspectorDBRow
                Caption = 'IC export dátuma'
                FieldName = 'ICExportDate'
              end
              object ChipInspectorRow32: TdxInspectorDBRow
                Caption = 'Exportálta'
                FieldName = 'ICExporter'
              end
            end
          end
        end
      end
    end
    object DocSheet: TTabSheet
      Tag = 9000
      Caption = 'Dokumentumok'
      ImageIndex = 9
      OnShow = DocSheetShow
      object PageControl6: TPageControl
        Left = 0
        Top = 0
        Width = 1232
        Height = 706
        ActivePage = MsoDrawSheet
        Align = alClient
        HotTrack = True
        Style = tsButtons
        TabOrder = 0
        object MsoDrawSheet: TTabSheet
          Tag = 9100
          Caption = 'MSO rajzlista'
          OnShow = MsoDrawSheetShow
          object MsoDrawGrid: TdxDBGrid
            Left = 0
            Top = 201
            Width = 1224
            Height = 445
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'MsoId'
            ShowGroupPanel = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            ParentShowHint = False
            PopupMenu = MsoDrawGridMenu
            ShowHint = True
            TabOrder = 0
            OnClick = MsoDrawGridClick
            DataSource = ToolsDm.dsMsoRajzLista
            Filter.Active = True
            Filter.CaseInsensitive = True
            Filter.MaxDropDownCount = 3000
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'MsoDrawGrid'
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabs, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object MsoDrawGridMsoId: TdxDBGridMaskColumn
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MsoId'
            end
            object MsoDrawGridFocsoportNev: TdxDBGridColumn
              Caption = 'Fõcsoportnév'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'FocsoportNev'
            end
            object MsoDrawGridCsoportNev: TdxDBGridColumn
              Caption = 'Csoportnév'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CsoportNev'
            end
            object MsoDrawGridAlcsoportNev: TdxDBGridColumn
              Caption = 'Alcsoportnév'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 150
              BandIndex = 0
              RowIndex = 0
              FieldName = 'AlcsoportNev'
            end
            object MsoDrawGridTipusjel: TdxDBGridMaskColumn
              CharCase = ecUpperCase
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Tipusjel'
            end
            object MsoDrawGridSorozatszam: TdxDBGridColumn
              Caption = 'Sorozatszám'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 83
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sorozatszam'
            end
            object MsoDrawGridSorszam: TdxDBGridMaskColumn
              Caption = 'Sorszám'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Sorszam'
            end
            object MsoDrawGridVerzio: TdxDBGridColumn
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 52
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Verzio'
            end
            object MsoDrawGridFilenev: TdxDBGridHyperLinkColumn
              Caption = 'Filenév'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 57
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Filenev'
              SingleClick = True
              OnStartClick = MsoDrawGridFilenevStartClick
            end
            object MsoDrawGridUtvonal: TdxDBGridColumn
              Caption = 'Útvonal'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 60
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Utvonal'
            end
            object MsoDrawGridSharePointLink: TdxDBGridHyperLinkColumn
              Caption = 'SharePoint link'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SharePointLink'
              SingleClick = True
            end
            object MsoDrawGridMsoKategoriaNev: TdxDBGridColumn
              Caption = 'Kategória'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MsoKategoriaNev'
            end
            object MsoDrawGridMegnevezes: TdxDBGridMaskColumn
              Caption = 'Megnevezés'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 84
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Megnevezes'
            end
            object MsoDrawGridMegjegyzes: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 79
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Megjegyzes'
            end
            object MsoDrawGridKotesszam: TdxDBGridMaskColumn
              Caption = 'Kötésszám'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 74
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Kotesszam'
            end
            object MsoDrawGridEgyebKapcsolat: TdxDBGridMaskColumn
              Caption = 'Egyéb kapcs.'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 88
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EgyebKapcsolat'
            end
            object MsoDrawGridMsoDoktipusNev: TdxDBGridColumn
              Caption = 'Dok.tipus'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              Width = 68
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MsoDoktipusNev'
            end
            object MsoDrawGridErvenyes: TdxDBGridCheckColumn
              Caption = 'Érvényes'
              Color = clSilver
              ReadOnly = True
              Width = 100
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Ervenyes'
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object MsoDrawGridRogzitette: TdxDBGridColumn
              Caption = 'Rögzítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              Width = 72
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rogzitette'
            end
            object MsoDrawGridRogzIdopont: TdxDBGridColumn
              Caption = 'Idõpont'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              Width = 59
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RogzIdopont'
            end
          end
          object Panel45: TPanel
            Left = 0
            Top = 646
            Width = 1224
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 1
            object SpeedButton20: TSpeedButton
              Left = 192
              Top = 2
              Width = 25
              Height = 25
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
              OnClick = SpeedButton20Click
            end
            object DBNavigator22: TDBNavigator
              Left = 2
              Top = 2
              Width = 183
              Height = 25
              DataSource = ToolsDm.dsMsoRajzLista
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
              Align = alLeft
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object Panel79: TPanel
            Left = 0
            Top = 0
            Width = 1224
            Height = 201
            Align = alTop
            BevelInner = bvSpace
            BevelOuter = bvSpace
            TabOrder = 2
            object Label90: TLabel
              Left = 64
              Top = 2
              Width = 47
              Height = 13
              Caption = 'Fõcsoport'
            end
            object Label91: TLabel
              Left = 224
              Top = 2
              Width = 36
              Height = 13
              Caption = 'Csoport'
            end
            object Label92: TLabel
              Left = 408
              Top = 2
              Width = 44
              Height = 13
              Caption = 'Alcsoport'
            end
            object Label93: TLabel
              Left = 632
              Top = 2
              Width = 45
              Height = 13
              Caption = 'Rajzszám'
            end
            object Label97: TLabel
              Left = 560
              Top = 42
              Width = 34
              Height = 13
              Caption = 'Fájlnév'
            end
            object Label98: TLabel
              Left = 8
              Top = 42
              Width = 92
              Height = 13
              Caption = 'Rajz elérési útvonal'
            end
            object Label94: TLabel
              Left = 8
              Top = 82
              Width = 61
              Height = 13
              Caption = 'Megnevezés'
            end
            object Label95: TLabel
              Left = 416
              Top = 82
              Width = 56
              Height = 13
              Caption = 'Megjegyzés'
            end
            object Label96: TLabel
              Left = 8
              Top = 122
              Width = 51
              Height = 13
              Caption = 'Kötésszám'
            end
            object Label99: TLabel
              Left = 264
              Top = 122
              Width = 95
              Height = 13
              Caption = 'Dokumentum típusa'
            end
            object Label100: TLabel
              Left = 96
              Top = 122
              Width = 79
              Height = 13
              Caption = 'Egyéb kapcsolat'
            end
            object Label101: TLabel
              Left = 448
              Top = 122
              Width = 106
              Height = 13
              Caption = 'SharePoint hivatkozás'
            end
            object Label102: TLabel
              Left = 8
              Top = 2
              Width = 47
              Height = 13
              Caption = 'Azonosító'
            end
            object TipusJelEdit: TMaskEdit
              Left = 600
              Top = 16
              Width = 30
              Height = 21
              Hint = 'Típusjel'
              EditMask = '>CCC'
              MaxLength = 3
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              Text = 'MSO'
            end
            object SorozatSzamEdit: TMaskEdit
              Left = 632
              Top = 16
              Width = 49
              Height = 21
              Hint = 'Sorozatszám'
              EditMask = '999999;1;_'
              MaxLength = 6
              ParentShowHint = False
              ShowHint = True
              TabOrder = 5
              Text = '      '
            end
            object SorszamEdit: TMaskEdit
              Left = 684
              Top = 16
              Width = 26
              Height = 21
              Hint = 'Sorszám'
              EditMask = '999;1;_'
              MaxLength = 3
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
              Text = '   '
            end
            object VerzioEdit: TMaskEdit
              Left = 712
              Top = 16
              Width = 15
              Height = 21
              Hint = 'Verzió'
              EditMask = '>c;1;_'
              MaxLength = 1
              ParentShowHint = False
              ShowHint = True
              TabOrder = 7
              Text = ' '
            end
            object DrawPathEdit: TComboEdit
              Left = 8
              Top = 56
              Width = 545
              Height = 21
              Hint = 'Megadása csak nem "dwg" fájlok esetén szükséges!'
              ButtonHint = 'Útvonal tallózása'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00303333333333
                333337F3333333333333303333333333333337F33FFFFF3FF3FF303300000300
                300337FF77777F77377330000BBB0333333337777F337F33333330330BB00333
                333337F373F773333333303330033333333337F3377333333333303333333333
                333337F33FFFFF3FF3FF303300000300300337FF77777F77377330000BBB0333
                333337777F337F33333330330BB00333333337F373F773333333303330033333
                333337F3377333333333303333333333333337FFFF3FF3FFF333000003003000
                333377777F77377733330BBB0333333333337F337F33333333330BB003333333
                333373F773333333333330033333333333333773333333333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 8
              OnButtonClick = DrawPathEditButtonClick
            end
            object MegnevezesEdit: TEdit
              Left = 8
              Top = 96
              Width = 401
              Height = 21
              TabOrder = 9
            end
            object MegjegyzesEdit: TEdit
              Left = 416
              Top = 96
              Width = 401
              Height = 21
              TabOrder = 10
            end
            object KotesszamEdit: TEdit
              Left = 8
              Top = 136
              Width = 81
              Height = 21
              TabOrder = 11
            end
            object EgyebKapcsEdit: TEdit
              Left = 96
              Top = 136
              Width = 161
              Height = 21
              TabOrder = 12
            end
            object MsoFocsoportCombo: TDBLookupComboBox
              Left = 64
              Top = 16
              Width = 153
              Height = 21
              DropDownRows = 20
              KeyField = 'FocsoportKod'
              ListField = 'FocsoportNev'
              ListSource = ToolsDm.dsMsoFocsoport
              TabOrder = 1
              OnCloseUp = MsoFocsoportComboCloseUp
            end
            object MsoCsoportCombo: TDBLookupComboBox
              Left = 224
              Top = 16
              Width = 177
              Height = 21
              DropDownRows = 20
              KeyField = 'CsoportKod'
              ListField = 'CsoportNev'
              ListSource = ToolsDm.dsMsoCsoport
              TabOrder = 2
              OnCloseUp = MsoCsoportComboCloseUp
            end
            object MsoAlcsoportCombo: TDBLookupComboBox
              Left = 408
              Top = 16
              Width = 177
              Height = 21
              DropDownRows = 20
              KeyField = 'AlcsoportKod'
              ListField = 'AlcsoportNev'
              ListSource = ToolsDm.dsMsoAlcsoport
              TabOrder = 3
              OnCloseUp = MsoCsoportComboCloseUp
            end
            object SharePointLinkEdit: TEdit
              Left = 448
              Top = 136
              Width = 401
              Height = 21
              TabOrder = 14
            end
            object NewMsoBtn: TBitBtn
              Left = 8
              Top = 168
              Width = 169
              Height = 25
              Action = NewMsoItem
              Caption = 'Új elem felvitele'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 15
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                33333333FF33333333FF333993333333300033377F3333333777333993333333
                300033F77FFF3333377739999993333333333777777F3333333F399999933333
                33003777777333333377333993333333330033377F3333333377333993333333
                3333333773333333333F333333333333330033333333F33333773333333C3333
                330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                333333333337733333FF3333333C333330003333333733333777333333333333
                3000333333333333377733333333333333333333333333333333}
              NumGlyphs = 2
            end
            object SaveMsoBtn: TBitBtn
              Left = 184
              Top = 168
              Width = 169
              Height = 25
              Action = SaveMsoItem
              Caption = 'Adatok mentése'
              TabOrder = 16
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
                7700333333337777777733333333008088003333333377F73377333333330088
                88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
                000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
                FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
                99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
                99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                93337FFFF7737777733300000033333333337777773333333333}
              NumGlyphs = 2
            end
            object MsoIdEdit: TEdit
              Left = 8
              Top = 16
              Width = 49
              Height = 21
              TabStop = False
              Color = clSilver
              ReadOnly = True
              TabOrder = 0
            end
            object DokTipusCombo: TDBLookupComboBox
              Left = 264
              Top = 136
              Width = 177
              Height = 21
              DropDownRows = 20
              KeyField = 'MsoDokTipusKod'
              ListField = 'MsoDokTipusNev'
              ListSource = ToolsDm.dsMsoDoktipusok
              TabOrder = 13
              OnCloseUp = MsoCsoportComboCloseUp
            end
            object DrawNameEdit: TComboEdit
              Left = 560
              Top = 56
              Width = 169
              Height = 21
              Hint = 'AutoCad (dwg) fájl kiválasztása'
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000130B0000130B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                3BB33773333773333773B333333B3333333B7333333733333337}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              TabOrder = 17
              OnButtonClick = DrawNameEditButtonClick
            end
            object ErvenyesCheckBox: TCheckBox
              Left = 856
              Top = 136
              Width = 73
              Height = 17
              Caption = 'Érvényes'
              TabOrder = 18
            end
            object OnlyValidCheckBox: TCheckBox
              Left = 360
              Top = 176
              Width = 313
              Height = 17
              Caption = 'Csak az érvényes elemek megjelenítése'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 19
              OnClick = OnlyValidCheckBoxClick
            end
          end
        end
        object MTDrawSheet: TTabSheet
          Caption = 'MT rajzkönyv'
          ImageIndex = 1
          OnShow = MTDrawSheetShow
          object Panel81: TPanel
            Left = 0
            Top = 650
            Width = 1000
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object DBNavigator27: TDBNavigator
              Left = 2
              Top = 2
              Width = 240
              Height = 25
              DataSource = ToolsDm.dsMTRajzkonyv
              Align = alLeft
              TabOrder = 0
            end
          end
          object MTRajzkonyvGrid: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1000
            Height = 650
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'rajzszam'
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 1
            DataSource = ToolsDm.dsMTRajzkonyv
            Filter.Active = True
            Filter.AutoDataSetFilter = True
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'MTRajzkonyvGrid'
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoRowAutoHeight, edgoUseBitmap]
            object MTRajzkonyvGridrajzszam: TdxDBGridMaskColumn
              Caption = 'Rajzszám'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'rajzszam'
            end
            object MTRajzkonyvGridrendelesszam: TdxDBGridMaskColumn
              Caption = 'Rendelésszám'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'rendelesszam'
            end
            object MTRajzkonyvGridmegnevezes: TdxDBGridMemoColumn
              Caption = 'Megnevezés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              HeaderMaxLineCount = 1
              FieldName = 'megnevezes'
            end
            object MTRajzkonyvGridID: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID'
            end
            object MTRajzkonyvGridnyomas: TdxDBGridMaskColumn
              Caption = 'nyomás'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'nyomas'
            end
            object MTRajzkonyvGridrev_datum: TdxDBGridMaskColumn
              Caption = 'revizio/dátum'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'rev_datum'
            end
            object MTRajzkonyvGridmegjegyzes: TdxDBGridMaskColumn
              Caption = 'megjegyzés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'megjegyzes'
            end
            object MTRajzkonyvGridRogzIdopont: TdxDBGridColumn
              Caption = 'idõpont'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RogzIdopont'
            end
            object MTRajzkonyvGridRogzitette: TdxDBGridColumn
              Caption = 'rögzítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rogzitette'
            end
          end
        end
        object AccessoriesSheet: TTabSheet
          Caption = 'Szerelvények'
          ImageIndex = 2
          OnShow = AccessoriesSheetShow
          object Panel82: TPanel
            Left = 0
            Top = 650
            Width = 1000
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object DBNavigator28: TDBNavigator
              Left = 2
              Top = 2
              Width = 240
              Height = 25
              DataSource = ToolsDm.dsSzerelveny
              Align = alLeft
              TabOrder = 0
            end
          end
          object SzerelvenyGrid: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1000
            Height = 650
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'Srsz'
            ShowGroupPanel = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 1
            DataSource = ToolsDm.dsSzerelveny
            Filter.Active = True
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'SzerelvenyGrid'
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object SzerelvenyGridSrsz: TdxDBGridColumn
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Srsz'
            end
            object SzerelvenyGridTipusKod: TdxDBGridMaskColumn
              Caption = 'Típuskód'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TipusKod'
            end
            object SzerelvenyGridTipusNev: TdxDBGridLookupColumn
              Caption = 'Típusnév'
              HeaderAlignment = taCenter
              Sorted = csUp
              Visible = False
              Width = 200
              BandIndex = 0
              RowIndex = 0
              FieldName = 'TipusNev'
              GroupIndex = 0
            end
            object SzerelvenyGridinch: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'inch'
            end
            object SzerelvenyGridGegecsoOD: TdxDBGridMaskColumn
              Caption = 'Gégecsõ OD'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GegecsoOD'
            end
            object SzerelvenyGridOD: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OD'
            end
            object SzerelvenyGridID: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'ID'
            end
            object SzerelvenyGridv1: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'v1'
            end
            object SzerelvenyGridOD1: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OD1'
            end
            object SzerelvenyGridOD2: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OD2'
            end
            object SzerelvenyGridL: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'L'
            end
            object SzerelvenyGridMeret1: TdxDBGridMaskColumn
              Caption = 'Méret 1'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Meret1'
            end
            object SzerelvenyGridMeret2: TdxDBGridMaskColumn
              Caption = 'Méret 2'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Meret2'
            end
            object SzerelvenyGridpsi: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'psi'
            end
            object SzerelvenyGridMPa: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MPa'
            end
            object SzerelvenyGridRajzszam: TdxDBGridMaskColumn
              Caption = 'Rajzszám'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rajzszam'
            end
            object SzerelvenyGridMegnevezes: TdxDBGridMaskColumn
              Caption = 'Megnevezés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Megnevezes'
            end
            object SzerelvenyGridAveg: TdxDBGridMaskColumn
              Caption = '"A" vég'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Aveg'
            end
            object SzerelvenyGridBveg: TdxDBGridMaskColumn
              Caption = '"B" vég'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Bveg'
            end
            object SzerelvenyGridOsszeallRsz: TdxDBGridMaskColumn
              Caption = 'Összeáll.rsz.'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OsszeallRsz'
            end
            object SzerelvenyGridAnyag: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Anyag'
            end
            object SzerelvenyGridTomeg: TdxDBGridMaskColumn
              Caption = 'Tömeg'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Tomeg'
            end
            object SzerelvenyGridMegjegyzes: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Megjegyzes'
            end
            object SzerelvenyGridRogzIdopont: TdxDBGridColumn
              Caption = 'Idõpont'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'RogzIdopont'
            end
            object SzerelvenyGridRogzitette: TdxDBGridColumn
              Caption = 'Rögzitette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rogzitette'
            end
            object SzerelvenyGridv: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'v'
            end
            object SzerelvenyGridOD3: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OD3'
            end
            object SzerelvenyGridL1: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'L1'
            end
            object SzerelvenyGridL2: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'L2'
            end
            object SzerelvenyGridL3: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'L3'
            end
            object SzerelvenyGridL4: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'L4'
            end
            object SzerelvenyGridL5: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'L5'
            end
            object SzerelvenyGrida: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'a'
            end
            object SzerelvenyGridR1: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'R1'
            end
            object SzerelvenyGridR2: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'R2'
            end
            object SzerelvenyGridpitch: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'pitch'
            end
            object SzerelvenyGridalfa1: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'alfa1'
            end
            object SzerelvenyGridalfa2: TdxDBGridColumn
              Color = 12639424
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'alfa2'
            end
          end
        end
        object HoronyvedelemSheet: TTabSheet
          Caption = 'Horony védelem'
          ImageIndex = 3
          OnShow = HoronyvedelemSheetShow
          object Panel83: TPanel
            Left = 0
            Top = 650
            Width = 1000
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object DBNavigator29: TDBNavigator
              Left = 2
              Top = 2
              Width = 240
              Height = 25
              DataSource = ToolsDm.dsHoronyvedelem
              Align = alLeft
              TabOrder = 0
            end
          end
          object HoronyvedelemGrid: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1000
            Height = 650
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
            DataSource = ToolsDm.dsHoronyvedelem
            Filter.Active = True
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'HoronyvedelemGrid'
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object HoronyvedelemGridId: TdxDBGridColumn
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Id'
            end
            object HoronyvedelemGridHorony: TdxDBGridMaskColumn
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Horony'
            end
            object HoronyvedelemGridHomokfuvozashoz: TdxDBGridMaskColumn
              Caption = 'Homokfúvózáshoz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Homokfuvozashoz'
            end
            object HoronyvedelemGridKiszallitashoz: TdxDBGridMaskColumn
              Caption = 'Kiszállításhoz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Kiszallitashoz'
            end
            object HoronyvedelemGridMosatashoz: TdxDBGridMaskColumn
              Caption = 'Mosatáshoz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Mosatashoz'
            end
            object HoronyvedelemGridMegjegyzes: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Megjegyzes'
            end
            object HoronyvedelemGridRogzitette: TdxDBGridColumn
              Caption = 'Rögzítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rogzitette'
            end
            object HoronyvedelemGridRogzIdopont: TdxDBGridColumn
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
        end
        object KikuldottSheet: TTabSheet
          Caption = 'Kiküldött rajzok'
          ImageIndex = 4
          OnShow = KikuldottSheetShow
          object Panel84: TPanel
            Left = 0
            Top = 646
            Width = 1224
            Height = 29
            Align = alBottom
            BevelInner = bvLowered
            BevelOuter = bvLowered
            TabOrder = 0
            object DBNavigator30: TDBNavigator
              Left = 2
              Top = 2
              Width = 240
              Height = 25
              DataSource = ToolsDm.dsKikuldottRajzok
              Align = alLeft
              TabOrder = 0
            end
          end
          object KikuldottGrid: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1224
            Height = 646
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
            DataSource = ToolsDm.dsKikuldottRajzok
            Filter.Active = True
            Filter.AutoDataSetFilter = True
            Filter.Criteria = {00000000}
            IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
            IniSectionName = 'KikuldottGrid'
            OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
            object KikuldottGridId: TdxDBGridColumn
              Caption = 'Srsz.'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Id'
            end
            object KikuldottGridOsszeallRajz: TdxDBGridMaskColumn
              Caption = 'Összeáll.rajz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'OsszeallRajz'
            end
            object KikuldottGridMSORajz: TdxDBGridMaskColumn
              Caption = 'MSO rajz'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MSORajz'
            end
            object KikuldottGridKotes: TdxDBGridMaskColumn
              Caption = 'Kötés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Kotes'
            end
            object KikuldottGridCsatlakozo: TdxDBGridMaskColumn
              Caption = 'Csatlakozó'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Csatlakozo'
            end
            object KikuldottGridMegjegyzes: TdxDBGridMaskColumn
              Caption = 'Megjegyzés'
              HeaderAlignment = taCenter
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Megjegyzes'
            end
            object KikuldottGridRogzitette: TdxDBGridColumn
              Caption = 'Rögzítette'
              Color = clSilver
              HeaderAlignment = taCenter
              ReadOnly = True
              TabStop = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'Rogzitette'
            end
            object KikuldottGridRogzIdopont: TdxDBGridColumn
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
        end
      end
    end
    object PreOrderSheet: TTabSheet
      Tag = 10000
      Caption = 'Elõrendelés'
      ImageIndex = 10
      object Panel86: TPanel
        Left = 0
        Top = 0
        Width = 1232
        Height = 25
        Align = alTop
        Caption = 'Elõrendelés'
        Color = clPurple
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PageControl7: TPageControl
        Left = 0
        Top = 25
        Width = 1232
        Height = 681
        ActivePage = TabSheet3
        Align = alClient
        Style = tsButtons
        TabOrder = 1
        object TabSheet3: TTabSheet
          Caption = 'Alapadatok, megrendelés'
          object Splitter19: TSplitter
            Left = 857
            Top = 0
            Width = 3
            Height = 650
            Cursor = crHSplit
            Align = alRight
          end
          object Panel88: TPanel
            Left = 0
            Top = 0
            Width = 857
            Height = 650
            Align = alClient
            TabOrder = 0
            object ElorendelesGrid: TdxDBGrid
              Left = 1
              Top = 17
              Width = 855
              Height = 515
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
              PopupMenu = ElorendelesMenu
              TabOrder = 0
              DataSource = ToolsDm.dsElorendeles
              Filter.Active = True
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'ElorendelesGrid'
              OptionsBehavior = [edgoAnsiSort, edgoAutoCopySelectedToClipboard, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
              OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoRowSizing]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              OnCustomDrawCell = ElorendelesGridCustomDrawCell
              OnEditing = ElorendelesGridEditing
              object ElorendelesGridId: TdxDBGridMaskColumn
                Color = clSilver
                ReadOnly = True
                Sorted = csUp
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Id'
              end
              object ElorendelesGridRendSz: TdxDBGridMaskColumn
                Sorted = csUp
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RendSz'
                GroupIndex = 0
              end
              object ElorendelesGridRendelesAz: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RendelesAz'
              end
              object ElorendelesGridTetelSrsz: TdxDBGridMaskColumn
                Sorted = csUp
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TetelSrsz'
                GroupIndex = 1
              end
              object ElorendelesGridSorszam: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Sorszam'
              end
              object ElorendelesGridMegnevezes: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Megnevezes'
              end
              object ElorendelesGridSpecifikacio: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Specifikacio'
              end
              object ElorendelesGridRajzszam: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rajzszam'
              end
              object ElorendelesGridAnyag: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Anyag'
              end
              object ElorendelesGridMeret: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Meret'
              end
              object ElorendelesGridFestes: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Festes'
              end
              object ElorendelesGridAzonosito: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Azonosito'
              end
              object ElorendelesGridMegjegyzes: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Megjegyzes'
              end
              object ElorendelesGridKiszallitando: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Kiszallitando'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGriddb: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'db'
              end
              object ElorendelesGridDiszponensMegjegyzes: TdxDBGridPopupColumn
                Caption = 'Diszp.megjegyzés'
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DiszponensMegjegyzes'
                ShowButtonStyle = sbAlways
                PopupAutoSize = False
                PopupControl = DiszpoMegjMemo
                PopupFormBorderStyle = pbsSysPanel
                PopupFormClientEdge = True
                PopupHeight = 100
                PopupMinWidth = 200
                OnCloseUp = ElorendelesGridDiszponensMegjegyzesCloseUp
              end
              object ElorendelesGridBeszallitoMegjegyzes: TdxDBGridPopupColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoMegjegyzes'
                ShowButtonStyle = sbAlways
                PopupAutoSize = False
                PopupControl = BeszMegjMemo
                PopupFormBorderStyle = pbsSysPanel
                PopupFormClientEdge = True
                PopupHeight = 100
                PopupMinWidth = 200
                OnCloseUp = ElorendelesGridBeszallitoMegjegyzesCloseUp
              end
              object ElorendelesGridBeszallitoKod: TdxDBGridMaskColumn
                Visible = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoKod'
              end
              object ElorendelesGridBeszallitoNev: TdxDBGridLookupColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoNev'
              end
              object ElorendelesGridBeszallitoiHatarido: TdxDBGridDateColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoiHatarido'
              end
              object ElorendelesGridHozzaadottElem: TdxDBGridCheckColumn
                Visible = False
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'HozzaadottElem'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGridAktiv: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Aktiv'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGridKivalasztva: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Kivalasztva'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGridFeldolgozva: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Feldolgozva'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGridRaktarra: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Raktarra'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGridFelosztva: TdxDBGridCheckColumn
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Felosztva'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
              end
              object ElorendelesGridRogzitette: TdxDBGridMaskColumn
                Color = clSilver
                ReadOnly = True
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rogzitette'
              end
              object ElorendelesGridRogzIdopont: TdxDBGridDateColumn
                Color = clSilver
                ReadOnly = True
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RogzIdopont'
              end
            end
            object Panel87: TPanel
              Left = 1
              Top = 532
              Width = 855
              Height = 117
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 1
              object Label103: TLabel
                Left = 8
                Top = 8
                Width = 67
                Height = 13
                Caption = 'Kezdõ rendsz.'
              end
              object Label104: TLabel
                Left = 80
                Top = 8
                Width = 67
                Height = 13
                Caption = 'Utolsó rendsz.'
              end
              object KezdoRendszEdit: TEdit
                Left = 8
                Top = 20
                Width = 65
                Height = 21
                TabOrder = 0
                OnKeyDown = KezdoRendszEditKeyDown
              end
              object UtolsoRendszEdit: TEdit
                Left = 80
                Top = 20
                Width = 65
                Height = 21
                TabOrder = 1
                OnKeyDown = UtolsoRendszEditKeyDown
              end
              object ElorendReportBtn: TBitBtn
                Left = 8
                Top = 44
                Width = 137
                Height = 25
                Caption = 'Adatok lekérdezése'
                ParentShowHint = False
                ShowHint = False
                TabOrder = 2
                OnClick = ElorendReportBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                  00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                  00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                  F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                  F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                  F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                  FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                  0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                  0033333337FFFFFF773333333000000003333333377777777333}
                NumGlyphs = 2
              end
              object RaktarraBtn: TBitBtn
                Left = 168
                Top = 8
                Width = 129
                Height = 25
                Hint = 'Raktárra rendelendõ elemek bejelölése.'
                Caption = 'Raktárra rend.kiv.'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 3
                OnClick = RaktarraBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
                  000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
                  99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
                  0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
                  FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
                  0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
                  000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
                  00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
                  00FF33337FFF7FF77733333300000000033F3333777777777333}
                NumGlyphs = 2
              end
              object Panel94: TPanel
                Left = 2
                Top = 82
                Width = 851
                Height = 33
                Align = alBottom
                BevelInner = bvRaised
                Color = clBtnShadow
                TabOrder = 7
                OnResize = Panel94Resize
                object ElorendSaveBtn: TBitBtn
                  Left = 176
                  Top = 6
                  Width = 161
                  Height = 25
                  Caption = 'Változások mentése'
                  TabOrder = 0
                  OnClick = ElorendSaveBtnClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
                    7700333333337777777733333333008088003333333377F73377333333330088
                    88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
                    000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
                    FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
                    99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
                    99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
                    99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
                    93337FFFF7737777733300000033333333337777773333333333}
                  NumGlyphs = 2
                end
                object ElorendUndoBtn: TBitBtn
                  Left = 424
                  Top = 6
                  Width = 161
                  Height = 25
                  Caption = 'Változások visszavonása'
                  TabOrder = 1
                  OnClick = ElorendUndoBtnClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                    3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                    3333333777333777FF3333993333339993333377FF3333377FF3399993333339
                    993337777FF3333377F3393999333333993337F777FF333337FF993399933333
                    399377F3777FF333377F993339993333399377F33777FF33377F993333999333
                    399377F333777FF3377F993333399933399377F3333777FF377F993333339993
                    399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
                    99333773FF3333777733339993333339933333773FFFFFF77333333999999999
                    3333333777333777333333333999993333333333377777333333}
                  NumGlyphs = 2
                end
              end
              object MegrendelesBtn: TBitBtn
                Left = 304
                Top = 8
                Width = 129
                Height = 25
                Hint = 'Megrendelés készítése a kiválasztott tételekbõl'
                Caption = 'Megrendelés'
                ParentShowHint = False
                ShowHint = True
                TabOrder = 6
                OnClick = MegrendelesBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
                  00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
                  00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
                  F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
                  F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
                  F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
                  FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
                  0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
                  0033333337FFFFFF773333333000000003333333377777777333}
                NumGlyphs = 2
              end
              object DiszpoMegjMemo: TDBMemo
                Left = 768
                Top = 8
                Width = 41
                Height = 57
                TabStop = False
                DataField = 'DiszponensMegjegyzes'
                DataSource = ToolsDm.dsElorendeles
                TabOrder = 8
                Visible = False
              end
              object BeszMegjMemo: TDBMemo
                Left = 816
                Top = 8
                Width = 41
                Height = 57
                TabStop = False
                DataField = 'BeszallitoMegjegyzes'
                DataSource = ToolsDm.dsElorendeles
                TabOrder = 9
                Visible = False
              end
              object BitBtn18: TBitBtn
                Left = 568
                Top = 48
                Width = 129
                Height = 25
                Caption = 'Visszaállítás'
                TabOrder = 10
                TabStop = False
                OnClick = BitBtn18Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
                  3333333777333777FF3333993333339993333377FF3333377FF3399993333339
                  993337777FF3333377F3393999333333993337F777FF333337FF993399933333
                  399377F3777FF333377F993339993333399377F33777FF33377F993333999333
                  399377F333777FF3377F993333399933399377F3333777FF377F993333339993
                  399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
                  99333773FF3333777733339993333339933333773FFFFFF77333333999999999
                  3333333777333777333333333999993333333333377777333333}
                NumGlyphs = 2
              end
              object NewLineBtn: TBitBtn
                Left = 168
                Top = 32
                Width = 129
                Height = 25
                Caption = 'Új sor felvitele'
                TabOrder = 4
                OnClick = NewLineBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                  33333333FF33333333FF333993333333300033377F3333333777333993333333
                  300033F77FFF3333377739999993333333333777777F3333333F399999933333
                  33003777777333333377333993333333330033377F3333333377333993333333
                  3333333773333333333F333333333333330033333333F33333773333333C3333
                  330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
                  993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
                  333333333337733333FF3333333C333330003333333733333777333333333333
                  3000333333333333377733333333333333333333333333333333}
                NumGlyphs = 2
              end
              object ItemDevideBtn: TBitBtn
                Left = 168
                Top = 56
                Width = 129
                Height = 25
                Caption = 'Tétel felosztása'
                TabOrder = 5
                OnClick = ItemDevideBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
                  000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
                  99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
                  0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
                  FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
                  0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
                  000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
                  00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
                  00FF3777773333F77733333333333000033F3333333337777333}
                NumGlyphs = 2
              end
            end
            object Panel89: TPanel
              Left = 1
              Top = 1
              Width = 855
              Height = 16
              Align = alTop
              Caption = 'Rendelések tartozékai'
              Color = clTeal
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
          end
          object Panel90: TPanel
            Left = 860
            Top = 0
            Width = 364
            Height = 650
            Align = alRight
            TabOrder = 1
            object Splitter22: TSplitter
              Left = 1
              Top = 646
              Width = 362
              Height = 3
              Cursor = crVSplit
              Align = alBottom
            end
            object Panel91: TPanel
              Left = 1
              Top = 1
              Width = 362
              Height = 16
              Align = alTop
              Caption = 'Részletek'
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object dxDBInspector1: TdxDBInspector
              Left = 1
              Top = 17
              Width = 362
              Height = 629
              Align = alClient
              Color = clWindow
              DataSource = ToolsDm.dsRendTetel
              DefaultFields = False
              PopupMenu = DataSheetMenu
              TabOrder = 1
              DividerPos = 152
              GridColor = clBtnFace
              Images = ImageList3
              Options = [dioAutoWidth, dioBandSizing, dioCancelOnExit, dioColumnSizing, dioDynamicColumnSizing, dioEditing, dioEnterThrough, dioRowAutoHeight]
              PaintStyle = ipsNET
              OnGetEditColor = AdatlapInspectorGetEditColor
              ShowRowHint = True
              Data = {
                030E000007000000080000000D000000160000006478496E73706563746F7243
                6F6D706C6578526F77320800000000000000150000006478496E73706563746F
                7244424D61736B526F77310800000000000000150000006478496E7370656374
                6F7244424D61736B526F77320800000000000000150000006478496E73706563
                746F7244424D61736B526F77330800000000000000160000006478496E737065
                63746F724442436865636B526F77310800000000000000160000006478496E73
                706563746F724442436865636B526F7732080000000100000016000000647849
                6E73706563746F724442436865636B526F773308000000000000001700000064
                78496E73706563746F724442436865636B526F77313008000000000000001600
                00006478496E73706563746F724442436865636B526F77340800000003000000
                160000006478496E73706563746F724442436865636B526F7739080000000000
                0000170000006478496E73706563746F724442436865636B526F773131080000
                0000000000170000006478496E73706563746F724442436865636B526F773132
                0800000000000000170000006478496E73706563746F724442436865636B526F
                7731330800000000000000170000006478496E73706563746F72444243686563
                6B526F7731350800000000000000150000006478496E73706563746F7244424D
                61736B526F77340800000000000000150000006478496E73706563746F724442
                4D61736B526F77360800000000000000150000006478496E73706563746F7244
                424D61736B526F77370800000000000000150000006478496E73706563746F72
                44424D61736B526F77380800000002000000160000006478496E73706563746F
                72436F6D706C6578526F77330800000000000000150000006478496E73706563
                746F7244424D61736B526F77390800000000000000160000006478496E737065
                63746F7244424D61736B526F7731300800000008000000160000006478496E73
                706563746F72436F6D706C6578526F7734080000000000000016000000647849
                6E73706563746F7244424D61736B526F77313208000000000000001500000064
                78496E73706563746F72444244617465526F7733080000000000000015000000
                6478496E73706563746F72444244617465526F77340800000000000000150000
                006478496E73706563746F72444244617465526F773508000000000000001600
                00006478496E73706563746F7244424D61736B526F7731330800000000000000
                160000006478496E73706563746F7244424D61736B526F773134080000000000
                0000160000006478496E73706563746F7244424D61736B526F77313508000000
                00000000160000006478496E73706563746F7244424D61736B526F7731360800
                00000D000000160000006478496E73706563746F72436F6D706C6578526F7735
                0800000000000000120000006478496E73706563746F724442526F7731370800
                000000000000120000006478496E73706563746F724442526F77313808000000
                00000000150000006478496E73706563746F72444244617465526F7731080000
                0000000000120000006478496E73706563746F724442526F7731390800000000
                000000120000006478496E73706563746F724442526F77323008000000000000
                00150000006478496E73706563746F72444244617465526F7732080000000000
                0000120000006478496E73706563746F724442526F7732310800000000000000
                160000006478496E73706563746F7244424D61736B526F773137080000000000
                0000120000006478496E73706563746F724442526F7732320800000000000000
                160000006478496E73706563746F724442436865636B526F7735080000000000
                0000160000006478496E73706563746F724442436865636B526F773808000000
                00000000160000006478496E73706563746F7244424D61736B526F7732330800
                000000000000160000006478496E73706563746F7244424D61736B526F773234
                0800000022000000160000006478496E73706563746F72436F6D706C6578526F
                77310800000000000000180000006478496E73706563746F724442427574746F
                6E526F7731340800000000000000180000006478496E73706563746F72444242
                7574746F6E526F7731300800000000000000180000006478496E73706563746F
                724442427574746F6E526F7731310800000000000000120000006478496E7370
                6563746F724442526F7733300800000000000000160000006478496E73706563
                746F7244424D61736B526F7731310800000000000000160000006478496E7370
                6563746F7244424D61736B526F7732320800000000000000170000006478496E
                73706563746F724442427574746F6E526F773108000000000000001200000064
                78496E73706563746F724442526F773238080000000000000015000000647849
                6E73706563746F7244424D61736B526F77350800000000000000170000006478
                496E73706563746F724442427574746F6E526F77320800000000000000120000
                006478496E73706563746F724442526F77323908000000000000001700000064
                78496E73706563746F724442427574746F6E526F773308000000000000001200
                00006478496E73706563746F724442526F773235080000000000000017000000
                6478496E73706563746F724442427574746F6E526F7734080000000000000017
                0000006478496E73706563746F724442427574746F6E526F7736080000000000
                0000170000006478496E73706563746F724442427574746F6E526F7737080000
                0000000000120000006478496E73706563746F724442526F7732360800000000
                000000180000006478496E73706563746F724442427574746F6E526F77313208
                000000000000001400000064784442496E73706563746F7231526F7731303208
                000000000000001400000064784442496E73706563746F7231526F7731303308
                00000000000000170000006478496E73706563746F724442427574746F6E526F
                77350800000000000000120000006478496E73706563746F724442526F773237
                0800000000000000180000006478496E73706563746F724442427574746F6E52
                6F77313308000000000000001400000064784442496E73706563746F7231526F
                7731303408000000000000001400000064784442496E73706563746F7231526F
                773130350800000000000000170000006478496E73706563746F724442427574
                746F6E526F77380800000000000000170000006478496E73706563746F724442
                427574746F6E526F77390800000000000000150000006478496E73706563746F
                7244424D656D6F526F773208000000000000001A0000006478496E7370656374
                6F7244424578744C6F6F6B7570526F7731080000000000000015000000647849
                6E73706563746F7244424D656D6F526F77310800000000000000160000006478
                496E73706563746F724442436865636B526F7737080000000000000017000000
                6478496E73706563746F724442436865636B526F773134080000000000000012
                0000006478496E73706563746F724442526F7732340800000000000000120000
                006478496E73706563746F724442526F77323308000000100000001600000064
                78496E73706563746F72436F6D706C6578526F77370800000000000000110000
                006478496E73706563746F724442526F77310800000000000000110000006478
                496E73706563746F724442526F77320800000000000000110000006478496E73
                706563746F724442526F77330800000000000000110000006478496E73706563
                746F724442526F77340800000000000000110000006478496E73706563746F72
                4442526F77350800000000000000110000006478496E73706563746F72444252
                6F77360800000000000000110000006478496E73706563746F724442526F7739
                0800000000000000120000006478496E73706563746F724442526F7731300800
                000000000000110000006478496E73706563746F724442526F77370800000000
                000000110000006478496E73706563746F724442526F77380800000000000000
                120000006478496E73706563746F724442526F77313108000000000000001200
                00006478496E73706563746F724442526F773132080000000000000012000000
                6478496E73706563746F724442526F7731330800000000000000120000006478
                496E73706563746F724442526F7731340800000000000000120000006478496E
                73706563746F724442526F7731350800000000000000120000006478496E7370
                6563746F724442526F7731360800000007000000160000006478496E73706563
                746F72436F6D706C6578526F77360800000000000000160000006478496E7370
                6563746F724442436865636B526F77360800000000000000150000006478496E
                73706563746F72444244617465526F7736080000000000000016000000647849
                6E73706563746F7244424D61736B526F77313808000000000000001600000064
                78496E73706563746F7244424D61736B526F7731390800000000000000160000
                006478496E73706563746F7244424D61736B526F773230080000000000000015
                0000006478496E73706563746F72444244617465526F77370800000000000000
                150000006478496E73706563746F72444244617465526F773805000000080000
                0078F36706160000006478496E73706563746F724442436865636B526F773308
                0000006C9B6506160000006478496E73706563746F724442436865636B526F77
                3908000000B813470A160000006478496E73706563746F72436F6D706C657852
                6F773108000000B053500A160000006478496E73706563746F72436F6D706C65
                78526F773708000000E0766806160000006478496E73706563746F72436F6D70
                6C6578526F7736}
              object dxInspectorDBMaskRow1: TdxInspectorDBMaskRow
                Caption = 'Átmérõ'
                ReadOnly = True
                FieldName = 'Atmero'
              end
              object dxInspectorDBMaskRow2: TdxInspectorDBMaskRow
                Caption = 'WP [psi]'
                ReadOnly = True
                FieldName = 'psi'
              end
              object dxInspectorDBMaskRow3: TdxInspectorDBMaskRow
                Caption = 'WP [MPa]'
                ReadOnly = True
                FieldName = 'MPa'
              end
              object dxInspectorDBCheckRow1: TdxInspectorDBCheckRow
                Caption = 'Lángálló'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Lang'
              end
              object dxInspectorDBCheckRow2: TdxInspectorDBCheckRow
                Caption = 'Belsõgégecsõ'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Bg'
              end
              object dxInspectorDBCheckRow3: TdxInspectorDBCheckRow
                Caption = 'Külsõgégecsõ'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Kg'
              end
              object dxInspectorDBCheckRow4: TdxInspectorDBCheckRow
                Caption = 'Poliamid'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Pa'
              end
              object dxInspectorDBMaskRow4: TdxInspectorDBMaskRow
                Caption = 'Tömlõ neve'
                ReadOnly = True
                FieldName = 'Tipus'
              end
              object dxInspectorDBMaskRow6: TdxInspectorDBMaskRow
                Caption = 'Darabszám'
                ReadOnly = True
                FieldName = 'DarabSzam'
              end
              object dxInspectorDBMaskRow7: TdxInspectorDBMaskRow
                Caption = 'Tömlõ hossz'
                ReadOnly = True
                FieldName = 'Hossz'
              end
              object dxInspectorDBMaskRow8: TdxInspectorDBMaskRow
                Caption = 'Hossz mért.'
                ReadOnly = True
                FieldName = 'HosszMe'
              end
              object dxInspectorDBMaskRow9: TdxInspectorDBMaskRow
                Caption = 'Tétel érték'
                ReadOnly = True
                FieldName = 'TErtek'
              end
              object dxInspectorDBMaskRow10: TdxInspectorDBMaskRow
                Caption = 'Pénznem'
                ReadOnly = True
                FieldName = 'TPenznem'
              end
              object dxInspectorDBMaskRow11: TdxInspectorDBMaskRow
                Caption = 'Konfekció'
                Hint = 'Nem használt mezõ!'
                ReadOnly = True
                ShowHint = True
                FieldName = 'TKonfekcio'
              end
              object dxInspectorDBMaskRow12: TdxInspectorDBMaskRow
                Caption = 'Normaidõ'
                FieldName = 'NormaIdo'
              end
              object dxInspectorDBDateRow2: TdxInspectorDBDateRow
                Caption = 'Mûveletterv dátuma'
                FieldName = 'MuvDatum'
              end
              object dxInspectorDBDateRow3: TdxInspectorDBDateRow
                Caption = 'Fémszer határidõ'
                FieldName = 'FszHatarido'
              end
              object dxInspectorDBDateRow4: TdxInspectorDBDateRow
                Caption = 'Fémszer.beérkezés'
                FieldName = 'FszBeerk'
              end
              object dxInspectorDBMaskRow13: TdxInspectorDBMaskRow
                ReadOnly = True
                FieldName = 'Anyag'
              end
              object dxInspectorDBMaskRow14: TdxInspectorDBMaskRow
                Caption = 'Csomagolás'
                ReadOnly = True
                FieldName = 'Csomagolas'
              end
              object dxInspectorDBMaskRow15: TdxInspectorDBMaskRow
                Caption = 'Egyéb'
                ReadOnly = True
                FieldName = 'Egyeb'
              end
              object dxInspectorDBMaskRow16: TdxInspectorDBMaskRow
                Caption = 'Megjegyzés'
                ReadOnly = True
                FieldName = 'TMegj'
              end
              object dxInspectorDBMaskRow17: TdxInspectorDBMaskRow
                Caption = 'Módosította'
                ReadOnly = True
                FieldName = 'TModosit'
              end
              object dxInspectorDBCheckRow5: TdxInspectorDBCheckRow
                Caption = 'Törölt'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Torolt'
              end
              object dxInspectorDBCheckRow6: TdxInspectorDBCheckRow
                Caption = 'Beszolgáltatva'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Beszolg'
              end
              object dxInspectorDBDateRow5: TdxInspectorDBDateRow
                Caption = 'Mód.határidõ'
                ReadOnly = True
                FieldName = 'TModHatarido'
              end
              object dxInspectorDBDateRow6: TdxInspectorDBDateRow
                Caption = 'Beszolg.idõpont'
                ReadOnly = True
                FieldName = 'BeszolgIdo'
              end
              object dxInspectorDBMaskRow18: TdxInspectorDBMaskRow
                Caption = 'Beszolg.darab'
                ReadOnly = True
                FieldName = 'BeszolgDb'
              end
              object dxInspectorDBMaskRow19: TdxInspectorDBMaskRow
                Caption = 'Beszolg.hossz'
                ReadOnly = True
                FieldName = 'BeszolgHossz'
              end
              object dxInspectorDBMaskRow20: TdxInspectorDBMaskRow
                Caption = 'Tömeg'
                ReadOnly = True
                FieldName = 'Tomeg'
              end
              object dxInspectorDBDateRow7: TdxInspectorDBDateRow
                Caption = 'Gyárt.indítás'
                ReadOnly = True
                FieldName = 'GyartasInd'
              end
              object dxInspectorDBDateRow8: TdxInspectorDBDateRow
                Caption = 'Befejezõ mûv.'
                ReadOnly = True
                FieldName = 'BefejezoMuv'
              end
              object dxInspectorDBCheckRow7: TdxInspectorDBCheckRow
                Caption = 'Alkatrészlista kész'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'AccListExist'
              end
              object dxInspectorDBMaskRow21: TdxInspectorDBMaskRow
                Caption = 'Alkatrészlista készítõ'
                ReadOnly = True
                Visible = False
                FieldName = 'AccCreator'
              end
              object dxInspectorComplexRow1: TdxInspectorComplexRow
                Caption = 'Mûszaki adatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorComplexRow2: TdxInspectorComplexRow
                Caption = 'Alapadatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorComplexRow3: TdxInspectorComplexRow
                Caption = 'Érték adatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorComplexRow4: TdxInspectorComplexRow
                Caption = 'Egyéb adatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorComplexRow5: TdxInspectorComplexRow
                Caption = 'Kezelési adatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorComplexRow6: TdxInspectorComplexRow
                Caption = 'Gyártási adatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorDBCheckRow8: TdxInspectorDBCheckRow
                Caption = 'Átvételi kész.'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'AtveteliKesz'
              end
              object dxInspectorDBMaskRow23: TdxInspectorDBMaskRow
                Caption = 'Átvételit készítette'
                ReadOnly = True
                FieldName = 'AtvetelitKeszitette'
              end
              object dxInspectorDBMaskRow24: TdxInspectorDBMaskRow
                Caption = 'Átvételi idõpontja'
                ReadOnly = True
                FieldName = 'AtveteliIdopont'
              end
              object dxInspectorDBCheckRow9: TdxInspectorDBCheckRow
                Caption = 'Külsõ védelem'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'Kv'
              end
              object dxInspectorDBMemoRow1: TdxInspectorDBMemoRow
                Caption = 'Ins.megj.'
                MaxLength = 500
                WantTabs = True
                FieldName = 'InspectorMegj'
              end
              object dxInspectorDBCheckRow10: TdxInspectorDBCheckRow
                Caption = 'Interlock'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'KgInter'
              end
              object dxInspectorDBCheckRow11: TdxInspectorDBCheckRow
                Caption = 'Mûanyag'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'KvMua'
              end
              object dxInspectorDBCheckRow12: TdxInspectorDBCheckRow
                Caption = 'Fedett helix'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'KvFedHelix'
              end
              object dxInspectorDBCheckRow13: TdxInspectorDBCheckRow
                Caption = 'Nem fed.helix'
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'KvNFedHelix'
              end
              object dxInspectorDBMemoRow2: TdxInspectorDBMemoRow
                Caption = 'Egyéb mûszaki jell. megjegyzések'
                MaxLength = 500
                FieldName = 'Egyebek'
              end
              object dxInspectorDBRow1: TdxInspectorDBRow
                Caption = 'Type Of Coupling1'
                ReadOnly = True
                FieldName = 'SapTypeOfCoupling1'
              end
              object dxInspectorDBRow2: TdxInspectorDBRow
                Caption = 'Type Of Coupling2'
                ReadOnly = True
                FieldName = 'SapTypeOfCoupling2'
              end
              object dxInspectorComplexRow7: TdxInspectorComplexRow
                Caption = 'SAP mûszaki adatok'
                IsCategory = True
                Items = <>
              end
              object dxInspectorDBRow3: TdxInspectorDBRow
                ReadOnly = True
                FieldName = 'Marking'
              end
              object dxInspectorDBRow4: TdxInspectorDBRow
                ReadOnly = True
                FieldName = 'Standard'
              end
              object dxInspectorDBRow5: TdxInspectorDBRow
                Caption = 'Standard Text'
                ReadOnly = True
                FieldName = 'StandardText'
              end
              object dxInspectorDBRow6: TdxInspectorDBRow
                Caption = 'Type Of Packing'
                ReadOnly = True
                FieldName = 'TypeOfPacking'
              end
              object dxInspectorDBRow7: TdxInspectorDBRow
                Caption = 'Design Pressure'
                ReadOnly = True
                FieldName = 'DesignPressure'
              end
              object dxInspectorDBRow8: TdxInspectorDBRow
                Caption = 'Design Pressure Unit'
                ReadOnly = True
                FieldName = 'DesignPressureUnit'
              end
              object dxInspectorDBRow9: TdxInspectorDBRow
                Caption = 'Working Pressure'
                ReadOnly = True
                FieldName = 'WorkingPressure'
              end
              object dxInspectorDBRow10: TdxInspectorDBRow
                ReadOnly = True
                FieldName = 'WorkingPressureUnit'
              end
              object dxInspectorDBRow11: TdxInspectorDBRow
                Caption = 'Test Pressure'
                ReadOnly = True
                FieldName = 'TestPressure'
              end
              object dxInspectorDBRow12: TdxInspectorDBRow
                Caption = 'Test Pressure Unit'
                ReadOnly = True
                FieldName = 'TestPressureUnit'
              end
              object dxInspectorDBRow13: TdxInspectorDBRow
                Caption = 'Safety Factor'
                ReadOnly = True
                FieldName = 'SafetyFactor'
              end
              object dxInspectorDBRow14: TdxInspectorDBRow
                Caption = 'Type Of Lining'
                ReadOnly = True
                FieldName = 'TypeOfLining'
              end
              object dxInspectorDBRow15: TdxInspectorDBRow
                Caption = 'Min.Temperature'
                ReadOnly = True
                FieldName = 'MinDesignTemperature'
              end
              object dxInspectorDBRow16: TdxInspectorDBRow
                Caption = 'Max.Temperature'
                ReadOnly = True
                FieldName = 'MaxDesignTemperature'
              end
              object dxInspectorDBRow17: TdxInspectorDBRow
                Caption = 'Rögzítette'
                ReadOnly = True
                FieldName = 'TRogzit'
              end
              object dxInspectorDBRow18: TdxInspectorDBRow
                Caption = 'Rögz.idõpontja'
                ReadOnly = True
                FieldName = 'TRogzIdo'
              end
              object dxInspectorDBRow19: TdxInspectorDBRow
                Caption = 'Konstrukció dátuma'
                ReadOnly = True
                FieldName = 'KonstrDatum'
              end
              object dxInspectorDBRow20: TdxInspectorDBRow
                Caption = 'Konfekció dátuma'
                ReadOnly = True
                FieldName = 'TKonfekDatum'
              end
              object dxInspectorDBRow21: TdxInspectorDBRow
                Caption = 'Alaktrészlista dátuma'
                ReadOnly = True
                FieldName = 'AccListDate'
              end
              object dxInspectorDBRow22: TdxInspectorDBRow
                Caption = 'Mód.idõpontja'
                ReadOnly = True
                FieldName = 'TModIdo'
              end
              object dxInspectorDBRow23: TdxInspectorDBRow
                Caption = 'Levélküldés idõp.'
                ReadOnly = True
                FieldName = 'AccListMailDate'
              end
              object dxInspectorDBRow24: TdxInspectorDBRow
                Caption = 'Levelet küldte'
                ReadOnly = True
                FieldName = 'AccListMailSender'
              end
              object dxInspectorDBCheckRow14: TdxInspectorDBCheckRow
                Caption = 'Levél elküldve'
                ReadOnly = True
                ValueChecked = 'True'
                ValueUnchecked = 'False'
                FieldName = 'AccListMailSent'
              end
              object dxInspectorDBRow25: TdxInspectorDBRow
                Caption = 'Belsõ h. anyag'
                FieldName = 'BhAnyag'
              end
              object dxInspectorDBRow26: TdxInspectorDBRow
                Caption = 'Emelõ bil.méret'
                FieldName = 'EbMeret'
              end
              object dxInspectorDBRow27: TdxInspectorDBRow
                Caption = 'Bizt.bil.méret'
                FieldName = 'BbMeret'
              end
              object dxInspectorDBCheckRow15: TdxInspectorDBCheckRow
                Caption = 'H2S Services'
                AllowGrayed = True
                ShowNullFieldStyle = nsGrayedChecked
                ValueChecked = '1'
                ValueGrayed = '-1'
                ValueUnchecked = '0'
                FieldName = 'H2S'
              end
              object dxInspectorDBRow28: TdxInspectorDBRow
                Caption = '"A" vég max. OD'
                FieldName = 'Csatl1MaxAtmero'
              end
              object dxInspectorDBRow29: TdxInspectorDBRow
                Caption = '"B" vég max. OD'
                FieldName = 'Csatl2MaxAtmero'
              end
              object dxInspectorDBRow30: TdxInspectorDBRow
                Caption = 'Tömlõtest.max.OD'
                FieldName = 'KonstrukcioMaxAtmero'
              end
              object dxInspectorDBDateRow1: TdxInspectorDBRow
                Caption = 'Darabj. dátuma'
                FieldName = 'DbjDatum'
              end
              object dxInspectorDBButtonRow14: TdxInspectorDBRow
                Caption = 'Összeállítási rsz.'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'OsszeallRsz'
              end
              object dxInspectorDBButtonRow10: TdxInspectorDBRow
                Caption = 'Konstrukció'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Konstrukcio'
              end
              object dxInspectorDBButtonRow11: TdxInspectorDBRow
                Caption = 'Konstrukció 2.'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Konstrukcio2'
              end
              object dxInspectorDBMaskRow22: TdxInspectorDBRow
                Caption = 'Csatlakozó "A"'
                Hint = 'Mindig erre a végre kell kerülni a legnagyobb átmérõnek!'
                ShowHint = True
                FieldName = 'Csatl1'
              end
              object dxInspectorDBButtonRow1: TdxInspectorDBRow
                Caption = 'Csatl."A" rsz.'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Csatl1Rsz'
              end
              object dxInspectorDBMaskRow5: TdxInspectorDBRow
                Caption = 'Csatlakozó "B"'
                FieldName = 'Csatl2'
              end
              object dxInspectorDBButtonRow2: TdxInspectorDBRow
                Caption = 'Csatl."B" rsz.'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Csatl2Rsz'
              end
              object dxInspectorDBButtonRow3: TdxInspectorDBRow
                Caption = 'Belsõ hüvely'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'BelsoHuvely'
              end
              object dxInspectorDBButtonRow4: TdxInspectorDBRow
                Caption = 'Hüvely'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Huvely'
              end
              object dxInspectorDBButtonRow6: TdxInspectorDBRow
                Caption = 'Spirálkúp'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Spiralkup'
              end
              object dxInspectorDBButtonRow7: TdxInspectorDBRow
                Caption = 'Emelõbilincs'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'Emelobilincs'
              end
              object dxInspectorDBButtonRow12: TdxInspectorDBRow
                Caption = 'E.b.jellemzõk'
                Hint = 'Emelõbilincs azonosítók'
                ShowHint = True
              end
              object dxInspectorDBButtonRow5: TdxInspectorDBRow
                Caption = 'Bizt.bilincs'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'BiztBilincs'
              end
              object dxInspectorDBButtonRow13: TdxInspectorDBRow
                Caption = 'B.b.jellemzõk'
              end
              object dxInspectorDBButtonRow9: TdxInspectorDBRow
                Caption = 'Osztotthüvely'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'OsztottHuvely'
              end
              object dxInspectorDBExtLookupRow1: TdxInspectorDBRow
                Caption = 'Inspektor'
                FieldName = 'Inspector'
              end
              object dxInspectorDBButtonRow8: TdxInspectorDBRow
                Caption = 'Védõhüvely'
                Hint = #39'Ctrl'#39'+F = rajz behívás'
                ShowHint = True
                FieldName = 'VedoHuvely'
              end
              object dxDBInspector1Row102: TdxInspectorDBMemoRow
                Caption = 'E.b.azonosito'
                FieldName = 'EBAzonosito'
              end
              object dxDBInspector1Row103: TdxInspectorDBMemoRow
                Caption = 'E.b.festés'
                FieldName = 'EBFestes'
              end
              object dxDBInspector1Row104: TdxInspectorDBMemoRow
                Caption = 'B.b.azonosító'
                FieldName = 'BBAzonosito'
              end
              object dxDBInspector1Row105: TdxInspectorDBMemoRow
                Caption = 'B.b.festés'
                FieldName = 'BBFestes'
              end
            end
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Alapadatok karbantartása'
          ImageIndex = 1
          object Splitter20: TSplitter
            Left = 337
            Top = 0
            Width = 3
            Height = 654
            Cursor = crHSplit
          end
          object Splitter21: TSplitter
            Left = 761
            Top = 0
            Width = 3
            Height = 654
            Cursor = crHSplit
          end
          object Panel93: TPanel
            Left = 0
            Top = 0
            Width = 337
            Height = 654
            Align = alLeft
            TabOrder = 0
            object Panel95: TPanel
              Left = 1
              Top = 1
              Width = 335
              Height = 16
              Align = alTop
              Caption = 'Raktárra rendelés elemei'
              Color = clBtnShadow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object ElorendelesRaktarraGrid: TdxDBGrid
              Left = 1
              Top = 17
              Width = 335
              Height = 607
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
              DataSource = ToolsDm.dsElorendelesRaktarra
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'ElorendelesRaktarraGrid'
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              object ElorendelesRaktarraGridId: TdxDBGridMaskColumn
                Caption = 'Azon.'
                Color = clSilver
                HeaderAlignment = taCenter
                ReadOnly = True
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Id'
              end
              object ElorendelesRaktarraGridRajzszam: TdxDBGridMaskColumn
                Caption = 'Rajzszám'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rajzszam'
              end
              object ElorendelesRaktarraGridMegjegyzes: TdxDBGridMaskColumn
                Caption = 'Megjegyzés'
                HeaderAlignment = taCenter
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Megjegyzes'
              end
              object ElorendelesRaktarraGridRogzitette: TdxDBGridMaskColumn
                Caption = 'Rögzítette'
                Color = clSilver
                HeaderAlignment = taCenter
                ReadOnly = True
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rogzitette'
              end
              object ElorendelesRaktarraGridRogzIdopont: TdxDBGridDateColumn
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
            object Panel96: TPanel
              Left = 1
              Top = 624
              Width = 335
              Height = 29
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 2
              object DBNavigator31: TDBNavigator
                Left = 2
                Top = 2
                Width = 240
                Height = 25
                DataSource = ToolsDm.dsElorendelesRaktarra
                Align = alLeft
                TabOrder = 0
              end
              object ElorendelesRaktarraOpenBtn: TBitBtn
                Left = 248
                Top = 2
                Width = 81
                Height = 25
                Caption = 'Megnyitás'
                TabOrder = 1
                OnClick = ElorendelesRaktarraOpenBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
                  B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
                  B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
                  0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
                  55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
                  55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
                  55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
                  5555575FFF755555555557000075555555555577775555555555}
                NumGlyphs = 2
              end
            end
          end
          object Panel97: TPanel
            Left = 340
            Top = 0
            Width = 421
            Height = 654
            Align = alLeft
            TabOrder = 1
            object Panel98: TPanel
              Left = 1
              Top = 1
              Width = 419
              Height = 16
              Align = alTop
              Caption = 'EB, BB, OH alapadatok'
              Color = clBtnShadow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object Panel99: TPanel
              Left = 1
              Top = 624
              Width = 419
              Height = 29
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 1
              object DBNavigator32: TDBNavigator
                Left = 2
                Top = 2
                Width = 240
                Height = 25
                DataSource = ToolsDm.dsElorendelesAdatok
                Align = alLeft
                TabOrder = 0
              end
              object ElorendelesAdatokOpenBtn: TBitBtn
                Left = 248
                Top = 2
                Width = 81
                Height = 25
                Caption = 'Megnyitás'
                TabOrder = 1
                OnClick = ElorendelesAdatokOpenBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
                  B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
                  B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
                  0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
                  55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
                  55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
                  55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
                  5555575FFF755555555557000075555555555577775555555555}
                NumGlyphs = 2
              end
            end
            object ElorendelesAdatokGrid: TdxDBGrid
              Left = 1
              Top = 17
              Width = 419
              Height = 607
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'ElorendelesAdatId'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = ToolsDm.dsElorendelesAdatok
              Filter.Active = True
              Filter.Criteria = {00000000}
              HeaderFont.Charset = DEFAULT_CHARSET
              HeaderFont.Color = clWindowText
              HeaderFont.Height = -11
              HeaderFont.Name = 'MS Sans Serif'
              HeaderFont.Style = []
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'ElorendelesAdatokGrid'
              OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              object ElorendelesAdatokGridElorendelesAdatId: TdxDBGridColumn
                Caption = 'Azon.'
                Color = clSilver
                HeaderAlignment = taCenter
                ReadOnly = True
                TabStop = False
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ElorendelesAdatId'
              end
              object ElorendelesAdatokGridTipus: TdxDBGridPickColumn
                Caption = 'Típus'
                HeaderAlignment = taCenter
                Width = 50
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Tipus'
                Items.Strings = (
                  'Biztonsági bilincs'
                  'Emelõ bilincs'
                  'Erõsített emelõ bilincs')
              end
              object ElorendelesAdatokGridRajzszam: TdxDBGridMaskColumn
                Caption = 'Rajzszám'
                HeaderAlignment = taCenter
                Width = 68
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rajzszam'
              end
              object ElorendelesAdatokGridIdMin: TdxDBGridMaskColumn
                Caption = 'ID min.'
                HeaderAlignment = taCenter
                Width = 56
                BandIndex = 0
                RowIndex = 0
                FieldName = 'IdMin'
              end
              object ElorendelesAdatokGridIdMax: TdxDBGridMaskColumn
                Caption = 'ID max.'
                HeaderAlignment = taCenter
                Width = 59
                BandIndex = 0
                RowIndex = 0
                FieldName = 'IdMax'
              end
              object ElorendelesAdatokGridFestes: TdxDBGridPickColumn
                Caption = 'Festés'
                HeaderAlignment = taCenter
                Width = 54
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Festes'
                Items.Strings = (
                  'S-TU 009 (ált. idõjárásálló)'
                  'S-TU 033 (tengervízálló)'
                  'S-TU 029 (Norsok)'
                  'S-TU 049 (NOV)'
                  'S-TU 050 (Huisman)')
              end
              object ElorendelesAdatokGridAr: TdxDBGridMaskColumn
                Caption = 'Ár'
                HeaderAlignment = taCenter
                Width = 33
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Ar'
              end
              object ElorendelesAdatokGridCikkszamVeg: TdxDBGridMaskColumn
                Caption = 'Cikksz.vég'
                HeaderAlignment = taCenter
                Width = 75
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CikkszamVeg'
              end
              object ElorendelesAdatokGridRogzitette: TdxDBGridMaskColumn
                Caption = 'Rögzítette'
                Color = clSilver
                HeaderAlignment = taCenter
                ReadOnly = True
                TabStop = False
                Width = 72
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rogzitette'
              end
              object ElorendelesAdatokGridRogzIdopont: TdxDBGridDateColumn
                Caption = 'Idõpont'
                Color = clSilver
                HeaderAlignment = taCenter
                ReadOnly = True
                TabStop = False
                Width = 59
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RogzIdopont'
              end
            end
          end
          object Panel100: TPanel
            Left = 764
            Top = 0
            Width = 468
            Height = 654
            Align = alClient
            TabOrder = 2
            object Panel102: TPanel
              Left = 1
              Top = 624
              Width = 466
              Height = 29
              Align = alBottom
              BevelInner = bvLowered
              BevelOuter = bvLowered
              TabOrder = 0
              object DBNavigator33: TDBNavigator
                Left = 2
                Top = 2
                Width = 240
                Height = 25
                DataSource = ToolsDm.dsBeszallitok
                Align = alLeft
                TabOrder = 0
              end
              object BeszallitokOpenBtn: TBitBtn
                Left = 248
                Top = 2
                Width = 81
                Height = 25
                Caption = 'Megnyitás'
                TabOrder = 1
                OnClick = BeszallitokOpenBtnClick
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000120B0000120B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
                  55555555FFFFFFFFFF55555000000000055555577777777775F55500B8B8B8B8
                  B05555775F555555575F550F0B8B8B8B8B05557F75F555555575550BF0B8B8B8
                  B8B0557F575FFFFFFFF7550FBF0000000000557F557777777777500BFBFBFBFB
                  0555577F555555557F550B0FBFBFBFBF05557F7F555555FF75550F0BFBFBF000
                  55557F75F555577755550BF0BFBF0B0555557F575FFF757F55550FB700007F05
                  55557F557777557F55550BFBFBFBFB0555557F555555557F55550FBFBFBFBF05
                  55557FFFFFFFFF7555550000000000555555777777777755555550FBFB055555
                  5555575FFF755555555557000075555555555577775555555555}
                NumGlyphs = 2
              end
            end
            object Panel103: TPanel
              Left = 1
              Top = 1
              Width = 466
              Height = 16
              Align = alTop
              Caption = 'Beszállítók'
              Color = clBtnShadow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object BeszallitokGrid: TdxDBGrid
              Left = 1
              Top = 17
              Width = 466
              Height = 607
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'BeszallitoKod'
              SummaryGroups = <>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 2
              DataSource = ToolsDm.dsBeszallitok
              Filter.Criteria = {00000000}
              IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
              IniSectionName = 'BeszallitokGrid'
              OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
              OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
              object BeszallitokGridBeszallitoKod: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoKod'
              end
              object BeszallitokGridBeszallitoNev: TdxDBGridMaskColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoNev'
              end
              object BeszallitokGridBeszallitoCim: TdxDBGridMaskColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'BeszallitoCim'
              end
              object BeszallitokGridElorendelesiMegjegyzes: TdxDBGridColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'ElorendelesiMegjegyzes'
              end
              object BeszallitokGridRogzitette: TdxDBGridMaskColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'Rogzitette'
              end
              object BeszallitokGridRogzIdopont: TdxDBGridDateColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'RogzIdopont'
              end
            end
          end
        end
      end
    end
    object WorkHelpSheet: TTabSheet
      Caption = 'Segédletek'
      ImageIndex = 4
      OnShow = WorkHelpSheetShow
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 297
        Height = 281
        Caption = 'Mértékegységek közötti konverzió'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label15: TLabel
          Left = 8
          Top = 24
          Width = 196
          Height = 16
          Caption = 'Mértékegység típus kiválasztása'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 138
          Top = 136
          Width = 23
          Height = 20
          Caption = '>>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MeTypeCombo: TDBLookupComboBox
          Left = 8
          Top = 40
          Width = 281
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'UnitGroup'
          ListField = 'UnitGroupName'
          ListSource = Dm.UnitGroupsDs
          ParentFont = False
          TabOrder = 0
          OnEnter = MeTypeComboEnter
        end
        object RxDBLookupList1: TRxDBLookupList
          Left = 8
          Top = 72
          Width = 129
          Height = 147
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ListStyle = lsDelimited
          LookupField = 'UnitCode'
          LookupDisplay = 'UnitName;UnitSign'
          LookupSource = Dm.UnitsDs
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object RxDBLookupList2: TRxDBLookupList
          Left = 160
          Top = 72
          Width = 129
          Height = 147
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ListStyle = lsDelimited
          LookupField = 'UnitCode'
          LookupDisplay = 'UnitName;UnitSign'
          LookupSource = Dm.UnitsDs
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object FnpNumericEdit1: TFnpNumericEdit
          Left = 8
          Top = 224
          Width = 129
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Decimals = 3
          MinValue = -999999999
        end
        object FnpNumericEdit2: TFnpNumericEdit
          Left = 160
          Top = 224
          Width = 129
          Height = 21
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          Decimals = 9
        end
        object ConvertBtn: TBitBtn
          Left = 8
          Top = 248
          Width = 281
          Height = 25
          Caption = 'Konvertálás'
          Default = True
          TabOrder = 5
          OnClick = ConvertBtnClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
            73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
            0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
            0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
            0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
            0333337F777777737F333308888888880333337F333333337F33330888888888
            03333373FFFFFFFF733333700000000073333337777777773333}
          NumGlyphs = 2
        end
      end
      object TechGroupBox: TGroupBox
        Left = 304
        Top = 0
        Width = 217
        Height = 281
        Caption = 'Technológiai eszközök'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object BitBtn16: TBitBtn
          Left = 8
          Top = 24
          Width = 201
          Height = 25
          Action = PackDevices
          Caption = 'Csomagoló eszk.karbantartása'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000FF00
            FF00FF00FF000000FF00000080000000FF00FF00FF0000000000FF00FF007F7F
            7F00000000000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF0000000000008080007F7F7F000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF00008080000080800000000000FFFF
            FF000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF000080800000808000000000000000
            0000FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF0000808000FF00FF00000000007F7F
            7F00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF007F7F7F0000000000FFFFFF00000000007F7F7F00FF00FF00FF00FF000000
            00000000800000008000000080000000800000008000FF00FF00FF00FF00FF00
            FF000000000000000000000000007F7F7F00FF00FF00FF00FF00000000000080
            8000008080000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008080000080
            800000808000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000FF00FF00FF00FF000000000000808000008080000080
            8000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF0000000000FF00FF0000000000008080000080800000808000FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
            FF00000000000000000000000000008080000080800000808000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000808000FF00FF00FF00FF00FF00
            FF00FF00FF007F7F7F00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF007F7F7F00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
            FF0000808000000000000000000000000000000000007F7F7F00FF00FF00FF00
            FF00FF00FF007F7F7F00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
            FF000080800000808000FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object BitBtn11: TBitBtn
          Left = 8
          Top = 56
          Width = 201
          Height = 25
          Action = HoseNameEdit
          Caption = 'Tömlõ megn.karbantartása'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF0000000000FF00
            FF00FF00FF000000FF00000080000000FF00FF00FF0000000000FF00FF007F7F
            7F00000000000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF0000000000008080007F7F7F000000
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF00008080000080800000000000FFFF
            FF000000000000000000FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF000080800000808000000000000000
            0000FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF000000FF00000080000000FF0000808000FF00FF00000000007F7F
            7F00FF00FF00FF00FF0000000000FFFFFF0000000000FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF007F7F7F0000000000FFFFFF00000000007F7F7F00FF00FF00FF00FF000000
            00000000800000008000000080000000800000008000FF00FF00FF00FF00FF00
            FF000000000000000000000000007F7F7F00FF00FF00FF00FF00000000000080
            8000008080000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000008080000080
            800000808000FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000FF00FF00FF00FF000000000000808000008080000080
            8000FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF0000000000FF00FF0000000000008080000080800000808000FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF0000000000FF00
            FF00000000000000000000000000008080000080800000808000FF00FF00FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00000000000000
            00000000000000000000000000000000000000808000FF00FF00FF00FF00FF00
            FF00FF00FF007F7F7F00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
            FF000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF007F7F7F00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
            FF0000808000000000000000000000000000000000007F7F7F00FF00FF00FF00
            FF00FF00FF007F7F7F00000000007F7F7F00FF00FF00FF00FF00FF00FF00FF00
            FF000080800000808000FF00FF00000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
      end
      object GroupBox: TGroupBox
        Left = 752
        Top = 0
        Width = 121
        Height = 281
        Caption = 'Csoporttagság'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object TervCheckBox: TCheckBox
          Left = 8
          Top = 24
          Width = 97
          Height = 17
          Caption = 'Tervezõk'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object TechCheckBox: TCheckBox
          Left = 8
          Top = 40
          Width = 97
          Height = 17
          Caption = 'Technológusok'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object MEOCheckBox: TCheckBox
          Left = 8
          Top = 56
          Width = 97
          Height = 17
          Caption = 'MEO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object InfoCheckBox: TCheckBox
          Left = 8
          Top = 72
          Width = 97
          Height = 17
          Caption = 'Info'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object ToolGroupBox: TGroupBox
        Left = 528
        Top = 0
        Width = 217
        Height = 281
        Caption = 'Általános eszköztár'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object BitBtn8: TBitBtn
          Left = 8
          Top = 24
          Width = 201
          Height = 25
          Action = DrawSearch
          Caption = 'Rajz keresõ ablak'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C000C0C0C0008080800080808000FFFFFF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000C0C0C0008080800080808000FFFFFF0080808000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C0008080800080808000FFFFFF008080800000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C0008080800080808000FFFFFF00808080000000000080808000FF00FF00FF00
            FF00FF00FF00FF00FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
            800080808000FFFFFF008080800000000000C0C0C00080808000FF00FF00FF00
            FF00C0C0C000C0C0C0000000000080808000FFFF000080808000000000008080
            800000000000FFFF000000000000C0C0C000C0C0C00080808000FF00FF00C0C0
            C0000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
            0000FFFF000000000000C0C0C000C0C0C000C0C0C00080808000FF00FF000000
            000000000000C0C0C00080800000808000008080000080800000808000000000
            00000000000080808000C0C0C000C0C0C000C0C0C00080808000C0C0C0000000
            000080808000C0C0C00080800000808000008080000080800000808000008080
            00000000000080808000C0C0C000C0C0C000C0C0C0008080800000000000FF00
            FF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C000000000008080800080808000808080008080800000000000FF00
            FF0080808000C0C0C00080800000808000008080000080800000808000008080
            000080800000000000008080800080808000808080008080800000000000FF00
            FF0080808000FFFFFF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0
            C000C0C0C00000000000FF00FF00FF00FF00FF00FF00FF00FF00808080008080
            8000FF00FF0080808000FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0
            C0008080800080808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF008080800080808000C0C0C000C0C0C000C0C0C000C0C0
            C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000FF00FF00FF00FF000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object MarkingShowBtn: TBitBtn
          Left = 8
          Top = 56
          Width = 201
          Height = 25
          Caption = 'Márkázások megjelenítése'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = MarkingShowBtnClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BitBtn2: TBitBtn
          Left = 8
          Top = 88
          Width = 201
          Height = 25
          Caption = 'Program módosítások listázása'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
            0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
            0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
            0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
            0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
            0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
            5555557FFFFF7755555555500000005555555577777775555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object AboutBoxBtn: TBitBtn
          Left = 8
          Top = 120
          Width = 201
          Height = 25
          Caption = 'Névjegy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = AboutBoxBtnClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333300333
            33333333333773FF333333333330F0033333333333373773FF333333330FFFF0
            03333333337F333773FF3333330FFFFFF003333333733FF33773333330FF00FF
            FF80333337F3773F3337333330FFFF0FFFF03FFFF7FFF3733F3700000000FFFF
            0FF0777777773FF373370000000000FFFFF07FFFFFF377FFF3370CCCCC000000
            FF037777773337773F7300CCC000003300307F77733337F37737000C00000033
            33307F373333F7F333370000007B703333307FFFF337F7F33337099900BBB033
            33307777F37777FF33370999007B700333037777F3373773FF73099900000030
            00337777FFFFF7F7773300000000003333337777777777333333}
          NumGlyphs = 2
        end
      end
    end
  end
  object MsgPanel: TSecretPanel
    Left = 0
    Top = 734
    Width = 1240
    Height = 24
    Cycled = True
    Interval = 15
    Lines.Strings = (
      'Csomagolás')
    ScrollDirection = sdHorizontal
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 758
    Width = 1240
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = False
    SimplePanel = False
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'MainForm'
    MinMaxInfo.MinTrackHeight = 600
    MinMaxInfo.MinTrackWidth = 800
    OnSavePlacement = FormStorage1SavePlacement
    OnRestorePlacement = FormStorage1RestorePlacement
    StoredProps.Strings = (
      'PageControl1.ActivePage'
      'Panel5.Height'
      'Panel3.Height'
      'Panel6.Width'
      'ScrollBox3.Height'
      'dxDBInspector2.DividerPos'
      'dxDBInspector2.BandWidth'
      'PageControl3.ActivePage'
      'RendMinGrid.Width'
      'Panel57.Height'
      'Panel54.Width'
      'PageControl4.ActivePage'
      'PageControl6.ActivePage'
      'ChipGrid.Width'
      'Panel37.Width'
      'Panel75.Height'
      'Panel19.Width'
      'Panel38.Height'
      'MeoDate1.Date'
      'MeoDate2.Date'
      'ChipDate1.Date'
      'ChipDate2.Date'
      'Panel59.Height'
      'Panel61.Height'
      'Panel2.Width'
      'Panel80.Width'
      'OnlyValidCheckBox.Checked'
      'KezdoRendszEdit.Text'
      'UtolsoRendszEdit.Text'
      'Panel93.Width'
      'Panel97.Width')
    StoredValues = <>
    Left = 528
    Top = 304
  end
  object QRTextFilter1: TQRTextFilter
    Left = 696
    Top = 304
  end
  object ImageList1: TImageList
    Left = 488
    Top = 304
    Bitmap = {
      494C01012D003100040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000D0000000010020000000000000D0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007F7F7F00FFFFFF007F7F7F007F7F7F007F7F7F00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF007F7F7F007F7F7F00FFFFFF007F7F7F00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000007F7F7F00000000007F7F7F00000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000808080008080
      8000808080000000000000000000000000000000000000000000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000808080008080800080808000000000000000000000000000808080000000
      0000000000008080800080808000000000000000000080808000808080000000
      0000000000008080800000000000000000000000000080808000808080008080
      8000000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0000000000080000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000008080
      8000808080000000000080808000808080000000000080808000000000008080
      8000000000000000000080808000808080008080800080808000000000000000
      0000808080000000000080808000000000008080800080808000000000008080
      800080808000000000000000000000000000000000000000000080808000C0C0
      C000000000008000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008080
      8000808080000000000000000000C0C0C000808080000000000080808000C0C0
      C000000000008080000000000000808080008080800000000000808000000000
      0000C0C0C000808080000000000080808000C0C0C00000000000000000008080
      8000808080000000000000000000000000000000000080808000C0C0C0000000
      0000800000008000000080808000808080008080800000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000007F7F
      7F0000000000000000000000000000000000FFFFFF0000000000000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000808080008080
      8000C0C0C00000000000000000000000000080808000C0C0C000C0C0C0008080
      8000808000008080000080800000808080008080800080800000808000008080
      000080808000C0C0C000C0C0C00080808000000000000000000000000000C0C0
      C0008080800080808000000000000000000080808000C0C0C000000000008000
      0000FF000000800000008080800080808000C0C0C000C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000808080008080
      800080800000808000000000000080808000C0C0C000C0C0C0008080800000FF
      000000FFFF0000FF00008080000000000000000000008080000000FF000000FF
      FF0000FF000080808000C0C0C000C0C0C0008080800000000000808000008080
      000080808000808080000000000000000000000000000000000080000000FF00
      0000FF000000800000008000000000000000000000008080800080808000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000000000000FFFF
      FF00000000000000000000000000000000000000000080808000808080008080
      800000FF000000FFFF0000000000C0C0C000808080008080000000FFFF0000FF
      FF0000FFFF0000FFFF0000FF0000000000000000000000FF000000FFFF0000FF
      FF0000FFFF0000FFFF008080000080808000C0C0C0000000000000FFFF0000FF
      00008080800080808000808080000000000080000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF0000008000000000000000000000000000
      000080808000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000808080008080800000FF
      000000FFFF0000FFFF00808000000000000000FFFF0000FFFF0000FFFF0000FF
      FF0000FF000000000000000000000000000000000000000000000000000000FF
      000000FFFF0000FFFF0000FFFF0000FFFF00000000008080000000FFFF0000FF
      FF0000FF000080808000808080000000000000000000FFFF0000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000800000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      00007F7F7F00000000000000000000000000FFFFFF0000000000BFBFBF00FFFF
      FF0000000000FFFFFF00000000000000000080808000808080008080000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FF000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF008080000080808000808080000000000000000000FFFF0000FF00
      0000FF0000008000000080800000FFFF0000FF000000FF000000FF000000FF00
      00008000000000000000000000000000000000000000000000007F7F7F000000
      0000000000007F7F7F000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000808080000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FF000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FF000000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF000000000080808000000000000000000000000000FFFF
      0000FFFF0000000000000000000080000000FFFF0000FF000000FF000000FF00
      0000FF00000080800000800000000000000000000000000000007F7F7F000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FFFF000080000000000000000000000080000000FFFF0000FF0000008080
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F0000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080800000808000008080
      0000808000008080000080800000808000008080000080800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080800000808000008080000080800000808000008080
      0000808000008080000080800000000000000000000000000000000000000000
      0000000000008080000000000000000000000000000080000000FFFF00008080
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F007F7F7F0000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000008080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F007F7F7F007F7F7F007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      00007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF007F7F7F007F7F7F007F7F
      7F007F7F7F0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF000000FF000000FF000000FF00BFBF
      BF000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F00000000000000000000000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      00000000FF000000FF000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF000000FF00000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF000000000000000000000000000000000000000000000000000000FF000000
      00000000000000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000FF0000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
      BF000000000000000000000000000000000000000000000000000000FF000000
      FF0000000000000000000000000000000000FF00000000000000000000000000
      00000000000000000000000000000000000000FFFF0000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000BFBFBF0000000000BFBFBF0000000000BFBFBF0000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF00000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000FF000000FF00000000000000
      00000000FF000000FF00000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF000000000000FF
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000FFFF000000000000FFFF000000000000BFBF
      BF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF0000000000000000000000000000000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF0000000000000000000000000000000000000000000000000000000000BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000000000000000000000000000000000000000000000FFFF0000FFFF000000
      000000000000000000000000000000FFFF0000FFFF0000000000000000000000
      00000000000000FFFF0000FFFF00000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
      BF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000FFFF0000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000006060
      8000606060000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800080808000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0008080
      8000000000000000000000000000000000000000000000000000303030006F6F
      AF00000040004040800040406000404040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0008080800080808000FFFFFF00808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000008000000000000000C0C0
      C000808080000000000000000000000000000000000000000000606080009F9F
      BF00DFDFDF005050500030305000000040002020800020204000404040004040
      4000202020000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800080808000FFFFFF0080808000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000C0C0C00080808000000000000000000000000000303030006F6FAF00DFDF
      DF00DFDFDF00DFDFDF0080BFBF00B0B0B0003030300030305000000040000000
      4000000040002020800000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      8000FFFFFF008080800000000000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000800000008000
      000000000000C0C0C0008080800000000000000000006060A000DFDFDF00DFDF
      DF00DFDFDF00AFEFEF007FFFFF005F9F9F00C0C0C000DFDFDF00A0A0A0008FCF
      CF0090CFCF003030500030AFAF00004040000000000000000000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080800080808000FFFF
      FF008080800000000000C0C0C000808080000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000808080008080800080000000FF00
      00008000000000000000C0C0C00080808000606060006F6FAF00DFDFDF00DFDF
      DF00DFDFDF007FFFFF007FFFFF0080808000CFCFCF00DFDFDF00AFEFEF007FFF
      FF005FDFDF00306F6F0060DFDF00004040000000000000000000C0C0C000C0C0
      C0000000000080808000FFFF000080808000000000008080800000000000FFFF
      000000000000C0C0C000C0C0C000808080000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008080
      8000C0C0C000808080008080800000000000000000008000000080000000FF00
      0000FF00000080000000000000000000000000004000DFDFDF00DFDFDF00DFDF
      DF00AFEFEF007FFFFF005F9F9F00C0C0C000DFDFDF00DFDFDF007FFFFF007FFF
      FF006060600060DFDF0060DFDF000040400000000000C0C0C000000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000FFFF00000000
      0000C0C0C000C0C0C000C0C0C000808080000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000C0C0C0008080
      800000000000000000000000000080000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000800000008080A000BFBFBF00DFDFDF00DFDF
      DF00AFEFEF00AFEFEF0080808000CFCFCF00DFDFDF00AFEFEF007FFFFF006FAF
      AF0030AFAF0060DFDF0060DFDF0000404000000000000000000000000000C0C0
      C000808000008080000080800000808000008080000000000000000000008080
      8000C0C0C000C0C0C000C0C0C000808080000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000C0C0C000000000000000
      00000000000080000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FFFF00000000000000000000BFBFBF0080BFBF00AFAF
      AF00AFAFAF007F7F7F00C0C0C000DFDFDF00DFDFDF00BFFFFF006FEFEF005050
      500060DFDF0060DFDF0060DFDF0000404000C0C0C0000000000080808000C0C0
      C000808000008080000080800000808000008080000080800000000000008080
      8000C0C0C000C0C0C000C0C0C00080808000000000000000000000000000FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000008000
      0000FF000000FF000000FF000000FF000000FFFF00008080000080000000FF00
      0000FF000000FFFF0000000000000000000000000000BFBFBF0060DFDF0060DF
      DF0060DFDF0080BFBF0070AFAF00A0A0A000A0A0A000A0A0A0007070700030AF
      AF0060DFDF0060DFDF0060DFDF0000404000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000808080008080800080808000808080000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000008000000080800000FF00
      0000FF000000FF000000FF000000FFFF0000800000000000000000000000FFFF
      0000FFFF000000000000000000000000000000000000BFBFBF0060DFDF0060DF
      DF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DF
      DF0060DFDF0060DFDF0060DFDF0000404000000000000000000080808000C0C0
      C000808000008080000080800000808000008080000080800000808000000000
      000080808000808080008080800080808000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000080800000FF000000FFFF000080000000000000000000000080000000FFFF
      00000000000000000000000000000000000000000000BFBFBF0060DFDF0060DF
      DF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DF
      DF0060DFDF0060DFDF0060DFDF0000404000000000000000000080808000FFFF
      FF00FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000080800000FFFF000080000000000000000000000000000000808000000000
      00000000000000000000000000000000000000000000BFBFBF0060DFDF0060DF
      DF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DFDF0060DF
      DF0060DFDF0060DFDF0060DFDF00004040008080800080808000000000008080
      8000FFFFFF0080808000C0C0C000C0C0C000C0C0C000C0C0C000808080008080
      800000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000808000008000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFAFAF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00BFBFBF00BFBFBF00BFBF
      BF00BFBFBF00BFBFBF00BFBFBF00000000000000000000000000000000000000
      00008080800080808000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      000000000000000000000000000000000000FFFF0000FFFF00000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000202020009FDFDF0060DF
      DF0060DFDF0060DFDF0060DFDF0060DFDF007070700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000020202000BFBF
      BF00BFBFBF00BFBFBF00BFBFBF007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      80000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000008080000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF0000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000FF000000FF00000000000000
      0000000000000000000000008000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000000000FF
      FF00000000000080800000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF000000
      000000FFFF000000000000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000000000000FFFF0000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF00000080000000FF0000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      FF00808080000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      FF00000080000000FF0000000000008080000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      FF00808080000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000000080808000808080000000
      FF00808080008080800080808000808080000000000080808000000000008080
      8000000000000000000000000000000000000000000080808000808080008080
      80008080800080808000808080008080800000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000008080000000000080808000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      8000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000080808000000000008080
      8000000000000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      FF00000080000000FF0000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      000000000000FFFFFF00000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF00000000007F7F7F00000000000000000000000000000080000000
      8000000080000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000808000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080800000808000008080000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000008080000080800000808000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000808000008080000080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080800000808000008080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000808000000000000000000000000000000000007F7F
      7F00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800080808000000000000000000000000000008080000000
      00000000000000000000000000007F7F7F000000000000000000000000007F7F
      7F00000000007F7F7F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008080000080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF0000000000FF000000FF000000FF00000000000000FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF0000000000FF00000000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080000080000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      00000000FF000000FF000000FF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000000000000000000000
      00000000000080808000000000000000000000000000000000000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000008000000080000000800000000000000000000000000000000000000000
      000000000000808080000000000000000000000000000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000007F7F7F0000FFFF007F7F7F0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000080
      0000008000000080000000800000008000000000000000000000000000000000
      000000000000808080000000000000000000000000000000FF00000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000008000000080
      0000008000000080000000800000008000000000000000000000000000000000
      0000000000008080800000000000000000000000FF000000FF00000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000000000007F7F7F0000FFFF007F7F7F0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF000000FF000000FF00000000000000000080808000008000000080
      0000000000000000000000800000008000000080000000000000000000000000
      0000000000008080800000000000000000000000FF000000FF00000000000000
      0000000000000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF007F7F7F007F7F
      7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF00FF00000000FF0000000000008080800000800000000000000000
      0000000000000000000000000000008000000080000000000000000000000000
      0000000000008080800000000000000000000000FF000000FF00000000000000
      000000000000000000000000FF000000FF000000FF0000000000000000000000
      0000000000000000FF000000FF000000000000000000FFFF0000FFFF0000FFFF
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000FF0000FF00000000FF00000000000000000000000000808080000000
      0000000000000000000000000000008000000080000000800000000000000000
      0000000000008080800000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000FF000000FF000000FF00000000000000
      0000000000000000FF000000FF000000000000000000FFFF0000FFFF0000FFFF
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000080000000800000000000000000
      0000000000008080800000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000800000008000000000
      000000000000808080000000000000000000000000000000FF000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000FF000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000808080000080
      000000000000808080000000000000000000000000000000FF000000FF000000
      FF000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80000080000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000FFFF0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000080000000800000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00000000000000000000000000FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000000000007F7F7F00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000FFFFFF000000000000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F007F7F7F0000FFFF00000000000000000000FFFF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F0000FFFF0000FFFF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000007F7F7F000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF000000000000000000FFFFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF000000000000FFFF00FFFFFF0000000000FFFFFF0000FFFF000000
      0000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007F7F7F00000000000000
      00007F7F7F007F7F7F0000000000000000007F7F7F0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00000000000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000BFBF
      BF00FFFFFF0000000000FFFFFF000000000000000000000000007F7F7F000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F007F7F
      7F0000000000000000007F7F7F007F7F7F0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF00000000000000FF
      FF00FFFFFF0000FFFF000000000000FFFF00FFFFFF0000FFFF0000000000FFFF
      FF0000000000FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF007F7F
      7F0000000000000000007F7F7F0000FFFF0000FFFF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF00000000
      000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000FFFF0000FFFF0000FFFF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000008080
      8000C0C0C00080808000C0C0C00080808000C0C0C00080808000C0C0C0008080
      8000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F00000000007F7F7F0000000000000000000000
      FF000000FF000000FF00000000007F7F7F000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF0000000000000000000000000080808000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000808000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000000080000000800000008000
      00008000000080000000800000008000000080000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF00000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF000000000080808000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C00080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF0000FFFF0000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF0000000000808080008080800080000000C0C0
      C000C0C0C0008000000080808000FFFFFF00C0C0C000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0000FFFF000000000000FFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF000000000080808000C0C0C000800000008080
      80008080800080000000FF000000C0C0C000C0C0C00080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF
      FF0000FFFF00000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000008080800080808000800000008000
      000080000000800000008000000080808000C0C0C000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000FF000000FF000000000000000000000000000000
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF0000FF
      FF0000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000080808000C0C0C000808080008080
      800080000000800000008080800080000000C0C0C00080000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00C0C0C00000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000000000000000000000000000
      000000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000FFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF0000000000800000008000000080808000C0C0
      C0008000000080808000C0C0C0008000000080000000FF000000FFFFFF00FFFF
      FF00FFFFFF0080808000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000008000000080000000800000008000
      00008000000080000000FF000000800000008000000080000000FFFFFF00FFFF
      FF00808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFF0000FFFF
      0000FFFF00000000000000FFFF00FFFFFF0000FFFF000000000000FFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000000000000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080000000FFFFFF008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      0000FFFF0000FFFF00000000000000FFFF00FFFFFF0000FFFF00FFFFFF000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000008000000080808000808080008080
      800080808000808080008080800080808000FF00000080000000808080000000
      00000000000080808000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000080
      8000808080000080800080808000008080008000000000000000000000000000
      00000080800080808000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFF000000000000000000000000000000000000000000000000
      0000BFBFBF000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000080
      800000FFFF0000FFFF0000FFFF00008080000080800000808000000000000080
      800000FFFF0000FFFF0080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008080000080800000808000008080000080800000808000008080000080
      8000008080000080800000808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00000000000000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000000000007F7F7F00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F007F7F7F0000FFFF00000000000000000000FFFF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F0000FFFF0000FFFF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      0000FFFFFF00FFFFFF00FFFFFF0000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF0000000000000000000000FF000000FF0000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000007F7F7F000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF00000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF0000000000FFFFFF0000000000FFFF00000000000000FFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000000000FFFF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007F7F7F00000000000000
      00007F7F7F007F7F7F0000000000000000007F7F7F0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BFBF
      BF00FFFFFF0000000000FFFFFF000000000000000000000000007F7F7F000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F007F7F
      7F0000000000000000007F7F7F007F7F7F0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF007F7F
      7F0000000000000000007F7F7F0000FFFF0000FFFF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077777700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00CC999900CC999900000000007777
      7700777777000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000BFBFBF000000000000000000000000000000
      00000000000000000000000000000000000000000000CC999900CC999900FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00CC999900CC999900CC999900CC99
      9900777777007777770000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000000FFFF000000
      00000000000000FFFF0000000000000000000000000000FFFF00000000000000
      000000FFFF00000000000000000000000000CC999900CC999900CC9999000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CC999900CC99
      9900CC9999007777770000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF007F7F7F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000FFFF00000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF000000000000FFFF000000000000FFFF0000FFFF0000FF
      FF0000000000000000000000000000000000CC99990000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000CC9999007777770077777700000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F007F7F
      7F0000000000000000007F7F7F00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000FFFFFF000000000000FFFF0000FFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF0000000000FF99
      9900FF999900FF999900FF999900FF999900FF999900FF99990000000000FFFF
      FF000000000077777700777777000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F007F7F7F0000FFFF00000000000000000000FFFF007F7F7F007F7F
      7F007F7F7F007F7F7F007F7F7F0000FFFF0000FFFF0000000000FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF007F7F7F00FFFFFF000000000000FFFF0000FF
      FF0000FFFF00000000000000000000000000FFFFFF0000000000FF999900FF99
      9900FF999900FF999900FF999900FF999900FF999900FF999900996666000000
      0000FFFFFF0077777700777777000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00007F7F7F0000FFFF0000FFFF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF007F7F7F0000FFFF00FFFFFF000000000000FF
      FF0000FFFF00000000000000000000000000FFFFFF0000000000CC999900FF99
      9900FFFFFF0099666600996666009966660099666600FF999900CC9999000000
      0000FFFFFF0077777700000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000000000000000FFFFFF0000000000000000000000
      00000000FF0000000000000000007F7F7F000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      00000000FF0000000000000000000000000000FFFF0000FFFF0000FFFF0000FF
      FF000000000000FFFF00FFFFFF007F7F7F00FFFFFF0000FFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF000000000000000000FFFFFF0000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC99990000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000FFFF0000FF
      FF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000FF
      FF0000FFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      00007777770000000000000000000000000000000000FFFFFF00000000000000
      00000000000000000000FFFFFF0000000000FFFFFF00000000000000FF000000
      FF000000FF000000FF000000FF00000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF00000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000FFFF0000FF
      FF0000FFFF0000000000FFFFFF0000FFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0
      C0000000000077777700000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000000000000000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C0000000000000000000777777000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000FFFF0000000000000000000000
      FF000000FF000000FF00000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      77001111110000000000000000007777770000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      FF000000FF000000FF000000000000000000000000007F7F7F00000000000000
      00007F7F7F007F7F7F0000000000000000007F7F7F0000000000000000000000
      FF000000FF000000FF000000000000000000000000000000000000FFFF000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000
      000000FFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007777770011111100000000000000000000000000FFFFFF0000000000BFBF
      BF00FFFFFF0000000000FFFFFF000000000000000000000000007F7F7F000000
      FF000000FF000000FF0000000000000000000000000000FFFF007F7F7F007F7F
      7F0000000000000000007F7F7F007F7F7F0000FFFF0000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000077777700111111000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000FFFF0000FFFF007F7F
      7F0000000000000000007F7F7F0000FFFF0000FFFF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000FFFFFF000000
      00000000000000000000FFFFFF000000000000000000000000000000000000FF
      FF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBF
      BF0000FFFF0000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF0000000000BFBFBF00000000000000
      0000FFFFFF0000000000FFFFFF0000000000000000000000000000FFFF00FFFF
      FF000000000000FFFF00BFBFBF0000FFFF00BFBFBF0000FFFF00BFBFBF0000FF
      FF00BFBFBF0000FFFF000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF0000FF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      FF0000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000FFFFFF000000000000000000FFFFFF000000
      000000000000000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000FF000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF0000000000BFBFBF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0000FFFF00FFFFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF0000000000FFFFFF00FFFFFF00FFFFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000007F7F7F0000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000BFBF
      BF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000D00000000100010000000000800600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F007000000000000C003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      800300000000000080030000000000008003000000000000B007000000000000
      D007000000000000EAAF000000000000F7F7EFEFF9FF8E00F3E3C7CFF0FF0600
      E1C18387E0FF2600E0000007C1FF2600C0000003807F0600C0000003000F8E00
      C00000030003DE00800000010001C600800000010000C2010007E00080018803
      000FF000C2009C07000FF000E300C8E1000FF000F18FE040FFFFFFFFF9CFF30C
      FFFFFFFFFFEFFFC0FFFFFFFFFFFFFFE1FFFFFF7EFFFFC007FFC89001FEFFC007
      FFB8C003FE7FC007CFBFE0038013C007CFBCE0038013C007FFBCE003FE7FC007
      DFBFE003FEF8C007CF7C0001FFF8C007E6FC8000FFFFC007F37FE007E7FFC007
      33BCE00FE7F8C00733BCE00F81F8C00787BFE02781FFC007FFB8C073E7F8C007
      FFC89E79E7F8C007FFFF7EFEFFFFC007FF9FE7FFF800F000FF0FC0FFF800F000
      FF07C007F800F000FF838000F800F000FE018000F000F000F0000000C000F000
      C00000008000F000800000008000E000000080000000C0008001800040008000
      004380004000800000C78000400F0000F18F8000200F0000F39F8000B01F0001
      F7FF807FDFBF0003FFFFC0FFE67F0007FFFF847FFFFFFFFFF83F00EFFFFFFFFF
      E00F31BFFFFFFFFFC44739FFFF3FFFFF8C63993FFC3FFCFF9C73CA1FF03FFC3F
      3FF9F40FC000FC0F3EF99C07000000033C7F9603C00000003C7FCB01F03F0003
      3C41FF80FC3FFC0F9C61F7C0FF3FFC3F8C71FFE0FFFFFCFFC441EFF0FFFFFFFF
      E00DFFF8FFFFFFFFF83FFFFCFFFFFFFF8FFF8FF78FFFF86207FF07E707FF80E0
      27FF27E727FF01E027FF2780278001E007FF0701070131E18FFF8FE78FFF31C1
      DFFFDFE7DFFFC181C7FFC7EFC7FFC307C3FFC3FFC3FFFE1789FF89FF89FFCC37
      9CFF9CFF9CFFA877C8E1C8E1C8E140F7E040E040E04001E3F30CF30CF30CC1E3
      FFC0FFC0FFC0C0E3FFE1FFE1FFE1C83F8000FFFFFFFFFFFF8000FFFFFFFFF83F
      C0000000C003E00FE00000008003CFC7F0000000B0F387E3F8000000A073A3F3
      FC000000807331F904000000843338F9060000001E333C79018000009E133E39
      01C000009F133F190000FFFF9F839F8BC060FFFF9FC38FC3C060FFFF8003C7E7
      F060FFFF8000E00FF006FFFFFFFFF83FFC00FC009FF9F000FC00FC009FF9F000
      FC00FC009FF9F000FC0000009FF9F000000000019DB9F000000000039999F000
      000000079189F000000000078181E000002300238181C0000001000181818000
      00000000918980000023002399990000006300239DB9000000C300239FF90001
      010700079FF9000303FF003F9FF90007FC00F001FFFFFFFFFC00E000FFF80162
      2000C00020F8FFE300000000007FFE6300000000007CFC0300000000003CF803
      00000000000FF003000000000004F00300000000000CE0030000000001FFC003
      E0000000E3FC8003F8000000FFFC0003F0000000FFFF0003E001E000FFF801E3
      C403E000FFF883F7EC07F000FFFFC7F7F800FFFFFC00FC00F800FFF8FC00FC00
      200020F8FC00FC000000007FFC0000000000007C000000010000003C00000003
      0000000F0000000700000004000000070000000C00230023000001FF00010001
      E000E3FC00000000F800FFFC00230023F800FFFF00630023F801FFF800C30023
      F803FFF801070007F807FFFF03FF003FFEFFF03FFC00FC00FC7FC007FC00FC00
      FC7F8003FC00FC00D8370003FC000000E00F000100000001E00F000100000003
      C007000100000007C0070003000000070001000700230023C007800700010001
      C007E00300000000E00FFF8100230023E00FFFC000630023D837FFE000C30023
      FEFFFFF001070007FEFFFFF903FF003FFFFFFFFFFFDFFFFFFFFFFFFFFFCFFC00
      FFFFFFFFFFC7FC00FFFFE0070003FC00C00FC0070001FC008007C0070000EC00
      8003C0070001E4008001C0070003E0008001C00700070000800FC007000F0001
      800FC00F001F0003801FE07F007F0007C0FFE07F00FF000FC0FFFFFF01FFE3FF
      FFFFFFFF03FFE7FFFFFFFFFFFFFFEFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    OnExecute = ActionList1Execute
    Left = 456
    Top = 304
    object OrderOpen: TAction
      Category = 'Order'
      Caption = 'OrderOpen'
      ImageIndex = 0
      OnExecute = OrderOpenExecute
    end
    object MfCkszOpen: TAction
      Category = 'MfCksz'
      Caption = 'Állomány nyitása'
      Hint = 'Állomány nyitása'
      ImageIndex = 0
      OnExecute = MfCkszOpenExecute
    end
    object MfCkszClose: TAction
      Category = 'MfCksz'
      Caption = 'Állomány zárása'
      Hint = 'Állomány zárása'
      ImageIndex = 1
      OnExecute = MfCkszCloseExecute
    end
    object KonstrOpen: TAction
      Category = 'Konstr'
      Caption = 'Állomány nyitása'
      ImageIndex = 0
      OnExecute = KonstrOpenExecute
    end
    object KonstrClose: TAction
      Category = 'Konstr'
      Caption = 'Állomány zárása'
      ImageIndex = 1
      OnExecute = KonstrCloseExecute
    end
    object DataSheet1Open: TAction
      Category = 'DataSheet'
      Caption = 'Állomány nyitása'
      ImageIndex = 0
      OnExecute = DataSheet1OpenExecute
    end
    object DataSheet1Close: TAction
      Category = 'DataSheet'
      Caption = 'Állomány zárása'
      ImageIndex = 1
      OnExecute = DataSheet1CloseExecute
    end
    object PackOpen: TAction
      Category = 'Pack'
      Caption = 'Állományok nyitása'
      ImageIndex = 0
      OnExecute = PackOpenExecute
    end
    object PackClose: TAction
      Category = 'Pack'
      Caption = 'Állományok zárása'
      ImageIndex = 1
      OnExecute = PackCloseExecute
    end
    object ExtraDataSheetOpen: TAction
      Category = 'ExtraDataSheet'
      Caption = 'Állomány nyitása'
      ImageIndex = 0
      OnExecute = ExtraDataSheetOpenExecute
    end
    object ExtraDataSheetClose: TAction
      Category = 'ExtraDataSheet'
      Caption = 'Állomány zárása'
      ImageIndex = 1
      OnExecute = ExtraDataSheetCloseExecute
    end
    object CouplingsOpen: TAction
      Category = 'Couplings'
      Caption = 'Állomány nyitása'
      ImageIndex = 0
      OnExecute = CouplingsOpenExecute
    end
    object CouplingsClose: TAction
      Category = 'Couplings'
      Caption = 'Állomány zárása'
      ImageIndex = 1
      OnExecute = CouplingsCloseExecute
    end
    object AtveteliExport: TAction
      Category = 'DataSheet'
      Caption = 'Alkatrész lista exportálása'
      Hint = 'Átveli utasítás készítése'
      ImageIndex = 13
      ShortCut = 49217
      OnExecute = AtveteliExportExecute
    end
    object DataSheetImport: TAction
      Category = 'DataSheet'
      Caption = 'DataSheetImport'
      ImageIndex = 3
      ShortCut = 49225
      OnExecute = DataSheetImportExecute
    end
    object PackAdvice: TAction
      Category = 'Tools'
      Caption = 'Csomagolási javaslat'
      Enabled = False
      ImageIndex = 4
    end
    object QualificationOpen: TAction
      Category = 'Qualification'
      Caption = 'Adatok frissítése'
      Hint = 'A rendelés adatainak frissítése'
      ImageIndex = 0
      OnExecute = QualificationOpenExecute
    end
    object QualificationClose: TAction
      Category = 'Qualification'
      Caption = 'QualificationClose'
      ImageIndex = 1
    end
    object ItemChanges: TAction
      Category = 'DataSheet'
      Caption = 'ItemChanges'
      Hint = 'Az adott tétel módosításai'
      ImageIndex = 5
      ShortCut = 16461
      OnExecute = ItemChangesExecute
    end
    object QualificationReport: TAction
      Category = 'Qualification'
      Caption = 'Kiadott tételek'
      Hint = 'A rendelés kiadott tételei'
      OnExecute = QualificationReportExecute
    end
    object CopyMisc: TAction
      Category = 'ExtraDataSheet'
      Caption = 'Adatok másolása'
      Hint = 'Adatok másolása'
      ImageIndex = 6
      OnExecute = CopyMiscExecute
    end
    object PasteMisc: TAction
      Category = 'ExtraDataSheet'
      Caption = 'Adatok beillesztése'
      Enabled = False
      Hint = 'Adatok beillesztése'
      ImageIndex = 7
      OnExecute = PasteMiscExecute
    end
    object QualificationModReport: TAction
      Category = 'Qualification'
      Caption = 'Módosítások'
      Hint = 'A rendelés módosításai'
      OnExecute = QualificationModReportExecute
    end
    object OrderInputOpen: TAction
      Category = 'Order'
      Caption = 'OrderInputOpen'
      ImageIndex = 0
      OnExecute = OrderInputOpenExecute
    end
    object DataSheetReport: TAction
      Category = 'DataSheet'
      Hint = 'Adatlap nyomtatása'
      ImageIndex = 8
      OnExecute = DataSheetReportExecute
    end
    object DataSheetSelection: TAction
      Category = 'DataSheet'
      Hint = 'Adatlap kiválasztása'
      ImageIndex = 9
      OnExecute = DataSheetSelectionExecute
    end
    object DataSheetCopy: TAction
      Category = 'DataSheet'
      Hint = 'Adatalap másolása'
      ImageIndex = 10
      OnExecute = DataSheetCopyExecute
    end
    object DataSheetPaste: TAction
      Category = 'DataSheet'
      Enabled = False
      Hint = 'Adatalap tartalmának beillesztése'
      ImageIndex = 11
      OnExecute = DataSheetPasteExecute
    end
    object Bizonylatszam: TAction
      Category = 'Qualification'
      Caption = 'Bizonylatszám'
      Hint = 'Bizonylatszám megadása'
      ImageIndex = 12
    end
    object KonstrSearch: TAction
      Category = 'DataSheet'
      Caption = 'Konstrukció elõfordulása'
      Hint = 'Konstrukció elõfordulása'
      ImageIndex = 9
      ShortCut = 49227
      OnExecute = KonstrSearchExecute
    end
    object CkszSearch: TAction
      Category = 'DataSheet'
      Caption = 'Cikkszám elõfordulása'
      Hint = 'Cikkszám elõfordulása'
      ImageIndex = 4
      ShortCut = 49235
      OnExecute = CkszSearchExecute
    end
    object AddBookmark: TAction
      Category = 'DataSheet'
      Hint = 'Könyvjelzõ felvétele'
      ImageIndex = 14
      OnExecute = AddBookmarkExecute
    end
    object CopyTechnicalData: TAction
      Category = 'DataSheet'
      Caption = 'Mûszaki adatok másolása'
      Hint = 'Mûszaki adatok másolása'
      ImageIndex = 16
      ShortCut = 49229
      OnExecute = CopyTechnicalDataExecute
    end
    object PasteTechnicalData: TAction
      Category = 'DataSheet'
      Caption = 'Mûszaki adatok beillesztése'
      Enabled = False
      Hint = 'Mûszaki adatok beillesztése'
      ImageIndex = 17
      ShortCut = 49218
      OnExecute = PasteTechnicalDataExecute
    end
    object OrderSync: TAction
      Category = 'Order'
      Caption = 'OrderSync'
    end
    object KiadatlanTetelek: TAction
      Category = 'Qualification'
      Caption = 'KiadatlanTetelek'
      ImageIndex = 19
      OnExecute = KiadatlanTetelekExecute
    end
    object EmailSent: TAction
      Category = 'DataSheet'
      Caption = 'Alkatrészlista elküldve'
      Hint = 'Alkatrészlista elküldve'
      ImageIndex = 21
      OnExecute = EmailSentExecute
    end
    object SavePlanChanges: TAction
      Category = 'Plan'
      Caption = 'Változások mentése'
      Hint = 'A programban bekövetkezett változások mentése'
      ImageIndex = 6
    end
    object UndoPlanChanges: TAction
      Category = 'Plan'
      Caption = 'Változások vissza'
      Hint = 'Az el nem mentett változások visszavonása'
      ImageIndex = 23
    end
    object SafetyItemEdit: TAction
      Category = 'DataSheet'
      Caption = 'Bizt.szerelvények karbantarása'
      ImageIndex = 24
      OnExecute = SafetyItemEditExecute
    end
    object SafetyItemAdd: TAction
      Category = 'DataSheet'
      Caption = 'Bizt.szerelvények hozzáadása'
      ImageIndex = 25
      OnExecute = SafetyItemAddExecute
    end
    object SafetyItemRemove: TAction
      Category = 'DataSheet'
      Caption = 'A kiválasztott elem eltávolítása'
      ImageIndex = 26
      OnExecute = SafetyItemRemoveExecute
    end
    object Marking: TAction
      Tag = 6100
      Category = 'Tools'
      Caption = 'Márkázások karbantartása'
      ImageIndex = 27
    end
    object PackDevices: TAction
      Tag = 6110
      Category = 'Tools'
      Caption = 'Csomagoló eszk.karbantartása'
      ImageIndex = 27
      OnExecute = PackDevicesExecute
    end
    object AddPackOrder: TAction
      Category = 'Order'
      Caption = 'Rendeléshez'
      ImageIndex = 8
      OnExecute = AddPackOrderExecute
    end
    object AddPackItem: TAction
      Category = 'Order'
      Caption = 'Tételhez'
      ImageIndex = 9
      OnExecute = AddPackItemExecute
    end
    object PackNotExistList: TAction
      Category = 'Order'
      Caption = 'Csomagolásra váró tételek'
      ImageIndex = 8
      OnExecute = PackNotExistListExecute
    end
    object InfoChipDataExport: TAction
      Category = 'Meo'
      Caption = 'InfoChip adatok exportálása'
      ImageIndex = 2
      OnExecute = InfoChipDataExportExecute
    end
    object SaveMfData: TAction
      Category = 'MfCksz'
      Caption = 'Változások mentése'
      Hint = 'A lokálisan módosított adatok mentése az adatbázisba'
      ImageIndex = 6
      OnExecute = SaveMfDataExecute
    end
    object UndoMfData: TAction
      Category = 'MfCksz'
      Caption = 'Vált.visszavonása'
      Hint = 'Az el nem mentett változások visszavonása'
      ImageIndex = 23
      OnExecute = UndoMfDataExecute
    end
    object MfCkszRefresh: TAction
      Category = 'MfCksz'
      Hint = 'Állomány frissítése'
      ImageIndex = 28
      OnExecute = MfCkszRefreshExecute
    end
    object AlkatreszExport: TAction
      Category = 'DataSheet'
      Caption = 'Alkarészlista export'
      Hint = 'Alkarészlista export'
      ImageIndex = 2
      ShortCut = 49221
      OnExecute = AlkatreszExportExecute
    end
    object AutoChangeAccept: TAction
      Category = 'DataSheet'
      Caption = 'AutoChangeAccept'
      Hint = 'Automatikus frissítés elfogadása'
      ImageIndex = 22
      OnExecute = AutoChangeAcceptExecute
    end
    object OrderRefresh: TAction
      Category = 'DataSheet'
      Caption = 'OrderRefresh'
      Hint = 'Adatok frissítése'
      ImageIndex = 28
      OnExecute = OrderRefreshExecute
    end
    object Jump2Order: TAction
      Category = 'DataSheet'
      Caption = 'Jump2Order'
      Hint = 'Ugrás a rendelések nézetre'
      ImageIndex = 32
      OnExecute = Jump2OrderExecute
    end
    object SetOrderHeadColWidth: TAction
      Category = 'DataSheet'
      Caption = 'SetOrderHeadColWidth'
      Hint = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnExecute = SetOrderHeadColWidthExecute
    end
    object SetMfCkszColWidth: TAction
      Category = 'MfCksz'
      Caption = 'SetMfCkszColWidth'
      Hint = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnExecute = SetMfCkszColWidthExecute
    end
    object PackRefresh: TAction
      Category = 'Pack'
      Caption = 'PackRefresh'
      Hint = 'Adatok frissítése'
      ImageIndex = 28
      OnExecute = PackRefreshExecute
    end
    object NewPack: TAction
      Tag = 1001
      Category = 'Pack'
      Caption = 'Új csomagolás'
      Hint = 'Új csomagolás készítése'
      ShortCut = 49237
      OnExecute = NewPackExecute
    end
    object NewPackRev: TAction
      Tag = 1001
      Category = 'Pack'
      Caption = 'Új revízió'
      Hint = 'Új csomagolási revízió készítése'
      ShortCut = 49234
      OnExecute = NewPackRevExecute
    end
    object NewPackVer: TAction
      Tag = 1001
      Category = 'Pack'
      Caption = 'Új verzió'
      Hint = 'Új csomagolási verzió készítése'
      ShortCut = 49238
      OnExecute = NewPackVerExecute
    end
    object PackQuery: TAction
      Tag = 1002
      Category = 'Pack'
      Caption = 'PackQuery'
      Hint = 'Korábbi csomagolás keresése'
      ImageIndex = 36
      OnExecute = PackQueryExecute
    end
    object SetPackColWidth: TAction
      Category = 'Pack'
      Caption = 'SetPackColWidth'
      Hint = 'Az oszlopok szélességének igazítása'
      ImageIndex = 18
      OnExecute = SetPackColWidthExecute
    end
    object PackItemQuery: TAction
      Category = 'Pack'
      Caption = 'PackItemQuery'
      Hint = 'Korábbi tétel keresése, átvétele'
      ImageIndex = 36
      OnExecute = PackItemQueryExecute
    end
    object ShowPackReport: TAction
      Category = 'Pack'
      Caption = 'ShowPackReport'
      Hint = 'Jelentés készítése'
      ImageIndex = 8
      OnExecute = ShowPackReportExecute
    end
    object DrawSearch: TAction
      Category = 'Tools'
      Caption = 'Rajz keresõ ablak'
      Hint = 'Rajz keresés'
      ImageIndex = 34
      ShortCut = 49220
      OnExecute = DrawSearchExecute
    end
    object OpenAtveteliDocs: TAction
      Category = 'DataSheet'
      Caption = 'OpenAtveteliDocs'
      Hint = 'Átvételi utasítás(ok) megnyitása'
      ImageIndex = 33
      OnExecute = OpenAtveteliDocsExecute
    end
    object HoseNameEdit: TAction
      Tag = 6120
      Category = 'Tools'
      Caption = 'tömlõ megn.karbantartása'
      Hint = 'Tömlõ megnevezések karbantartása'
      ImageIndex = 27
      OnExecute = HoseNameEditExecute
    end
    object ShowBookmarkList: TAction
      Category = 'DataSheet'
      Caption = 'Könyvjelzõk megjenítése'
      Enabled = False
      Hint = 'Könyvjelzõk megjenítése'
      ImageIndex = 35
      OnExecute = ShowBookmarkListExecute
    end
    object AddPackBmk: TAction
      Category = 'Pack'
      Caption = 'Könyvjelzõ felvétele'
      Hint = 'Könyvjelzõ felvétele'
      ImageIndex = 14
      OnExecute = AddPackBmkExecute
    end
    object ShowPackBmkList: TAction
      Category = 'Pack'
      Caption = 'Könyvjelzõk megjelenítése'
      Hint = 'Könyvjelzõk megjelenítése'
      ImageIndex = 19
      OnExecute = ShowPackBmkListExecute
    end
    object UjAnyagszukseglet: TAction
      Tag = 3010
      Category = 'Anyagszukseglet'
      Caption = 'Új lista'
      Hint = 'Új anyagszükségleti lista készítése'
      ImageIndex = 37
      OnExecute = UjAnyagszuksegletExecute
    end
    object InsertSelected: TAction
      Category = 'Anyagszukseglet'
      Caption = 'Kivélasztott elem(ek) a listába'
      ImageIndex = 38
      OnExecute = InsertSelectedExecute
    end
    object OpenOrderQry: TAction
      Category = 'Anyagszukseglet'
      Caption = 'Adatok lekérdezése'
      ImageIndex = 36
      OnExecute = OpenOrderQryExecute
    end
    object SaveAnyagszList: TAction
      Category = 'Anyagszukseglet'
      Caption = 'Anyagsz.lista mentése'
      ImageIndex = 2
      OnExecute = SaveAnyagszListExecute
    end
    object OpenAnyagszList: TAction
      Category = 'Anyagszukseglet'
      Caption = 'Anyagsz.lsta behívása'
      ImageIndex = 0
      OnExecute = OpenAnyagszListExecute
    end
    object CalcAnyagszukseglet: TAction
      Category = 'Anyagszukseglet'
      Caption = 'Anyagsz.számítása'
      ImageIndex = 39
      OnExecute = CalcAnyagszuksegletExecute
    end
    object Jump2MfCksz: TAction
      Category = 'DataSheet'
      Caption = 'Jump2MfCksz'
      Hint = 'Ugrás a cikkszámokra'
      ImageIndex = 40
      OnExecute = Jump2MfCkszExecute
    end
    object Jump2DataSheet: TAction
      Category = 'MfCksz'
      Caption = 'Jump2DataSheet'
      Hint = 'Ugrás az adatlapokra'
      ImageIndex = 41
      OnExecute = Jump2DataSheetExecute
    end
    object NewMsoItem: TAction
      Category = 'MSO'
      Caption = 'Új elem felvitele'
      ImageIndex = 38
      OnExecute = NewMsoItemExecute
    end
    object SaveMsoItem: TAction
      Category = 'MSO'
      Caption = 'Adatok mentése'
      ImageIndex = 6
      OnExecute = SaveMsoItemExecute
    end
    object CopyCouplingData: TAction
      Tag = 6050
      Category = 'Couplings'
      Caption = 'A kiválasztott rekord adatainak másolása új rekordba'
      OnExecute = CopyCouplingDataExecute
    end
    object Find: TAction
      Category = 'Main'
      Caption = 'Find'
      ShortCut = 16454
      OnExecute = FindExecute
    end
    object AddElorendItem: TAction
      Category = 'Elorendeles'
      Hint = 'A kijelölt elemek másolása'
      ImageIndex = 31
      ShortCut = 16458
    end
    object RemoveElorendItem: TAction
      Category = 'Elorendeles'
      Hint = 'A kijelölt elemek eltávolítása'
      ImageIndex = 30
      ShortCut = 16450
    end
    object CouplingCopyAccessories: TAction
      Category = 'Couplings'
      Caption = 'CopyCouplingAccessories'
      Hint = 'A kijelölt tételek másolása'
      ImageIndex = 10
      OnExecute = CouplingCopyAccessoriesExecute
    end
    object CouplingPasteAccessories: TAction
      Category = 'Couplings'
      Caption = 'PasteCouplingAccessories'
      Enabled = False
      Hint = 'A kijelölt tételek beillesztése'
      ImageIndex = 11
      OnExecute = CouplingPasteAccessoriesExecute
    end
    object ShowSerials: TAction
      Category = 'DataSheet'
      Caption = 'ShowSerials'
      Hint = 'Gyártási számok megjelenítése'
      ImageIndex = 43
      OnExecute = ShowSerialsExecute
    end
    object ShowOrderComment: TAction
      Category = 'DataSheet'
      Caption = 'ShowOrderComment'
      Hint = 'A rendeléshez tartozó megjegyzések megjelenítése.'
      ImageIndex = 44
      ShortCut = 16496
      OnExecute = ShowOrderCommentExecute
    end
  end
  object DataSheetMenu: TPopupMenu
    Images = ImageList1
    Left = 40
    Top = 192
    object Alkatrszlistaexportlsa2: TMenuItem
      Action = AlkatreszExport
    end
    object Alkatrszlistaexportlsa1: TMenuItem
      Action = AtveteliExport
      Caption = 'Átveli utasítás készítése'
    end
    object Alkatrszlistaexportlsaimportlsaadatlapbl1: TMenuItem
      Action = DataSheetImport
      Caption = 'Adatok importálása adatlapból'
    end
    object ItemChanges1: TMenuItem
      Action = ItemChanges
      Caption = 'Az adott tétel módosításai'
    end
    object Konstrukcielfordulsa1: TMenuItem
      Action = KonstrSearch
    end
    object Cikkszmkorbbielfordulsa1: TMenuItem
      Action = CkszSearch
    end
    object Mszakiadatokmsolsaavglapra1: TMenuItem
      Action = CopyTechnicalData
    end
    object Mszakiadatokbeillesztse1: TMenuItem
      Action = PasteTechnicalData
    end
    object Alkatrszlistaelkldve1: TMenuItem
      Action = EmailSent
    end
    object Rajzbehvsa1: TMenuItem
      Caption = 'Rajz behívása'
      Enabled = False
      OnClick = Rajzbehvsa1Click
    end
  end
  object ImageList2: TImageList
    Left = 424
    Top = 304
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C0000000
      0000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000C0C0
      C000FFFFFF0000000000C0C0C000FFFFFF0000000000C0C0C000FFFFFF000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C0000000
      0000C0C0C000C0C0C00000000000C0C0C000C0C0C00000000000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000C0C0
      C000FFFFFF0000000000C0C0C000FFFFFF0000000000C0C0C000FFFFFF000000
      0000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077777700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000663333009999990099999900999999000000000000000000000000000000
      AA0099999900999999000000000000000000000000000000000000000000FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00CC999900CC999900000000007777
      7700777777000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000336666003366660033666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF999900FF99
      990066333300663333009999990099999900000000006666CC006666CC000000
      AA000000990099999900999999000000000000000000CC999900CC999900FFCC
      CC00FFCCCC00FFCCCC00FFFFFF00FFFFFF00CC999900CC999900CC999900CC99
      9900777777007777770000000000000000000000000000000000000000000000
      00000000000066FFFF0099CCCC00669999000000000000000000336666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF0000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF999900FF999900FF999900FF99
      99006633330066333300663333006666CC006666CC006666CC006666CC000000
      AA000000AA000000AA009999990099999900CC999900CC999900CC9999000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CC999900CC99
      9900CC9999007777770000000000000000000000000000000000000000000000
      000099CCCC00669999000000000000FFFF0000FFFF0000FFFF00000000003366
      660000000000000000000000000000000000000000000000000000000000FF00
      000080808000C0C0C000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000000000000FF999900FF999900FF999900FF99
      9900444444006633330033000000333399006666CC006666CC006666CC000000
      AA00000099000000AA000000000000000000CC99990000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      0000CC9999007777770077777700000000000000000000000000000000006699
      99000000000066FFFF0066FFFF0066FFFF0066FFFF0066FFFF0066FFFF000000
      0000000000003366660000000000000000000000000080000000FF0000008080
      8000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000FF999900FF999900FF999900FF99
      990044444400663333003300000033339900333399006666CC006666CC000000
      AA00000099000000AA00000000000000000000000000FFFFFF0000000000FF99
      9900FF999900FF999900FF999900FF999900FF999900FF99990000000000FFFF
      FF000000000077777700777777000000000000000000000000000000000099FF
      FF0099FFFF0099FFFF0000000000000000003366660033666600336666003366
      66000000000033666600000000003366660000000000FF00000080808000C0C0
      C000C0C0C000FF000000C0C0C000C0C0C000C0C0C00000000000000000000000
      000000000000000000000000000000000000FF999900FF999900FFFFFF00FFCC
      CC00FFCCCC006633330055000000000000000099FF009999FF006666CC009999
      FF00000099000000AA000000000000000000FFFFFF0000000000FF999900FF99
      9900FF999900FF999900FF999900FF999900FF999900FF999900996666000000
      0000FFFFFF0077777700777777000000000000000000CCFFFF00CCFFFF00CCFF
      FF00CCFFFF003366660055555500000000003366660099CCCC00669999006699
      9900669999000000000033666600336666000000000080808000C0C0C000C0C0
      C000FF000000FF000000FF000000C0C0C000C0C0C000C0C0C000000000000000
      000000000000000000000000000000000000FFFFFF00FFCCCC00FFCCCC00FFCC
      CC00FFCCCC000000000000CCFF0000CCFF000099FF000099FF006666CC006666
      CC009999FF00000099000000000000000000FFFFFF0000000000CC999900FF99
      9900FFFFFF0099666600996666009966660099666600FF999900CC9999000000
      0000FFFFFF0077777700000000000000000000000000FFFFFF00CCFFFF00CCFF
      FF00CCFFFF00CCFFFF00555555009999FF006699FF0000000000CCFFFF00CCFF
      FF00CCFFFF00CCFFFF000000000000000000000000000000000080808000C0C0
      C000FF000000FF000000C0C0C000FF000000C0C0C000C0C0C000C0C0C0000000
      00000000000000000000000000000000000000000000FFCCCC00FFCCCC00DDDD
      DD0000CCFF0000CCFF0000CCFF0000CCFF000099FF000099FF000099FF006666
      CC006666CC006666CC00000000000000000000000000FFFFFF0000000000CC99
      9900CC999900CC999900CC999900CC999900CC999900CC99990000000000FFFF
      FF00000000000000000000000000000000000000000000000000FFFFFF00CCFF
      FF00CCFFFF00CCFFFF00CCFFFF00FFFFFF0000FFFF003399FF0000000000CCFF
      FF00CCFFFF00CCFFFF0000000000000000000000000000000000000000008080
      8000C0C0C000C0C0C000FF000000C0C0C000FF000000C0C0C000C0C0C000C0C0
      C000000000000000000000000000000000000000000000000000FFCCCC00FFCC
      CC0000CCFF0000CCFF0000CCFF0000CCFF000099FF000099FF000099FF000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF000000
      000077777700000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00555555009999990000FFFF003399FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000C0C0C000FF000000FF000000C0C0C000FF000000C0C0C000C0C0
      C000C0C0C0000000000000000000000000000000000000000000000000000000
      000000CCFF0000CCFF0000CCFF0000CCFF000099FF000099FF000099FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0
      C000000000007777770000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF003399FF009999990000FFFF003399
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000FF000000C0C0C000FF000000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      000000CCFF0000CCFF00FFFFFF0000FFFF0000FFFF000099FF000099FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00C0C0
      C000000000000000000077777700000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00CCFFFF00000000003399FF009999990000FF
      FF003399FF000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000FF000000FF000000C0C0C000FF00
      0000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000FFFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000099FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007777
      7700111111000000000000000000777777000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003399FF009999
      990000FFFF004444440000000000000000000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000FF000000FF000000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000000000
      00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000777777001111110000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003399
      FF00555555006666CC0044444400000000000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007777770011111100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000055555500555555009999FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000555555009999FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFF000000000000A48F000000000000FFF7000000000000FFEF000000000000
      FF9F000000000000FFFF000000000000FFFFF03FFFFFFFFFE0C3C007F83FF7FF
      80018003F01FF1FF00000003E00FE0FF00010001C003807F000100018000803F
      000100010000801F000100038001C00F00010007C001E00780078007E007F003
      C00FE003F007F801F00FFF81F803FC01F00FFFC0FDC1FE03F00FFFE0FFE0FF07
      F83FFFF0FFF0FF8FFCFFFFF9FFF9FFFF00000000000000000000000000000000
      000000000000}
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <>
    Left = 192
    Top = 51
    object RxMemoryData1TetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object RxMemoryData1TipusNev: TStringField
      FieldName = 'TipusNev'
      Size = 30
    end
    object RxMemoryData1Megnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object RxMemoryData1Rajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object RxMemoryData1Cikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object RxMemoryData1Darabszam: TIntegerField
      FieldName = 'Darabszam'
    end
  end
  object DataSource1: TDataSource
    DataSet = Dm.RendMin
    Left = 160
    Top = 51
  end
  object PopupMenu2: TPopupMenu
    Images = ImageList1
    Left = 72
    Top = 192
    object Elemekmsolsatmenetitrolba1: TMenuItem
      Action = CopyMisc
    end
    object Elemekmsolsatmenetitrolbl1: TMenuItem
      Action = PasteMisc
    end
  end
  object MiscTempData: TRxMemoryData
    FieldDefs = <>
    Left = 608
    Top = 304
    object MiscTempDataMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object MiscTempDataRajzszam: TStringField
      FieldName = 'Rajzszam'
    end
    object MiscTempDataDarabszam: TSmallintField
      FieldName = 'Darabszam'
    end
    object MiscTempDataMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object MiscTempDataActive: TBooleanField
      FieldName = 'Active'
    end
    object MiscTempDataCreatorName: TStringField
      FieldName = 'CreatorName'
      Size = 50
    end
    object MiscTempDataCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 76
    Top = 126
  end
  object dxDBGridLayoutList1: TdxDBGridLayoutList
    Left = 352
    Top = 232
    object InspectorLayout: TdxDBGridLayout
      Data = {
        83010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C64060D496E73706563746F724E616D
        650D53756D6D61727947726F7570730E001053756D6D61727953657061726174
        6F7206022C200A44617461536F757263650710446D2E6473496E7370656B746F
        726F6B0F46696C7465722E43726974657269610A04000000000000000A53686F
        774865616465720800135464784442477269644D61736B436F6C756D6E0B496E
        73706563746F7249640756697369626C6508055769647468022B0942616E6449
        6E646578020008526F77496E6465780200094669656C644E616D65060B496E73
        706563746F7249640000135464784442477269644D61736B436F6C756D6E0D49
        6E73706563746F724E616D6505576964746802610942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D65060D496E73706563746F72
        4E616D65000000}
    end
    object InspekcioLayout: TdxDBGridLayout
      Data = {
        BA010000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C640609496E7370656B63696F0D5375
        6D6D61727947726F7570730E001053756D6D617279536570617261746F720602
        2C200A44617461536F75726365070E446D2E6473496E7370656B63696F0F4669
        6C7465722E43726974657269610A0400000000000000094F7074696F6E734442
        0B106564676F43616E63656C4F6E457869740D6564676F43616E44656C657465
        0D6564676F43616E496E73657274116564676F43616E4E617669676174696F6E
        116564676F436F6E6669726D44656C657465126564676F4C6F6164416C6C5265
        636F726473106564676F557365426F6F6B6D61726B73000A53686F7748656164
        65720800135464784442477269644D61736B436F6C756D6E09496E7370656B63
        696F0743617074696F6E0609496E7370656B6369F30F486561646572416C6967
        6E6D656E740708746143656E7465720942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D650609496E7370656B63696F000000}
    end
  end
  object CouplingsGridMenu: TPopupMenu
    Images = ImageList1
    Left = 168
    Top = 192
    object Oszlopokigaztsa1: TMenuItem
      Caption = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnClick = Oszlopokigaztsa1Click
    end
    object Akivlasztottrekordadatainakmsolsajrekordba1: TMenuItem
      Action = CopyCouplingData
    end
    object Adatokmsolsavglapra1: TMenuItem
      Caption = 'Adatok másolása vágólapra'
      OnClick = Adatokmsolsavglapra1Click
    end
  end
  object RendFejGridMenu: TPopupMenu
    Images = ImageList1
    Left = 104
    Top = 192
    object Oszlopokigaztsa2: TMenuItem
      Caption = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnClick = Oszlopokigaztsa2Click
    end
    object Rendelsvltozsai1: TMenuItem
      Caption = 'A kiválasztott rendelés változásai'
      ImageIndex = 19
      ShortCut = 49238
      OnClick = Rendelsvltozsai1Click
    end
  end
  object RendTetelGridMenu: TPopupMenu
    Images = ImageList1
    Left = 136
    Top = 192
    object Oszlopokigaztsa3: TMenuItem
      Caption = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnClick = Oszlopokigaztsa3Click
    end
    object Ttelekvltozsai1: TMenuItem
      Caption = 'A kiválasztott tétel változásai'
      ImageIndex = 19
      ShortCut = 49238
      OnClick = Ttelekvltozsai1Click
    end
    object Cellamsolsa1: TMenuItem
      Caption = 'Cella másolása vágólapra'
      ShortCut = 16451
      OnClick = Cellamsolsa1Click
    end
  end
  object NMSMTP1: TNMSMTP
    Port = 25
    ReportLevel = 0
    EncodeType = uuMime
    ClearParams = True
    SubType = mtPlain
    Charset = 'us-ascii'
    Left = 272
    Top = 232
  end
  object MeoGridMenu: TPopupMenu
    Left = 296
    Top = 192
    object Oszlopokigaztsa8: TMenuItem
      Caption = 'Oszlopok igazítása'
      ShortCut = 16457
      OnClick = Oszlopokigaztsa8Click
    end
    object Oszlopelrejtse1: TMenuItem
      Caption = 'Oszlopok láthatósága'
      OnClick = Oszlopelrejtse1Click
    end
    object Azsszesoszlopmegjelentse1: TMenuItem
      Caption = 'Az összes oszlop megjelenítése'
      ShortCut = 49229
      OnClick = Azsszesoszlopmegjelentse1Click
    end
    object Rekordmsolsa1: TMenuItem
      Caption = 'Rekord másolása'
      OnClick = Rekordmsolsa1Click
    end
    object Rekordbeillesztseakivlasztottsorokba1: TMenuItem
      Caption = 'Rekord beillesztése a kiválasztott sorokba'
      OnClick = Rekordbeillesztseakivlasztottsorokba1Click
    end
  end
  object BiztSzerelvGridMenu: TPopupMenu
    Images = ImageList1
    Left = 776
    Top = 152
    object Biztszerelvnyekkarbantarsa1: TMenuItem
      Action = SafetyItemEdit
    end
    object Biztszerelvnyekhozzadsa1: TMenuItem
      Action = SafetyItemAdd
    end
    object Akivlasztottelemeltvoltsa1: TMenuItem
      Action = SafetyItemRemove
    end
  end
  object ChipGridMenu: TPopupMenu
    Images = ImageList1
    Left = 808
    Top = 152
    object Oszlopokigaztsa9: TMenuItem
      Caption = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnClick = Oszlopokigaztsa9Click
    end
  end
  object Timer1: TTimer
    Interval = 120000
    OnTimer = Timer1Timer
    Left = 304
    Top = 232
  end
  object ImageList3: TImageList
    Left = 376
    Top = 304
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF00000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000000
      8000000080000000800000008000000080000000800000008000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007F7F7F000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000800000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00000000000000000000008000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF007F7F7F0000000000000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000008000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF007F7F7F0000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFE01F00000000
      FFFFC00F00000000FC7F800700000000FC7F000300000000FC7F000100000000
      FFFF800000000000FEFFC00000000000FC7FE00000000000FC7FF00000000000
      FC7FF80100000000FC7FFC0100000000FC7FFE0100000000FC7FFF1F00000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object MsoDrawGridMenu: TPopupMenu
    Images = ImageList1
    Left = 840
    Top = 153
    object Oszlopokigaztsa6: TMenuItem
      Caption = 'Oszlopok igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnClick = Oszlopokigaztsa6Click
    end
    object tvonaltrlse1: TMenuItem
      Caption = 'Útvonal törlése'
      ImageIndex = 29
      OnClick = tvonaltrlse1Click
    end
    object Azsszesgkibontsa2: TMenuItem
      Caption = 'Az összes ág kibontása'
      ShortCut = 16459
      OnClick = Azsszesgkibontsa2Click
    end
    object Azsszesgbecsuksa3: TMenuItem
      Caption = 'Az összes ág becsukása'
      OnClick = Azsszesgbecsuksa3Click
    end
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 302
    Top = 104
  end
  object AnyagGridMenu: TPopupMenu
    Images = ImageList1
    Left = 200
    Top = 192
    object Azsszesgkibontsa1: TMenuItem
      Caption = 'Az összes ág kibontása'
      ShortCut = 16459
      OnClick = Azsszesgkibontsa1Click
    end
    object Azsszesgbecsuksa1: TMenuItem
      Caption = 'Az összes ág becsukása'
      OnClick = Azsszesgbecsuksa1Click
    end
    object Oszlopkigaztsa1: TMenuItem
      Caption = 'Oszlopk igazítása'
      ImageIndex = 18
      ShortCut = 16457
      OnClick = Oszlopkigaztsa1Click
    end
  end
  object AnyagszGridMenu: TPopupMenu
    Images = ImageList1
    Left = 232
    Top = 192
    object Oszlopokigaztsa4: TMenuItem
      Caption = 'Oszlopok igazítása'
      ImageIndex = 18
      OnClick = Oszlopokigaztsa4Click
    end
    object sszesgkibontsa1: TMenuItem
      Caption = 'Az összes ág kibontása'
      OnClick = sszesgkibontsa1Click
    end
    object Azsszesgbecsuksa2: TMenuItem
      Caption = 'Az összes ág becsukása'
      OnClick = Azsszesgbecsuksa2Click
    end
    object Adatokvglapra1: TMenuItem
      Caption = 'Adatok vágólapra'
      OnClick = Adatokvglapra1Click
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'dwg'
    Filter = 'AutoCad faájlok (*.dwg)|*.dwg'
    Left = 824
    Top = 49
  end
  object MfCkszMenu: TPopupMenu
    Images = ImageList1
    Left = 264
    Top = 192
    object Akivlasztottrekordmsolsajrekordba1: TMenuItem
      Caption = 'A kiválasztott rekord adatainak másolása új rekordba'
      ImageIndex = 38
      OnClick = Akivlasztottrekordmsolsajrekordba1Click
    end
    object AdatokexportlsaExcelbe1: TMenuItem
      Caption = 'Adatok másolása a vágólapra'
      ImageIndex = 6
      OnClick = AdatokexportlsaExcelbe1Click
    end
  end
  object ElorendelesMenu: TPopupMenu
    Left = 328
    Top = 192
    object Azsszeselemkibontsa1: TMenuItem
      Caption = 'Az összes ág kibontása'
      OnClick = Azsszeselemkibontsa1Click
    end
    object Azsszesgbecsuksa4: TMenuItem
      Caption = 'Az összes ág becsukása'
      OnClick = Azsszesgbecsuksa4Click
    end
    object Oszlopokigaztsa5: TMenuItem
      Caption = 'Oszlopok igazítása'
      OnClick = Oszlopokigaztsa5Click
    end
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 205
    Top = 126
  end
  object ApplicationEvents1: TApplicationEvents
    OnActionExecute = ApplicationEvents1ActionExecute
    Left = 824
    Top = 81
  end
end
