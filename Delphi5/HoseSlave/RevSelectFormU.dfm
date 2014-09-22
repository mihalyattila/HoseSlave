object RevSelectForm: TRevSelectForm
  Left = 441
  Top = 367
  Width = 320
  Height = 208
  BorderStyle = bsSizeToolWin
  Caption = 'Cél revízió kiválasztása'
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
    Top = 144
    Width = 312
    Height = 30
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 48
      Top = 3
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 160
      Top = 3
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 312
    Height = 144
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    DataSource = Dm.GetPackRevsDs
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'RevSelectGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    object dxDBGrid1PackNum: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'Csom.száma'
      HeaderAlignment = taCenter
      Width = 65
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackNum'
    end
    object dxDBGrid1PackRevision: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'Revízió'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackRevision'
    end
    object dxDBGrid1PackVersion: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'Verzió'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PackVersion'
    end
    object dxDBGrid1Ident1: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Azonosító1'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ident1'
    end
    object dxDBGrid1Ident2: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Azonosító2'
      HeaderAlignment = taCenter
      Width = 124
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Ident2'
    end
    object dxDBGrid1Name: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Megnevezés'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Name'
    end
    object dxDBGrid1OfferPerson: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Ajánlat kérõ'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OfferPerson'
    end
    object dxDBGrid1Note: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Megjegyzés'
      HeaderAlignment = taCenter
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Note'
    end
    object dxDBGrid1Status: TdxDBGridMaskColumn
      Alignment = taRightJustify
      Caption = 'Státusz'
      HeaderAlignment = taCenter
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Status'
    end
    object dxDBGrid1CreatorName: TdxDBGridMaskColumn
      Alignment = taLeftJustify
      Caption = 'Készítette'
      HeaderAlignment = taCenter
      Width = 133
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreatorName'
    end
    object dxDBGrid1CreateDate: TdxDBGridDateColumn
      Alignment = taLeftJustify
      Caption = 'Készítés idõpontja'
      HeaderAlignment = taCenter
      Width = 112
      BandIndex = 0
      RowIndex = 0
      FieldName = 'CreateDate'
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'RevSelectForm'
    Left = 168
    Top = 64
  end
end
