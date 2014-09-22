unit AdatlapReportU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, Forms, Quickrpt, QRCtrls, DBTables, Db, ExtCtrls, jpeg;

type
  TAdatlapReport = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    AdatlapFejQry: TQuery;
    AdatlapFejQryAdatlapId: TIntegerField;
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
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel13: TQRLabel;
    AdatlapAllandoAlk: TTable;
    QRSubDetail2: TQRSubDetail;
    AdatlapAllandoAlkAdatlapId: TIntegerField;
    AdatlapAllandoAlkTetelSzam: TSmallintField;
    AdatlapAllandoAlkMegnevezes: TStringField;
    AdatlapAllandoAlkRajzszam: TStringField;
    AdatlapAllandoAlkTomeg: TFloatField;
    AdatlapAllandoAlkMegjegyzes: TStringField;
    AdatlapAllandoAlkAktiv: TBooleanField;
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
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand4: TQRBand;
    AdatlapCsom: TTable;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand6: TQRBand;
    QRSubDetail4: TQRSubDetail;
    QRLabel16: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    AdatlapCsomAdatlapId: TIntegerField;
    AdatlapCsomTetelSzam: TSmallintField;
    AdatlapCsomRekeszMeret: TStringField;
    AdatlapCsomMegjegyzes: TStringField;
    AdatlapCsomAktiv: TBooleanField;
    QRBand5: TQRBand;
    QRLabel22: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel27: TQRLabel;
    ValtozoAlk: TTable;
    QRDBText16: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    ValtozoAlkAdatlapId: TIntegerField;
    ValtozoAlkTetelSzam: TSmallintField;
    ValtozoAlkMegnevezes: TStringField;
    ValtozoAlkRajzszam: TStringField;
    ValtozoAlkTomeg: TFloatField;
    ValtozoAlkMegjegyzes: TStringField;
    ValtozoAlkAktiv: TBooleanField;
    QRBand7: TQRBand;
    QRSubDetail5: TQRSubDetail;
    QRLabel28: TQRLabel;
    AdatlapCsatl: TTable;
    AdatlapCsatlAdatlapId: TIntegerField;
    AdatlapCsatlTetelSzam: TSmallintField;
    AdatlapCsatlVegzodes: TStringField;
    AdatlapCsatlCsatlakozoRsz: TStringField;
    AdatlapCsatlMegnevezes: TStringField;
    AdatlapCsatlOsszeallitasiRsz: TStringField;
    AdatlapCsatlCsatlakozoSuly: TFloatField;
    AdatlapCsatlMegjegyzes: TStringField;
    AdatlapCsatlAktiv: TBooleanField;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRImage1: TQRImage;
    QRLabel34: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel35: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    Keszitette: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText38: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText39: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    AdatlapFejQryAdatlapSzam: TStringField;
  private

  public

  end;

var
  AdatlapReport: TAdatlapReport;

implementation

uses HoseSlaveDmU, ReportDmU;

{$R *.DFM}

end.
