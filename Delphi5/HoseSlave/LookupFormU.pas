unit LookupFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, ExtCtrls, Db, Placemnt, MyProcs;

type
  TLookupForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBLookupListBox1: TDBLookupListBox;
    DataSource1: TDataSource;
    FormStorage1: TFormStorage;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LookupForm: TLookupForm;

implementation

uses RendelesDmU;

{$R *.DFM}

procedure TLookupForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
