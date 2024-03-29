unit MatNumSearchFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, ExtCtrls, MyProcs, Placemnt;

type
  TMatNumSearchForm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    MatNumEdit: TEdit;
    BitBtn3: TBitBtn;
    MatNumGrid: TRxDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    FormStorage1: TFormStorage;
    procedure Panel2Resize(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MatNumGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatNumSearchForm: TMatNumSearchForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TMatNumSearchForm.Panel2Resize(Sender: TObject);
begin
  SetButtons(Panel2, False) ;
end;

procedure TMatNumSearchForm.BitBtn3Click(Sender: TObject);
begin
  try
    Dm.spMatNumSearch.Active := False ;
    Dm.spMatNumSearch.ParamByName('@Cikkszam').AsString := MatNumEdit.Text ;
    Dm.spMatNumSearch.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMatNumSearchForm.BitBtn1Click(Sender: TObject);
var
  Rendelesszam : string ;
  TetelSrsz : integer ;
begin
  try
    if Dm.spMatnumSearch.RecordCount > 0 then begin
      Rendelesszam := Dm.spMatNumSearchRendsz.AsString ;
      TetelSrsz := Dm.spMatNumSearchTetelSrsz.AsInteger ;
      if not Dm.HSOrderHeadList.Locate('Rendsz', Rendelesszam, [loCaseInsensitive]) then begin
        ErrMsg('Nem tal�lom a ' + Rendelesszam + ' rendel�ssz�m� elemet!') ;
        Exit ;
      end
      else begin
        if not Dm.RendelesTetel.Locate('TetelSrsz', TetelSrsz, [loCaseInsensitive]) then begin
          ErrMsg('Nem tal�lom a ' + IntToStr(TetelSrsz) + '. sorsz�m� elemet!') ;
          Exit ;
        end ;
      end ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMatNumSearchForm.MatNumGridDblClick(Sender: TObject);
begin
  BitBtn1Click(Sender) ;
end;

end.
