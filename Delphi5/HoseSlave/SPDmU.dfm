object SPDm: TSPDm
  OldCreateOrder = False
  Left = 236
  Top = 110
  Height = 656
  Width = 758
  object SPConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=konf123;Persist Security Info=True;' +
      'User ID=sdkonfuser2;Initial Catalog=SharePoint_Content_MainPage;' +
      'Data Source=sdas001a;Use Procedure for Prepare=1;Auto Translate=' +
      'True;Packet Size=4096;Workstation ID=SDD-FLU072;Use Encryption f' +
      'or Data=False;Tag with column collation when possible=False'
    CursorLocation = clUseServer
    IsolationLevel = ilUnspecified
    LoginPrompt = False
    Mode = cmRead
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 32
  end
  object dsAtveteliList: TDataSource
    DataSet = qAtveteliList
    Left = 104
    Top = 112
  end
  object qAtveteliList: TADOQuery
    Connection = SPConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'LeafName'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 128
        Value = '515489'
      end>
    SQL.Strings = (
      'select'
      '      distinct DirName, LeafName'
      'from'
      '      AllDocs'
      'where'
      '      DirName like '#39'fluid/TMO/Konfekcio_es_atveteli_eloirasok%'#39
      '      and LeafName like :LeafName'
      '')
    Left = 48
    Top = 96
    object qAtveteliListDirName: TWideStringField
      FieldName = 'DirName'
      Size = 256
    end
    object qAtveteliListLeafName: TWideStringField
      FieldName = 'LeafName'
      Size = 128
    end
  end
end
