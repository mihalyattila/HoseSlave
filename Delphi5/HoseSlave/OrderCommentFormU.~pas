unit OrderCommentFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Buttons, MyProcs, ComCtrls, Placemnt,
  dxInspct, dxInspRw, dxDBInRw, dxCntner, dxDBInsp, dxEditor, dxExEdtr,
  dxEdLib, dxDBELib, Menus, Mask;

type
  TOrderCommentForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    FormPlacement1: TFormPlacement;
    Panel2: TPanel;
    DBRichEdit1: TDBRichEdit;
    Panel3: TPanel;
    DBRichEdit2: TDBRichEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    PopupMenu1: TPopupMenu;
    Panel6: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RevErrLabel: TLabel;
    procedure Panel1Resize(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Revizio: integer ;
  end;

var
  OrderCommentForm: TOrderCommentForm;

implementation

uses OrderDmU;

{$R *.DFM}

procedure TOrderCommentForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
  Panel2.Width := Panel1.Width div 2 ;
  DBRichEdit1.Refresh ;
  DBRichEdit2.Refresh ;
end;

procedure TOrderCommentForm.DBEdit1Change(Sender: TObject);
var
  rev: integer ;
begin
  if OrderCommentForm.Visible then begin
    rev := DBEdit1.Field.AsInteger ;
    if rev <> Revizio then RevErrLabel.Visible := True else RevErrLabel.Visible := False ;
  end ;
end;

procedure TOrderCommentForm.FormShow(Sender: TObject);
var
  rev: integer ;
begin
  rev := DBEdit1.Field.AsInteger ;
  if rev <> Revizio then RevErrLabel.Visible := True else RevErrLabel.Visible := False ;
end;

end.
