unit NewOrderListFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, ExtCtrls, MyProcs, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Menus, Placemnt, dxInspRw,
  dxDBInRw, dxInspct, dxDBInsp, db;

type
  TNewOrderListForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NewOrderListGridMenu: TPopupMenu;
    Oszlopokigaztsa1: TMenuItem;
    Azsszesgkibontsa1: TMenuItem;
    Azsszesgbecsuksa1: TMenuItem;
    FormPlacement1: TFormPlacement;
    NewOrderListGrid: TdxDBGrid;
    NewOrderListGridRendelesAz: TdxDBGridMaskColumn;
    NewOrderListGridTermekKod: TdxDBGridMaskColumn;
    NewOrderListGridRendSz: TdxDBGridMaskColumn;
    NewOrderListGridSapRevizio: TdxDBGridMaskColumn;
    NewOrderListGridPhxRendSz: TdxDBGridMaskColumn;
    NewOrderListGridVevoRendSz: TdxDBGridMaskColumn;
    NewOrderListGridVevo: TdxDBGridMaskColumn;
    NewOrderListGridFelhasznalo: TdxDBGridMaskColumn;
    NewOrderListGridHatarido: TdxDBGridDateColumn;
    NewOrderListGridExtrKtsg: TdxDBGridMaskColumn;
    NewOrderListGridExtrPenznem: TdxDBGridMaskColumn;
    NewOrderListGridErtTerulet: TdxDBGridMaskColumn;
    NewOrderListGridRKonfekcio: TdxDBGridMaskColumn;
    NewOrderListGridLevelSzama: TdxDBGridMaskColumn;
    NewOrderListGridLevelDatuma: TdxDBGridDateColumn;
    NewOrderListGridRMegj: TdxDBGridMaskColumn;
    NewOrderListGridRRogzit: TdxDBGridMaskColumn;
    NewOrderListGridRRogzIdo: TdxDBGridDateColumn;
    NewOrderListGridRModosit: TdxDBGridMaskColumn;
    NewOrderListGridRModIdo: TdxDBGridDateColumn;
    NewOrderListGridRModMezok: TdxDBGridMaskColumn;
    NewOrderListGridTorolt: TdxDBGridCheckColumn;
    NewOrderListGridEnged: TdxDBGridCheckColumn;
    NewOrderListGridVissza: TdxDBGridCheckColumn;
    NewOrderListGridIgertHatarido: TdxDBGridDateColumn;
    NewOrderListGridAjanlatSzam: TdxDBGridMaskColumn;
    NewOrderListGridTetelSrsz: TdxDBGridMaskColumn;
    NewOrderListGridCikkszam: TdxDBGridMaskColumn;
    NewOrderListGridSpecifikacio: TdxDBGridMaskColumn;
    NewOrderListGridAtmero: TdxDBGridMaskColumn;
    NewOrderListGridpsi: TdxDBGridMaskColumn;
    NewOrderListGridMPa: TdxDBGridMaskColumn;
    NewOrderListGridLang: TdxDBGridCheckColumn;
    NewOrderListGridBg: TdxDBGridCheckColumn;
    NewOrderListGridKg: TdxDBGridCheckColumn;
    NewOrderListGridPa: TdxDBGridCheckColumn;
    NewOrderListGridKv: TdxDBGridCheckColumn;
    NewOrderListGridKgInter: TdxDBGridCheckColumn;
    NewOrderListGridKvMua: TdxDBGridCheckColumn;
    NewOrderListGridKvFedHelix: TdxDBGridCheckColumn;
    NewOrderListGridKvNFedHelix: TdxDBGridCheckColumn;
    NewOrderListGridTipus: TdxDBGridMaskColumn;
    NewOrderListGridCsatl1: TdxDBGridMaskColumn;
    NewOrderListGridCsatl1Rsz: TdxDBGridMaskColumn;
    NewOrderListGridCsatl2: TdxDBGridMaskColumn;
    NewOrderListGridCsatl2Rsz: TdxDBGridMaskColumn;
    NewOrderListGridDarabSzam: TdxDBGridMaskColumn;
    NewOrderListGridHossz: TdxDBGridMaskColumn;
    NewOrderListGridHosszMe: TdxDBGridMaskColumn;
    NewOrderListGridTErtek: TdxDBGridMaskColumn;
    NewOrderListGridTPenznem: TdxDBGridMaskColumn;
    NewOrderListGridOsszeallRsz: TdxDBGridMaskColumn;
    NewOrderListGridKonstrukcio: TdxDBGridMaskColumn;
    NewOrderListGridKonstrukcio2: TdxDBGridMaskColumn;
    NewOrderListGridTKonfekcio: TdxDBGridMaskColumn;
    NewOrderListGridTKonfekDatum: TdxDBGridDateColumn;
    NewOrderListGridNormaIdo: TdxDBGridMaskColumn;
    NewOrderListGridDbjDatum: TdxDBGridDateColumn;
    NewOrderListGridMuvDatum: TdxDBGridDateColumn;
    NewOrderListGridKonstrDatum: TdxDBGridDateColumn;
    NewOrderListGridFszHatarido: TdxDBGridDateColumn;
    NewOrderListGridFszBeerk: TdxDBGridDateColumn;
    NewOrderListGridAnyag: TdxDBGridMaskColumn;
    NewOrderListGridCsomagolas: TdxDBGridMaskColumn;
    NewOrderListGridEgyeb: TdxDBGridMaskColumn;
    NewOrderListGridTMegj: TdxDBGridMaskColumn;
    NewOrderListGridTRogzit: TdxDBGridMaskColumn;
    NewOrderListGridTRogzIdo: TdxDBGridDateColumn;
    NewOrderListGridTModosit: TdxDBGridMaskColumn;
    NewOrderListGridTModIdo: TdxDBGridDateColumn;
    NewOrderListGridModMezok: TdxDBGridMaskColumn;
    NewOrderListGridBeszolg: TdxDBGridCheckColumn;
    NewOrderListGridTModHatarido: TdxDBGridDateColumn;
    NewOrderListGridBeszolgIdo: TdxDBGridDateColumn;
    NewOrderListGridBeszolgDb: TdxDBGridMaskColumn;
    NewOrderListGridBeszolgHossz: TdxDBGridMaskColumn;
    NewOrderListGridTomeg: TdxDBGridMaskColumn;
    NewOrderListGridGyartasInd: TdxDBGridDateColumn;
    NewOrderListGridBefejezoMuv: TdxDBGridDateColumn;
    NewOrderListGridAccListExist: TdxDBGridCheckColumn;
    NewOrderListGridAccListDate: TdxDBGridDateColumn;
    NewOrderListGridAccCreator: TdxDBGridMaskColumn;
    NewOrderListGridBelsoHuvely: TdxDBGridMaskColumn;
    NewOrderListGridHuvely: TdxDBGridMaskColumn;
    NewOrderListGridSpiralkup: TdxDBGridMaskColumn;
    NewOrderListGridEmelobilincs: TdxDBGridMaskColumn;
    NewOrderListGridBiztBilincs: TdxDBGridMaskColumn;
    NewOrderListGridTomitoGyuru1: TdxDBGridMaskColumn;
    NewOrderListGridTomitoGyuru2: TdxDBGridMaskColumn;
    NewOrderListGridFeneklap1: TdxDBGridMaskColumn;
    NewOrderListGridFeneklap2: TdxDBGridMaskColumn;
    NewOrderListGridNyomPrBilincs1: TdxDBGridMaskColumn;
    NewOrderListGridNyomPrBilincs2: TdxDBGridMaskColumn;
    NewOrderListGridVedoHuvely: TdxDBGridMaskColumn;
    NewOrderListGridOsztottHuvely: TdxDBGridMaskColumn;
    NewOrderListGridEgyebek: TdxDBGridMemoColumn;
    NewOrderListGridAtveteliKesz: TdxDBGridCheckColumn;
    NewOrderListGridAtveteliIdopont: TdxDBGridDateColumn;
    NewOrderListGridAtvetelitKeszitette: TdxDBGridMaskColumn;
    NewOrderListGridInspector: TdxDBGridMaskColumn;
    NewOrderListGridInspectorMegj: TdxDBGridMemoColumn;
    NewOrderListGridSapTypeOfCoupling2: TdxDBGridMaskColumn;
    NewOrderListGridSapTypeOfCoupling1: TdxDBGridMaskColumn;
    NewOrderListGridUpdatable: TdxDBGridCheckColumn;
    NewOrderListGridCounter: TdxDBGridColumn;
    Afrissthetsginvertlsa1: TMenuItem;
    Azsszesfrissthetsginvertlsa1: TMenuItem;
    NewOrderListGridH2S: TdxDBGridCheckColumn;
    ExcelExport: TMenuItem;
    ExcelSaveDialog: TSaveDialog;
    RecNumLabel: TLabel;
    procedure Panel1Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Oszlopokigaztsa1Click(Sender: TObject);
    procedure Azsszesgkibontsa1Click(Sender: TObject);
    procedure Azsszesgbecsuksa1Click(Sender: TObject);
    procedure Afrissthetsginvertlsa1Click(Sender: TObject);
    procedure Azsszesfrissthetsginvertlsa1Click(Sender: TObject);
    procedure ExcelExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ItemSelection(All: Boolean) ;
  end;

