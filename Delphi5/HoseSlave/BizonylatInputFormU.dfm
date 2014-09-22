object BizonylatInputForm: TBizonylatInputForm
  Left = 245
  Top = 138
  BorderStyle = bsToolWindow
  Caption = 'BizonylatInputForm'
  ClientHeight = 87
  ClientWidth = 181
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 75
    Height = 13
    Caption = 'Bizonylat száma'
  end
  object Edit1: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 46
    Width = 181
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 9
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkYes
    end
    object BitBtn2: TBitBtn
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkNo
    end
  end
end
