unit SerialFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner, Placemnt, ComCtrls, ToolWin,
  StdCtrls, Buttons, ExtCtrls, MyProcs;

type
  TSerialForm = class(TForm)
    SerialsGrid: TdxDBGrid;
    SerialsGridMeo_Az: TdxDBGridMaskColumn;
    SerialsGridGY_SZ: TdxDBGridMaskColumn;
    SerialsGridRendsz: TdxDBGridMaskColumn;
    SerialsGridRendelesAz: TdxDBGridMaskColumn;
    SerialsGridTetelSrsz: TdxDBGridMaskColumn;
    FormPlacement1: TFormPlacement;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure ToolButton1Click(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SerialForm: TSerialForm;

implementation

uses OrderDmU, HoseSlaveU;

{$R *.DFM}

procedure TSerialForm.ToolButton1Click(Sender: TObject);
begin
  SerialsGrid.CopyAllToClipboard ;
end;

procedure TSerialForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
