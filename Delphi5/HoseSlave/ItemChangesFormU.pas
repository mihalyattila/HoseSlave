unit ItemChangesFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Placemnt,
  StdCtrls, Buttons, ExtCtrls, MyProcs;

type
  TItemChangesForm = class(TForm)
    ItemChangesGrid: TdxDBGrid;
    FormPlacement1: TFormPlacement;
    ItemChangesGridId: TdxDBGridColumn;
    ItemChangesGridModifyDate: TdxDBGridColumn;
    ItemChangesGridModifierName: TdxDBGridColumn;
    ItemChangesGridNewValue: TdxDBGridColumn;
    ItemChangesGridOldValue: TdxDBGridColumn;
    ItemChangesGridFieldName: TdxDBGridColumn;
    ItemChangesGridSorszam: TdxDBGridColumn;
    ItemChangesGridTetelSorszam: TdxDBGridColumn;
    ItemChangesGridRendelesszam: TdxDBGridColumn;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ItemChangesForm: TItemChangesForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TItemChangesForm.Panel1Resize(Sender: TObject);
begin
  MyProcs.SetButtons(Panel1, False) ;
end;

end.
