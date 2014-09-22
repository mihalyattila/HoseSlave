unit DrawSearchFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, MyProcs, ShellAPI, Placemnt, ToolEdit,
  RxLookup, DBCtrls ;

type
  TDrawSearchForm = class(TForm)
    PathLabel: TLabel;
    FormStorage1: TFormStorage;
    SearchLookupEdit: TRxLookupEdit;
    DBText1: TDBText;
    Label1: TLabel;
    procedure SearchLookupEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DrawSearchForm: TDrawSearchForm;

implementation

uses ToolsDmU, HoseSlaveU;

{$R *.DFM}

procedure TDrawSearchForm.SearchLookupEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  fn, Dir, Path: string ;
begin
  if Key = VK_Return then begin
    fn := ToolsDm.qDwgFilesFileName.AsString ;
    dir := ToolsDm.qDwgFilesPath.AsString + '\' ;
    Path := dir + '\' + fn ;
    MainForm.OpenDraw(Path) ;
  end ;
end;

end.
