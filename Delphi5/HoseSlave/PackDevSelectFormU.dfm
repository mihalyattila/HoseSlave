object PackDevSelectForm: TPackDevSelectForm
  Left = 320
  Top = 161
  BorderStyle = bsToolWindow
  Caption = 'Csomagolóeszköz kiválasztása'
  ClientHeight = 493
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 837
    Height = 464
    Align = alClient
    TabOrder = 0
    object DBText1: TDBText
      Left = 520
      Top = 8
      Width = 97
      Height = 17
      DataField = 'DimenzioNev1'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText2: TDBText
      Left = 624
      Top = 8
      Width = 97
      Height = 17
      DataField = 'DimenzioNev2'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText3: TDBText
      Left = 728
      Top = 8
      Width = 97
      Height = 17
      DataField = 'DimenzioNev3'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText4: TDBText
      Left = 520
      Top = 48
      Width = 97
      Height = 17
      DataField = 'DimenzioNev4'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText5: TDBText
      Left = 624
      Top = 48
      Width = 97
      Height = 17
      DataField = 'DimenzioNev5'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText6: TDBText
      Left = 728
      Top = 48
      Width = 97
      Height = 17
      DataField = 'DimenzioNev6'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText7: TDBText
      Left = 520
      Top = 88
      Width = 97
      Height = 17
      DataField = 'DimenzioNev7'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText8: TDBText
      Left = 624
      Top = 88
      Width = 97
      Height = 17
      DataField = 'DimenzioNev8'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText9: TDBText
      Left = 728
      Top = 88
      Width = 97
      Height = 17
      DataField = 'DimenzioNev9'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText10: TDBText
      Left = 520
      Top = 128
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'DimenzioNev10'
      DataSource = Dm.PackDeviceTypeDs
    end
    object Label1: TLabel
      Left = 520
      Top = 168
      Width = 56
      Height = 13
      Caption = 'Megjegyzés'
      FocusControl = DBEdit14
    end
    object Label2: TLabel
      Left = 520
      Top = 232
      Width = 64
      Height = 13
      Caption = 'Rögzítette:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 520
      Top = 248
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
    object DBText15: TDBText
      Left = 592
      Top = 232
      Width = 233
      Height = 13
      DataField = 'Rogzitette'
      DataSource = Dm.PackDeviceDs
    end
    object DBText16: TDBText
      Left = 592
      Top = 248
      Width = 233
      Height = 13
      DataField = 'RogzIdopont'
      DataSource = Dm.PackDeviceDs
    end
    object DBText11: TDBText
      Left = 600
      Top = 128
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'DimenzioNev11'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText12: TDBText
      Left = 680
      Top = 128
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'DimenzioNev12'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBText13: TDBText
      Left = 760
      Top = 128
      Width = 48
      Height = 13
      AutoSize = True
      DataField = 'DimenzioNev13'
      DataSource = Dm.PackDeviceTypeDs
    end
    object DBEdit1: TDBEdit
      Left = 520
      Top = 24
      Width = 97
      Height = 21
      DataField = 'dim1'
      DataSource = Dm.PackDeviceDs
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 624
      Top = 24
      Width = 97
      Height = 21
      DataField = 'dim2'
      DataSource = Dm.PackDeviceDs
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 728
      Top = 24
      Width = 97
      Height = 21
      DataField = 'dim3'
      DataSource = Dm.PackDeviceDs
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 520
      Top = 64
      Width = 97
      Height = 21
      DataField = 'dim4'
      DataSource = Dm.PackDeviceDs
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 624
      Top = 64
      Width = 97
      Height = 21
      DataField = 'dim5'
      DataSource = Dm.PackDeviceDs
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 728
      Top = 64
      Width = 97
      Height = 21
      DataField = 'dim6'
      DataSource = Dm.PackDeviceDs
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 520
      Top = 104
      Width = 97
      Height = 21
      DataField = 'dim7'
      DataSource = Dm.PackDeviceDs
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 624
      Top = 104
      Width = 97
      Height = 21
      DataField = 'dim8'
      DataSource = Dm.PackDeviceDs
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 728
      Top = 104
      Width = 97
      Height = 21
      DataField = 'dim9'
      DataSource = Dm.PackDeviceDs
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 520
      Top = 144
      Width = 73
      Height = 21
      DataField = 'dim10'
      DataSource = Dm.PackDeviceDs
      TabOrder = 9
    end
    object DBImage1: TDBImage
      Left = 8
      Top = 248
      Width = 233
      Height = 161
      DataField = 'Picture'
      DataSource = Dm.PackDeviceTypeDs
      Stretch = True
      TabOrder = 13
      TabStop = False
    end
    object PackDevTypeGrid: TDBGrid
      Left = 8
      Top = 8
      Width = 233
      Height = 225
      DataSource = Dm.PackDeviceTypeDs
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DeviceTypeCode'
          Title.Alignment = taCenter
          Title.Caption = 'Srsz.'
          Width = 32
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DeviceTypeName'
          Title.Alignment = taCenter
          Title.Caption = 'Eszköztipus'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Megjegyzes'
          Title.Alignment = taCenter
          Title.Caption = 'Megjegyzés'
          Width = 200
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 248
      Top = 416
      Width = 260
      Height = 25
      DataSource = Dm.PackDeviceDs
      Flat = True
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object PackDevGrid: TdxDBGrid
      Left = 248
      Top = 8
      Width = 265
      Height = 401
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'DeviceId'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 16
      DataSource = Dm.PackDeviceDs
      Filter.Criteria = {00000000}
      IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
      IniSectionName = 'PackDevGrid'
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OnCustomDrawCell = PackDevGridCustomDrawCell
      object PackDevGridListOrder: TdxDBGridMaskColumn
        Caption = 'Srsz.'
        HeaderAlignment = taCenter
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ListOrder'
      end
      object PackDevGridDeviceName: TdxDBGridMaskColumn
        Caption = 'Megnevezés'
        HeaderAlignment = taCenter
        Width = 182
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DeviceName'
      end
      object PackDevGridTorolt: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 35
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Torolt'
      end
    end
    object DBEdit14: TDBEdit
      Left = 520
      Top = 184
      Width = 305
      Height = 21
      DataField = 'Note'
      DataSource = Dm.PackDeviceDs
      TabOrder = 17
    end
    object DBCheckBox1: TDBCheckBox
      Left = 520
      Top = 208
      Width = 57
      Height = 17
      Caption = 'Törölt'
      DataField = 'Torolt'
      DataSource = Dm.PackDeviceDs
      TabOrder = 18
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBEdit11: TDBEdit
      Left = 600
      Top = 144
      Width = 73
      Height = 21
      DataField = 'dim11'
      DataSource = Dm.PackDeviceDs
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 680
      Top = 144
      Width = 73
      Height = 21
      DataField = 'dim12'
      DataSource = Dm.PackDeviceDs
      TabOrder = 11
    end
    object DBEdit13: TDBEdit
      Left = 760
      Top = 144
      Width = 73
      Height = 21
      DataField = 'dim13'
      DataSource = Dm.PackDeviceDs
      TabOrder = 12
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 464
    Width = 837
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 225
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 537
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'PackDevSelectForm'
    Left = 50
    Top = 98
  end
end
