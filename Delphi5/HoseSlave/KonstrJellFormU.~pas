unit KonstrJellFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, RXDBCtrl, ExtCtrls, MyProcs, StdCtrls,
  Buttons, Placemnt, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  dxGrClEx, Mask, DBCtrls, RxQuery, Db;

type
  TKonstrJellForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    KonstrJellQryGrid: TdxDBGrid;
    KonstrJellQryGridCOLUMN1: TdxDBGridMaskColumn;
    KonstrJellQryGridbodyANb: TdxDBGridMaskColumn;
    KonstrJellQryGridbodyDNb: TdxDBGridMaskColumn;
    KonstrJellQryGriddescriptionH: TdxDBGridMaskColumn;
    KonstrJellQryGridcharacteristics: TdxDBGridMaskColumn;
    KonstrJellQryGridla: TdxDBGridCheckColumn;
    KonstrJellQryGridkg: TdxDBGridCheckColumn;
    KonstrJellQryGridbg: TdxDBGridCheckColumn;
    KonstrJellQryGridhe: TdxDBGridCheckColumn;
    KonstrJellQryGridpa: TdxDBGridCheckColumn;
    KonstrJellQryGridfu: TdxDBGridCheckColumn;
    KonstrJellQryGridga: TdxDBGridCheckColumn;
    KonstrJellQryGridus: TdxDBGridCheckColumn;
    KonstrJellQryGriddc: TdxDBGridCheckColumn;
    KonstrJellQryGridnh: TdxDBGridCheckColumn;
    KonstrJellQryGridwp: TdxDBGridMaskColumn;
    KonstrJellQryGridtp: TdxDBGridMaskColumn;
    KonstrJellQryGriddp: TdxDBGridMaskColumn;
    KonstrJellQryGridIDrated: TdxDBGridMaskColumn;
    KonstrJellQryGridOD: TdxDBGridMaskColumn;
    KonstrJellQryGridweight: TdxDBGridMaskColumn;
    KonstrJellQryGridMBRcalc: TdxDBGridMaskColumn;
    KonstrJellQryGridMBRstatic: TdxDBGridMaskColumn;
    KonstrJellQryGridMBRdynamic: TdxDBGridMaskColumn;
    KonstrJellQryGridMBRstorage: TdxDBGridMaskColumn;
    KonstrJellQryGridpreCureTemperature1: TdxDBGridMaskColumn;
    KonstrJellQryGridpreCureTime1: TdxDBGridMaskColumn;
    KonstrJellQryGridpreCureTemperature2: TdxDBGridMaskColumn;
    KonstrJellQryGridpreCureTime2: TdxDBGridMaskColumn;
    KonstrJellQryGridpreCureTemperature3: TdxDBGridMaskColumn;
    KonstrJellQryGridpreCureTime3: TdxDBGridMaskColumn;
    KonstrJellQryGridcureTemperature1: TdxDBGridMaskColumn;
    KonstrJellQryGridcureTime1: TdxDBGridMaskColumn;
    KonstrJellQryGridcureTemperature2: TdxDBGridMaskColumn;
    KonstrJellQryGridcureTime2: TdxDBGridMaskColumn;
    KonstrJellQryGridcureTemperature3: TdxDBGridMaskColumn;
    KonstrJellQryGridcureTime3: TdxDBGridMaskColumn;
    KonstrJellQryGridstatus: TdxDBGridMaskColumn;
    KonstrJellQryGridtemperatureMin: TdxDBGridMaskColumn;
    KonstrJellQryGridtemperatureMax: TdxDBGridMaskColumn;
    KonstrJellQryGridnote: TdxDBGridMaskColumn;
    KonstrJellQryGridlinerResistance: TdxDBGridMaskColumn;
    KonstrJellQryGridOlaj: TdxDBGridCheckColumn;
    KonstrJellQryGridGazEdes: TdxDBGridCheckColumn;
    KonstrJellQryGridGazSav: TdxDBGridCheckColumn;
    KonstrJellQryGridViz: TdxDBGridCheckColumn;
    KonstrJellQryGridFoszfat: TdxDBGridCheckColumn;
    KonstrJellQryGridsafetyFactor: TdxDBGridMaskColumn;
    SpeedButton1: TSpeedButton;
    procedure Panel1Resize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KonstrJellForm: TKonstrJellForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TKonstrJellForm.Panel1Resize(Sender: TObject);
begin
  MyProcs.SetButtons(Panel1, False) ;
end;

procedure TKonstrJellForm.SpeedButton1Click(Sender: TObject);
var
  Query: TRxQuery ;
  bmk: TBookmark ;
begin
  Query := Nil ;
  try
    try
      Query := TRxQuery(KonstrJellQryGrid.DataSource.DataSet) ;
      bmk := Query.GetBookmark ;
      Query.DisableControls ;
      Query.Active := False ;
      Query.Active := True ;
      if Query.BookmarkValid(bmk) then Query.GotoBookmark(bmk) ;
    finally
      Query.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TKonstrJellForm.FormShow(Sender: TObject);
begin
  KonstrJellQryGrid.SetFocus ;
  KonstrJellQryGrid.FocusedField := KonstrJellQryGrid.DataSource.DataSet.FieldByName('bodyDNb') ;
end;

end.
