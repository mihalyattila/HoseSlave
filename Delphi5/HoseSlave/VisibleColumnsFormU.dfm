object VisibleColumnsForm: TVisibleColumnsForm
  Left = 516
  Top = 187
  Width = 303
  Height = 656
  BorderStyle = bsSizeToolWin
  Caption = 'Oszlopok láthatósága'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object VisibleColumnsList: TCheckListBox
    Left = 0
    Top = 0
    Width = 295
    Height = 584
    Align = alClient
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 584
    Width = 295
    Height = 38
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 110
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alkalmaz'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
end
