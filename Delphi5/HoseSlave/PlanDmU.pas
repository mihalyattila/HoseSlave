unit PlanDmU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, RxMemDS, MyProcs;

type
  TPlanDm = class(TDataModule)
    procedure qRendelesProgramCalcFields(DataSet: TDataSet);
    procedure qRendelesProgramAfterPost(DataSet: TDataSet);
    procedure qRendelesProgramAfterDelete(DataSet: TDataSet);
    procedure qRendelesProgramBeforePost(DataSet: TDataSet);
    procedure qRendelesProgramNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanDm: TPlanDm;
  MaxId: integer ;
  CurrentRecord: array of variant ;

implementation

uses HoseSlaveU;

{$R *.DFM}

procedure TPlanDm.qRendelesProgramCalcFields(DataSet: TDataSet);
var
  db: integer ;
  hossz: double ;
begin
  db := DataSet.FieldByName('DB').AsInteger ;
  Hossz := DataSet.FieldByName('Hossz').AsFloat ;
  DataSet.FieldByName('Össz hossz').AsFloat := db * Hossz ;
end;

procedure TPlanDm.qRendelesProgramAfterPost(DataSet: TDataSet);
begin
  inc(MainForm.PlanChangeNum) ;
end;

procedure TPlanDm.qRendelesProgramAfterDelete(DataSet: TDataSet);
begin
  inc(MainForm.PlanChangeNum) ;
end;

procedure TPlanDm.qRendelesProgramBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rögzítette').AsString := Mainform.CurrentUserName ;
  DataSet.FieldByName('RögzIdõpont').AsDatetime := Now ;
end;

procedure TPlanDm.qRendelesProgramNewRecord(DataSet: TDataSet);
begin
  inc(MaxId) ;
  DataSet.FieldByName('Id').AsInteger := MaxId ;
end;

end.
