unit ElorendelesOtherReportU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TElorendelesOtherReport = class(TQuickRep)
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    CimzettLabel: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    DatumLabel: TQRLabel;
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
    QRBand6: TQRBand;
    QRLabel23: TQRLabel;
    ElorendelesOther: TStoredProc;
    QRShape4: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText2: TQRDBText;
    ElorendelesOtherId: TIntegerField;
    ElorendelesOtherRendelesszam: TStringField;
    ElorendelesOtherdb: TFloatField;
    ElorendelesOtherMegnevezes: TStringField;
    ElorendelesOtherRajzszam: TStringField;
    ElorendelesOtherMeret: TFloatField;
    ElorendelesOtherFestes: TStringField;
    ElorendelesOtherEgyediAzonosito: TStringField;
    ElorendelesOtherBeszallitoMegjegyzes: TStringField;
    ElorendelesOtherBeszallitoNev: TStringField;
    ElorendelesOtherBeszallitoiHatarido: TDateTimeField;
    QRDBText6: TQRDBText;
    ElorendelesOtherElorendelesiMegjegyzes: TStringField;
    QRDBText7: TQRDBText;
  private

  public

  end;

var
  ElorendelesOtherReport: TElorendelesOtherReport;

implementation

{$R *.DFM}

end.
