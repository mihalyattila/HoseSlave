unit PackReportU;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, StrUtils, jpeg;

type
  TPackReport = class(TQuickRep)
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRGroup1: TQRGroup;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr1: TQRExpr;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr2: TQRExpr;
    QRBand4: TQRBand;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText14: TQRDBText;
    QRBand5: TQRBand;
    Keszitette: TQRLabel;
    QRLabel10: TQRLabel;
    QRImage1: TQRImage;
    QRDBText15: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel17: TQRLabel;
    QRExpr6: TQRExpr;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel21: TQRLabel;
    procedure QRExpr2Print(sender: TObject; var Value: String);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure QRExpr6Print(sender: TObject; var Value: String);
    procedure QRExpr5Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
    procedure QRLabel19Print(sender: TObject; var Value: String);
    procedure QRDBText12Print(sender: TObject; var Value: String);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private

  public
    PieceSumWeight, ItemWeight, Summa, DeviceNum, DeviceWeight: double ;
  end;

var
  PackReport: TPackReport;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TPackReport.QRExpr2Print(sender: TObject; var Value: String);
var
  s: string ;
begin
  s:=ReplaceStr(Value, #160, '') ;
  s:=DelSpace(s) ;
  Summa:=Summa + StrToFloat(s) ;
end;

procedure TPackReport.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Summa:=0 ;
  PieceSumWeight:=0 ;
  DeviceNum:=0 ;
  ItemWeight:=0 ;
end;

procedure TPackReport.QRLabel7Print(sender: TObject; var Value: String);
begin
  Value:=Format('%8.2n', [Summa]) ;
end;

procedure TPackReport.QRExpr6Print(sender: TObject; var Value: String);
var
  s: string ;
begin
  s:=ReplaceStr(Value, #160, '') ;
  s:=DelSpace(s) ;
  PieceSumWeight:=StrToFloat(s) ;
  DeviceWeight:=StrToFloat(s) ;
end;

procedure TPackReport.QRExpr5Print(sender: TObject; var Value: String);
var
  s: string ;
begin
  s:=ReplaceStr(Value, #160, '') ;
  s:=DelSpace(s) ;
  PieceSumWeight:=PieceSumWeight+StrToFloat(s) ;
end;

procedure TPackReport.QRDBText10Print(sender: TObject; var Value: String);
var
  s: string ;
begin
  s:=ReplaceStr(Value, #160, '') ;
  s:=DelSpace(s) ;
  DeviceNum:=StrToFloat(s) ;
end;

procedure TPackReport.QRLabel19Print(sender: TObject; var Value: String);
begin
  Value:=Format('%8.2n', [ItemWeight/DeviceNum+DeviceWeight]) ;
end;

procedure TPackReport.QRDBText12Print(sender: TObject; var Value: String);
var
  s: string ;
begin
  s:=ReplaceStr(Value, #160, '') ;
  s:=DelSpace(s) ;
  ItemWeight:=ItemWeight+StrToFloat(s) ;
end;

procedure TPackReport.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  DeviceWeight:=0 ;
  ItemWeight:=0 ;
end;

end.
