object ElorendGridForm: TElorendGridForm
  Left = 285
  Top = 123
  Width = 694
  Height = 540
  Caption = 'Elõrendelés'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 678
    Height = 473
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 0
    Filter.Criteria = {00000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 473
    Width = 678
    Height = 29
    Align = alBottom
    TabOrder = 1
  end
end
