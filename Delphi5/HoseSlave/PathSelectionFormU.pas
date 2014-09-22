unit PathSelectionFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls, MyProcs, Placemnt;

type
  TPathSelectionForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    FilenameEdit1: TFilenameEdit;
    FormPlacement1: TFormPlacement;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormResize(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PathSelectionForm: TPathSelectionForm;

implementation

{$R *.DFM}

procedure TPathSelectionForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  fn: string ;
begin
  if ModalResult = mrOk then begin
    fn := ExpandUNCFileName(FileNameEdit1.Text) ;
    if (Copy(fn, 1, 2) <> '\\') then begin
    ErrMsg('Csak hálózati útvonal adható meg!') ;
    CanClose := False ;
    end
    else CanClose := True ;
  end
  else CanClose := True ;
end;

procedure TPathSelectionForm.FormResize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TPathSelectionForm.Panel2Resize(Sender: TObject);
begin
  FilenameEdit1.Width := Panel2.Width - 16 ;
end;

end.
