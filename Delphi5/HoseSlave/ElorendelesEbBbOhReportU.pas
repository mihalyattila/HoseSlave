unit ElorendelesEbBbOhReportU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TElorendelesEbBbOhReport = class(TQuickRep)
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape4: TQRShape;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand4: TQRBand;
    ElorendelesEbBbOh: TStoredProc;
    ElorendelesEbBbOhId: TIntegerField;
    ElorendelesEbBbOhRendelesszam: TStringField;
    ElorendelesEbBbOhdb: TFloatField;
    ElorendelesEbBbOhMegnevezes: TStringField;
    ElorendelesEbBbOhRajzszam: TStringField;
    ElorendelesEbBbOhMeret: TFloatField;
    ElorendelesEbBbOhFestes: TStringField;
    ElorendelesEbBbOhEgyediAzonosito: TStringField;
    ElorendelesEbBbOhTipus: TIntegerField;
    ElorendelesEbBbOhAr: TFloatField;
    ElorendelesEbBbOhCikkszamVeg: TStringField;
    ElorendelesEbBbOhBeszallitoNev: TStringField;
    QRGroup1: TQRGroup;
    QRBand6: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    CimzettLabel: TQRLabel;
    QRShape1: TQRShape;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    DatumLabel: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRDBText10: TQRDBText;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel23: TQRLabel;
    ElorendelesEbBbOhBeszallitoiHatarido: TDateTimeField;
    QRDBText11: TQRDBText;
  private

  public
    Printed: Boolean ;
  end;

var
  ElorendelesEbBbOhReport: TElorendelesEbBbOhReport;

implementation

uses ToolsDmU;

{$R *.DFM}

end.
