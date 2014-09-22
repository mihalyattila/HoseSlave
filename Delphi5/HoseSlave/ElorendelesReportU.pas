unit ElorendelesReportU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg, Db, DBTables;

type
  TElorendelesReport = class(TQuickRep)
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    CimzettLabel: TQRLabel;
    CegLabel: TQRLabel;
    DatumLabel: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel22: TQRLabel;
    QRBand5: TQRBand;
    QRLabel23: TQRLabel;
    QRShape4: TQRShape;
    QRLabel24: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
  private

  public

  end;

var
  ElorendelesReport: TElorendelesReport;

implementation

uses OrderDmU;

{$R *.DFM}

end.
