unit RevSelectFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids, DBGrids, Placemnt, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner;

type
  TRevSelectForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1PackNum: TdxDBGridMaskColumn;
    dxDBGrid1PackRevision: TdxDBGridMaskColumn;
    dxDBGrid1PackVersion: TdxDBGridMaskColumn;
    dxDBGrid1Ident1: TdxDBGridMaskColumn;
    dxDBGrid1Ident2: TdxDBGridMaskColumn;
    dxDBGrid1Name: TdxDBGridMaskColumn;
    dxDBGrid1OfferPerson: TdxDBGridMaskColumn;
    dxDBGrid1Note: TdxDBGridMaskColumn;
    dxDBGrid1Status: TdxDBGridMaskColumn;
    dxDBGrid1CreatorName: TdxDBGridMaskColumn;
    dxDBGrid1CreateDate: TdxDBGridDateColumn;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RevSelectForm: TRevSelectForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TRevSelectForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
