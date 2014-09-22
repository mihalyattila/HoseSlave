unit DmU;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDm = class(TDataModule)
    MainConnection: TADOConnection;
    qMfCikkszamok: TADOQuery;
    qMfCikkszamokItemId: TAutoIncField;
    qMfCikkszamokJelzes: TStringField;
    qMfCikkszamokPrDatum: TDateTimeField;
    qMfCikkszamokMtKeszDatum: TDateTimeField;
    qMfCikkszamokRegiCksz: TStringField;
    qMfCikkszamokSAPCksz: TStringField;
    qMfCikkszamokMtFelkeszDatum: TDateTimeField;
    qMfCikkszamokNev: TStringField;
    qMfCikkszamokHossz: TFloatField;
    qMfCikkszamokFelkesz5: TStringField;
    qMfCikkszamokVulk5: TStringField;
    qMfCikkszamokTomloveg5: TStringField;
    qMfCikkszamokFelkesz6: TStringField;
    qMfCikkszamokVulk6: TStringField;
    qMfCikkszamokTomloveg6: TStringField;
    qMfCikkszamokFelkesz7: TStringField;
    qMfCikkszamokVulk7: TStringField;
    qMfCikkszamokTomloveg7: TStringField;
    qMfCikkszamokFelkesz9: TStringField;
    qMfCikkszamokVulk9: TStringField;
    qMfCikkszamokTomloveg9: TStringField;
    qMfCikkszamokMuszJell: TStringField;
    qMfCikkszamokKonstr: TStringField;
    qMfCikkszamokKsz: TStringField;
    qMfCikkszamokAsz: TStringField;
    qMfCikkszamokMtfKesz: TStringField;
    qMfCikkszamokMegjegyzes: TStringField;
    qMfCikkszamokMtfFelkesz: TStringField;
    qMfCikkszamokKeszitette: TStringField;
    qMfCikkszamokKeszitesDatuma: TDateTimeField;
    qMfCikkszamokModositotta: TStringField;
    qMfCikkszamokModositasDatuma: TDateTimeField;
    qMfCikkszamokJelzesKod: TSmallintField;
    qMfCikkszamokNorma: TBooleanField;
    qMfCikkszamokSAP: TBooleanField;
    qMfCikkszamokTBP: TBooleanField;
    qMfCikkszamokGraf: TBooleanField;
    qMfCikkszamokTorzslap: TBooleanField;
    qMfCikkszamokDarabjegyzek: TBooleanField;
    dsMfCikkszamok: TDataSource;
    qJelzesek: TADOQuery;
    qJelzesekJelzoString: TStringField;
    qJelzesekJelzoszin: TIntegerField;
    qJelzesekJelzesKod: TSmallintField;
    dsJelzesek: TDataSource;
    qMfCikkszamokSzin: TIntegerField;
    qMfCikkszamokJelzesNev: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm: TDm;

implementation

{$R *.dfm}

end.