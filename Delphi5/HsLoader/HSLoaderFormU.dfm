object HSLoaderForm: THSLoaderForm
  Left = 276
  Top = 248
  BorderStyle = bsToolWindow
  Caption = 'Programok frissítése'
  ClientHeight = 44
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Database: TDatabase
    AliasName = 'Hosemaster'
    DatabaseName = 'MainDb'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=user')
    SessionName = 'Default'
    Left = 416
    Top = 8
  end
  object PrgUpdateList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'PrgUpdateList'
    Left = 448
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgGroup'
        ParamType = ptInput
      end>
    object PrgUpdateListProgCode: TIntegerField
      FieldName = 'ProgCode'
    end
    object PrgUpdateListProgGroup: TStringField
      FieldName = 'ProgGroup'
      Size = 50
    end
    object PrgUpdateListProgName: TStringField
      FieldName = 'ProgName'
      Size = 50
    end
    object PrgUpdateListExeName: TStringField
      FieldName = 'ExeName'
      Size = 50
    end
    object PrgUpdateListActualVersion: TStringField
      FieldName = 'ActualVersion'
      Size = 10
    end
    object PrgUpdateListProgUpdate: TBooleanField
      FieldName = 'ProgUpdate'
    end
    object PrgUpdateListSourceDir: TStringField
      FieldName = 'SourceDir'
      Size = 200
    end
    object PrgUpdateListVersion: TStringField
      FieldName = 'Version'
      Size = 50
    end
    object PrgUpdateListFileDate: TDateTimeField
      FieldName = 'FileDate'
    end
    object PrgUpdateListRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object PrgUpdateListRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object spAddProgEvent: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_AddProgEvent'
    Left = 384
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgEvent'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ProgName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Note'
        ParamType = ptInput
      end>
  end
end
