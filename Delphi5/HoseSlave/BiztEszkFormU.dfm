object BiztEszkForm: TBiztEszkForm
  Left = 320
  Top = 380
  Width = 671
  Height = 388
  BorderStyle = bsSizeToolWin
  Caption = 'Biztons�gi szerelv�nyek kezel�se'
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
    Top = 272
    Width = 663
    Height = 82
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 57
      Height = 13
      Caption = 'Eszk�z fajta'
    end
    object Label2: TLabel
      Left = 120
      Top = 8
      Width = 71
      Height = 13
      Caption = 'Beszerz�s fajta'
    end
    object Label3: TLabel
      Left = 232
      Top = 8
      Width = 30
      Height = 13
      Caption = 'El�tag'
    end
    object Label4: TLabel
      Left = 360
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Srsz.kezdete'
    end
    object Label5: TLabel
      Left = 432
      Top = 8
      Width = 53
      Height = 13
      Caption = 'Darabsz�m'
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 48
      Width = 240
      Height = 25
      DataSource = DataSource1
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
    end
    object EszkozCombo: TComboBox
      Left = 8
      Top = 24
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = EszkozComboChange
      Items.Strings = (
        'K�t�l'
        'L�nc')
    end
    object BeszerzesCombo: TComboBox
      Left = 120
      Top = 24
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'CBC'
        'CBL'
        'Saj�t')
    end
    object ElotagEdit: TEdit
      Left = 232
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object KezdetEdit: TRxSpinEdit
      Left = 360
      Top = 24
      Width = 65
      Height = 21
      TabOrder = 4
    end
    object DbEdit: TRxSpinEdit
      Left = 432
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 272
      Top = 48
      Width = 145
      Height = 25
      Caption = 'Sorok l�trehoz�sa'
      TabOrder = 6
      OnClick = BitBtn1Click
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
  end
  object BiztEszkGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 663
    Height = 272
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
    TabOrder = 1
    DataSource = DataSource1
    Filter.Active = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'BiztEszkGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object BiztEszkGridId: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      Width = 32
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Id'
    end
    object BiztEszkGridEszkozFajta: TdxDBGridColumn
      Caption = 'Eszk�z fajta'
      HeaderAlignment = taCenter
      Width = 80
      BandIndex = 0
      RowIndex = 0
      FieldName = 'EszkozFajta'
    end
    object BiztEszkGridBeszerzes: TdxDBGridColumn
      Caption = 'Beszerz�s'
      HeaderAlignment = taCenter
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Beszerzes'
    end
    object BiztEszkGridAzonosito: TdxDBGridMaskColumn
      Caption = 'Azonosit�'
      HeaderAlignment = taCenter
      Width = 69
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Azonosito'
    end
    object BiztEszkGridRendsz: TdxDBGridMaskColumn
      Caption = 'Rendsz.'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      Width = 59
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rendsz'
    end
    object BiztEszkGridRendelesAz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RendelesAz'
    end
    object BiztEszkGridTetelSrsz: TdxDBGridMaskColumn
      Caption = 'T�tel srsz.'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      Width = 67
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object BiztEszkGridMegjegyzes: TdxDBGridColumn
      Caption = 'Megjegyz�s'
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megjegyzes'
    end
    object BiztEszkGridRogzitette: TdxDBGridMaskColumn
      Caption = 'R�gz�tette'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      Width = 71
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rogzitette'
    end
    object BiztEszkGridRogzIdopont: TdxDBGridDateColumn
      Caption = 'Id�pont'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      TabStop = False
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RogzIdopont'
    end
  end
  object Table1: TTable
    BeforePost = Table1BeforePost
    BeforeDelete = Table1BeforeDelete
    AutoRefresh = True
    DatabaseName = 'MainDb'
    Exclusive = True
    TableName = 'dbo.BiztonsagiSzerelvenyek'
    Left = 16
    Top = 56
    object Table1Id: TIntegerField
      FieldName = 'Id'
    end
    object Table1EszkozFajta: TStringField
      FieldName = 'EszkozFajta'
    end
    object Table1Beszerzes: TStringField
      FieldName = 'Beszerzes'
    end
    object Table1Azonosito: TStringField
      FieldName = 'Azonosito'
    end
    object Table1Rendsz: TStringField
      FieldName = 'Rendsz'
    end
    object Table1RendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object Table1TetelSrsz: TSmallintField
      FieldName = 'TetelSrsz'
    end
    object Table1Megjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object Table1Rogzitette: TStringField
      FieldName = 'Rogzitette'
      Required = True
      Size = 50
    end
    object Table1RogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 16
    Top = 88
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'BiztEszkForm'
    Left = 16
    Top = 120
  end
end
