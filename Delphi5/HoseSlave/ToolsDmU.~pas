unit ToolsDmU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MyProcs, RxMemDS;

type
  TToolsDm = class(TDataModule)
    dsMarkazas: TDataSource;
    qMarkazas: TQuery;
    qMarkazasMarkId: TIntegerField;
    qMarkazasMarkTypeId: TIntegerField;
    qMarkazasMegnevezes: TStringField;
    qMarkazasMegjegyzes: TStringField;
    qMarkazasRajzszam: TStringField;
    qMarkazasErvtRajzszam: TStringField;
    qMarkazasUtvonal: TStringField;
    qMarkazasStatusz: TSmallintField;
    qMarkazasRogzitette: TStringField;
    qMarkazasRogzIdopont: TDateTimeField;
    uMarkazas: TUpdateSQL;
    qMarkazasStatuszNev: TStringField;
    spGetMarkingItem: TStoredProc;
    qDwgFiles: TQuery;
    qDwgFilesId: TIntegerField;
    qDwgFilesFileName: TStringField;
    qDwgFilesPath: TStringField;
    dsDwgFiles: TDataSource;
    spFindDraw: TStoredProc;
    qMsoRajzLista: TQuery;
    dsMsoRajzLista: TDataSource;
    uMsoRajzLista: TUpdateSQL;
    qMsoDoktipusok: TQuery;
    qMsoDoktipusokMsoDokTipusKod: TSmallintField;
    qMsoDoktipusokMsoDokTipusNev: TStringField;
    qMsoDoktipusokRogzitette: TStringField;
    qMsoDoktipusokRogzIdopont: TDateTimeField;
    qMsoKategoriak: TQuery;
    qMsoKategoriakMsoKategoriaKod: TSmallintField;
    qMsoKategoriakMsoKategoriaNev: TStringField;
    qMsoKategoriakRogzitette: TStringField;
    qMsoKategoriakRogzIdopont: TDateTimeField;
    qMsoRajzListaMsoId: TIntegerField;
    qMsoRajzListaTipusjel: TStringField;
    qMsoRajzListaSorozatszam: TStringField;
    qMsoRajzListaSorszam: TStringField;
    qMsoRajzListaVerzio: TStringField;
    qMsoRajzListaFilenev: TStringField;
    qMsoRajzListaMsoKategoriaKod: TSmallintField;
    qMsoRajzListaMegnevezes: TStringField;
    qMsoRajzListaMegjegyzes: TStringField;
    qMsoRajzListaKotesszam: TStringField;
    qMsoRajzListaEgyebKapcsolat: TStringField;
    qMsoRajzListaMsoDokTipusKod: TSmallintField;
    qMsoRajzListaRogzitette: TStringField;
    qMsoRajzListaRogzIdopont: TDateTimeField;
    qMsoRajzListaMsoKategoriaNev: TStringField;
    qMsoRajzListaMsoDoktipusNev: TStringField;
    spMsoDrawExist: TStoredProc;
    qMsoRajzListaUtvonal: TStringField;
    qProgHistory: TQuery;
    qProgHistoryProgCode: TIntegerField;
    qProgHistoryVersion: TStringField;
    qProgHistoryHistory: TStringField;
    qProgHistoryBevezetesNapja: TDateTimeField;
    qProgHistoryRogzitette: TStringField;
    qProgHistoryRogzIdopont: TDateTimeField;
    dsProgHistory: TDataSource;
    spGetCouplingWeight: TStoredProc;
    spGetTechLapData: TStoredProc;
    spGetBodyWeight: TStoredProc;
    spGetToleranceText: TStoredProc;
    dsMsoAlcsoport: TDataSource;
    dsMsoCsoport: TDataSource;
    dsMsoFocsoport: TDataSource;
    qMsoFocsoport: TQuery;
    qMsoFocsoportFocsoportKod: TSmallintField;
    qMsoFocsoportFocsoportNev: TStringField;
    qMsoFocsoportRogzitette: TStringField;
    qMsoFocsoportRogzIdopont: TDateTimeField;
    qMsoCsoport: TQuery;
    qMsoAlcsoport: TQuery;
    qMsoRajzListaFocsoportKod: TSmallintField;
    qMsoRajzListaCsoportKod: TSmallintField;
    qMsoRajzListaAlcsoportKod: TSmallintField;
    qMsoRajzListaSharePointLink: TStringField;
    qMsoRajzListaFocsoportNev: TStringField;
    qMsoRajzListaCsoportNev: TStringField;
    qMsoRajzListaAlcsoportNev: TStringField;
    dsMsoDoktipusok: TDataSource;
    qMsoCsopList: TQuery;
    qMsoAlcsList: TQuery;
    qMsoCsopListCsoportKod: TSmallintField;
    qMsoCsopListCsoportNev: TStringField;
    qMsoCsopListRogzitette: TStringField;
    qMsoCsopListRogzIdopont: TDateTimeField;
    qMsoAlcsListAlcsoportKod: TSmallintField;
    qMsoAlcsListAlcsoportNev: TStringField;
    qMsoAlcsListRogzitette: TStringField;
    qMsoAlcsListRogzIdopont: TDateTimeField;
    spNewMsoItem: TStoredProc;
    qMsoRajzListaErvenyes: TBooleanField;
    tMTRajzkonyv: TTable;
    dsMTRajzkonyv: TDataSource;
    tMTRajzkonyvrajzszam: TStringField;
    tMTRajzkonyvrendelesszam: TStringField;
    tMTRajzkonyvmegnevezes: TStringField;
    tMTRajzkonyvID: TStringField;
    tMTRajzkonyvnyomas: TStringField;
    tMTRajzkonyvrev_datum: TStringField;
    tMTRajzkonyvmegjegyzes: TStringField;
    tMTRajzkonyvRogzIdopont: TDateTimeField;
    tMTRajzkonyvRogzitette: TStringField;
    tSzerelveny: TTable;
    dsSzerelveny: TDataSource;
    tSzerelvenySrsz: TIntegerField;
    tSzerelvenyTipusKod: TIntegerField;
    tSzerelvenyinch: TFloatField;
    tSzerelvenyGegecsoOD: TFloatField;
    tSzerelvenyOD: TFloatField;
    tSzerelvenyID: TFloatField;
    tSzerelvenyv1: TIntegerField;
    tSzerelvenyOD1: TFloatField;
    tSzerelvenyOD2: TFloatField;
    tSzerelvenyL: TFloatField;
    tSzerelvenyMeret1: TStringField;
    tSzerelvenyMeret2: TStringField;
    tSzerelvenypsi: TFloatField;
    tSzerelvenyMPa: TFloatField;
    tSzerelvenyRajzszam: TStringField;
    tSzerelvenyMegnevezes: TStringField;
    tSzerelvenyAveg: TStringField;
    tSzerelvenyBveg: TStringField;
    tSzerelvenyOsszeallRsz: TStringField;
    tSzerelvenyAnyag: TStringField;
    tSzerelvenyTomeg: TFloatField;
    tSzerelvenyMegjegyzes: TStringField;
    tSzerelvenyRogzIdopont: TDateTimeField;
    tSzerelvenyRogzitette: TStringField;
    tSzerelvenyTipus: TTable;
    tSzerelvenyTipusTipusKod: TIntegerField;
    tSzerelvenyTipusTipusNev: TStringField;
    tSzerelvenyTipusRogzitette: TStringField;
    tSzerelvenyTipusRogzIdopont: TDateTimeField;
    tSzerelvenyTipusNev: TStringField;
    tHoronyvedelem: TTable;
    tHoronyvedelemId: TIntegerField;
    tHoronyvedelemHorony: TStringField;
    tHoronyvedelemHomokfuvozashoz: TStringField;
    tHoronyvedelemKiszallitashoz: TStringField;
    tHoronyvedelemMosatashoz: TStringField;
    tHoronyvedelemMegjegyzes: TStringField;
    tHoronyvedelemRogzitette: TStringField;
    tHoronyvedelemRogzIdopont: TDateTimeField;
    dsHoronyvedelem: TDataSource;
    tKikuldottRajzok: TTable;
    dsKikuldottRajzok: TDataSource;
    tKikuldottRajzokId: TIntegerField;
    tKikuldottRajzokOsszeallRajz: TStringField;
    tKikuldottRajzokMSORajz: TStringField;
    tKikuldottRajzokKotes: TStringField;
    tKikuldottRajzokCsatlakozo: TStringField;
    tKikuldottRajzokMegjegyzes: TStringField;
    tKikuldottRajzokRogzitette: TStringField;
    tKikuldottRajzokRogzIdopont: TDateTimeField;
    tElorendelesTetelek: TTable;
    tElorendelesTetelekRendelesszam: TStringField;
    tElorendelesTetelekRogzitette: TStringField;
    tElorendelesTetelekRogzIdopont: TDateTimeField;
    dsElorendelesTetelek: TDataSource;
    tSzerelvenyv: TFloatField;
    tSzerelvenyOD3: TFloatField;
    tSzerelvenyL1: TFloatField;
    tSzerelvenyL2: TFloatField;
    tSzerelvenyL3: TFloatField;
    tSzerelvenyL4: TFloatField;
    tSzerelvenyL5: TFloatField;
    tSzerelvenya: TFloatField;
    tSzerelvenyR1: TFloatField;
    tSzerelvenyR2: TFloatField;
    tSzerelvenypitch: TFloatField;
    tSzerelvenyalfa1: TFloatField;
    tSzerelvenyalfa2: TFloatField;
    tElorendelesAdatok: TTable;
    dsElorendelesAdatok: TDataSource;
    tElorendelesAdatokTipus: TStringField;
    tElorendelesAdatokRajzszam: TStringField;
    tElorendelesAdatokIdMin: TFloatField;
    tElorendelesAdatokIdMax: TFloatField;
    tElorendelesAdatokFestes: TStringField;
    tElorendelesAdatokAr: TFloatField;
    tElorendelesAdatokCikkszamVeg: TStringField;
    tElorendelesAdatokRogzitette: TStringField;
    tElorendelesAdatokRogzIdopont: TDateTimeField;
    tElorendelesAdatokElorendelesAdatId: TIntegerField;
    qElorendeles: TQuery;
    dsElorendeles: TDataSource;
    uElorendeles: TUpdateSQL;
    AddElorendItem: TStoredProc;
    SetElorendesOk: TStoredProc;
    qRendTetel: TQuery;
    qRendTetelRendelesAz: TIntegerField;
    qRendTetelTetelSrsz: TIntegerField;
    qRendTetelCikkszam: TStringField;
    qRendTetelSpecifikacio: TStringField;
    qRendTetelAtmero: TFloatField;
    qRendTetelAtmeroMe: TSmallintField;
    qRendTetelpsi: TFloatField;
    qRendTetelMPa: TFloatField;
    qRendTetelLang: TBooleanField;
    qRendTetelBg: TBooleanField;
    qRendTetelKg: TBooleanField;
    qRendTetelPa: TBooleanField;
    qRendTetelKv: TBooleanField;
    qRendTetelKgInter: TBooleanField;
    qRendTetelKvMua: TBooleanField;
    qRendTetelKvFedHelix: TBooleanField;
    qRendTetelKvNFedHelix: TBooleanField;
    qRendTetelH2S: TSmallintField;
    qRendTetelTipus: TStringField;
    qRendTetelCsatl1: TStringField;
    qRendTetelCsatl1Rsz: TStringField;
    qRendTetelCsatl1MaxAtmero: TFloatField;
    qRendTetelCsatl1MaxAtmeroMe: TIntegerField;
    qRendTetelCsatl2: TStringField;
    qRendTetelCsatl2Rsz: TStringField;
    qRendTetelCsatl2MaxAtmero: TFloatField;
    qRendTetelCsatl2MaxAtmeroMe: TIntegerField;
    qRendTetelDarabSzam: TFloatField;
    qRendTetelHossz: TFloatField;
    qRendTetelHosszMe: TStringField;
    qRendTetelHosszMe2: TSmallintField;
    qRendTetelTErtek: TFloatField;
    qRendTetelTPenznem: TStringField;
    qRendTetelOsszeallRsz: TStringField;
    qRendTetelKonstrukcio: TStringField;
    qRendTetelKonstrukcio2: TStringField;
    qRendTetelKonstrukcioMaxAtmero: TFloatField;
    qRendTetelKonstrukcioMaxAtmeroMe: TIntegerField;
    qRendTetelTKonfekcio: TStringField;
    qRendTetelTKonfekDatum: TDateTimeField;
    qRendTetelNormaIdo: TFloatField;
    qRendTetelDbjDatum: TDateTimeField;
    qRendTetelMuvDatum: TDateTimeField;
    qRendTetelKonstrDatum: TDateTimeField;
    qRendTetelFszHatarido: TDateTimeField;
    qRendTetelFszBeerk: TDateTimeField;
    qRendTetelAnyag: TStringField;
    qRendTetelCsomagolas: TStringField;
    qRendTetelEgyeb: TStringField;
    qRendTetelTMegj: TStringField;
    qRendTetelTRogzit: TStringField;
    qRendTetelTRogzIdo: TDateTimeField;
    qRendTetelTModosit: TStringField;
    qRendTetelTModIdo: TDateTimeField;
    qRendTetelModMezok: TFloatField;
    qRendTetelTorolt: TBooleanField;
    qRendTetelBeszolg: TBooleanField;
    qRendTetelTModHatarido: TDateTimeField;
    qRendTetelBeszolgIdo: TDateTimeField;
    qRendTetelBeszolgDb: TFloatField;
    qRendTetelBeszolgHossz: TFloatField;
    qRendTetelTomeg: TFloatField;
    qRendTetelGyartasInd: TDateTimeField;
    qRendTetelBefejezoMuv: TDateTimeField;
    qRendTetelAccListExist: TBooleanField;
    qRendTetelAccListDate: TDateTimeField;
    qRendTetelAccCreator: TStringField;
    qRendTetelBelsoHuvely: TStringField;
    qRendTetelBhAnyag: TStringField;
    qRendTetelHuvely: TStringField;
    qRendTetelSpiralkup: TStringField;
    qRendTetelEmelobilincs: TStringField;
    qRendTetelEbMeret: TFloatField;
    qRendTetelBiztBilincs: TStringField;
    qRendTetelBbMeret: TFloatField;
    qRendTetelTomitoGyuru1: TStringField;
    qRendTetelTomitoGyuru2: TStringField;
    qRendTetelFeneklap1: TStringField;
    qRendTetelFeneklap2: TStringField;
    qRendTetelNyomPrBilincs1: TStringField;
    qRendTetelNyomPrBilincs2: TStringField;
    qRendTetelVedoHuvely: TStringField;
    qRendTetelOsztottHuvely: TStringField;
    qRendTetelEgyebek: TMemoField;
    qRendTetelAtveteliKesz: TBooleanField;
    qRendTetelAtveteliIdopont: TDateTimeField;
    qRendTetelAtvetelitKeszitette: TStringField;
    qRendTetelInspector: TStringField;
    qRendTetelStamp: TBytesField;
    qRendTetelSapTypeOfCoupling1: TStringField;
    qRendTetelSapTypeOfCoupling2: TStringField;
    qRendTetelTAutoUpdate: TBooleanField;
    qRendTetelMarking: TStringField;
    qRendTetelStandard: TStringField;
    qRendTetelStandardText: TStringField;
    qRendTetelTypeOfPacking: TStringField;
    qRendTetelWorkingPressure: TFloatField;
    qRendTetelWorkingPressureUnit: TStringField;
    qRendTetelDesignPressure: TFloatField;
    qRendTetelDesignPressureUnit: TStringField;
    qRendTetelTestPressure: TFloatField;
    qRendTetelTestPressureUnit: TStringField;
    qRendTetelSafetyFactor: TFloatField;
    qRendTetelTypeOfLining: TStringField;
    qRendTetelMaxDesignTemperature: TFloatField;
    qRendTetelMinDesignTemperature: TFloatField;
    qRendTetelAccListMailDate: TDateTimeField;
    qRendTetelAccListMailSender: TStringField;
    qRendTetelAccListMailSent: TBooleanField;
    qRendTetelMarkingId: TIntegerField;
    dsRendTetel: TDataSource;
    qRendTetelEBAzonosito: TMemoField;
    qRendTetelEBFestes: TMemoField;
    qRendTetelBBAzonosito: TMemoField;
    qRendTetelBBFestes: TMemoField;
    tElorendelesRaktarra: TTable;
    tElorendelesRaktarraId: TIntegerField;
    tElorendelesRaktarraRajzszam: TStringField;
    tElorendelesRaktarraMegjegyzes: TStringField;
    tElorendelesRaktarraRogzitette: TStringField;
    tElorendelesRaktarraRogzIdopont: TDateTimeField;
    dsElorendelesRaktarra: TDataSource;
    tBeszallitok: TTable;
    tBeszallitokBeszallitoKod: TIntegerField;
    tBeszallitokBeszallitoNev: TStringField;
    tBeszallitokBeszallitoCim: TStringField;
    tBeszallitokRogzitette: TStringField;
    tBeszallitokRogzIdopont: TDateTimeField;
    dsBeszallitok: TDataSource;
    qBeszallitok: TQuery;
    qBeszallitokBeszallitoKod: TIntegerField;
    qBeszallitokBeszallitoNev: TStringField;
    qBeszallitokBeszallitoCim: TStringField;
    qBeszallitokRogzitette: TStringField;
    qBeszallitokRogzIdopont: TDateTimeField;
    qElorendelesId: TIntegerField;
    qElorendelesRendSz: TStringField;
    qElorendelesRendelesAz: TIntegerField;
    qElorendelesTetelSrsz: TIntegerField;
    qElorendelesSorszam: TIntegerField;
    qElorendelesMegnevezes: TStringField;
    qElorendelesSpecifikacio: TStringField;
    qElorendelesRajzszam: TStringField;
    qElorendelesAnyag: TStringField;
    qElorendelesMeret: TFloatField;
    qElorendelesFestes: TStringField;
    qElorendelesAzonosito: TStringField;
    qElorendelesMegjegyzes: TStringField;
    qElorendelesKiszallitando: TBooleanField;
    qElorendelesdb: TFloatField;
    qElorendelesDiszponensMegjegyzes: TStringField;
    qElorendelesBeszallitoKod: TIntegerField;
    qElorendelesBeszallitoiHatarido: TDateTimeField;
    qElorendelesHozzaadottElem: TBooleanField;
    qElorendelesAktiv: TBooleanField;
    qElorendelesKivalasztva: TBooleanField;
    qElorendelesFeldolgozva: TBooleanField;
    qElorendelesRaktarra: TBooleanField;
    qElorendelesBeerkezesDatuma: TDateTimeField;
    qElorendelesRogzitette: TStringField;
    qElorendelesRogzIdopont: TDateTimeField;
    qElorendelesBeszallitoNev: TStringField;
    qElorendelesBeszallitoMegjegyzes: TStringField;
    tBeszallitokElorendelesiMegjegyzes: TStringField;
    qElorendelesFelosztva: TBooleanField;
    ElorendelesTetelFeloszt: TStoredProc;
    qElorendelesModositva: TBooleanField;
    qUndo: TQuery;
    qRendTetelInspectorMegj: TStringField;
    procedure qMarkazasTipusXAfterPost(DataSet: TDataSet);
    procedure qMarkazasTipusXAfterDelete(DataSet: TDataSet);
    procedure qMarkazasTipusXAfterOpen(DataSet: TDataSet);
    procedure qMarkazasAfterOpen(DataSet: TDataSet);
    procedure qMarkazasAfterPost(DataSet: TDataSet);
    procedure qMarkazasAfterDelete(DataSet: TDataSet);
    procedure qMarkazasTipusXBeforePost(DataSet: TDataSet);
    procedure qMarkazasBeforePost(DataSet: TDataSet);
    procedure qMarkazasTipusXBeforeScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure qMsoRajzListaNewRecord(DataSet: TDataSet);
    procedure qMsoRajzListaBeforePost(DataSet: TDataSet);
    procedure qMsoRajzListaAfterPost(DataSet: TDataSet);
    procedure qMsoRajzListaAfterDelete(DataSet: TDataSet);
    procedure qMsoRajzListaAfterScroll(DataSet: TDataSet);
    procedure tMTRajzkonyvBeforePost(DataSet: TDataSet);
    procedure tMTRajzkonyvBeforeDelete(DataSet: TDataSet);
    procedure tSzerelvenyBeforePost(DataSet: TDataSet);
    procedure tSzerelvenyBeforeDelete(DataSet: TDataSet);
    procedure tSzerelvenyBeforeInsert(DataSet: TDataSet);
    procedure tSzerelvenyNewRecord(DataSet: TDataSet);
    procedure tHoronyvedelemBeforeDelete(DataSet: TDataSet);
    procedure tHoronyvedelemBeforePost(DataSet: TDataSet);
    procedure tKikuldottRajzokBeforeDelete(DataSet: TDataSet);
    procedure tKikuldottRajzokBeforePost(DataSet: TDataSet);
    procedure tSzerelvenyAfterOpen(DataSet: TDataSet);
    procedure tElorendelesTetelekBeforePost(DataSet: TDataSet);
    procedure tElorendelesAdatokAfterPost(DataSet: TDataSet);
    procedure mSelectedItemsXBeforePost(DataSet: TDataSet);
    procedure qElorendelesBeforePost(DataSet: TDataSet);
    procedure tElorendelesRaktarraBeforePost(DataSet: TDataSet);
    procedure tElorendelesKiegeszitesNewRecord(DataSet: TDataSet);
    procedure tElorendelesKiegeszitesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    //function CheckMsoDrawExist(MsoId: integer; TipusJel, Sorozatszam, Sorszam, Verzio: string): Boolean ;
  public
    { Public declarations }
    MarkHeadChangeCount, MarkItemChangeCount, Counter, Tipuskod: integer ;
    function MsoCommit: Boolean ;
    procedure MsoRefresh ;
    procedure UserStamp(DataSet: TDataSet) ;
  end;

