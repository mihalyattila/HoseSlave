unit BookmarkListFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxCntner, DBCtrls, MyProcs, Placemnt,
  Buttons, RxMemDs;

type
  TDataSheetBmkListForm = class(TForm)
    BmkGrid: TdxDBGrid;
    Panel1: TPanel;
    BmkGridRendsz: TdxDBGridMaskColumn;
    BmkGridTetelSrsz: TdxDBGridMaskColumn;
    DBNavigator1: TDBNavigator;
    FormPlacement1: TFormPlacement;
    SpeedButton1: TSpeedButton;
    BmkGridComment: TdxDBGridColumn;
    procedure BmkGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BmkGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSheetBmkListForm: TDataSheetBmkListForm;

implementation

uses HoseSlaveU, HoseSlaveDmU;

{$R *.DFM}

procedure TDataSheetBmkListForm.BmkGridDblClick(Sender: TObject);
var
  RendSz: string ;
  TetelSrsz: integer ;
begin
  try
    RendSz := BmkGridRendsz.Field.AsString ;
    TetelSrsz := BmkGridTetelSrsz.Field.AsInteger ;
    if not MainForm.LocateOrderItem(Rendsz, TetelSrsz) then ErrMsg('Nem találom a keresett tételt!') ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TDataSheetBmkListForm.FormShow(Sender: TObject);
begin
  BmkGrid.SetFocus ;
end;

procedure TDataSheetBmkListForm.BmkGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    BmkGridDblClick(Sender) ;
  end ;
end;

procedure TDataSheetBmkListForm.SpeedButton1Click(Sender: TObject);
var
  RxmemoryData: TRxmemoryData ;
begin
  try
    RxmemoryData := TRxmemoryData(BmkGrid.DataSource.DataSet) ;
    RxmemoryData.EmptyTable ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TDataSheetBmkListForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MainForm.DataSheetBmkFormVisible := False ;
end;

end.
