object ConstrSearchForm: TConstrSearchForm
  Left = 291
  Top = 120
  Width = 730
  Height = 586
  BorderStyle = bsSizeToolWin
  Caption = 'Konstrukció elõfordulása'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 714
    Height = 57
    Align = alTop
    BevelInner = bvRaised
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 118
      Height = 13
      Caption = 'Keresett konstrukció'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 8
      Width = 118
      Height = 13
      Caption = 'Csatl.rsz.(opcionális)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object KonstrEdit: TEdit
      Left = 8
      Top = 24
      Width = 137
      Height = 21
      Hint = 'Töredék is megadható!'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 312
      Top = 16
      Width = 97
      Height = 25
      Caption = 'Keresés'
      Default = True
      TabOrder = 2
      OnClick = BitBtn3Click
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
    object CsatlRszEdit: TEdit
      Left = 152
      Top = 24
      Width = 137
      Height = 21
      Hint = 'Töredék is megadható!'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 519
    Width = 714
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    OnResize = Panel2Resize
    object BitBtn1: TBitBtn
      Left = 160
      Top = 2
      Width = 113
      Height = 25
      Caption = 'Kiválaszt'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 280
      Top = 2
      Width = 113
      Height = 25
      Caption = 'Bezárás'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object ConstrSearchGrid: TdxDBGrid
    Left = 0
    Top = 57
    Width = 714
    Height = 462
    Hint = 'Kiválasztás dupla kattintással!'
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Number'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnDblClick = BitBtn1Click
    DataSource = Dm.dsConstrSearch
    Filter.Active = True
    Filter.AutoDataSetFilter = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'ConstrSearchGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoIndicator, edgoInvertSelect, edgoUseBitmap]
    object ConstrSearchGridRendsz: TdxDBGridMaskColumn
      Caption = 'Rendsz.'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rendsz'
    end
    object ConstrSearchGridPhxRendsz: TdxDBGridMaskColumn
      Caption = 'Phx rendsz.'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PhxRendsz'
    end
    object ConstrSearchGridTetelSrsz: TdxDBGridMaskColumn
      Caption = 'Tétel srsz.'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object ConstrSearchGridKonstrukcio: TdxDBGridMaskColumn
      Caption = 'Konstrukció 1'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Konstrukcio'
    end
    object ConstrSearchGridKonstrukcio2: TdxDBGridMaskColumn
      Caption = 'Konstrukció 2'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Konstrukcio2'
    end
    object ConstrSearchGridCsatl1Rsz: TdxDBGridMaskColumn
      Caption = 'Csatl.1.rsz.'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csatl1Rsz'
    end
    object ConstrSearchGridCsatl2Rsz: TdxDBGridMaskColumn
      Caption = 'Csatl.2.rsz.'
      HeaderAlignment = taCenter
      Width = 60
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csatl2Rsz'
    end
    object ConstrSearchGridHossz: TdxDBGridColumn
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Hossz'
    end
    object ConstrSearchGridHosszMe: TdxDBGridColumn
      Caption = 'Hossz me.'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HosszMe'
    end
    object ConstrSearchGridPackStr: TdxDBGridColumn
      Caption = 'Csomagolás'
      HeaderAlignment = taCenter
      Width = 111
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackStr'
    end
    object ConstrSearchGridNumber: TdxDBGridColumn
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Number'
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'ConstrSearchForm'
    MinMaxInfo.MinTrackHeight = 200
    MinMaxInfo.MinTrackWidth = 425
    StoredProps.Strings = (
      'KonstrEdit.Text'
      'CsatlRszEdit.Text')
    StoredValues = <>
    Left = 32
    Top = 104
  end
end
