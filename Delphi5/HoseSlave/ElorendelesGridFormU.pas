unit ElorendelesGridFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  StdCtrls, Buttons, Menus, Placemnt, MyProcs, ClipBrd ;

type
  TElorendelesGridForm = class(TForm)
    ElorendelesCopyGrid: TdxDBGrid;
    Panel1: TPanel;
    FormPlacement1: TFormPlacement;
    ElorendelesGridPopupMenu: TPopupMenu;
    Adatokmsolsaavglapra1: TMenuItem;
    BitBtn1: TBitBtn;
    ElorendelesCopyGridRendelesszam: TdxDBGridMaskColumn;
    ElorendelesCopyGriddb: TdxDBGridMaskColumn;
    ElorendelesCopyGridMegnevezes: TdxDBGridMaskColumn;
    ElorendelesCopyGridRajzszam: TdxDBGridMaskColumn;
    ElorendelesCopyGridMeret: TdxDBGridMaskColumn;
    ElorendelesCopyGridFestes: TdxDBGridMemoColumn;
    ElorendelesCopyGridEgyediAzonosito: TdxDBGridMemoColumn;
    ElorendelesCopyGridAr: TdxDBGridMaskColumn;
    ElorendelesCopyGridCikkszamVeg: TdxDBGridMaskColumn;
    Oszlopokigaztsa1: TMenuItem;
    Mindenoszlopmegjelentse1: TMenuItem;
    procedure Adatokmsolsaavglapra1Click(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure Oszlopokigaztsa1Click(Sender: TObject);
    procedure Mindenoszlopmegjelentse1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ElorendelesGridForm: TElorendelesGridForm;

implementation

uses OrderDmU, HoseSlaveU;

{$R *.DFM}

procedure TElorendelesGridForm.Adatokmsolsaavglapra1Click(Sender: TObject);
var
  s: string ;
  p: integer ;
begin
  try
    ElorendelesCopyGrid.CopyAllToClipboard ;
    s := ClipBrd.Clipboard.AsText ;
    p := Pos(#10#13, s) ;
    if p > 0 then Delete(s, 1, p + 2) ;
    ClipBrd.Clipboard.AsText := s ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TElorendelesGridForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TElorendelesGridForm.Oszlopokigaztsa1Click(Sender: TObject);
begin
  SetGridColWidth(ElorendelesCopyGrid) ;
end;

procedure TElorendelesGridForm.Mindenoszlopmegjelentse1Click(
  Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to ElorendelesCopyGrid.ColumnCount - 1 do ElorendelesCopyGrid.Columns[i].Visible := True ;
end ;

end.
