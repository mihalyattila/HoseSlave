unit ConstrSearchFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, MyProcs, Placemnt, RXDBCtrl, DB,
  dxTL, dxDBCtrl, dxDBGrid, dxCntner;

type
  TConstrSearchForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    KonstrEdit: TEdit;
    Label1: TLabel;
    BitBtn3: TBitBtn;
    FormStorage1: TFormStorage;
    CsatlRszEdit: TEdit;
    Label2: TLabel;
    ConstrSearchGrid: TdxDBGrid;
    ConstrSearchGridRendsz: TdxDBGridMaskColumn;
    ConstrSearchGridPhxRendsz: TdxDBGridMaskColumn;
    ConstrSearchGridTetelSrsz: TdxDBGridMaskColumn;
    ConstrSearchGridKonstrukcio: TdxDBGridMaskColumn;
    ConstrSearchGridKonstrukcio2: TdxDBGridMaskColumn;
    ConstrSearchGridCsatl1Rsz: TdxDBGridMaskColumn;
    ConstrSearchGridCsatl2Rsz: TdxDBGridMaskColumn;
    BitBtn2: TBitBtn;
    ConstrSearchGridHossz: TdxDBGridColumn;
    ConstrSearchGridHosszMe: TdxDBGridColumn;
    ConstrSearchGridPackStr: TdxDBGridColumn;
    ConstrSearchGridNumber: TdxDBGridColumn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConstrSearchGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    Rendelesszam : string ;
    TetelSrsz : integer ;
  end;

var
  ConstrSearchForm: TConstrSearchForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TConstrSearchForm.BitBtn3Click(Sender: TObject);
var
  Konstr, CsatRsz : string ;
begin
  try
    Rendelesszam := '' ;
    TetelSrsz := -1 ;
    Konstr := Trim(KonstrEdit.Text) ;
    CsatRsz := Trim(CsatlRszEdit.Text) ;
    if Konstr = '' then begin
      ErrMsg('A konstrukci�t vagy annak kezd� karaktereit meg kell adni!') ;
      Exit ;
    end ;
    Dm.spConstrSearch.Active := False ;
    Dm.spConstrSearch.ParamByName('@Constr').AsString := Konstr ;
    Dm.spConstrSearch.ParamByName('@CsatRsz').AsString := CsatRsz ;
    Dm.spConstrSearch.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TConstrSearchForm.BitBtn1Click(Sender: TObject);
begin
  try
    if Dm.spConstrSearch.RecordCount > 0 then begin
      Rendelesszam := Dm.spConstrSearchRendsz.AsString ;
      TetelSrsz := Dm.spConstrSearchTetelSrsz.AsInteger ;
      if not Dm.HSOrderHeadList.Locate('Rendsz', Rendelesszam, [loCaseInsensitive]) then begin
        ErrMsg('Nem tal�lom a ' + Rendelesszam + ' rendel�ssz�m� elemet!') ;
        Exit ;
      end
      else begin
        if not Dm.RendelesTetel.Locate('TetelSrsz', TetelSrsz, [loCaseInsensitive]) then begin
          ErrMsg('Nem tal�lom a ' + IntToStr(TetelSrsz) + '. sorsz�m� elemet!') ;
          Exit ;
        end ;
      end ;
    end
    else begin
      Rendelesszam := '' ;
      TetelSrsz := -1 ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TConstrSearchForm.FormActivate(Sender: TObject);
begin
  Rendelesszam := '' ;
  TetelSrsz := -1 ;
end;

procedure TConstrSearchForm.Panel2Resize(Sender: TObject);
begin
  SetButtons(Panel2, False) ;
end;

procedure TConstrSearchForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    Dm.spConstrSearch.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TConstrSearchForm.ConstrSearchGridDblClick(Sender: TObject);
begin
  BitBtn1Click(Sender) ;
end;

end.
