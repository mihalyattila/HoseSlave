object PathSelectionForm: TPathSelectionForm
  Left = 581
  Top = 244
  Width = 415
  Height = 120
  BorderStyle = bsSizeToolWin
  Caption = 'Útvonal megadása'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 57
    Width = 407
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 91
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 243
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
    Width = 407
    Height = 57
    Align = alClient
    TabOrder = 1
    OnResize = Panel2Resize
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 98
      Height = 13
      Caption = 'Útvonal kiválasztása'
    end
    object FilenameEdit1: TFilenameEdit
      Left = 8
      Top = 24
      Width = 393
      Height = 21
      Filter = 
        'Rajzok (*.dwg,*.dft)|*.dwg;*.dft|Dokumentumok (*.doc,*.xls,*.pdf' +
        ')|*.doc;*.xls;*.pdf|Minden fájl (*.*)|*.*'
      InitialDir = '\\SDFS002\SDG-Group\Fluid'
      NumGlyphs = 1
      TabOrder = 0
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'PathSelectionForm'
    MinMaxInfo.MaxTrackHeight = 120
    MinMaxInfo.MaxTrackWidth = 800
    MinMaxInfo.MinTrackHeight = 120
    MinMaxInfo.MinTrackWidth = 300
    Left = 248
    Top = 8
  end
end
