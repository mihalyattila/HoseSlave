object HoseSlaveForm: THoseSlaveForm
  Left = 271
  Top = 116
  Width = 1210
  Height = 907
  Caption = 'HoseSlaveForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 850
    Width = 1194
    Height = 19
    Panels = <>
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 29
    Width = 1194
    Height = 821
    ActivePage = MfCkszTabSheet
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabPosition = tpBottom
    object MfCkszTabSheet: TTabSheet
      Caption = 'Mf.cikksz'#225'mok'
      OnShow = MfCkszTabSheetShow
      object Panel1: TPanel
        Left = 0
        Top = 766
        Width = 1186
        Height = 29
        Align = alBottom
        TabOrder = 0
        object BitBtn1: TBitBtn
          Left = 8
          Top = 2
          Width = 75
          Height = 25
          Caption = 'BitBtn1'
          TabOrder = 0
          OnClick = BitBtn1Click
        end
      end
      object MfCkszGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 1186
        Height = 766
        Align = alClient
        TabOrder = 1
        object MfCkszGridDBTableView1: TcxGridDBTableView
          DataController.DataSource = Dm.dsMfCikkszamok
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = MfCkszGridDBTableView1CustomDrawCell
          OptionsBehavior.CellHints = True
          OptionsView.Navigator = True
          OptionsView.Indicator = True
          object MfCkszGridDBTableView1ItemId: TcxGridDBColumn
            DataBinding.FieldName = 'ItemId'
            HeaderAlignmentHorz = taCenter
          end
          object MfCkszGridDBTableView1Jelzes: TcxGridDBColumn
            DataBinding.FieldName = 'Jelzes'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
          object MfCkszGridDBTableView1JelzesNev: TcxGridDBColumn
            DataBinding.FieldName = 'JelzesNev'
            Width = 64
          end
          object MfCkszGridDBTableView1PrDatum: TcxGridDBColumn
            DataBinding.FieldName = 'PrDatum'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1MtKeszDatum: TcxGridDBColumn
            DataBinding.FieldName = 'MtKeszDatum'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1RegiCksz: TcxGridDBColumn
            DataBinding.FieldName = 'RegiCksz'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1SAPCksz: TcxGridDBColumn
            DataBinding.FieldName = 'SAPCksz'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1MtFelkeszDatum: TcxGridDBColumn
            DataBinding.FieldName = 'MtFelkeszDatum'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Nev: TcxGridDBColumn
            DataBinding.FieldName = 'Nev'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Hossz: TcxGridDBColumn
            DataBinding.FieldName = 'Hossz'
            HeaderAlignmentHorz = taCenter
          end
          object MfCkszGridDBTableView1Felkesz5: TcxGridDBColumn
            DataBinding.FieldName = 'Felkesz5'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Vulk5: TcxGridDBColumn
            DataBinding.FieldName = 'Vulk5'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Tomloveg5: TcxGridDBColumn
            DataBinding.FieldName = 'Tomloveg5'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Felkesz6: TcxGridDBColumn
            DataBinding.FieldName = 'Felkesz6'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Vulk6: TcxGridDBColumn
            DataBinding.FieldName = 'Vulk6'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Tomloveg6: TcxGridDBColumn
            DataBinding.FieldName = 'Tomloveg6'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Felkesz7: TcxGridDBColumn
            DataBinding.FieldName = 'Felkesz7'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Vulk7: TcxGridDBColumn
            DataBinding.FieldName = 'Vulk7'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Tomloveg7: TcxGridDBColumn
            DataBinding.FieldName = 'Tomloveg7'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Felkesz9: TcxGridDBColumn
            DataBinding.FieldName = 'Felkesz9'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Vulk9: TcxGridDBColumn
            DataBinding.FieldName = 'Vulk9'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Tomloveg9: TcxGridDBColumn
            DataBinding.FieldName = 'Tomloveg9'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1MuszJell: TcxGridDBColumn
            DataBinding.FieldName = 'MuszJell'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Konstr: TcxGridDBColumn
            DataBinding.FieldName = 'Konstr'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Ksz: TcxGridDBColumn
            DataBinding.FieldName = 'Ksz'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Asz: TcxGridDBColumn
            DataBinding.FieldName = 'Asz'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1MtfKesz: TcxGridDBColumn
            DataBinding.FieldName = 'MtfKesz'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Megjegyzes: TcxGridDBColumn
            DataBinding.FieldName = 'Megjegyzes'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1MtfFelkesz: TcxGridDBColumn
            DataBinding.FieldName = 'MtfFelkesz'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Keszitette: TcxGridDBColumn
            DataBinding.FieldName = 'Keszitette'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1KeszitesDatuma: TcxGridDBColumn
            DataBinding.FieldName = 'KeszitesDatuma'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Modositotta: TcxGridDBColumn
            DataBinding.FieldName = 'Modositotta'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1ModositasDatuma: TcxGridDBColumn
            DataBinding.FieldName = 'ModositasDatuma'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1JelzesKod: TcxGridDBColumn
            DataBinding.FieldName = 'JelzesKod'
            HeaderAlignmentHorz = taCenter
          end
          object MfCkszGridDBTableView1Norma: TcxGridDBColumn
            DataBinding.FieldName = 'Norma'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1SAP: TcxGridDBColumn
            DataBinding.FieldName = 'SAP'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1TBP: TcxGridDBColumn
            DataBinding.FieldName = 'TBP'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Graf: TcxGridDBColumn
            DataBinding.FieldName = 'Graf'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Torzslap: TcxGridDBColumn
            DataBinding.FieldName = 'Torzslap'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Darabjegyzek: TcxGridDBColumn
            DataBinding.FieldName = 'Darabjegyzek'
            HeaderAlignmentHorz = taCenter
            Width = 64
          end
          object MfCkszGridDBTableView1Szin: TcxGridDBColumn
            DataBinding.FieldName = 'Szin'
            Visible = False
            HeaderAlignmentHorz = taCenter
          end
        end
        object MfCkszGridLevel1: TcxGridLevel
          GridView = MfCkszGridDBTableView1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1194
    Height = 29
    Caption = 'ToolBar1'
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object ToolButton3: TToolButton
      Left = 0
      Top = 2
      Caption = 'ToolButton3'
      ImageIndex = 2
    end
    object ToolButton1: TToolButton
      Left = 23
      Top = 2
      Action = MfCkszSetGridColWidth
    end
    object ToolButton4: TToolButton
      Left = 46
      Top = 2
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton2: TToolButton
      Left = 54
      Top = 2
      Action = MfCkszRefreshData
    end
  end
  object ImageList1: TImageList
    Left = 32
    Top = 112
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BFBFBF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000FF000000FF0000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      000000000000000000007F7F7F00000000007F7F7F0000000000000000000000
      00000000000000000000000000000000000000000000FF000000FF000000FF00
      0000FF000000FF00000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      0000000000000000000000008000000000000000800000000000000000000000
      0000000000000000000000000000000000000000000000000000FF000000FF00
      0000FF0000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000000000000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF00000000000000000000000000000000000000
      000000000000000000007F7F7F0000FFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000FFFF0000FFFF0000FFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF00000000007F7F7F00000000007F7F7F00000000000000FF000000
      FF000000FF000000FF000000FF0000000000000000000000FF000000FF000000
      FF0000000000000000007F7F7F0000FFFF007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF0000000000000000000000FF0000000000000000000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF009FF9FFFFFE7F00009FF9F83FFE1F0000
      9FF9E00FFC0700009FF9C447FC0100009DB98C63F800000099999C73F8000000
      91893FF90000000081813EF90000000081813C7F0001000081813C7F00320000
      91893C41003E000099999C61003E00009DB98C71003E00009FF9C441001D0000
      9FF9E00D002300009FF9F83F003F0000}
  end
  object XPManifest1: TXPManifest
    Left = 32
    Top = 144
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 32
    Top = 176
    object MfCkszSetGridColWidth: TAction
      Category = 'MfCksz'
      Caption = 'MfCkszSetGridColWidth'
      Hint = 'Oszlopok igaz'#237't'#225'sa'
      ImageIndex = 0
      OnExecute = MfCkszSetGridColWidthExecute
    end
    object MfCkszRefreshData: TAction
      Category = 'MfCksz'
      Caption = 'MfCkszRefreshData'
      Hint = 'Adatok friss'#237't'#233'se'
      ImageIndex = 1
      OnExecute = MfCkszRefreshDataExecute
    end
    object MfCkszSaveState: TAction
      Category = 'MfCksz'
      Caption = 'MfCkszSaveState'
      ImageIndex = 2
      OnExecute = MfCkszSaveStateExecute
    end
  end
end