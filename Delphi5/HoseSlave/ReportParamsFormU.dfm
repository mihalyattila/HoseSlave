object ReportParamsForm: TReportParamsForm
  Left = 361
  Top = 231
  Width = 240
  Height = 394
  BorderStyle = bsSizeToolWin
  Caption = 'ReportParamsForm'
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
    Top = 319
    Width = 232
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object dxDBGrid1: TdxDBGrid
    Left = 0
    Top = 0
    Width = 232
    Height = 319
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    SummaryGroups = <>
    SummarySeparator = ', '
    Align = alClient
    TabOrder = 1
    Filter.Criteria = {00000000}
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'ReportParamsForm'
    Left = 32
    Top = 40
  end
end
