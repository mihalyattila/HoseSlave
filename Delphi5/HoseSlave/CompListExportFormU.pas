unit CompListExportFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, MyProcs, Buttons, Placemnt, Menus;

type
  TCompListExportForm = class(TForm)
    Panel1: TPanel;
    CompListEdit: TRichEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    PopupMenu1: TPopupMenu;
    Msolsavglapra1: TMenuItem;
    procedure Panel1Resize(Sender: TObject);
    procedure Msolsavglapra1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CompListExportForm: TCompListExportForm;

implementation

{$R *.DFM}

procedure TCompListExportForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TCompListExportForm.Msolsavglapra1Click(Sender: TObject);
begin
  try
    if CompListEdit.SelLength = 0 then CompListEdit.SelectAll ; 
    CompListEdit.CopyToClipboard ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

end.
