unit OpenAnyagszListFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, ExtCtrls,
  Placemnt, MyProcs, StdCtrls, Buttons;

type
  TOpenAnyagszListForm = class(TForm)
    Panel1: TPanel;
    AnyagszListGrid: TdxDBGrid;
    AnyagszListGridId: TdxDBGridMaskColumn;
    AnyagszListGridRogzitette: TdxDBGridMaskColumn;
    AnyagszListGridRogzIdopont: TdxDBGridDateColumn;
    FormPlacement1: TFormPlacement;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpenAnyagszListForm: TOpenAnyagszListForm;

implementation

uses OrderDmU;

{$R *.DFM}

procedure TOpenAnyagszListForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
