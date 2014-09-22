unit CouplingQryFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, Placemnt, ExtCtrls, DbTables, Db, Menus, ComCtrls,
  ToolWin;

type
  TCouplingQryForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    CouplingQryGrid: TdxDBGrid;
    CouplingQryGridfireResistant: TdxDBGridCheckColumn;
    CouplingQryGridwelded: TdxDBGridCheckColumn;
    CouplingQryGridMenu: TPopupMenu;
    Oszlopokigaztsa1: TMenuItem;
    CouplingQryGridCOLUMN1: TdxDBGridColumn;
    CouplingQryGridcouplingCounter: TdxDBGridColumn;
    CouplingQryGridcouplingANb: TdxDBGridColumn;
    CouplingQryGridcouplingDNb: TdxDBGridColumn;
    CouplingQryGridcouplingFileH: TdxDBGridColumn;
    CouplingQryGridcouplingFileE: TdxDBGridColumn;
    CouplingQryGridcouplingType: TdxDBGridColumn;
    CouplingQryGridendFittingType: TdxDBGridColumn;
    CouplingQryGridendFittingName: TdxDBGridColumn;
    CouplingQryGridendFittingDesc0: TdxDBGridColumn;
    CouplingQryGridendFittingDesc1: TdxDBGridColumn;
    CouplingQryGridendFittingDesc2: TdxDBGridColumn;
    CouplingQryGriddescription: TdxDBGridColumn;
    CouplingQryGriddescriptionH: TdxDBGridColumn;
    CouplingQryGriddescriptionE: TdxDBGridColumn;
    CouplingQryGriddate: TdxDBGridColumn;
    CouplingQryGridweight: TdxDBGridColumn;
    CouplingQryGridpriceSAP: TdxDBGridColumn;
    CouplingQryGridprice: TdxDBGridColumn;
    CouplingQryGriddatePrice: TdxDBGridColumn;
    CouplingQryGridsteel: TdxDBGridColumn;
    CouplingQryGridSteelDescription: TdxDBGridColumn;
    CouplingQryGridbody: TdxDBGridColumn;
    CouplingQryGridIDrated: TdxDBGridColumn;
    CouplingQryGridIDratedU: TdxDBGridColumn;
    CouplingQryGridIdUnit: TdxDBGridColumn;
    CouplingQryGriddp: TdxDBGridColumn;
    CouplingQryGridtp: TdxDBGridColumn;
    CouplingQryGridpressureU: TdxDBGridColumn;
    CouplingQryGridPressureUnit: TdxDBGridColumn;
    CouplingQryGride1ID: TdxDBGridColumn;
    CouplingQryGride1OD: TdxDBGridColumn;
    CouplingQryGride1L: TdxDBGridColumn;
    CouplingQryGridewnID: TdxDBGridColumn;
    CouplingQryGridewnOD: TdxDBGridColumn;
    CouplingQryGride2ID: TdxDBGridColumn;
    CouplingQryGride2OD: TdxDBGridColumn;
    CouplingQryGride2L: TdxDBGridColumn;
    CouplingQryGridLt: TdxDBGridColumn;
    CouplingQryGridd0: TdxDBGridColumn;
    CouplingQryGridkd1: TdxDBGridColumn;
    CouplingQryGridkd2: TdxDBGridColumn;
    CouplingQryGridkd3: TdxDBGridColumn;
    CouplingQryGridkd4: TdxDBGridColumn;
    CouplingQryGridkd5: TdxDBGridColumn;
    CouplingQryGridND1: TdxDBGridColumn;
    CouplingQryGridND2: TdxDBGridColumn;
    CouplingQryGridND3: TdxDBGridColumn;
    CouplingQryGridND4: TdxDBGridColumn;
    CouplingQryGridLB: TdxDBGridColumn;
    CouplingQryGridLH: TdxDBGridColumn;
    CouplingQryGridLF: TdxDBGridColumn;
    CouplingQryGridL1: TdxDBGridColumn;
    CouplingQryGridL2: TdxDBGridColumn;
    CouplingQryGridL3: TdxDBGridColumn;
    CouplingQryGridL4: TdxDBGridColumn;
    CouplingQryGridL5: TdxDBGridColumn;
    CouplingQryGridL6: TdxDBGridColumn;
    CouplingQryGridL7: TdxDBGridColumn;
    CouplingQryGridL8: TdxDBGridColumn;
    CouplingQryGridL9: TdxDBGridColumn;
    CouplingQryGridL10: TdxDBGridColumn;
    CouplingQryGridL11: TdxDBGridColumn;
    CouplingQryGridL12: TdxDBGridColumn;
    CouplingQryGridL13: TdxDBGridColumn;
    CouplingQryGridL14: TdxDBGridColumn;
    CouplingQryGridL15: TdxDBGridColumn;
    CouplingQryGridL16: TdxDBGridColumn;
    CouplingQryGridM1: TdxDBGridColumn;
    CouplingQryGridalfa1: TdxDBGridColumn;
    CouplingQryGridalfa2: TdxDBGridColumn;
    CouplingQryGridalfa3: TdxDBGridColumn;
    CouplingQryGridstatus: TdxDBGridColumn;
    CouplingQryGridnote: TdxDBGridColumn;
    CouplingQryGridHMuser: TdxDBGridColumn;
    CouplingQryGridEndFittingShortNameH: TdxDBGridColumn;
    CouplingQryGridEndFittingNameH: TdxDBGridColumn;
    CouplingQryGridEndFittingNameE: TdxDBGridColumn;
    CouplingQryGridEndFittingShortNameE: TdxDBGridColumn;
    SpeedButton1: TSpeedButton;
    procedure Panel1Resize(Sender: TObject);
    procedure Oszlopokigaztsa1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CouplingQryForm: TCouplingQryForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TCouplingQryForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TCouplingQryForm.Oszlopokigaztsa1Click(Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to CouplingQryGrid.ColumnCount - 1 do CouplingQryGrid.ApplyBestFit(CouplingQryGrid.Columns[i]) ;
end;

procedure TCouplingQryForm.SpeedButton1Click(Sender: TObject);
var
  Query: TQuery ;
  bmk: TBookmark ;
begin
  Query := Nil ;
  try
    try
      Query := TQuery(CouplingQryGrid.DataSource.DataSet) ;
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

procedure TCouplingQryForm.FormShow(Sender: TObject);
begin
  CouplingQryGrid.SetFocus ;
  CouplingQryGrid.FocusedField := CouplingQryGrid.DataSource.DataSet.FieldByName('couplingDNb') ;
end;

end.
