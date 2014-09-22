object Form1: TForm1
  Left = 236
  Top = 110
  Width = 404
  Height = 323
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object FilenameEdit1: TFilenameEdit
    Left = 16
    Top = 16
    Width = 241
    Height = 21
    InitialDir = 'http://sdas001/fluid/TMO/Konfekcio_es_atveteli_eloirasok/1/'
    NumGlyphs = 1
    TabOrder = 1
    Text = 'FilenameEdit1'
  end
  object NMHTTP1: TNMHTTP
    Port = 8080
    ReportLevel = 0
    Body = 'Default.htm'
    Header = 'Head.txt'
    InputFileMode = False
    OutputFileMode = False
    ProxyPort = 0
    Left = 144
    Top = 72
  end
end
