unit NemKiadottFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons, Placemnt, MyProcs,
  ExtCtrls;

type
  TNemKiadottForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    NemKiadottGrid: TdxDBGrid;
    NemKiadottGridRendsz: TdxDBGridMaskColumn;
    NemKiadottGridRendelesAz: TdxDBGridMaskColumn;
    NemKiadottGridTetelSrsz: TdxDBGridMaskColumn;
    NemKiadottGridMinId: TdxDBGridMaskColumn;
    NemKiadottGridTipusnev: TdxDBGridMaskColumn;
    NemKiadottGridMegnevezes: TdxDBGridMaskColumn;
    NemKiadottGridRajzszam: TdxDBGridMaskColumn;
    NemKiadottGridCikkszam: TdxDBGridMaskColumn;
    NemKiadottGridDarabszam: TdxDBGridMaskColumn;
    NemKiadottGridKiadottDarab: TdxDBGridMaskColumn;
    NemKiadottGridKiadando: TdxDBGridMaskColumn;
    FormPlacement1: TFormPlacement;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NemKiadottForm: TNemKiadottForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TNemKiadottForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
