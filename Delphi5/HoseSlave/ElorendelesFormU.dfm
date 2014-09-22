object ElorendelesForm: TElorendelesForm
  Left = 391
  Top = 247
  Width = 589
  Height = 625
  BorderStyle = bsSizeToolWin
  Caption = 'Elõrendelés'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 573
    Height = 587
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Elõrendelés'
      object ElorendelesGrid: TdxDBGrid
        Left = 0
        Top = 0
        Width = 565
        Height = 385
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'Rendelesszam'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        OnKeyDown = ElorendelesGridKeyDown
        DataSource = ToolsDm.dsElorendelesTetelek
        Filter.Criteria = {00000000}
        IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
        IniSectionName = 'ElorendelesGrid'
        OptionsBehavior = [edgoAnsiSort, edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSelect, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
        ShowNewItemRow = True
        object ElorendelesGridRendelesszam: TdxDBGridMaskColumn
          Caption = 'Rendelésszám'
          HeaderAlignment = taCenter
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Rendelesszam'
        end
        object ElorendelesGridRogzitette: TdxDBGridColumn
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
        object ElorendelesGridRogzIdopont: TdxDBGridColumn
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
      object Panel1: TPanel
        Left = 0
        Top = 385
        Width = 565
        Height = 29
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 1
        object DBNavigator1: TDBNavigator
          Left = 2
          Top = 2
          Width = 240
          Height = 25
          DataSource = ToolsDm.dsElorendelesTetelek
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 414
        Width = 565
        Height = 116
        Align = alBottom
        TabOrder = 2
        object CimzettLabel: TLabel
          Left = 8
          Top = 0
          Width = 35
          Height = 13
          Caption = 'Címzett'
        end
        object CegLabel: TLabel
          Left = 8
          Top = 40
          Width = 19
          Height = 13
          Caption = 'Cég'
        end
        object CimzettEdit: TEdit
          Left = 8
          Top = 16
          Width = 369
          Height = 21
          TabOrder = 0
        end
        object CegEdit: TEdit
          Left = 6
          Top = 56
          Width = 369
          Height = 21
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 530
        Width = 565
        Height = 29
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 3
        OnResize = Panel4Resize
        object FaxBtn: TBitBtn
          Left = 69
          Top = 2
          Width = 137
          Height = 25
          Caption = 'Elõrendelés &készítése'
          TabOrder = 0
          OnClick = FaxBtnClick
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
        object GridBtn: TBitBtn
          Left = 213
          Top = 2
          Width = 137
          Height = 25
          Caption = 'Elõrendelés &táblázat'
          TabOrder = 1
          OnClick = GridBtnClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
            C8807FF7777777777FF700000000000000007777777777777777333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BitBtn1: TBitBtn
          Left = 359
          Top = 2
          Width = 137
          Height = 25
          Cancel = True
          Caption = 'Cancel'
          Default = True
          ModalResult = 2
          TabOrder = 2
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Alapadatok'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 530
        Width = 565
        Height = 29
        Align = alBottom
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object DBNavigator2: TDBNavigator
          Left = 2
          Top = 2
          Width = 240
          Height = 25
          DataSource = ToolsDm.dsElorendelesAdatok
          Align = alLeft
          TabOrder = 0
        end
      end
      object ElorendelesAdatokGrid: TdxDBGrid
        Left = 0
        Top = 0
        Width = 565
        Height = 530
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'ElorendelesAdatId'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 1
        DataSource = ToolsDm.dsElorendelesAdatok
        Filter.Active = True
        Filter.Criteria = {00000000}
        IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
        IniSectionName = 'ElorendelesAdatokGrid'
        OptionsBehavior = [edgoAnsiSort, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
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
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'ElorendelesForm'
    MinMaxInfo.MinTrackHeight = 457
    MinMaxInfo.MinTrackWidth = 392
    StoredProps.Strings = (
      'PageControl1.ActivePage')
    StoredValues = <>
    Left = 24
    Top = 72
  end
end
