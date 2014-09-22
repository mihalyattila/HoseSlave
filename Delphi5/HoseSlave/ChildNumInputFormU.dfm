object ChildNumInputForm: TChildNumInputForm
  Left = 506
  Top = 307
  BorderStyle = bsToolWindow
  Caption = 'ChildNumInputForm'
  ClientHeight = 111
  ClientWidth = 170
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
    Top = 8
    Width = 153
    Height = 33
    AutoSize = False
    Caption = 'Hány tétetelre bontsam a kiválasztott elemet?'
    WordWrap = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 82
    Width = 170
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 8
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 88
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object ChildNumEdit: TFnpNumericEdit
    Left = 68
    Top = 48
    Width = 33
    Height = 21
    TabOrder = 1
    Decimals = 0
    Value = 2
  end
end
