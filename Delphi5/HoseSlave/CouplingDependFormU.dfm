object CouplingDependForm: TCouplingDependForm
  Left = 646
  Top = 378
  BorderStyle = bsToolWindow
  Caption = 'Csatlakozó adatmódosítás érintettjei'
  ClientHeight = 138
  ClientWidth = 221
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
    Top = 109
    Width = 221
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 73
      Top = 2
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 221
    Height = 109
    Align = alClient
    DataSource = dsGetCouplingDependencies
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RendSz'
        Title.Alignment = taCenter
        Title.Caption = 'Rendelésszám'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TetelSrsz'
        Title.Alignment = taCenter
        Title.Caption = 'Tétel srsz.'
        Width = 58
        Visible = True
      end>
  end
  object GetCouplingDependencies: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'GetCouplingDependencies;1'
    Left = 24
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = '@Srsz'
        ParamType = ptInput
      end>
    object GetCouplingDependenciesRendSz: TStringField
      FieldName = 'RendSz'
    end
    object GetCouplingDependenciesTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
  end
  object dsGetCouplingDependencies: TDataSource
    DataSet = GetCouplingDependencies
    Left = 64
    Top = 16
  end
end
