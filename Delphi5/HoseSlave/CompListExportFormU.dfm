object CompListExportForm: TCompListExportForm
  Left = 423
  Top = 331
  Width = 679
  Height = 430
  BorderStyle = bsSizeToolWin
  Caption = 'Alkatr�szlista'
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
    Top = 367
    Width = 671
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object BitBtn1: TBitBtn
      Left = 150
      Top = 2
      Width = 75
      Height = 25
      Hint = 'A "lev�l elk�ldve" flag be�ll�t�sa a m�dos�tott t�telekre'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 446
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object CompListEdit: TRichEdit
    Left = 0
    Top = 0
    Width = 671
    Height = 367
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'CompListEdit'
    Left = 24
    Top = 64
  end
  object PopupMenu1: TPopupMenu
    Left = 24
    Top = 24
    object Msolsavglapra1: TMenuItem
      Caption = 'M�sol�s a v�g�lapra'
      OnClick = Msolsavglapra1Click
    end
  end
end