unit BilincsFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, DBCtrls, ExtCtrls, dxDBTLCl, dxGrClms,
  Placemnt, DBTables, Db, Buttons, MyProcs, StdCtrls, Menus;

type
  TBilincsForm = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    BilincsGrid: TdxDBGrid;
    FormPlacement1: TFormPlacement;
    BilincsGridRendelesAz: TdxDBGridMaskColumn;
    BilincsGridTetelSrsz: TdxDBGridMaskColumn;
    BilincsGridTipus: TdxDBGridMaskColumn;
    BilincsGridTomloSorszam: TdxDBGridMaskColumn;
    BilincsGridAzonosito: TdxDBGridMaskColumn;
    BilincsGridCounter: TdxDBGridMaskColumn;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BilincsGridRogzitette: TdxDBGridColumn;
    BilincsGridRogzIdopont: TdxDBGridColumn;
    BitBtn4: TBitBtn;
    BilincsGridMegjegyzes: TdxDBGridColumn;
    BilincsGridFestes: TdxDBGridPickColumn;
    BilincsGridPopupMenu: TPopupMenu;
    Azsszesttelkitltseakivlasztotttartalommal1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Azsszesttelkitltseakivlasztotttartalommal1Click(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RendelesAz, TetelSrsz, TipusKod, TomloDb, C: integer ;
  end;

var
  BilincsForm: TBilincsForm;

implementation

uses HoseSlaveDmU, HoseSlaveU;

{$R *.DFM}

procedure TBilincsForm.FormCreate(Sender: TObject);
begin
  c := -1 ;
end;

procedure TBilincsForm.BitBtn1Click(Sender: TObject);
var
  i, j: integer ;
begin
  try
    for i := 1 to TomloDb do begin
      for j := 1 to 2 do begin
        if not Dm.qBilincs.Locate('RendelesAz;TetelSrsz;TomloSorszam;Counter',
        VarArrayOf([RendelesAz, TetelSrsz, i, j]), [loCaseInsensitive]) then begin
          Dm.qBilincs.Append ;
          Dm.qBilincsRendelesAz.AsInteger := RendelesAz ;
          Dm.qBilincsTetelSrsz.AsInteger := TetelSrsz ;
          Dm.qBilincsTipus.AsInteger := TipusKod ;
          Dm.qBilincsTomloSorszam.AsInteger := i ;
          Dm.qBilincsCounter.AsInteger := j ;
          Dm.qBilincs.Post ;
        end ;
      end ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TBilincsForm.BitBtn2Click(Sender: TObject);
begin
  with Dm.qBilincs do
  begin
  Dm.MainDb.StartTransaction;
    try
      ApplyUpdates; {try to write the updates to the database};
      Dm.MainDb.Commit; {on success, commit the changes};
    except
      On E: exception do begin
        ErrMsg(E.Message) ;
        Dm.MainDb.Rollback; {on failure, undo the changes};
        raise; {raise the exception to prevent a call to CommitUpdates!}
      end ;
    end;
    CommitUpdates; {on success, clear the cache}
  end;
  Dm.qBilincs.Active := False ;
  Dm.qBilincs.Active := True ;
  MainForm.BilincsChangeNum := 0 ;
end;

procedure TBilincsForm.Panel2Resize(Sender: TObject);
begin
  SetButtons(Panel2, False) ;
end;

procedure TBilincsForm.BitBtn3Click(Sender: TObject);
begin
  try
    Dm.qBilincs.CancelUpdates ;
    MainForm.BilincsChangeNum := 0 ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TBilincsForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
var
  Msg: string ;
begin
  Msg := 'El nem mentett változások vannak,' + #13 + 'ennek ellenére bezárod az ablakot?' ;
  CanClose := True ;
  if MainForm.BilincsChangeNum <> 0 then
    if MessageDlg(Msg, mtconfirmation, [mbYes, mbNo], 0) = mrYes then begin
      Dm.qBilincs.CancelUpdates ;
      MainForm.BilincsChangeNum := 0 ;
    end
    else CanClose := False ;
end;

procedure TBilincsForm.FormShow(Sender: TObject);
begin
  BilincsGrid.SetFocus ;
end;

procedure TBilincsForm.Azsszesttelkitltseakivlasztotttartalommal1Click(
  Sender: TObject);
var
   fn, content: string ;
begin
  try
    try
      fn := BilincsGrid.VisibleColumns[BilincsGrid.FocusedColumn].FieldName ;
      if (fn = 'Festes') or (fn = 'Megjegyzes') then begin
        BilincsGrid.DataSource.DataSet.CheckBrowseMode ;
        BilincsGrid.DataSource.DataSet.DisableControls ;
        content := BilincsGrid.VisibleColumns[BilincsGrid.FocusedColumn].Field.AsString ;
        BilincsGrid.DataSource.DataSet.First ;
        while not BilincsGrid.DataSource.DataSet.Eof do begin
          if Trim(BilincsGrid.DataSource.DataSet.FieldByName(fn).AsString) = '' then begin
            BilincsGrid.DataSource.DataSet.Edit ;
            BilincsGrid.DataSource.DataSet.FieldByName(fn).AsString := content ;
            BilincsGrid.DataSource.DataSet.Post ;
          end ;
          BilincsGrid.DataSource.DataSet.Next ;
        end ;
      end
      else begin
        ErrMsg('Csak a festés vagy a megjegyzés mezõk tartalma másolható!') ;
      end ;
    finally
      BilincsGrid.DataSource.DataSet.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

end.
