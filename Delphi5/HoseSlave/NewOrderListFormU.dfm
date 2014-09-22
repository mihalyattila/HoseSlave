object NewOrderListForm: TNewOrderListForm
  Left = 347
  Top = 320
  Width = 1137
  Height = 461
  Caption = '�j rendel�sek'
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8877877FFFFFFFFF
    FFFFFFFFFFF8877300003007FFFFFFFFFFFFFFF877713100000333008FFFFFF8
    8888777301013000000333007FFFF83000001033031030000000370008FF7000
    00013030033031000000371007FF3000000330310330330010003770008F1000
    000330330330330010007787008F0000000330330330333011070788007F0000
    000330330131033073177778707F0000000030033033037777777037778F0000
    0000330330333387777366007FF810010000330373077378777310078F887001
    00001331770777777301117FF88870000000033078777733BB3078F888887700
    100003773773777113378888888877001100777737730333318F888888887870
    11107777733333037888888888887880737777777331337788888888888888F7
    7777477033330788888888888888F88F77171000001388888888888888888F8F
    877111000008888888888888888888F8F706011000788888888888888888F88F
    8880000078888888888888888888888887771007888888888888888888888777
    7777788888888888888888888888777777788888888888888888888888880000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 394
    Width = 1121
    Height = 29
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 0
    OnResize = Panel1Resize
    object RecNumLabel: TLabel
      Left = 8
      Top = 8
      Width = 3
      Height = 13
    end
    object BitBtn1: TBitBtn
      Left = 392
      Top = 2
      Width = 129
      Height = 25
      Caption = 'Adatok import�l�sa'
      Default = True
      ModalResult = 1
      TabOrder = 0
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
    object BitBtn2: TBitBtn
      Left = 600
      Top = 2
      Width = 129
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object NewOrderListGrid: TdxDBGrid
    Left = 0
    Top = 0
    Width = 1121
    Height = 394
    Bands = <
      item
      end>
    DefaultLayout = True
    HeaderPanelRowCount = 1
    KeyField = 'Counter'
    ShowGroupPanel = True
    ShowSummaryFooter = True
    SummaryGroups = <
      item
        DefaultGroup = False
        SummaryItems = <
          item
            ColumnName = 'NewOrderListGridUpdatable'
            SummaryField = 'Counter'
            SummaryType = cstCount
          end>
        Name = 'NewOrderListGridSummaryGroup2'
      end>
    SummarySeparator = ', '
    Align = alClient
    PopupMenu = NewOrderListGridMenu
    TabOrder = 1
    DataSource = OrderDm.dsRendSorok
    Filter.Active = True
    Filter.Criteria = {00000000}
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSectionName = 'NewOrderListGrid'
    OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSelect, edgoMultiSort, edgoStoreToIniFile, edgoTabThrough, edgoVertThrough]
    OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
    OptionsView = [edgoBandHeaderWidth, edgoIndicator, edgoUseBitmap]
    object NewOrderListGridCounter: TdxDBGridColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Counter'
    end
    object NewOrderListGridUpdatable: TdxDBGridCheckColumn
      Caption = 'Friss�thet�'
      Color = 12639424
      HeaderAlignment = taCenter
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Updatable'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridRendelesAz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RendelesAz'
    end
    object NewOrderListGridTermekKod: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Visible = False
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TermekKod'
    end
    object NewOrderListGridRendSz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RendSz'
    end
    object NewOrderListGridSapRevizio: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SapRevizio'
    end
    object NewOrderListGridPhxRendSz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'PhxRendSz'
    end
    object NewOrderListGridVevoRendSz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VevoRendSz'
    end
    object NewOrderListGridVevo: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Vevo'
    end
    object NewOrderListGridFelhasznalo: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Felhasznalo'
    end
    object NewOrderListGridHatarido: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Hatarido'
    end
    object NewOrderListGridExtrKtsg: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ExtrKtsg'
    end
    object NewOrderListGridExtrPenznem: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ExtrPenznem'
    end
    object NewOrderListGridErtTerulet: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ErtTerulet'
    end
    object NewOrderListGridRKonfekcio: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RKonfekcio'
    end
    object NewOrderListGridLevelSzama: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LevelSzama'
    end
    object NewOrderListGridLevelDatuma: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LevelDatuma'
    end
    object NewOrderListGridRMegj: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RMegj'
    end
    object NewOrderListGridRRogzit: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RRogzit'
    end
    object NewOrderListGridRRogzIdo: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RRogzIdo'
    end
    object NewOrderListGridRModosit: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RModosit'
    end
    object NewOrderListGridRModIdo: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RModIdo'
    end
    object NewOrderListGridRModMezok: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'RModMezok'
    end
    object NewOrderListGridTorolt: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Torolt'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridEnged: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Enged'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridVissza: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Vissza'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridIgertHatarido: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'IgertHatarido'
    end
    object NewOrderListGridAjanlatSzam: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AjanlatSzam'
    end
    object NewOrderListGridTetelSrsz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TetelSrsz'
    end
    object NewOrderListGridCikkszam: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Cikkszam'
    end
    object NewOrderListGridSpecifikacio: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Specifikacio'
    end
    object NewOrderListGridAtmero: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Atmero'
    end
    object NewOrderListGridpsi: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'psi'
    end
    object NewOrderListGridMPa: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MPa'
    end
    object NewOrderListGridLang: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Lang'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridBg: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Bg'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridKg: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kg'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridPa: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Pa'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridKv: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Kv'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridKgInter: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KgInter'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridKvMua: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KvMua'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridKvFedHelix: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KvFedHelix'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridKvNFedHelix: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KvNFedHelix'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridTipus: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tipus'
    end
    object NewOrderListGridCsatl1: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csatl1'
    end
    object NewOrderListGridCsatl1Rsz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csatl1Rsz'
    end
    object NewOrderListGridCsatl2: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csatl2'
    end
    object NewOrderListGridCsatl2Rsz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csatl2Rsz'
    end
    object NewOrderListGridDarabSzam: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DarabSzam'
    end
    object NewOrderListGridHossz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Hossz'
    end
    object NewOrderListGridHosszMe: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'HosszMe'
    end
    object NewOrderListGridTErtek: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TErtek'
    end
    object NewOrderListGridTPenznem: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TPenznem'
    end
    object NewOrderListGridOsszeallRsz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OsszeallRsz'
    end
    object NewOrderListGridKonstrukcio: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Konstrukcio'
    end
    object NewOrderListGridKonstrukcio2: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Konstrukcio2'
    end
    object NewOrderListGridTKonfekcio: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TKonfekcio'
    end
    object NewOrderListGridTKonfekDatum: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TKonfekDatum'
    end
    object NewOrderListGridNormaIdo: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NormaIdo'
    end
    object NewOrderListGridDbjDatum: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'DbjDatum'
    end
    object NewOrderListGridMuvDatum: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'MuvDatum'
    end
    object NewOrderListGridKonstrDatum: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'KonstrDatum'
    end
    object NewOrderListGridFszHatarido: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FszHatarido'
    end
    object NewOrderListGridFszBeerk: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'FszBeerk'
    end
    object NewOrderListGridAnyag: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Anyag'
    end
    object NewOrderListGridCsomagolas: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Csomagolas'
    end
    object NewOrderListGridEgyeb: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Egyeb'
    end
    object NewOrderListGridTMegj: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TMegj'
    end
    object NewOrderListGridTRogzit: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TRogzit'
    end
    object NewOrderListGridTRogzIdo: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TRogzIdo'
    end
    object NewOrderListGridTModosit: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TModosit'
    end
    object NewOrderListGridTModIdo: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TModIdo'
    end
    object NewOrderListGridModMezok: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'ModMezok'
    end
    object NewOrderListGridBeszolg: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Beszolg'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridTModHatarido: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TModHatarido'
    end
    object NewOrderListGridBeszolgIdo: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BeszolgIdo'
    end
    object NewOrderListGridBeszolgDb: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BeszolgDb'
    end
    object NewOrderListGridBeszolgHossz: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BeszolgHossz'
    end
    object NewOrderListGridTomeg: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Tomeg'
    end
    object NewOrderListGridGyartasInd: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'GyartasInd'
    end
    object NewOrderListGridBefejezoMuv: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BefejezoMuv'
    end
    object NewOrderListGridAccListExist: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AccListExist'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridAccListDate: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AccListDate'
    end
    object NewOrderListGridAccCreator: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AccCreator'
    end
    object NewOrderListGridBelsoHuvely: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BelsoHuvely'
    end
    object NewOrderListGridHuvely: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Huvely'
    end
    object NewOrderListGridSpiralkup: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Spiralkup'
    end
    object NewOrderListGridEmelobilincs: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Emelobilincs'
    end
    object NewOrderListGridBiztBilincs: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'BiztBilincs'
    end
    object NewOrderListGridTomitoGyuru1: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TomitoGyuru1'
    end
    object NewOrderListGridTomitoGyuru2: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'TomitoGyuru2'
    end
    object NewOrderListGridFeneklap1: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Feneklap1'
    end
    object NewOrderListGridFeneklap2: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Feneklap2'
    end
    object NewOrderListGridNyomPrBilincs1: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NyomPrBilincs1'
    end
    object NewOrderListGridNyomPrBilincs2: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'NyomPrBilincs2'
    end
    object NewOrderListGridVedoHuvely: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'VedoHuvely'
    end
    object NewOrderListGridOsztottHuvely: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'OsztottHuvely'
    end
    object NewOrderListGridEgyebek: TdxDBGridMemoColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Egyebek'
    end
    object NewOrderListGridAtveteliKesz: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AtveteliKesz'
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object NewOrderListGridAtveteliIdopont: TdxDBGridDateColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AtveteliIdopont'
    end
    object NewOrderListGridAtvetelitKeszitette: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'AtvetelitKeszitette'
    end
    object NewOrderListGridInspector: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'Inspector'
    end
    object NewOrderListGridInspectorMegj: TdxDBGridMemoColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'InspectorMegj'
    end
    object NewOrderListGridSapTypeOfCoupling2: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SapTypeOfCoupling2'
    end
    object NewOrderListGridSapTypeOfCoupling1: TdxDBGridMaskColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      BandIndex = 0
      RowIndex = 0
      FieldName = 'SapTypeOfCoupling1'
    end
    object NewOrderListGridH2S: TdxDBGridCheckColumn
      Color = clSilver
      HeaderAlignment = taCenter
      ReadOnly = True
      Width = 100
      BandIndex = 0
      RowIndex = 0
      FieldName = 'H2S'
      AllowGrayed = True
      ShowNullFieldStyle = nsGrayedChecked
      ValueChecked = '1'
      ValueGrayed = '-1'
      ValueUnchecked = '0'
    end
  end
  object NewOrderListGridMenu: TPopupMenu
    Left = 24
    Top = 72
    object Oszlopokigaztsa1: TMenuItem
      Caption = 'Oszlopok igaz�t�sa'
      ShortCut = 16457
      OnClick = Oszlopokigaztsa1Click
    end
    object Azsszesgkibontsa1: TMenuItem
      Caption = 'Az �sszes �g kibont�sa'
      ShortCut = 16459
      OnClick = Azsszesgkibontsa1Click
    end
    object Azsszesgbecsuksa1: TMenuItem
      Caption = 'Az �sszes �g becsuk�sa'
      ShortCut = 16450
      OnClick = Azsszesgbecsuksa1Click
    end
    object Afrissthetsginvertlsa1: TMenuItem
      Caption = 'A kiv�lasztott rendel�s friss�thet�s�g�nek invert�l�sa'
      ShortCut = 16454
      OnClick = Afrissthetsginvertlsa1Click
    end
    object Azsszesfrissthetsginvertlsa1: TMenuItem
      Caption = 'Az �sszes friss�thet�s�g invert�l�sa'
      ShortCut = 16467
      OnClick = Azsszesfrissthetsginvertlsa1Click
    end
    object ExcelExport: TMenuItem
      Caption = 'Export�l�s Excel-be'
      OnClick = ExcelExportClick
    end
  end
  object FormPlacement1: TFormPlacement
    IniFileName = 'D:\ContiProgs\HoseSlave\HoseSlave.ini'
    IniSection = 'NewOrderListForm'
    Left = 24
    Top = 104
  end
  object ExcelSaveDialog: TSaveDialog
    Filter = 'Excel f�jlok (*.xls)|*.xls'
    InitialDir = '\'
    Left = 24
    Top = 136
  end
end
