object DrawSearchForm: TDrawSearchForm
  Left = 376
  Top = 365
  BorderStyle = bsToolWindow
  Caption = 'Rajz keresõ'
  ClientHeight = 94
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PathLabel: TLabel
    Left = 8
    Top = 48
    Width = 2
    Height = 11
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 8
    Top = 40
    Width = 313
    Height = 49
    DataField = 'Path'
    DataSource = ToolsDm.dsDwgFiles
    WordWrap = True
  end
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 284
    Height = 13
    Caption = 'Rajzszám megadása vagy kiválasztása (Enter - rajz behívás)'
  end
  object SearchLookupEdit: TRxLookupEdit
    Left = 8
    Top = 16
    Width = 313
    Height = 21
    ListStyle = lsDelimited
    LookupDisplay = 'FileName'
    LookupField = 'FileName'
    LookupSource = ToolsDm.dsDwgFiles
    PopupOnlyLocate = False
    TabOrder = 0
    OnKeyDown = SearchLookupEditKeyDown
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'DrawSearchForm'
    StoredProps.Strings = (
      'SearchLookupEdit.Text')
    StoredValues = <>
    Left = 128
    Top = 8
  end
end
