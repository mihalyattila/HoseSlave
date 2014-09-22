unit dmOrderU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MyProcs;

type
  TdmOrder = class(TDataModule)
    tRendelesFej: TTable;
    tRendelesFejRendelesAz: TIntegerField;
    tRendelesFejTermekKod: TIntegerField;
    tRendelesFejRendSz: TStringField;
    tRendelesFejPhxRendSz: TStringField;
    tRendelesFejVevoRendSz: TStringField;
    tRendelesFejVevo: TStringField;
    tRendelesFejFelhasznalo: TStringField;
    tRendelesFejHatarido: TDateTimeField;
    tRendelesFejExtrKtsg: TFloatField;
    tRendelesFejExtrPenznem: TStringField;
    tRendelesFejErtTerulet: TStringField;
    tRendelesFejRKonfekcio: TStringField;
    tRendelesFejLevelSzama: TStringField;
    tRendelesFejLevelDatuma: TDateTimeField;
    tRendelesFejRMegj: TStringField;
    tRendelesFejRRogzit: TStringField;
    tRendelesFejRRogzIdo: TDateTimeField;
    tRendelesFejRModosit: TStringField;
    tRendelesFejRModIdo: TDateTimeField;
    tRendelesFejRModMezok: TFloatField;
    tRendelesFejTorolt: TBooleanField;
    tRendelesFejEnged: TBooleanField;
    tRendelesFejVissza: TBooleanField;
    tRendelesFejIgertHatarido: TDateTimeField;
    tRendelesFejAjanlatSzam: TStringField;
    tRendelesTetel: TTable;
    tRendelesTetelRendelesAz: TIntegerField;
    tRendelesTetelTetelSrsz: TIntegerField;
    tRendelesTetelCikkszam: TStringField;
    tRendelesTetelSpecifikacio: TStringField;
    tRendelesTetelAtmero: TFloatField;
    tRendelesTetelpsi: TFloatField;
    tRendelesTetelMPa: TFloatField;
    tRendelesTetelLang: TBooleanField;
    tRendelesTetelBg: TBooleanField;
    tRendelesTetelKg: TBooleanField;
    tRendelesTetelPa: TBooleanField;
    tRendelesTetelTipus: TStringField;
    tRendelesTetelCsatl1: TStringField;
    tRendelesTetelCsatl1Rsz: TStringField;
    tRendelesTetelCsatl2: TStringField;
    tRendelesTetelCsatl2Rsz: TStringField;
    tRendelesTetelDarabSzam: TFloatField;
    tRendelesTetelHossz: TFloatField;
    tRendelesTetelHosszMe: TStringField;
    tRendelesTetelTErtek: TFloatField;
    tRendelesTetelTPenznem: TStringField;
    tRendelesTetelOsszeallRsz: TStringField;
    tRendelesTetelKonstrukcio: TStringField;
    tRendelesTetelKonstrukcio2: TStringField;
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
    tRendelesTetelHuvely: TStringField;
    tRendelesTetelSpiralkup: TStringField;
    tRendelesTetelEmelobilincs: TStringField;
    tRendelesTetelBiztBilincs: TStringField;
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
    dsRendelesFej: TDataSource;
    dsRendelesTetel: TDataSource;
    tTomloTip: TTable;
    tTomloTipTomloTipKod: TIntegerField;
    tTomloTipTomloTipNev: TStringField;
    tTomloTipHosszMe: TStringField;
    dsTomloTip: TDataSource;
    procedure tRendelesTetelPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmOrder: TdmOrder;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TdmOrder.tRendelesTetelPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  ErrMsg(E.ClassName + ' - ' + E.Message) ;
end;

end.
