unit AtveteliOpenFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons, ExtCtrls,
  dxDBTLCl, dxGrClms, Db, RxMemDS, MyProcs, Placemnt, ShellAPI;

type
  TAtveteliOpenForm = class(TForm)
    Panel1: TPanel;
    AtveteliOpenGrid: TdxDBGrid;
    FormPlacement1: TFormPlacement;
    AtveteliOpenGridLeafName: TdxDBGridHyperLinkColumn;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure AtveteliOpenGridLeafNameStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AtveteliOpenForm: TAtveteliOpenForm;

implementation

uses SPDmU, HoseSlaveU;

{$R *.DFM}

procedure TAtveteliOpenForm.FormShow(Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to AtveteliOpenGrid.ColumnCount - 1 do AtveteliOpenGrid.ApplyBestFit(AtveteliOpenGrid.Columns[i]) ;
end;

procedure TAtveteliOpenForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TAtveteliOpenForm.AtveteliOpenGridLeafNameStartClick(
  Sender: TObject);
var
  DocName: string ;
begin
  DocName := SPDm.qAtveteliListLeafName.AsString ;
  MainForm.OpenAtveteli(DocName) ;
end;

end.
