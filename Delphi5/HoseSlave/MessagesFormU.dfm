object MessagesForm: TMessagesForm
  Left = 490
  Top = 457
  Width = 441
  Height = 310
  BorderStyle = bsSizeToolWin
  Caption = '�zenetek'
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
    Top = 247
    Width = 433
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 171
      Top = 2
      Width = 90
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object MsgEdit: TRxRichEdit
    Left = 0
    Top = 0
    Width = 433
    Height = 247
    Align = alClient
    ReadOnly = True
    TabOrder = 1
  end
end
