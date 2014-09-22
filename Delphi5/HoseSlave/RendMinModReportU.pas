unit RendMinModReportU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  TRendMinModReport = class(TQuickRep)
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRGroup2: TQRGroup;
    QRBand4: TQRBand;
    QRLabel7: TQRLabel;
    QRImage1: TQRImage;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRBand5: TQRBand;
    QRLabel10: TQRLabel;
    Keszitette: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr1: TQRExpr;
  private

  public

  end;

var
  RendMinModReport: TRendMinModReport;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

end.
