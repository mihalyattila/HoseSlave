unit HoseNameEditFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBGrid, dxTL, dxDBCtrl, Db, DBTables, dxCntner, DBCtrls, ExtCtrls,
  Placemnt;

type
  THoseNameEditForm = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    HoseNameEditGrid: TdxDBGrid;
    tTomloMegnevezesek: TTable;
    tTomloMegnevezesekMegnevezesId: TIntegerField;
    tTomloMegnevezesekMegnevezes: TStringField;
    tTomloMegnevezesekTermekKod: TIntegerField;
    tTomloMegnevezesekRogzitette: TStringField;
    tTomloMegnevezesekRogzIdopont: TDateTimeField;
    dsTomloMegnevezesek: TDataSource;
    HoseNameEditGridMegnevezesId: TdxDBGridMaskColumn;
    HoseNameEditGridMegnevezes: TdxDBGridMaskColumn;
    HoseNameEditGridTermekKod: TdxDBGridMaskColumn;
    HoseNameEditGridRogzitette: TdxDBGridColumn;
    HoseNameEditGridRogzIdopont: TdxDBGridColumn;
    FormPlacement1: TFormPlacement;
    procedure FormShow(Sender: TObject);
    procedure tTomloMegnevezesekNewRecord(DataSet: TDataSet);
    procedure tTomloMegnevezesekBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HoseNameEditForm: THoseNameEditForm;

implementation

uses HoseSlaveDmU, HoseSlaveU;

{$R *.DFM}

procedure THoseNameEditForm.FormShow(Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to HoseNameEditGrid.ColumnCount - 1 do HoseNameEditGrid.ApplyBestFit(HoseNameEditGrid.Columns[i]) ;
end;

procedure THoseNameEditForm.tTomloMegnevezesekNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('TermekKod').AsInteger := 1 ;
end;

procedure THoseNameEditForm.tTomloMegnevezesekBeforePost(
  DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

end.
