unit PackBmkListFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxCntner, DBCtrls, MyProcs, Placemnt,
  Buttons, RxMemDs;

type
  TPackBmkListForm = class(TForm)
    PackBmkGrid: TdxDBGrid;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    FormPlacement1: TFormPlacement;
    SpeedButton1: TSpeedButton;
    PackBmkGridCsomSz: TdxDBGridMaskColumn;
    PackBmkGridRevizio: TdxDBGridMaskColumn;
    PackBmkGridVerzio: TdxDBGridMaskColumn;
    PackBmkGridSrsz: TdxDBGridMaskColumn;
    procedure PackBmkGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PackBmkGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PackBmkListForm: TPackBmkListForm;

implementation

uses HoseSlaveU, HoseSlaveDmU;

{$R *.DFM}

procedure TPackBmkListForm.PackBmkGridDblClick(Sender: TObject);
var
  CsomSz, Rev, Ver, Srsz: integer ;
begin
  try
    CsomSz := PackBmkGridCsomSz.Field.AsInteger ;
    Rev := PackBmkGridRevizio.Field.AsInteger ;
    Ver := PackBmkGridVerzio.Field.AsInteger ;
    Srsz := PackBmkGridSrsz.Field.AsInteger ;
    if not MainForm.LocatePackItem(CsomSz, Rev, Ver, Srsz) then ErrMsg('Nem találom a keresett tételt!') ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TPackBmkListForm.FormShow(Sender: TObject);
begin
  PackBmkGrid.SetFocus ;
end;

procedure TPackBmkListForm.PackBmkGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    PackBmkGridDblClick(Sender) ;
  end ;
end;

procedure TPackBmkListForm.SpeedButton1Click(Sender: TObject);
var
  RxmemoryData: TRxmemoryData ;
begin
  try
    RxmemoryData := TRxmemoryData(PackBmkGrid.DataSource.DataSet) ;
    RxmemoryData.EmptyTable ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TPackBmkListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //MainForm.BmkFormVisible := False ;
end;

end.

