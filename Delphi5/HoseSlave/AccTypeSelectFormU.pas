unit AccTypeSelectFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  TAccTypeSelectForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    AccType: TTable;
    AccTypeaccessoryTypeCounter: TIntegerField;
    AccTypedescriptionH: TStringField;
    AccTypeDs: TDataSource;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccTypeSelectForm: TAccTypeSelectForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TAccTypeSelectForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
