object AccTypeSelectForm: TAccTypeSelectForm
  Left = 281
  Top = 145
  Width = 274
  Height = 480
  BorderStyle = bsSizeToolWin
  Caption = 'AccTypeSelectForm'
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
    Top = 405
    Width = 266
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 160
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 266
    Height = 405
    Align = alClient
    DataSource = AccTypeDs
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'accessoryTypeCounter'
        Title.Alignment = taCenter
        Title.Caption = 'K�d'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descriptionH'
        Title.Alignment = taCenter
        Title.Caption = 'Megnevez�s'
        Width = 190
        Visible = True
      end>
  end
  object AccType: TTable
    DatabaseName = 'HoseDb'
    TableName = 'dbo.AccessoryType'
    Left = 48
    Top = 48
    object AccTypeaccessoryTypeCounter: TIntegerField
      FieldName = 'accessoryTypeCounter'
      Required = True
    end
    object AccTypedescriptionH: TStringField
      FieldName = 'descriptionH'
    end
  end
  object AccTypeDs: TDataSource
    DataSet = AccType
    Left = 80
    Top = 48
  end
end