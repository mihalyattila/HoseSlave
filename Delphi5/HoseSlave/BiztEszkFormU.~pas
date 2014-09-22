unit BiztEszkFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, Db, DBTables, dxCntner,
  ExtCtrls, DBCtrls, StdCtrls, Buttons, RXSpin, MyProcs, Placemnt;

type
  TBiztEszkForm = class(TForm)
    Panel1: TPanel;
    BiztEszkGrid: TdxDBGrid;
    Table1: TTable;
    Table1Id: TIntegerField;
    Table1EszkozFajta: TStringField;
    Table1Beszerzes: TStringField;
    Table1Azonosito: TStringField;
    Table1Rendsz: TStringField;
    Table1RendelesAz: TIntegerField;
    Table1TetelSrsz: TSmallintField;
    Table1Rogzitette: TStringField;
    Table1RogzIdopont: TDateTimeField;
    DataSource1: TDataSource;
    BiztEszkGridId: TdxDBGridMaskColumn;
    BiztEszkGridAzonosito: TdxDBGridMaskColumn;
    BiztEszkGridRendsz: TdxDBGridMaskColumn;
    BiztEszkGridRendelesAz: TdxDBGridMaskColumn;
    BiztEszkGridTetelSrsz: TdxDBGridMaskColumn;
    BiztEszkGridRogzitette: TdxDBGridMaskColumn;
    BiztEszkGridRogzIdopont: TdxDBGridDateColumn;
    DBNavigator1: TDBNavigator;
    EszkozCombo: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    BeszerzesCombo: TComboBox;
    ElotagEdit: TEdit;
    Label3: TLabel;
    KezdetEdit: TRxSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    DbEdit: TRxSpinEdit;
    BitBtn1: TBitBtn;
    BiztEszkGridEszkozFajta: TdxDBGridColumn;
    BiztEszkGridBeszerzes: TdxDBGridColumn;
    FormPlacement1: TFormPlacement;
    Table1Megjegyzes: TStringField;
    BiztEszkGridMegjegyzes: TdxDBGridColumn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Table1BeforeDelete(DataSet: TDataSet);
    procedure Table1BeforePost(DataSet: TDataSet);
    procedure EszkozComboChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedType: string ;
  end;

var
  BiztEszkForm: TBiztEszkForm;

implementation

uses HoseSlaveU;

{$R *.DFM}

procedure TBiztEszkForm.BitBtn1Click(Sender: TObject);
var
  Eszkoz, Beszerzes, Elotag, Sorszam: string ;
  Kezdet, Db, i: integer ;
begin
  try
    Eszkoz := Trim(EszkozCombo.Text) ;
    Beszerzes := Trim(BeszerzesCombo.Text) ;
    Elotag := Trim(ElotagEdit.Text) ;
    Kezdet := KezdetEdit.AsInteger ;
    Db := DbEdit.AsInteger ;
    if SelectedType <> 'Lánc' then begin
      if (Eszkoz = '') or (Beszerzes = '') or (Elotag = '') or (Db = 0) then begin
        ErrMsg('Hiányos adatok!') ;
        Exit ;
      end ;
    end ;
    table1.CheckBrowseMode ;
    for i := 0 to Db - 1 do begin
      Sorszam := IntToStr(Kezdet + i) ; //Format('%-8.3d', [Kezdet + i]) ;
      table1.Append ;
      table1EszkozFajta.AsString := Eszkoz ;
      table1Beszerzes.AsString := Beszerzes ;
      if SelectedType = 'Lánc' then table1Azonosito.AsString := Elotag else table1Azonosito.AsString := Elotag + Sorszam ; //IntToStr(Kezdet + i) ;
      table1Rogzitette.AsString := MainForm.CurrentUserName ;
      table1RogzIdopont.AsDateTime := Now ;
      table1.Post ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TBiztEszkForm.Table1BeforeDelete(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('RendelesAz').IsNull then begin
    ErrMsg('Az adott tétel kapcsolatokkal rendelkezik, így nem törölhetõ!') ;
    Abort ;
  end ;
end;

procedure TBiztEszkForm.Table1BeforePost(DataSet: TDataSet);
begin
  if not DataSet.FieldByName('RendelesAz').IsNull then begin
    ErrMsg('Az adott tétel kapcsolatokkal rendelkezik, így nem módosítható!') ;
    Abort ;
  end
  else begin
    DataSet.FieldByName('Rogzitette').AsString := Mainform.CurrentUserName ;
    DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
  end ;
end;

procedure TBiztEszkForm.EszkozComboChange(Sender: TObject);
begin
  SelectedType := EszkozCombo.Text ;
  if SelectedType = 'Lánc' then begin
    KezdetEdit.Enabled := False ;
    BeszerzesCombo.Enabled := False ;
    ElotagEdit.Text := 'Azonosító nélkül' ;
  end
  else begin
    KezdetEdit.Enabled := True ;
    BeszerzesCombo.Enabled := True ;
    ElotagEdit.Text := '' ;
  end ;
end;

end.
