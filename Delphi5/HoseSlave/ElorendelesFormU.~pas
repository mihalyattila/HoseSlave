unit ElorendelesFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, MyProcs, DBCtrls,
  StdCtrls, Buttons, Mask, ToolEdit, ComCtrls, dxDBTLCl, dxGrClms;

type
  TElorendelesForm = class(TForm)
    FormStorage1: TFormStorage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ElorendelesGrid: TdxDBGrid;
    ElorendelesGridRendelesszam: TdxDBGridMaskColumn;
    ElorendelesGridRogzitette: TdxDBGridColumn;
    ElorendelesGridRogzIdopont: TdxDBGridColumn;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    CimzettLabel: TLabel;
    CegLabel: TLabel;
    CimzettEdit: TEdit;
    CegEdit: TEdit;
    Panel3: TPanel;
    DBNavigator2: TDBNavigator;
    ElorendelesAdatokGrid: TdxDBGrid;
    ElorendelesAdatokGridRajzszam: TdxDBGridMaskColumn;
    ElorendelesAdatokGridIdMin: TdxDBGridMaskColumn;
    ElorendelesAdatokGridIdMax: TdxDBGridMaskColumn;
    ElorendelesAdatokGridAr: TdxDBGridMaskColumn;
    ElorendelesAdatokGridCikkszamVeg: TdxDBGridMaskColumn;
    ElorendelesAdatokGridRogzitette: TdxDBGridMaskColumn;
    ElorendelesAdatokGridRogzIdopont: TdxDBGridDateColumn;
    ElorendelesAdatokGridElorendelesAdatId: TdxDBGridColumn;
    ElorendelesAdatokGridTipus: TdxDBGridPickColumn;
    ElorendelesAdatokGridFestes: TdxDBGridPickColumn;
    Panel4: TPanel;
    FaxBtn: TBitBtn;
    GridBtn: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure ElorendelesGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FaxBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridBtnClick(Sender: TObject);
    procedure Panel4Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ElorendelesForm: TElorendelesForm;

implementation

uses ToolsDmU, ElorendelesReportU, ElorendGridFormU, OrderDmU,
  ElorendelesGridFormU;

{$R *.DFM}

procedure TElorendelesForm.FormActivate(Sender: TObject);
begin
  try
    ToolsDm.tElorendelesTetelek.Active := True ;
    ToolsDm.tElorendelesAdatok.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TElorendelesForm.ElorendelesGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then begin
    ElorendelesGrid.DataSource.DataSet.Append ;
  end ;
end;

procedure TElorendelesForm.FaxBtnClick(Sender: TObject);
begin
  try
    try
      if ElorendelesReport = nil then ElorendelesReport := TElorendelesReport.Create(Application) ;
      ElorendelesReport.CimzettLabel.Caption := CimzettEdit.Text ;
      ElorendelesReport.CegLabel.Caption := CegEdit.Text ;
      ElorendelesReport.DatumLabel.Caption := DateToStr(Date) ;
      OrderDm.EbBbOhElorendeles.Active := True ;
      ElorendelesReport.Preview ;
    finally
      OrderDm.EbBbOhElorendeles.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TElorendelesForm.FormCreate(Sender: TObject);
begin
  ElorendelesGrid.ShowNewItemRow := False ;
end;


procedure TElorendelesForm.GridBtnClick(Sender: TObject);
begin
  try
    try
      if ElorendelesGridForm = nil then ElorendelesGridForm := TElorendelesGridForm.Create(Application) ;
      OrderDm.EbBbOhElorendeles.Active := True ;
      ElorendelesGridForm.ShowModal ;
    finally
      OrderDm.EbBbOhElorendeles.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TElorendelesForm.Panel4Resize(Sender: TObject);
begin
  SetButtons(Panel4, False) ;
end;

end.
