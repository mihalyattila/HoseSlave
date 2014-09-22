unit HistoryFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls,
  dxDBTLCl, dxGrClms;

type
  THistoryForm = class(TForm)
    Panel1: TPanel;
    HistoryGrid: TdxDBGrid;
    CloseBtn: TBitBtn;
    HistoryGridProgCode: TdxDBGridMaskColumn;
    HistoryGridVersion: TdxDBGridMaskColumn;
    HistoryGridHistory: TdxDBGridMaskColumn;
    HistoryGridBevezetesNapja: TdxDBGridDateColumn;
    HistoryGridRogzitette: TdxDBGridMaskColumn;
    HistoryGridRogzIdopont: TdxDBGridDateColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HistoryForm: THistoryForm;

implementation

uses HoseSlaveDmU, ToolsDmU;

{$R *.DFM}

procedure THistoryForm.FormShow(Sender: TObject);
begin
  CloseBtn.SetFocus ;
end;

end.
