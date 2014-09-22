object MatNumSearchForm: TMatNumSearchForm
  Left = 578
  Top = 214
  Width = 332
  Height = 417
  BorderStyle = bsSizeToolWin
  Caption = 'Cikksz�m el�fordul�sa'
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
    Top = 0
    Width = 316
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 86
      Height = 13
      Caption = 'Keresett cikksz�m'
    end
    object MatNumEdit: TEdit
      Left = 8
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 144
      Top = 12
      Width = 97
      Height = 25
      Caption = 'Keres�s'
      Default = True
      TabOrder = 1
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
  object MatNumGrid: TRxDBGrid
    Left = 0
    Top = 41
    Width = 316
    Height = 309
    Align = alClient
    DataSource = Dm.dsMatNumSearch
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = MatNumGridDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Rendsz'
        Title.Alignment = taCenter
        Title.Caption = 'Rendsz.'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PhxRendsz'
        Title.Alignment = taCenter
        Title.Caption = 'Phx.rendsz.'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TetelSrsz'
        Title.Alignment = taCenter
        Title.Caption = 'T�telsrsz.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Specifikacio'
        Title.Alignment = taCenter
        Title.Caption = 'Specifik�ci�'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cikkszam'
        Title.Alignment = taCenter
        Title.Caption = 'Cikksz�m'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 350
    Width = 316
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    OnResize = Panel2Resize
    object BitBtn1: TBitBtn
      Left = 118
      Top = 2
      Width = 89
      Height = 25
      Caption = 'Kiv�laszt'
      ModalResult = 1
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object FormStorage1: TFormStorage
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'MatNumSearchForm'
    StoredProps.Strings = (
      'MatNumEdit.Text')
    StoredValues = <>
    Left = 264
    Top = 8
  end
end