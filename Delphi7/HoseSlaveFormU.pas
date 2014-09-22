unit HoseSlaveFormU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, MyProcs, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, ExtCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxDropDownEdit, ToolWin,
  ImgList, ActnList, XPMan;

type
  THoseSlaveForm = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    MfCkszTabSheet: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    MfCkszGrid: TcxGrid;
    MfCkszGridDBTableView1: TcxGridDBTableView;
    MfCkszGridDBTableView1ItemId: TcxGridDBColumn;
    MfCkszGridDBTableView1Jelzes: TcxGridDBColumn;
    MfCkszGridDBTableView1JelzesNev: TcxGridDBColumn;
    MfCkszGridDBTableView1PrDatum: TcxGridDBColumn;
    MfCkszGridDBTableView1MtKeszDatum: TcxGridDBColumn;
    MfCkszGridDBTableView1RegiCksz: TcxGridDBColumn;
    MfCkszGridDBTableView1SAPCksz: TcxGridDBColumn;
    MfCkszGridDBTableView1MtFelkeszDatum: TcxGridDBColumn;
    MfCkszGridDBTableView1Nev: TcxGridDBColumn;
    MfCkszGridDBTableView1Hossz: TcxGridDBColumn;
    MfCkszGridDBTableView1Felkesz5: TcxGridDBColumn;
    MfCkszGridDBTableView1Vulk5: TcxGridDBColumn;
    MfCkszGridDBTableView1Tomloveg5: TcxGridDBColumn;
    MfCkszGridDBTableView1Felkesz6: TcxGridDBColumn;
    MfCkszGridDBTableView1Vulk6: TcxGridDBColumn;
    MfCkszGridDBTableView1Tomloveg6: TcxGridDBColumn;
    MfCkszGridDBTableView1Felkesz7: TcxGridDBColumn;
    MfCkszGridDBTableView1Vulk7: TcxGridDBColumn;
    MfCkszGridDBTableView1Tomloveg7: TcxGridDBColumn;
    MfCkszGridDBTableView1Felkesz9: TcxGridDBColumn;
    MfCkszGridDBTableView1Vulk9: TcxGridDBColumn;
    MfCkszGridDBTableView1Tomloveg9: TcxGridDBColumn;
    MfCkszGridDBTableView1MuszJell: TcxGridDBColumn;
    MfCkszGridDBTableView1Konstr: TcxGridDBColumn;
    MfCkszGridDBTableView1Ksz: TcxGridDBColumn;
    MfCkszGridDBTableView1Asz: TcxGridDBColumn;
    MfCkszGridDBTableView1MtfKesz: TcxGridDBColumn;
    MfCkszGridDBTableView1Megjegyzes: TcxGridDBColumn;
    MfCkszGridDBTableView1MtfFelkesz: TcxGridDBColumn;
    MfCkszGridDBTableView1Keszitette: TcxGridDBColumn;
    MfCkszGridDBTableView1KeszitesDatuma: TcxGridDBColumn;
    MfCkszGridDBTableView1Modositotta: TcxGridDBColumn;
    MfCkszGridDBTableView1ModositasDatuma: TcxGridDBColumn;
    MfCkszGridDBTableView1JelzesKod: TcxGridDBColumn;
    MfCkszGridDBTableView1Norma: TcxGridDBColumn;
    MfCkszGridDBTableView1SAP: TcxGridDBColumn;
    MfCkszGridDBTableView1TBP: TcxGridDBColumn;
    MfCkszGridDBTableView1Graf: TcxGridDBColumn;
    MfCkszGridDBTableView1Torzslap: TcxGridDBColumn;
    MfCkszGridDBTableView1Darabjegyzek: TcxGridDBColumn;
    MfCkszGridDBTableView1Szin: TcxGridDBColumn;
    MfCkszGridLevel1: TcxGridLevel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ImageList1: TImageList;
    XPManifest1: TXPManifest;
    ActionList1: TActionList;
    MfCkszSetGridColWidth: TAction;
    ToolButton2: TToolButton;
    MfCkszRefreshData: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    MfCkszSaveState: TAction;
    procedure BitBtn1Click(Sender: TObject);
    procedure MfCkszGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure MfCkszSetGridColWidthExecute(Sender: TObject);
    procedure MfCkszRefreshDataExecute(Sender: TObject);
    procedure MfCkszTabSheetShow(Sender: TObject);
    procedure MfCkszSaveStateExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure InitDataSources ;
  end;

var
  HoseSlaveForm: THoseSlaveForm;

implementation

uses DmU;

{$R *.dfm}

procedure THoseSlaveForm.BitBtn1Click(Sender: TObject);
begin
  try
    InitDataSources ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure THoseSlaveForm.MfCkszGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  FieldIndex, Szin: integer ;
begin
  FieldIndex := Sender.FindItemByName('MfCkszGridDBTableView1Szin').Index ;
  Szin := AViewInfo.GridRecord.Values[FieldIndex] ;
  if not VarIsNull(Szin) then ACanvas.Brush.Color := Szin ;
  if AViewInfo.Selected then begin
    ACanvas.Font.Style := [fsBold] ;
    ACanvas.Font.Color := clBlack ;
  end ;
end;

procedure THoseSlaveForm.InitDataSources ;
begin
end ;

procedure THoseSlaveForm.MfCkszSetGridColWidthExecute(Sender: TObject);
begin
  MfCkszGridDBTableView1.ApplyBestFit(nil) ;
end;

procedure THoseSlaveForm.MfCkszRefreshDataExecute(Sender: TObject);
var
  bmk: TBookmark ;
begin
  try
    try
      bmk := Dm.qMfCikkszamok.GetBookmark ;
      Dm.qMfCikkszamok.DisableControls ;
      Dm.qMfCikkszamok.Active := False ;
      Dm.qMfCikkszamok.Active := True ;
    finally
      if (bmk <> nil) and Dm.qMfCikkszamok.BookmarkValid(bmk) then Dm.qMfCikkszamok.GotoBookmark(bmk) ;
      Dm.qMfCikkszamok.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure THoseSlaveForm.MfCkszTabSheetShow(Sender: TObject);
begin
  try
    Dm.qJelzesek.Active := True ;
    Dm.qMfCikkszamok.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure THoseSlaveForm.MfCkszSaveStateExecute(Sender: TObject);
begin
  ErrMsg('') ;
end;

end.