var
  ToolsDm: TToolsDm;

implementation

uses HoseSlaveDmU, HoseSlaveU;

{$R *.DFM}

procedure TToolsDm.qMarkazasTipusXAfterPost(DataSet: TDataSet);
begin
  inc(MarkHeadChangeCount) ;
end;

procedure TToolsDm.qMarkazasTipusXAfterDelete(DataSet: TDataSet);
begin
  inc(MarkHeadChangeCount) ;
end;

procedure TToolsDm.qMarkazasTipusXAfterOpen(DataSet: TDataSet);
begin
  MarkHeadChangeCount := 0 ;
end;

procedure TToolsDm.qMarkazasAfterOpen(DataSet: TDataSet);
begin
  MarkItemChangeCount := 0 ;
end;

procedure TToolsDm.qMarkazasAfterPost(DataSet: TDataSet);
begin
  inc(MarkItemChangeCount) ;
end;

procedure TToolsDm.qMarkazasAfterDelete(DataSet: TDataSet);
begin
  inc(MarkItemChangeCount) ;
end;

procedure TToolsDm.qMarkazasTipusXBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.qMarkazasBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.qMarkazasTipusXBeforeScroll(DataSet: TDataSet);
begin
  if ToolsDm.MarkItemChangeCount > 0 then begin
    ErrMsg('Másik típus kiválasztása csak a változások mentése' + #13 + 'vagy azok visszavonása után lehetséges!') ;
    Abort ;
  end ;
end;

procedure TToolsDm.DataModuleCreate(Sender: TObject);
begin
  Counter := 0 ;
end;

procedure TToolsDm.qMsoRajzListaNewRecord(DataSet: TDataSet);
begin
  Dec(Counter) ;
  DataSet.FieldByName('MsoId').AsInteger := Counter ;
  DataSet.FieldByName('Tipusjel').AsString := 'MSO' ;
end;

procedure TToolsDm.qMsoRajzListaBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

function TToolsDm.MsoCommit: Boolean ;
begin
  Result := False ;
  Dm.MainDb.StartTransaction ;
  try
    ToolsDm.qMsoRajzLista.ApplyUpdates ;
    Dm.MainDb.Commit ;
    Result := True ;
  except
    Dm.MainDb.Rollback ;
    ToolsDm.qMsoRajzLista.Edit ;
    raise ;
  end;
  ToolsDm.qMsoRajzLista.CommitUpdates ;
end ;

procedure TToolsDm.qMsoRajzListaAfterPost(DataSet: TDataSet);
begin
  if not MsoCommit then Exit ;
end;

procedure TToolsDm.MsoRefresh ;
var
  MsoId: integer ;
begin
  try
    try
      ToolsDm.qMsoRajzLista.DisableControls ;
      MsoId := ToolsDm.qMsoRajzListaMsoId.AsInteger ;
      ToolsDm.qMsoRajzLista.Active := False ;
      ToolsDm.qMsoRajzLista.Active := True ;
      ToolsDm.qMsoRajzLista.Locate('MsoId', MsoId, [loCaseInsensitive]) ;
    finally
      ToolsDm.qMsoRajzLista.EnableControls ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TToolsDm.qMsoRajzListaAfterDelete(DataSet: TDataSet);
begin
  if not MsoCommit then Exit ;
  //MsoRefresh ;
end;

procedure TToolsDm.qMsoRajzListaAfterScroll(DataSet: TDataSet);
begin
  MainForm.GetMsoData ;
end;

procedure TToolsDm.tMTRajzkonyvBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.tMTRajzkonyvBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Rogzitette').AsString <> Mainform.CurrentUserName then begin
    ErrMsg('Csak az törölheti a rekordot, aki létrehozta!') ;
    Abort ;
  end ;
end;

procedure TToolsDm.tSzerelvenyBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.tSzerelvenyBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Rogzitette').AsString <> Mainform.CurrentUserName then begin
    ErrMsg('Csak az törölheti a rekordot, aki létrehozta!') ;
    Abort ;
  end ;
end;

procedure TToolsDm.tSzerelvenyBeforeInsert(DataSet: TDataSet);
begin
  TipusKod := DataSet.FieldByName('TipusKod').AsInteger ;
end;

procedure TToolsDm.tSzerelvenyNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('TipusKod').AsInteger := TipusKod ;
end;

procedure TToolsDm.tHoronyvedelemBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Rogzitette').AsString <> Mainform.CurrentUserName then begin
    ErrMsg('Csak az törölheti a rekordot, aki létrehozta!') ;
    Abort ;
  end ;
end;

procedure TToolsDm.tHoronyvedelemBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.tKikuldottRajzokBeforeDelete(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Rogzitette').AsString <> Mainform.CurrentUserName then begin
    ErrMsg('Csak az törölheti a rekordot, aki létrehozta!') ;
    Abort ;
  end ;
end;

procedure TToolsDm.tKikuldottRajzokBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.tSzerelvenyAfterOpen(DataSet: TDataSet);
begin
  MainForm.SzerelvenyGrid.FullCollapse ;
end;

procedure TToolsDm.tElorendelesTetelekBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.tElorendelesAdatokAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TToolsDm.mSelectedItemsXBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.qElorendelesBeforePost(DataSet: TDataSet);
var
  i: integer ;
  f: TField ;
begin
  DataSet.FieldByName('Modositva').AsBoolean := True ;
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDateTime := Now ;
  for i := 0 to DataSet.FieldCount - 1 do begin
    f := DataSet.Fields[i] ;
    if f.DataType = ftBoolean then if not f.AsBoolean then f.AsBoolean := False ;
  end ;
end;

procedure TToolsDm.UserStamp(DataSet: TDataSet) ;
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDateTime := Now ;
end;

procedure TToolsDm.tElorendelesRaktarraBeforePost(DataSet: TDataSet);
begin
  UserStamp(DataSet) ;
end;

procedure TToolsDm.tElorendelesKiegeszitesNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('ElorendelesId').AsInteger := ToolsDm.qElorendelesId.AsInteger ;
end;

procedure TToolsDm.tElorendelesKiegeszitesBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDateTime := Now ;
end;

end.
