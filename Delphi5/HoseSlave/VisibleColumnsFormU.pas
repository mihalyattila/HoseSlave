unit VisibleColumnsFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, Db, dxDbGrid, Buttons, ExtCtrls;

type
  TVisibleColumnsForm = class(TForm)
    VisibleColumnsList: TCheckListBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    Grid: TDxDBGrid ;
    { Public declarations }
  end;

var
  VisibleColumnsForm: TVisibleColumnsForm;

implementation

{$R *.DFM}

procedure TVisibleColumnsForm.FormShow(Sender: TObject);
var
  i: integer ;
begin
  VisibleColumnsForm.VisibleColumnsList.Items.Clear ;
  for i := 0 to Grid.ColumnCount - 1 do begin
    VisibleColumnsList.Items.Add(Grid.Columns[i].Caption) ;
    VisibleColumnsList.Checked[i] := Grid.Columns[i].Visible ;
  end ;
end;

procedure TVisibleColumnsForm.BitBtn1Click(Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to VisibleColumnsList.Items.Count - 1 do begin
    if VisibleColumnsList.Checked[i] then Grid.Columns[i].Visible := True else Grid.Columns[i].Visible := False ;
  end ;
end;

end.
