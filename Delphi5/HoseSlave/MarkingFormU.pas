unit MarkingFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, DBCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls,
  dxDBTLCl, dxGrClms, Placemnt, db, ShellApi, ComCtrls;

const
  OnCloseMsg = 'El nem mentett változások vannak!' + #13 + 'Ennek ellenére kilép?' ;

type
  TMarkingForm = class(TForm)
    Panel3: TPanel;
    FormStorage1: TFormStorage;
    OpenDialog1: TOpenDialog;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    MarkingGrid: TdxDBGrid;
    MarkingGridId: TdxDBGridMaskColumn;
    MarkingGridFocsoportNev: TdxDBGridMaskColumn;
    MarkingGridCsoportNev: TdxDBGridMaskColumn;
    MarkingGridAlcsoportNev: TdxDBGridMaskColumn;
    MarkingGridMegnevezes: TdxDBGridMaskColumn;
    MarkingGridMegjegyzes: TdxDBGridMaskColumn;
    MarkingGridRajzszam: TdxDBGridMaskColumn;
    MarkingGridUtvonal: TdxDBGridHyperLinkColumn;
    MarkingGridErvenyes: TdxDBGridCheckColumn;
    procedure Panel3Resize(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MarkingGridUtvonalStartClick(Sender: TObject);
    procedure MarkingGridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    MarkingId: integer ;
  end;

var
  MarkingForm: TMarkingForm;

implementation

uses ToolsDmU, HoseSlaveDmU, HoseSlaveU, OrderDmU;

{$R *.DFM}

procedure TMarkingForm.Panel3Resize(Sender: TObject);
begin
  SetButtons(Panel3, False) ;
end;

procedure TMarkingForm.OKBtnClick(Sender: TObject);
begin
  MarkingId := OrderDm.spJoinedMarkingListId.AsInteger ;
end;

procedure TMarkingForm.CancelBtnClick(Sender: TObject);
begin
  MarkingId := -1 ;
end;

procedure TMarkingForm.MarkingGridUtvonalStartClick(Sender: TObject);
var
  FullText, fn, dn, ext: string ;
  zPathName, zParam: array[0..250] of Char ;
begin
  try
    FullText := MarkingGridUtvonal.Field.AsString ;
    fn := ExtractFileName(FullText) ;
    dn := ExtractFileDir(FullText) + '\' ;
    ext := ExtractFileExt(FullText) ;
    if (dn = '') and (ext = '.dwg') then begin
      if not MainForm.OpenDraw(MainForm.FindDraw(fn)) then ErrMsg('Nem található a rajz!') ;
    end
    else begin
      if dn = '' then ErrMsg('Nincs megadott útvonal!')
      else begin
        if (ext = '.dft') //or (ext = '.par') or (ext = '.asm')
        then begin
          shellexecute(Application.Handle,'open', StrPCopy(zPathName, MainForm.SeViewerPrg),StrPCopy(zParam, '"'
            + dn + fn + '"'),nil,SW_MAXIMIZE) ;
        end
        else Mainform.OpenDraw(dn + fn) ;
      end ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMarkingForm.MarkingGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  i: integer ;
  Ervenyes: Boolean ;
begin
  if not AColumn.Visible then Exit ;
  i := TdxDBGrid(Sender).ColumnByFieldName('Ervenyes').Index ;
  if ANode.Values[i] = Null then Exit ;
  Ervenyes := Boolean(ANode.Values[i]) ;
  if not Ervenyes then AColor := clGray ;
end;

end.
