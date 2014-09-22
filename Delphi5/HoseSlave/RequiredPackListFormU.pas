unit RequiredPackListFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls,
  Buttons, Placemnt, dbtables, MyProcs, db;

type
  TRequiredPackListForm = class(TForm)
    Panel1: TPanel;
    RequiredPackListGrid: TdxDBGrid;
    RequiredPackListGridID_Num: TdxDBGridMaskColumn;
    RequiredPackListGridRendelesAz: TdxDBGridMaskColumn;
    RequiredPackListGridRendSz: TdxDBGridMaskColumn;
    RequiredPackListGridTetelSrsz: TdxDBGridMaskColumn;
    RequiredPackListGridTModHatarido: TdxDBGridDateColumn;
    FormPlacement1: TFormPlacement;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RequiredPackListGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RequiredPackListForm: TRequiredPackListForm;

implementation

uses OrderDmU;

{$R *.DFM}

procedure TRequiredPackListForm.SpeedButton1Click(Sender: TObject);
var
  Query: TQuery ;
  bmk: TBookmark ;
begin
  bmk := Nil ;
  Query := Nil ;
  try
    try
      Query := TQuery(RequiredPackListGrid.DataSource.DataSet) ;
      bmk := Query.GetBookmark ;
      Query.DisableControls ;
      Query.Active := False ;
      Query.Active := True ;
    finally
      if (bmk <> Nil) and (Query.BookmarkValid(bmk)) then begin
        Query.GotoBookmark(bmk) ;
      end ;
      Query.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TRequiredPackListForm.RequiredPackListGridDblClick(
  Sender: TObject);
var
  RendelesAz, TetelSrsz: integer ;
begin
  try
    RendelesAz := RequiredPackListGrid.DataSource.DataSet.FieldByName('RendelesAz').AsInteger ;
    TetelSrsz := RequiredPackListGrid.DataSource.DataSet.FieldByName('TetelSrsz').AsInteger ;
    if OrderDm.tRendTetel.State in [dsInsert, dsEdit] then begin
      ErrMsg('Elõbb véglegesíteni kell a tétel változásait!') ;
      Exit ;
    end ;
    if OrderDm.tRendFej.State in [dsInsert, dsEdit] then begin
      ErrMsg('Elõbb véglegesíteni kell a rendelés változásait!') ;
      Exit ;
    end ;
    OrderDm.tRendFej.Locate('RendelesAz', RendelesAz, [loCaseInsensitive]) ;
    OrderDm.tRendTetel.Locate('TetelSrsz', TetelSrsz, [loCaseInsensitive]) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

end.
