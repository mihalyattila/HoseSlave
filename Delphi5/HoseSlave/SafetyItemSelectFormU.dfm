object SafetyItemSelectForm: TSafetyItemSelectForm
  Left = 463
  Top = 262
  BorderStyle = bsToolWindow
  Caption = 'Bizt.szerelvény kiválasztása'
  ClientHeight = 158
  ClientWidth = 198
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object EszkozLabel: TLabel
    Left = 8
    Top = 4
    Width = 57
    Height = 13
    Caption = 'Eszköz fajta'
  end
  object Label1: TLabel
    Left = 8
    Top = 44
    Width = 48
    Height = 13
    Caption = 'Beszerzés'
  end
  object Label2: TLabel
    Left = 8
    Top = 84
    Width = 53
    Height = 13
    Caption = 'Darabszám'
  end
  object EszkozCombo: TRxDBLookupCombo
    Left = 8
    Top = 16
    Width = 185
    Height = 21
    DropDownCount = 8
    LookupField = 'Eszkozfajta'
    LookupDisplay = 'Eszkozfajta'
    LookupSource = dsEszkoz
    TabOrder = 0
    OnChange = EszkozComboChange
  end
  object BeszerzesCombo: TRxDBLookupCombo
    Left = 8
    Top = 56
    Width = 185
    Height = 21
    DropDownCount = 8
    LookupField = 'Beszerzes'
    LookupDisplay = 'Beszerzes'
    LookupSource = dsBeszerzes
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 129
    Width = 198
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 17
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 105
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DbEdit: TRxSpinEdit
    Left = 8
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object qEszkoz: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct Eszkozfajta '
      'from BiztonsagiSzerelvenyek'
      'order by Eszkozfajta')
    Left = 72
    Top = 8
    object qEszkozEszkozfajta: TStringField
      FieldName = 'Eszkozfajta'
    end
  end
  object qBeszerzes: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct Beszerzes '
      'from BiztonsagiSzerelvenyek'
      'order by Beszerzes')
    Left = 104
    Top = 8
    object qBeszerzesBeszerzes: TStringField
      FieldName = 'Beszerzes'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.Beszerzes'
    end
  end
  object dsEszkoz: TDataSource
    DataSet = qEszkoz
    Left = 72
    Top = 40
  end
  object dsBeszerzes: TDataSource
    DataSet = qBeszerzes
    Left = 104
    Top = 40
  end
end
