object EndPicUploaderForm: TEndPicUploaderForm
  Left = 248
  Top = 110
  Width = 908
  Height = 690
  Caption = 'V�gz�d�s �br�k felt�lt�se'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 560
    Width = 900
    Height = 96
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 56
      Height = 13
      Caption = 'VegzodesId'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 80
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Megnevezes'
      FocusControl = DBEdit2
    end
    object DBText1: TDBText
      Left = 392
      Top = 8
      Width = 177
      Height = 17
      DataField = 'Rogzitette'
      DataSource = DataSource1
    end
    object DBText2: TDBText
      Left = 576
      Top = 8
      Width = 177
      Height = 17
      DataField = 'RogzIdopont'
      DataSource = DataSource1
    end
    object SpeedButton1: TSpeedButton
      Left = 256
      Top = 56
      Width = 23
      Height = 22
      Hint = 'K�p t�rl�se'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 320
      Top = 56
      Width = 23
      Height = 22
      OnClick = SpeedButton2Click
    end
    object Label3: TLabel
      Left = 392
      Top = 24
      Width = 497
      Height = 65
      AutoSize = False
      Caption = 'Label3'
      WordWrap = True
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 56
      Width = 240
      Height = 25
      DataSource = DataSource1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 24
      Width = 64
      Height = 21
      DataField = 'VegzodesId'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 80
      Top = 24
      Width = 300
      Height = 21
      DataField = 'Megnevezes'
      DataSource = DataSource1
      TabOrder = 2
    end
  end
  object DBImage1: TDBImage
    Left = 0
    Top = 0
    Width = 900
    Height = 560
    Align = alClient
    DataField = 'Picture'
    DataSource = DataSource1
    TabOrder = 1
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;User ID=sa;Initial Catalog=TMO;Data Source=sdas009\sdsq' +
      '2;Use Procedure for Prepare=1;Auto Translate=True;Packet Size=40' +
      '96;Workstation ID=SDD-FLU072;Use Encryption for Data=False;Tag w' +
      'ith column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 64
    Top = 48
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforePost = ADOTable1BeforePost
    IndexName = 'PK_VegzodesTipusok'
    TableName = 'VegzodesTipusok'
    Left = 64
    Top = 96
    object ADOTable1VegzodesId: TIntegerField
      FieldName = 'VegzodesId'
    end
    object ADOTable1Megnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 200
    end
    object ADOTable1Picture: TBlobField
      FieldName = 'Picture'
      BlobType = ftBlob
    end
    object ADOTable1Rogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object ADOTable1RogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 64
    Top = 152
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'sp_GetCurrentUser;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ProgramName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = ''
      end>
    Prepared = True
    Left = 64
    Top = 208
    object ADOStoredProc1UserName: TStringField
      FieldName = 'UserName'
      ReadOnly = True
      Size = 50
    end
    object ADOStoredProc1UserId: TIntegerField
      FieldName = 'UserId'
      ReadOnly = True
    end
    object ADOStoredProc1SPID: TSmallintField
      FieldName = 'SPID'
      ReadOnly = True
    end
    object ADOStoredProc1Ident: TBCDField
      FieldName = 'Ident'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 64
    Top = 264
  end
end
