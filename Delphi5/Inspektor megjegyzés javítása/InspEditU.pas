unit InspEditU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, ComCtrls,
  RxRichEd, DBRichEd;

type
  TInspEditForm = class(TForm)
    MainDb: TDatabase;
    tRendelesTetel: TTable;
    tRendelesTetelRendelesAz: TIntegerField;
    tRendelesTetelTetelSrsz: TIntegerField;
    tRendelesTetelCikkszam: TStringField;
    tRendelesTetelSpecifikacio: TStringField;
    tRendelesTetelAtmero: TFloatField;
    tRendelesTetelAtmeroMe: TSmallintField;
    tRendelesTetelpsi: TFloatField;
    tRendelesTetelMPa: TFloatField;
    tRendelesTetelLang: TBooleanField;
    tRendelesTetelBg: TBooleanField;
    tRendelesTetelKg: TBooleanField;
    tRendelesTetelPa: TBooleanField;
    tRendelesTetelKv: TBooleanField;
    tRendelesTetelKgInter: TBooleanField;
    tRendelesTetelKvMua: TBooleanField;
    tRendelesTetelKvFedHelix: TBooleanField;
    tRendelesTetelKvNFedHelix: TBooleanField;
    tRendelesTetelH2S: TSmallintField;
    tRendelesTetelTipus: TStringField;
    tRendelesTetelCsatl1: TStringField;
    tRendelesTetelCsatl1Rsz: TStringField;
    tRendelesTetelCsatl1MaxAtmero: TFloatField;
    tRendelesTetelCsatl1MaxAtmeroMe: TIntegerField;
    tRendelesTetelCsatl2: TStringField;
    tRendelesTetelCsatl2Rsz: TStringField;
    tRendelesTetelCsatl2MaxAtmero: TFloatField;
    tRendelesTetelCsatl2MaxAtmeroMe: TIntegerField;
    tRendelesTetelDarabSzam: TFloatField;
    tRendelesTetelHossz: TFloatField;
    tRendelesTetelHosszMe: TStringField;
    tRendelesTetelHosszMe2: TSmallintField;
    tRendelesTetelTErtek: TFloatField;
    tRendelesTetelTPenznem: TStringField;
    tRendelesTetelOsszeallRsz: TStringField;
    tRendelesTetelKonstrukcio: TStringField;
    tRendelesTetelKonstrukcio2: TStringField;
    tRendelesTetelKonstrukcioMaxAtmero: TFloatField;
    tRendelesTetelKonstrukcioMaxAtmeroMe: TIntegerField;
    tRendelesTetelTKonfekcio: TStringField;
    tRendelesTetelTKonfekDatum: TDateTimeField;
    tRendelesTetelNormaIdo: TFloatField;
    tRendelesTetelDbjDatum: TDateTimeField;
    tRendelesTetelMuvDatum: TDateTimeField;
    tRendelesTetelKonstrDatum: TDateTimeField;
    tRendelesTetelFszHatarido: TDateTimeField;
    tRendelesTetelFszBeerk: TDateTimeField;
    tRendelesTetelAnyag: TStringField;
    tRendelesTetelCsomagolas: TStringField;
    tRendelesTetelEgyeb: TStringField;
    tRendelesTetelTMegj: TStringField;
    tRendelesTetelTRogzit: TStringField;
    tRendelesTetelTRogzIdo: TDateTimeField;
    tRendelesTetelTModosit: TStringField;
    tRendelesTetelTModIdo: TDateTimeField;
    tRendelesTetelModMezok: TFloatField;
    tRendelesTetelTorolt: TBooleanField;
    tRendelesTetelBeszolg: TBooleanField;
    tRendelesTetelTModHatarido: TDateTimeField;
    tRendelesTetelBeszolgIdo: TDateTimeField;
    tRendelesTetelBeszolgDb: TFloatField;
    tRendelesTetelBeszolgHossz: TFloatField;
    tRendelesTetelTomeg: TFloatField;
    tRendelesTetelGyartasInd: TDateTimeField;
    tRendelesTetelBefejezoMuv: TDateTimeField;
    tRendelesTetelAccListExist: TBooleanField;
    tRendelesTetelAccListDate: TDateTimeField;
    tRendelesTetelAccCreator: TStringField;
    tRendelesTetelBelsoHuvely: TStringField;
    tRendelesTetelBhAnyag: TStringField;
    tRendelesTetelHuvely: TStringField;
    tRendelesTetelSpiralkup: TStringField;
    tRendelesTetelEmelobilincs: TStringField;
    tRendelesTetelEbMeret: TFloatField;
    tRendelesTetelBiztBilincs: TStringField;
    tRendelesTetelBbMeret: TFloatField;
    tRendelesTetelTomitoGyuru1: TStringField;
    tRendelesTetelTomitoGyuru2: TStringField;
    tRendelesTetelFeneklap1: TStringField;
    tRendelesTetelFeneklap2: TStringField;
    tRendelesTetelNyomPrBilincs1: TStringField;
    tRendelesTetelNyomPrBilincs2: TStringField;
    tRendelesTetelVedoHuvely: TStringField;
    tRendelesTetelOsztottHuvely: TStringField;
    tRendelesTetelEgyebek: TMemoField;
    tRendelesTetelAtveteliKesz: TBooleanField;
    tRendelesTetelAtveteliIdopont: TDateTimeField;
    tRendelesTetelAtvetelitKeszitette: TStringField;
    tRendelesTetelInspector: TStringField;
    tRendelesTetelStamp: TBytesField;
    tRendelesTetelSapTypeOfCoupling1: TStringField;
    tRendelesTetelSapTypeOfCoupling2: TStringField;
    tRendelesTetelTAutoUpdate: TBooleanField;
    tRendelesTetelMarking: TStringField;
    tRendelesTetelStandard: TStringField;
    tRendelesTetelStandardText: TStringField;
    tRendelesTetelTypeOfPacking: TStringField;
    tRendelesTetelWorkingPressure: TFloatField;
    tRendelesTetelWorkingPressureUnit: TStringField;
    tRendelesTetelDesignPressure: TFloatField;
    tRendelesTetelDesignPressureUnit: TStringField;
    tRendelesTetelTestPressure: TFloatField;
    tRendelesTetelTestPressureUnit: TStringField;
    tRendelesTetelSafetyFactor: TFloatField;
    tRendelesTetelTypeOfLining: TStringField;
    tRendelesTetelMaxDesignTemperature: TFloatField;
    tRendelesTetelMinDesignTemperature: TFloatField;
    tRendelesTetelAccListMailDate: TDateTimeField;
    tRendelesTetelAccListMailSender: TStringField;
    tRendelesTetelAccListMailSent: TBooleanField;
    tRendelesTetelMarkingId: TIntegerField;
    dsRendelesTetel: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    RxDBRichEdit1: TRxDBRichEdit;
    tRendelesTetelInspectorMegj: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InspEditForm: TInspEditForm;

implementation

{$R *.DFM}

procedure TInspEditForm.FormCreate(Sender: TObject);
begin
  tRendelesTetel.Active := True ;
end;

end.