var
  NewOrderListForm: TNewOrderListForm;

implementation

uses OrderDmU, HoseSlaveU;

{$R *.DFM}

procedure TNewOrderListForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TNewOrderListForm.FormShow(Sender: TObject);
begin
  NewOrderListGrid.FullExpand ;
end;

procedure TNewOrderListForm.Oszlopokigaztsa1Click(Sender: TObject);
begin
  SetGridColWidth(NewOrderListGrid) ;
end;

procedure TNewOrderListForm.Azsszesgkibontsa1Click(Sender: TObject);
begin
  NewOrderListGrid.FullExpand ;
end;

procedure TNewOrderListForm.Azsszesgbecsuksa1Click(Sender: TObject);
begin
  NewOrderListGrid.FullCollapse ;
end;

procedure TNewOrderListForm.Afrissthetsginvertlsa1Click(Sender: TObject);
begin
  ItemSelection(False) ;
end;

procedure TNewOrderListForm.ItemSelection(All: Boolean) ;
var
  DataSet: TDataSet ;
  bmk: TBookmark ;
  RendelesSzam: string ;
begin
  DataSet := Nil ;
  bmk := Nil ;
  try
    try
      DataSet := NewOrderListGrid.DataSource.DataSet ;
      DataSet.DisableControls ;
      bmk := DataSet.GetBookmark ;
      RendelesSzam := Uppercase(Trim(DataSet.FieldByName('RendSz').AsString)) ;
      DataSet.First ;
      while not DataSet.Eof do begin
        DataSet.Edit ;
        if (not All) then begin
          if (Uppercase(Trim(DataSet.FieldByName('RendSz').AsString)) = RendelesSzam) then begin
            if DataSet.FieldByName('Updatable').AsBoolean then DataSet.FieldByName('Updatable').AsBoolean := False
            else DataSet.FieldByName('Updatable').AsBoolean := True ;
          end ;
        end
        else begin
          if DataSet.FieldByName('Updatable').AsBoolean then DataSet.FieldByName('Updatable').AsBoolean := False
          else DataSet.FieldByName('Updatable').AsBoolean := True ;
        end ;
        DataSet.Post ;
        DataSet.Next ;
      end ;
    finally
      DataSet.GotoBookmark(bmk) ;
      DataSet.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TNewOrderListForm.Azsszesfrissthetsginvertlsa1Click(
  Sender: TObject);
begin
  ItemSelection(True) ;
end;

procedure TNewOrderListForm.ExcelExportClick(Sender: TObject);
begin
  if ExcelSaveDialog.Execute then begin
    NewOrderListGrid.SaveToXLS(ExcelSaveDialog.FileName, True) ;
  end ;
end;

end.
