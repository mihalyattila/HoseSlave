unit ReportDmU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db;

type
  TReportDm = class(TDataModule)
    AdatlapFejQry: TQuery;
    AdatlapFejQryAdatlapId: TIntegerField;
    AdatlapFejQryAdatalapSzam: TStringField;
    AdatlapFejQryValtozat: TSmallintField;
    AdatlapFejQryCegNev: TStringField;
    AdatlapFejQryOsztalyNev: TStringField;
    AdatlapFejQryMegnevezes: TStringField;
    AdatlapFejQryAltalanosNev: TStringField;
    AdatlapFejQrySzabvany: TStringField;
    AdatlapFejQryId: TFloatField;
    AdatlapFejQryNyomas: TFloatField;
    AdatlapFejQryKeszitette: TStringField;
    AdatlapFejQryKeszitesDatuma: TDateTimeField;
    AdatlapFejQryEllenorizve: TBooleanField;
    AdatlapFejQryEllenorizte: TStringField;
    AdatlapFejQryEllenorzesDatuma: TDateTimeField;
    AdatlapFejQryEgyedi: TBooleanField;
    AdatlapFejQryKiadva: TBooleanField;
    AdatlapFejQryKiadasIdopontja: TDateTimeField;
    AdatlapFejQryKiadta: TStringField;
    AdatlapFejQryErvenyes: TBooleanField;
    AdatlapFejQryErvenyesitesIdopontja: TDateTimeField;
    AdatlapFejQryErvenyesitette: TStringField;
    AdatlapFejQryDs: TDataSource;
    AdatlapKonf: TTable;
    AdatlapKonfAdatlapId: TIntegerField;
    AdatlapKonfTetelszam: TSmallintField;
    AdatlapKonfRajzszam: TStringField;
    AdatlapKonfMegnevezes: TStringField;
    AdatlapKonfTomloKulatm: TFloatField;
    AdatlapKonfCsatlKulatm: TFloatField;
    AdatlapKonfTomeg: TFloatField;
    AdatlapKonfMinHajlitas: TFloatField;
    AdatlapKonfAnyagnormaSzam: TStringField;
    AdatlapKonfMegjegyzes: TStringField;
    AdatlapKonfAktiv: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportDm: TReportDm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

end.
