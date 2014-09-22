object DataSheetImportForm: TDataSheetImportForm
  Left = 431
  Top = 236
  Width = 536
  Height = 687
  BorderStyle = bsSizeToolWin
  Caption = 'Adatalap komponensek kiv�laszt�sa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 161
    Width = 528
    Height = 5
    Cursor = crVSplit
    Align = alTop
    Beveled = True
    Color = clBtnShadow
    ParentColor = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 624
    Width = 528
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 162
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 290
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 161
    Align = alTop
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 131
      Width = 526
      Height = 29
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvLowered
      TabOrder = 0
      OnResize = Panel3Resize
      object BitBtn3: TBitBtn
        Left = 205
        Top = 2
        Width = 117
        Height = 25
        Caption = '&Kiv�laszt�s'
        Default = True
        TabOrder = 0
        OnClick = BitBtn3Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          333333777777777F33333330B00000003333337F7777777F3333333000000000
          333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
          333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
          03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
          03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
          3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
          333333333377F7F33333333333330F03333333333337F7F33333333333330B03
          3333333333373733333333333333303333333333333373333333}
        NumGlyphs = 2
      end
    end
    object dxDBGrid2: TdxDBGrid
      Left = 1
      Top = 1
      Width = 526
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'AdatlapId'
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 1
      DataSource = AdatlapQryDs
      Filter.Active = True
      Filter.AutoDataSetFilter = True
      Filter.Criteria = {00000000}
      IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
      IniSectionName = 'DataSheetSelectForm'
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
      OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
      object dxDBGrid2AdatlapId: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        ReadOnly = True
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AdatlapId'
      end
      object dxDBGrid2AdatlapSzam: TdxDBGridMaskColumn
        Caption = 'Sz�ma'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AdatlapSzam'
      end
      object dxDBGrid2Valtozat: TdxDBGridMaskColumn
        Caption = 'V�ltozat'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Valtozat'
      end
      object dxDBGrid2CegNev: TdxDBGridMaskColumn
        Caption = 'C�gn�v'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CegNev'
      end
      object dxDBGrid2OsztalyNev: TdxDBGridMaskColumn
        Caption = 'Oszt�ly'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OsztalyNev'
      end
      object dxDBGrid2Megnevezes: TdxDBGridMaskColumn
        Caption = 'Megnevez�s'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Megnevezes'
      end
      object dxDBGrid2AltalanosNev: TdxDBGridMaskColumn
        Caption = '�ltal�nos n�v'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AltalanosNev'
      end
      object dxDBGrid2Szabvany: TdxDBGridMaskColumn
        Caption = 'Szabv�ny'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Szabvany'
      end
      object dxDBGrid2Id: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Id'
      end
      object dxDBGrid2Nyomas: TdxDBGridMaskColumn
        Caption = 'Nyom�s'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nyomas'
      end
      object dxDBGrid2Keszitette: TdxDBGridMaskColumn
        Caption = 'K�sz�tette'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Keszitette'
      end
      object dxDBGrid2KeszitesDatuma: TdxDBGridDateColumn
        Caption = 'K�sz.id�pont'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KeszitesDatuma'
      end
      object dxDBGrid2Ellenorizve: TdxDBGridCheckColumn
        Caption = 'Ellen�rizve'
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ellenorizve'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid2Ellenorizte: TdxDBGridMaskColumn
        Caption = 'Ellen�rizte'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ellenorizte'
      end
      object dxDBGrid2EllenorzesDatuma: TdxDBGridDateColumn
        Caption = 'Ell.id�pont'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EllenorzesDatuma'
      end
      object dxDBGrid2Egyedi: TdxDBGridCheckColumn
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Egyedi'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid2Kiadva: TdxDBGridCheckColumn
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kiadva'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid2KiadasIdopontja: TdxDBGridDateColumn
        Caption = 'Kiad�s id�p.'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'KiadasIdopontja'
      end
      object dxDBGrid2Kiadta: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Kiadta'
      end
      object dxDBGrid2Ervenyes: TdxDBGridCheckColumn
        Caption = '�rv�nyes'
        HeaderAlignment = taCenter
        ReadOnly = True
        Width = 64
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ervenyes'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid2ErvenyesitesIdopontja: TdxDBGridDateColumn
        Caption = '�rv.id�pont'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ErvenyesitesIdopontja'
      end
      object dxDBGrid2Ervenyesitette: TdxDBGridMaskColumn
        Caption = '�rv�nyes�tette'
        HeaderAlignment = taCenter
        ReadOnly = True
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Ervenyesitette'
      end
    end
  end
  object ItemsGrid: TdxDBGrid
    Left = 0
    Top = 166
    Width = 528
    Height = 458
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Id'
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 2
    DataSource = DataSource1
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'ItemsGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    SimpleCustomizeBox = True
    object ItemsGridId: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Id'
    end
    object ItemsGridKategoria: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Sorted = csUp
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kategoria'
      GroupIndex = 0
    end
    object ItemsGridKategoriaId: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KategoriaId'
    end
    object ItemsGridRajzszam: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Rajzsz�m'
      HeaderAlignment = taCenter
      Width = 68
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Rajzszam'
    end
    object ItemsGridMegnevezes: TdxDBGridMaskColumn
      Caption = 'Megnevez�s'
      HeaderAlignment = taCenter
      Width = 84
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megnevezes'
    end
    object ItemsGridaccessoryType: TdxDBGridMaskColumn
      HeaderAlignment = taCenter
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'accessoryType'
    end
    object ItemsGridChecked: TdxDBGridCheckColumn
      Caption = 'Kiv�lasztva'
      HeaderAlignment = taCenter
      Width = 77
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Checked'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object ItemsGridMegjegyzes: TdxDBGridColumn
      Caption = 'Megjegyz�s'
      HeaderAlignment = taCenter
      Width = 150
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Megjegyzes'
    end
    object ItemsGridaccessoryTypeName: TdxDBGridColumn
      Caption = 'T�pus'
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'accessoryTypeName'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'DatasheetSelectForm'
    Left = 32
    Top = 240
  end
  object RxMemoryData1: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Kategoria'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'KategoriaId'
        DataType = ftInteger
      end
      item
        Name = 'Rajzszam'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Megnevezes'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'accessoryType'
        DataType = ftInteger
      end
      item
        Name = 'Checked'
        DataType = ftBoolean
      end
      item
        Name = 'OsszeallRsz'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Megjegyzes'
        DataType = ftString
        Size = 50
      end>
    Left = 64
    Top = 240
    object RxMemoryData1Id: TIntegerField
      FieldName = 'Id'
    end
    object RxMemoryData1Kategoria: TStringField
      FieldName = 'Kategoria'
      Size = 30
    end
    object RxMemoryData1KategoriaId: TIntegerField
      FieldName = 'KategoriaId'
    end
    object RxMemoryData1Rajzszam: TStringField
      FieldName = 'Rajzszam'
    end
    object RxMemoryData1Megnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object RxMemoryData1accessoryType: TIntegerField
      FieldName = 'accessoryType'
    end
    object RxMemoryData1Checked: TBooleanField
      FieldName = 'Checked'
    end
    object RxMemoryData1OsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Size = 30
    end
    object RxMemoryData1Megjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object RxMemoryData1accessoryTypeName: TStringField
      FieldKind = fkLookup
      FieldName = 'accessoryTypeName'
      LookupDataSet = Dm.AccessoryType
      LookupKeyFields = 'accessoryTypeCounter'
      LookupResultField = 'descriptionH'
      KeyFields = 'accessoryType'
      Size = 25
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = RxMemoryData1
    Left = 96
    Top = 240
  end
  object AdatlapQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select cast(NewId() as char(50)), * '
      'from adatlap where Ervenyes = 0'
      'order by AdatlapId')
    Left = 32
    Top = 32
    object AdatlapQryCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 50
    end
    object AdatlapQryAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
    end
    object AdatlapQryAdatlapSzam: TStringField
      FieldName = 'AdatlapSzam'
      FixedChar = True
    end
    object AdatlapQryValtozat: TSmallintField
      FieldName = 'Valtozat'
    end
    object AdatlapQryCegNev: TStringField
      FieldName = 'CegNev'
      Size = 50
    end
    object AdatlapQryOsztalyNev: TStringField
      FieldName = 'OsztalyNev'
      Size = 50
    end
    object AdatlapQryMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object AdatlapQryAltalanosNev: TStringField
      FieldName = 'AltalanosNev'
      Size = 50
    end
    object AdatlapQrySzabvany: TStringField
      FieldName = 'Szabvany'
      Size = 50
    end
    object AdatlapQryId: TFloatField
      FieldName = 'Id'
    end
    object AdatlapQryNyomas: TFloatField
      FieldName = 'Nyomas'
    end
    object AdatlapQryKeszitette: TStringField
      FieldName = 'Keszitette'
      Size = 50
    end
    object AdatlapQryKeszitesDatuma: TDateTimeField
      FieldName = 'KeszitesDatuma'
    end
    object AdatlapQryEllenorizve: TBooleanField
      FieldName = 'Ellenorizve'
    end
    object AdatlapQryEllenorizte: TStringField
      FieldName = 'Ellenorizte'
      Size = 50
    end
    object AdatlapQryEllenorzesDatuma: TDateTimeField
      FieldName = 'EllenorzesDatuma'
    end
    object AdatlapQryEgyedi: TBooleanField
      FieldName = 'Egyedi'
    end
    object AdatlapQryKiadva: TBooleanField
      FieldName = 'Kiadva'
    end
    object AdatlapQryKiadasIdopontja: TDateTimeField
      FieldName = 'KiadasIdopontja'
    end
    object AdatlapQryKiadta: TStringField
      FieldName = 'Kiadta'
      Size = 50
    end
    object AdatlapQryErvenyes: TBooleanField
      FieldName = 'Ervenyes'
    end
    object AdatlapQryErvenyesitesIdopontja: TDateTimeField
      FieldName = 'ErvenyesitesIdopontja'
    end
    object AdatlapQryErvenyesitette: TStringField
      FieldName = 'Ervenyesitette'
      Size = 50
    end
  end
  object AdatlapQryDs: TDataSource
    DataSet = AdatlapQry
    Left = 64
    Top = 32
  end
  object ItemsQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      
        'select Rajzszam, Megnevezes, accessoryType = 0, Megjegyzes, Ossz' +
        'eallRsz = '#39#39
      'from'
      '    adatlapkonf where AdatlapId = 1 and Aktiv = 1'
      ''
      ' ')
    Left = 32
    Top = 280
    object ItemsQryRajzszam: TStringField
      FieldName = 'Rajzszam'
      FixedChar = True
    end
    object ItemsQryMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object ItemsQryaccessoryType: TIntegerField
      FieldName = 'accessoryType'
    end
    object ItemsQryMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 128
    end
    object ItemsQryOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      Size = 128
    end
  end
end
