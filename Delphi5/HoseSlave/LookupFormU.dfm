object LookupForm: TLookupForm
  Left = 308
  Top = 271
  Width = 294
  Height = 204
  BorderStyle = bsSizeToolWin
  Caption = 'LookupForm'
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
    Top = 141
    Width = 286
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 46
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 166
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 0
    Top = 0
    Width = 286
    Height = 134
    Align = alClient
    ListSource = DataSource1
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 24
    Top = 16
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'LookupForm'
    StoredValues = <>
    Left = 104
    Top = 16
  end
end
