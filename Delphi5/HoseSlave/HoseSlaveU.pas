unit HoseSlaveU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  ExtCtrls, Grids, DBGrids, RXDBCtrl, ComCtrls, StdCtrls,
  Buttons, DBCtrls, RxVerInf, RxLookup, Mask, db, Placemnt, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxInspRw, dxDBInRw,
  dxInspct, dxDBInsp, dxInRwEx, dxDBTL, dxEditor, dxExEdtr, dxEdLib,
  QRExport, Menus, ActnList, ImgList, DBTables, dxCalc, RxDBComb,
  FnpNumericEdit, OleServer, MsProcs, RxMemDS, MyDbCtrl, ToolEdit,
  dxLayout, Word97, dxDBELib, StrUtils, SapProcs, Gauges, Animate, GIFCtrl,
  Psock, NMsmtp, RXSpin, ToolWin, RXCtrls, ShellAPI, dxDBEdtr, MyMath, Clipbrd,
  RxRichEd, DBRichEd, AppEvnts, dxGrClEx ;

const

  NewVerMsg = '�jabb verzi�ja jelent meg a programnak. A friss�t�shez ind�tsa �jra a programot!' ;
  UndoMsg = 'Visszavonja az eddig lok�lisan m�dos�tott,' + #13 + 'de el nem mentett v�ltoz�sokat?' ;
  HmOsszallErrMsg = 'Az �ssza�ll�t�si rajzoknak nincs HM adata!' ;
  HmTechLapErrMsg = 'A technol�giai lapoknak nincs HM adata!' ;

  EditColor : TColor = $005CAEFF ;
  EditColor2: TColor = $005C90FF ;
  DoneAddedColor : TColor = $0005d43b ;
  notExistSapRevColor: TColor = $00FEBCDB ;

type

  TICExportRec = record
    ASSETNUMBER,
    CATEGORYID,
    ITEMDESCRIPTION,
    DISTRIBUTORID,
    CLIENTUID,
    LOCATIONID,
    CHIPID,
    CERTIFICATIONSTATUS,
    CERTIFICATION_INTERVAL,
    Bore_Size,
    Nominal_Legth,
    Design_Pressura,
    Test_Pressura,
    Internal_stripwound_tube,
    End_coupling_1,
    End_coupling_2,
    Max_design_temp,
    Min_design_temp,
    Manufacturer,
    Hose_Type,
    Hose_Standard,
    Hose_Cover,
    Outside_Protection,
    Op_Dynamic_MBR,
    Storage_MBR,
    Op_Static_MBR,
    Notes: string ;
  end ;

  TPackDevRec = record
    DeviceId: integer ;
    DeviceName: string ;
    DeviceTypeCode: integer ;
    DeviceTypeName: string ;
    Note: string ;
    d1, d2, d3, d4, d5, d6, d7, d8, weight, price: double ;
    CurrencyCode: integer ;
  end ;

  TSapSpecRec = record
    RendelesSzam: string ;
    Revizio : integer ;
    Pozicio : Integer ;
    UzlKotCsop, Orszag, Megrendelo, VevoRefSz, Kontakt, Arufogado : string ;
    MegrendDatuma, SzallHatarido : TDatetime ;
    RefBiz, HozzSzam, FizetesiMod, Incoterms1, Incoterms2, Penznem: string ;
    Arfolyam: double ;
    Szallitas, Csomagolas: integer ;
    SzerzPotSz, SzerzRab, SpecKtg1, SzerszamKtg: double ;
    Cikkszam: string ;
    Mennyiseg: double ;
    Me: string ;
    NettoAr, Hataratert, MennyCsok, RabatSz, SpecKtg2, SpecCsom, UgynJutSz, UgynJut, PotlekSz: double ;
    KikonyvDat, SzamlaDat: TDatetime ;
    Kalkulalt, StndErtek, NettoArbHuf: double ;
    AnyagNeve, Marking, Standard, StandardText, TypeOfPacking: string ;
    InsideDia, Length: double ;
    LengthUnit: string ;
    Length2: double ;
    TypeOfCoupling1, TypeOfCoupling1Text, TypeOfCoupling2, TypeOfCoupling2Text, SpecialImportOrder,
    PressureCategory: string ;
    WorkingPressure: double ;
    WorkingPressureUnit: string ;
    DesignPressure: double ;
    DesignPressureUnit: string ;
    TestPressure: double ;
    TestPressureUnit: string ;
    SafetyFactor: double ;
    Cover, OutsideProtection, InternalStripwoundTube, TypeOfLining, SafetyClamp, LiftingCollar, ElementC: string ;
    MaxDesignTemperature, MinDesignTemperature: integer ;
    PBLCollarChain, Text1, Text2, Text3: string ;
    LastUpdate: TDatetime ;
    OsszetettKulcs: string ;
    H2S: integer ;
  end ;

  TSpecDataRec = record
    Specifikacio: String ;
    Atmero, psi, MPa, Hossz: double ;
    HosszMe: String ;
    Lang, Bg, Kg, Pa, Kv, KgInter, KvMua, KvFedHelix, KvNFedHelix, DataOK: Boolean ;
  end ;

  TTechnicalRec = record
    Rendsz: string ;
    TetelSrsz : integer ;
    OsszeallRsz, Konstrukcio, Konstrukcio2,
    Csatl1, Csatl1Rsz, Csatl2, Csatl2Rsz,
    BelsoHuvely, BhAnyag, Huvely, SpiralKup, EmeloBilincs,
    BiztBilincs, VedoHuvely, OsztottHuvely, Egyebek, Inspector, InspectorMegj: string ;
    EbMeret, BbMeret: double ;
  end ;

  TMainForm = class(TForm)
    PageControl1: TPageControl;
    PackSheet: TTabSheet;
    MfCkszSheet: TTabSheet;
    FormStorage1: TFormStorage;
    Panel3: TPanel;
    Panel4: TPanel;
    PackInspector: TdxDBInspector;
    PackInspectorPieces: TdxInspectorDBMaskRow;
    PackInspectorBodyLength: TdxInspectorDBMaskRow;
    PackInspectorBodyOd: TdxInspectorDBMaskRow;
    PackInspectorMBRstorage: TdxInspectorDBMaskRow;
    PackInspectorBodyWeight: TdxInspectorDBMaskRow;
    PackInspectorInnerSteel: TdxInspectorDBCheckRow;
    PackInspectorFireResistant: TdxInspectorDBCheckRow;
    PackInspectorOuterSteel: TdxInspectorDBCheckRow;
    PackInspectorPa: TdxInspectorDBCheckRow;
    PackInspectorHelix: TdxInspectorDBCheckRow;
    PackInspectorHeatRaced: TdxInspectorDBCheckRow;
    PackInspectorDragChain: TdxInspectorDBCheckRow;
    PackInspectorLongHose: TdxInspectorDBCheckRow;
    PackInspectorCouplingWeight1: TdxInspectorDBMaskRow;
    PackInspectorCouplingOd1: TdxInspectorDBMaskRow;
    PackInspectorOdMax1: TdxInspectorDBMaskRow;
    PackInspectorCouplingName2: TdxInspectorDBMaskRow;
    PackInspectorCouplingWeight2: TdxInspectorDBMaskRow;
    PackInspectorCouplingOd2: TdxInspectorDBMaskRow;
    PackInspectorOdMax2: TdxInspectorDBMaskRow;
    PackInspectorLiftingCollarExists: TdxInspectorDBCheckRow;
    PackInspectorLiftingCollarName: TdxInspectorDBMaskRow;
    PackInspectorLiftingCollarWeight: TdxInspectorDBMaskRow;
    PackInspectorLiftingCollarReinforced: TdxInspectorDBCheckRow;
    PackInspectorLiftingCollarPieces: TdxInspectorDBMaskRow;
    PackInspectorSafetyClampExists: TdxInspectorDBCheckRow;
    PackInspectorSafetyClampName: TdxInspectorDBMaskRow;
    PackInspectorSafetyClampWeight: TdxInspectorDBMaskRow;
    PackInspectorSafetyClampPieces: TdxInspectorDBMaskRow;
    PackInspectorSafetyChainExists: TdxInspectorDBCheckRow;
    PackInspectorSafetyChainWeight: TdxInspectorDBMaskRow;
    PackInspectorOtherAccExists: TdxInspectorDBCheckRow;
    PackInspectorOtherAccessories: TdxInspectorDBMaskRow;
    PackInspectorOtherAccWeight: TdxInspectorDBMaskRow;
    PackInspectorCreatorName: TdxInspectorDBMaskRow;
    PackInspectorCreateDate: TdxInspectorDBMaskRow;
    PackInspectorRow41: TdxInspectorDBButtonRow;
    PackInspectorBodyName: TdxInspectorDBMaskRow;
    PackInspectorRow44: TdxInspectorDBButtonRow;
    PackInspectorRow45: TdxInspectorDBButtonRow;
    PackInspectorLiftingCollarId: TdxInspectorDBButtonRow;
    PackInspectorSafetyClampId: TdxInspectorDBButtonRow;
    PackInspectorRow46: TdxInspectorDBMaskRow;
    PackInspectorRow47: TdxInspectorDBMaskRow;
    PackInspectorRow48: TdxInspectorDBMaskRow;
    PackInspectorRow49: TdxInspectorDBMaskRow;
    PackInspectorRow50: TdxInspectorDBMaskRow;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Panel6: TPanel;
    dxDBGrid3: TdxDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    DBNavigator3: TDBNavigator;
    Splitter4: TSplitter;
    Panel5: TPanel;
    PackHeadGrid: TdxDBGrid;
    PackHeadGridPackNum: TdxDBGridMaskColumn;
    PackHeadGridPackRevision: TdxDBGridMaskColumn;
    PackHeadGridPackVersion: TdxDBGridMaskColumn;
    PackHeadGridIdent1: TdxDBGridMaskColumn;
    PackHeadGridIdent2: TdxDBGridMaskColumn;
    PackHeadGridName: TdxDBGridMaskColumn;
    PackHeadGridOfferPerson: TdxDBGridMaskColumn;
    PackHeadGridNote: TdxDBGridMaskColumn;
    PackHeadGridStatus: TdxDBGridMaskColumn;
    PackHeadGridStatusName: TdxDBGridLookupColumn;
    Splitter1: TSplitter;
    QRTextFilter1: TQRTextFilter;
    dxDBInspectorSleeveExists: TdxInspectorDBCheckRow;
    PackInspectorRow51: TdxInspectorDBMaskRow;
    PackInspectorRow52: TdxInspectorDBCheckRow;
    PackInspectorCouplingName1: TdxInspectorDBMaskRow;
    MfCkszGrid: TdxDBGrid;
    ImageList1: TImageList;
    ActionList1: TActionList;
    MfCkszOpen: TAction;
    MfCkszClose: TAction;
    KonstrSheet: TTabSheet;
    Panel13: TPanel;
    WorkHelpSheet: TTabSheet;
    DataSheetBase: TTabSheet;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel14: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EvCheckBox: TDBCheckBox;
    LaCheckBox: TDBCheckBox;
    BgCheckBox: TDBCheckBox;
    KgCheckBox: TDBCheckBox;
    PaCheckBox: TDBCheckBox;
    NkCheckBox: TDBCheckBox;
    DcCheckBox: TDBCheckBox;
    IdEdit: TDBEdit;
    psiEdit: TDBEdit;
    MPaEdit: TDBEdit;
    SulyEdit: TDBEdit;
    OdEdit: TDBEdit;
    LelekCombo: TRxDBLookupCombo;
    SodronyCombo: TRxDBLookupCombo;
    MegjEdit: TDBEdit;
    GegeCombo: TDBComboBox;
    Panel17: TPanel;
    Panel18: TPanel;
    KonstrOpen: TAction;
    KonstrClose: TAction;
    ScrollBox1: TScrollBox;
    DBNavigator8: TDBNavigator;
    PageControl2: TPageControl;
    DataSheetGeneral: TTabSheet;
    ScrollBox2: TScrollBox;
    Panel20: TPanel;
    Panel21: TPanel;
    DBNavigator9: TDBNavigator;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    DBNavigator10: TDBNavigator;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    DBNavigator11: TDBNavigator;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    DBNavigator12: TDBNavigator;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    DBNavigator13: TDBNavigator;
    Panel34: TPanel;
    DataSheetSpecific: TTabSheet;
    DataSheet1Open: TAction;
    DataSheet1Close: TAction;
    KonfGrid: TdxDBGrid;
    KonfGridAdatlapId: TdxDBGridMaskColumn;
    KonfGridTetelszam: TdxDBGridMaskColumn;
    KonfGridTomloKulatm: TdxDBGridMaskColumn;
    KonfGridCsatlKulatm: TdxDBGridMaskColumn;
    KonfGridTomeg: TdxDBGridMaskColumn;
    KonfGridMinHajlitas: TdxDBGridMaskColumn;
    KonfGridAnyagnormaSzam: TdxDBGridMaskColumn;
    KonfGridMegjegyzes: TdxDBGridMaskColumn;
    KonfGridAktiv: TdxDBGridCheckColumn;
    KonfGridRajzszam: TdxDBGridButtonColumn;
    KonfGridMegnevezes: TdxDBGridMaskColumn;
    CsomGrid: TdxDBGrid;
    CsomGridAdatlapId: TdxDBGridMaskColumn;
    CsomGridTetelSzam: TdxDBGridMaskColumn;
    CsomGridRekeszMeret: TdxDBGridMaskColumn;
    CsomGridMegjegyzes: TdxDBGridMaskColumn;
    CsomGridAktiv: TdxDBGridCheckColumn;
    ScrollBox3: TScrollBox;
    dxDBInspector2: TdxDBInspector;
    dxDBInspector2AdatlapId: TdxInspectorDBMaskRow;
    dxDBInspector2AdatalapSzam: TdxInspectorDBMaskRow;
    dxDBInspector2Valtozat: TdxInspectorDBMaskRow;
    dxDBInspector2CegNev: TdxInspectorDBMaskRow;
    dxDBInspector2OsztalyNev: TdxInspectorDBMaskRow;
    dxDBInspector2Megnevezes: TdxInspectorDBMaskRow;
    dxDBInspector2AltalanosNev: TdxInspectorDBMaskRow;
    dxDBInspector2Keszitette: TdxInspectorDBMaskRow;
    dxDBInspector2Id: TdxInspectorDBMaskRow;
    dxDBInspector2Nyomas: TdxInspectorDBMaskRow;
    dxDBInspector2Ellenorizte: TdxInspectorDBMaskRow;
    dxDBInspector2Egyedi: TdxInspectorDBCheckRow;
    dxDBInspector2Kiadva: TdxInspectorDBCheckRow;
    dxDBInspector2Kiadta: TdxInspectorDBMaskRow;
    dxDBInspector2Ervenyes: TdxInspectorDBCheckRow;
    dxDBInspector2Ervenyesitette: TdxInspectorDBMaskRow;
    dxDBInspector2Szabvany: TdxInspectorDBPickRow;
    Panel35: TPanel;
    DBNavigator14: TDBNavigator;
    Splitter5: TSplitter;
    dxDBInspectorEllenorizve: TdxInspectorDBCheckRow;
    dxDBInspector2ErvenyesitesIdopontja: TdxInspectorDBMaskRow;
    dxDBInspector2KiadasIdopontja: TdxInspectorDBMaskRow;
    dxDBInspector2EllenorzesDatuma: TdxInspectorDBMaskRow;
    AllandoGrid: TdxDBGrid;
    AllandoGridAdatlapId: TdxDBGridMaskColumn;
    AllandoGridTetelSzam: TdxDBGridMaskColumn;
    AllandoGridMegnevezes: TdxDBGridMaskColumn;
    AllandoGridTomeg: TdxDBGridMaskColumn;
    AllandoGridMegjegyzes: TdxDBGridMaskColumn;
    AllandoGridAktiv: TdxDBGridCheckColumn;
    AllandoGridRajzszam: TdxDBGridButtonColumn;
    ValtozoGrid: TdxDBGrid;
    ValtozoGridAdatlapId: TdxDBGridMaskColumn;
    ValtozoGridTetelSzam: TdxDBGridMaskColumn;
    ValtozoGridMegnevezes: TdxDBGridMaskColumn;
    ValtozoGridTomeg: TdxDBGridMaskColumn;
    ValtozoGridMegjegyzes: TdxDBGridMaskColumn;
    ValtozoGridAktiv: TdxDBGridCheckColumn;
    ValtozoGridRajzszam: TdxDBGridButtonColumn;
    PackOpen: TAction;
    PackClose: TAction;
    dxDBInspector2KeszitesDatuma: TdxInspectorDBMaskRow;
    CsatlGrid: TdxDBGrid;
    CsatlGridAdatlapId: TdxDBGridMaskColumn;
    CsatlGridTetelSzam: TdxDBGridMaskColumn;
    CsatlGridVegzodes: TdxDBGridMaskColumn;
    CsatlGridMegnevezes: TdxDBGridMaskColumn;
    CsatlGridOsszeallitasiRsz: TdxDBGridMaskColumn;
    CsatlGridCsatlakozoSuly: TdxDBGridMaskColumn;
    CsatlGridMegjegyzes: TdxDBGridMaskColumn;
    CsatlGridAktiv: TdxDBGridCheckColumn;
    CsatlGridCsatlakozoRsz: TdxDBGridButtonColumn;
    ExtraDataSheetOpen: TAction;
    ExtraDataSheetClose: TAction;
    PackInspectorRow53: TdxInspectorComplexRow;
    PackInspectorRow54: TdxInspectorComplexRow;
    PackInspectorRow55: TdxInspectorComplexRow;
    PackInspectorRow56: TdxInspectorComplexRow;
    PackInspectorRow57: TdxInspectorComplexRow;
    PackInspectorRow58: TdxInspectorComplexRow;
    PackInspectorRow59: TdxInspectorComplexRow;
    CouplingSheet: TTabSheet;
    CouplingsOpen: TAction;
    CouplingsClose: TAction;
    DataSheetMenu: TPopupMenu;
    AtveteliExport: TAction;
    Alkatrszlistaexportlsa1: TMenuItem;
    SpeedButton4: TSpeedButton;
    Alkatrszlistaexportlsaimportlsaadatlapbl1: TMenuItem;
    DataSheetImport: TAction;
    PackAdvice: TAction;
    QualificationOpen: TAction;
    QualificationClose: TAction;
    PageControl3: TPageControl;
    DataSheetAccessory: TTabSheet;
    DataSheetQualification: TTabSheet;
    ImageList2: TImageList;
    Panel48: TPanel;
    ItemChanges1: TMenuItem;
    ItemChanges: TAction;
    Panel49: TPanel;
    BitBtn1: TBitBtn;
    RxMemoryData1: TRxMemoryData;
    DataSource1: TDataSource;
    RxMemoryData1Megnevezes: TStringField;
    RxMemoryData1Rajzszam: TStringField;
    RxMemoryData1Cikkszam: TStringField;
    RxMemoryData1Darabszam: TIntegerField;
    RxMemoryData1TipusNev: TStringField;
    BitBtn4: TBitBtn;
    QualificationReport: TAction;
    RxMemoryData1TetelSrsz: TIntegerField;
    PopupMenu2: TPopupMenu;
    Elemekmsolsatmenetitrolba1: TMenuItem;
    Elemekmsolsatmenetitrolbl1: TMenuItem;
    CopyMisc: TAction;
    PasteMisc: TAction;
    MiscTempData: TRxMemoryData;
    MiscTempDataMegnevezes: TStringField;
    MiscTempDataRajzszam: TStringField;
    MiscTempDataDarabszam: TSmallintField;
    MiscTempDataMegjegyzes: TStringField;
    MiscTempDataActive: TBooleanField;
    MiscTempDataCreatorName: TStringField;
    MiscTempDataCreateDate: TDateTimeField;
    QualificationModReport: TAction;
    BitBtn5: TBitBtn;
    OrderInputOpen: TAction;
    OrderOpen: TAction;
    DataSheetReport: TAction;
    DataSheetSelection: TAction;
    SpeedButton6: TSpeedButton;
    DataSheetCopy: TAction;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    DataSheetPaste: TAction;
    Splitter7: TSplitter;
    Panel46: TPanel;
    RendMinGrid: TdxDBGrid;
    RendMinGridRendelesAz: TdxDBGridMaskColumn;
    RendMinGridTetelSrsz: TdxDBGridMaskColumn;
    RendMinGridMinId: TdxDBGridMaskColumn;
    RendMinGridTipusnev: TdxDBGridMaskColumn;
    RendMinGridMegnevezes: TdxDBGridMaskColumn;
    RendMinGridRajzszam: TdxDBGridMaskColumn;
    RendMinGridCikkszam: TdxDBGridMaskColumn;
    RendMinGridDarabszam: TdxDBGridMaskColumn;
    RendMinGridKiadottDarab: TdxDBGridMaskColumn;
    RendMinGridEgyenleg: TdxDBGridMaskColumn;
    Splitter9: TSplitter;
    MinSarzsGrid: TdxDBGrid;
    MinSarzsGridMinId: TdxDBGridMaskColumn;
    MinSarzsGridMinItemId: TdxDBGridMaskColumn;
    MinSarzsGridSarzsszam: TdxDBGridMaskColumn;
    MinSarzsGridMegjegyzes: TdxDBGridMaskColumn;
    Panel47: TPanel;
    Splitter11: TSplitter;
    RendRaktarGrid: TdxDBGrid;
    RendRaktarGridRendelesAz: TdxDBGridMaskColumn;
    RendRaktarGridRendSz: TdxDBGridMaskColumn;
    RendRaktarGridPhxRendSz: TdxDBGridMaskColumn;
    RendRaktarGridVevoRendSz: TdxDBGridMaskColumn;
    RendRaktarGridVevo: TdxDBGridMaskColumn;
    RendRaktarGridFelhasznalo: TdxDBGridMaskColumn;
    RendRaktarGridErtTerulet: TdxDBGridMaskColumn;
    RendRaktarGridRMegj: TdxDBGridMaskColumn;
    Panel50: TPanel;
    DBNavigator19: TDBNavigator;
    SpeedButton9: TSpeedButton;
    SaveDialog1: TSaveDialog;
    RendMinGridBizonylatszam: TdxDBGridMaskColumn;
    Bizonylatszam: TAction;
    BitBtn7: TBitBtn;
    Konstrukcielfordulsa1: TMenuItem;
    KonstrSearch: TAction;
    Cikkszmkorbbielfordulsa1: TMenuItem;
    CkszSearch: TAction;
    AddBookmark: TAction;
    CopyTechnicalData: TAction;
    Mszakiadatokmsolsaavglapra1: TMenuItem;
    PasteTechnicalData: TAction;
    Mszakiadatokbeillesztse1: TMenuItem;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    InspectorLayout: TdxDBGridLayout;
    KvCheckBox: TDBCheckBox;
    _7kCheckBox: TDBCheckBox;
    CouplingsGridMenu: TPopupMenu;
    Oszlopokigaztsa1: TMenuItem;
    OrderSheet: TTabSheet;
    Panel51: TPanel;
    Panel52: TPanel;
    Splitter6: TSplitter;
    Panel53: TPanel;
    Splitter12: TSplitter;
    Panel54: TPanel;
    Panel55: TPanel;
    DBNavigator20: TDBNavigator;
    RendTetelGrid: TdxDBGrid;
    RendTetelGridTetelSrsz: TdxDBGridColumn;
    RendTetelGridCikkszam: TdxDBGridColumn;
    RendTetelGridSpecifikacio: TdxDBGridColumn;
    RendTetelGridTModHatarido: TdxDBGridColumn;
    RendTetelGridTorolt: TdxDBGridColumn;
    PageControl4: TPageControl;
    TabSheet5: TTabSheet;
    ScrollBox4: TScrollBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    AtmEdit: TDBEdit;
    RendPsiEdit: TDBEdit;
    RendMpaEdit: TDBEdit;
    HosszEdit: TDBEdit;
    HosszMeEdit: TDBEdit;
    ErtEdit: TDBEdit;
    dbEdit: TDBEdit;
    ToroltCheckBox: TDBCheckBox;
    CkszEdit: TDBEdit;
    BitBtn15: TBitBtn;
    PenznemComboBox: TdxDBPickEdit;
    LangCheckBox: TDBCheckBox;
    BgegeCheckBox: TDBCheckBox;
    KGegeCheckBox: TDBCheckBox;
    PoliamidCheckBox: TDBCheckBox;
    RaktarEdit: TDBEdit;
    SpecEdit: TDBMemo;
    KgInterCheckBox: TDBCheckBox;
    KVedCheckBox: TDBCheckBox;
    KvMuaCheckBox: TDBCheckBox;
    KvFedHelixCheckBox: TDBCheckBox;
    KvNFedHelixCheckBox: TDBCheckBox;
    TabSheet6: TTabSheet;
    ScrollBox5: TScrollBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label49: TLabel;
    Label44: TLabel;
    Csatl2Edit: TDBEdit;
    OsszeallRszEdit: TDBEdit;
    Konstr1Edit: TDBEdit;
    Konstr2Edit: TDBEdit;
    KonfEdit: TDBEdit;
    AnyagEdit: TDBEdit;
    MegjEdit2: TDBEdit;
    KonfDateEdit: TDBDateEdit;
    DbjDateEdit: TDBDateEdit;
    MtDateEdit: TDBDateEdit;
    KonstrDateEdit: TDBDateEdit;
    FemszerDateEdit: TDBDateEdit;
    FemszerDate2Edit: TDBDateEdit;
    Csatl1Edit: TDBEdit;
    Csatl1RszEdit: TRxDBComboEdit;
    Csatl2RszEdit: TRxDBComboEdit;
    CsomagEdit: TRxDBComboEdit;
    TabSheet9: TTabSheet;
    ScrollBox7: TScrollBox;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    Label43: TLabel;
    BelsoHuvelyEdit: TDBEdit;
    HuvelyEdit: TDBEdit;
    SpiralkupEdit: TDBEdit;
    EmeloBilincsEdit: TDBEdit;
    BiztonsagiBilincsEdit: TDBEdit;
    VedohuvelyEdit: TDBEdit;
    OsztottHuvelyEdit: TDBEdit;
    InspektorEdit: TDBEdit;
    EgyebekMemo: TDBMemo;
    InspektorMemo: TDBMemo;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    EgyebAlkatreszGrid: TdxDBGrid;
    dxDBGrid1RendelesAz: TdxDBGridMaskColumn;
    dxDBGrid1TetelSrsz: TdxDBGridMaskColumn;
    dxDBGrid1Sorszam: TdxDBGridMaskColumn;
    dxDBGrid1Megnevezes: TdxDBGridMaskColumn;
    dxDBGrid1Azonosito: TdxDBGridMaskColumn;
    dxDBGrid1Darabszam: TdxDBGridMaskColumn;
    dxDBGrid1Megjegyzes: TdxDBGridMaskColumn;
    dxDBGrid1Active: TdxDBGridCheckColumn;
    dxDBGridCreatorName: TdxDBGridMaskColumn;
    dxDBGridCreateDate: TdxDBGridDateColumn;
    TabSheet7: TTabSheet;
    ScrollBox6: TScrollBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    BeszolgCheckBox: TDBCheckBox;
    BeszolgDbEdit: TDBEdit;
    BeszolgHosszEdit: TDBEdit;
    TomegEdit: TDBEdit;
    BeszolgDateEdit: TDBDateEdit;
    NormaIdoEdit: TRxDBComboEdit;
    GyartIndEdit: TDBDateEdit;
    BefMuvEdit: TDBDateEdit;
    TabSheet8: TTabSheet;
    ScrollBox8: TScrollBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label67: TLabel;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit32: TDBEdit;
    Panel56: TPanel;
    Label68: TLabel;
    TermekCombo: TRxDBLookupCombo;
    Panel57: TPanel;
    Panel58: TPanel;
    RendFejGridMenu: TPopupMenu;
    Oszlopokigaztsa2: TMenuItem;
    RendTetelGridMenu: TPopupMenu;
    Oszlopokigaztsa3: TMenuItem;
    Rendelsvltozsai1: TMenuItem;
    Ttelekvltozsai1: TMenuItem;
    OrderSync: TAction;
    AdatImportBtn: TBitBtn;
    RendFejGrid: TdxDBGrid;
    RendFejGridRendelesAz: TdxDBGridMaskColumn;
    RendFejGridTermekKod: TdxDBGridMaskColumn;
    RendFejGridRendSz: TdxDBGridMaskColumn;
    RendFejGridPhxRendSz: TdxDBGridMaskColumn;
    RendFejGridVevoRendSz: TdxDBGridMaskColumn;
    RendFejGridFelhasznalo: TdxDBGridPickColumn;
    RendFejGridHatarido: TdxDBGridMaskColumn;
    RendFejGridIgertHatarido: TdxDBGridMaskColumn;
    RendFejGridExtrKtsg: TdxDBGridMaskColumn;
    RendFejGridExtrPenznem: TdxDBGridPickColumn;
    RendFejGridErtTerulet: TdxDBGridPickColumn;
    RendFejGridRKonfekcio: TdxDBGridMaskColumn;
    RendFejGridLevelSzama: TdxDBGridMaskColumn;
    RendFejGridLevelDatuma: TdxDBGridDateColumn;
    RendFejGridAjanlatSzam: TdxDBGridMaskColumn;
    RendFejGridTorolt: TdxDBGridCheckColumn;
    RendFejGridEnged: TdxDBGridCheckColumn;
    RendFejGridVissza: TdxDBGridCheckColumn;
    RendFejGridRMegj: TdxDBGridMaskColumn;
    RendFejGridRRogzit: TdxDBGridMaskColumn;
    RendFejGridRRogzIdo: TdxDBGridColumn;
    KiadatlanBtn: TBitBtn;
    KiadatlanTetelek: TAction;
    DarabEdit: TDBEdit;
    Label69: TLabel;
    FeetLengthEdit: TFnpNumericEdit;
    Label70: TLabel;
    RendFejGridSapRevizio: TdxDBGridColumn;
    ProgressBar1: TProgressBar;
    RendFejGridFAutoUpdate: TdxDBGridCheckColumn;
    RendTetelGridTAutoUpdate: TdxDBGridCheckColumn;
    ProgLabel: TLabel;
    NMSMTP1: TNMSMTP;
    EmailSent: TAction;
    Alkatrszlistaelkldve1: TMenuItem;
    MeoGridMenu: TPopupMenu;
    Oszlopokigaztsa8: TMenuItem;
    SavePlanChanges: TAction;
    UndoPlanChanges: TAction;
    BiztSzerelvGridMenu: TPopupMenu;
    SafetyItemEdit: TAction;
    Biztszerelvnyekkarbantarsa1: TMenuItem;
    SafetyItemAdd: TAction;
    Biztszerelvnyekhozzadsa1: TMenuItem;
    SafetyItemRemove: TAction;
    Akivlasztottelemeltvoltsa1: TMenuItem;
    PackItemGrid: TdxDBGrid;
    PackItemGridPackId: TdxDBGridMaskColumn;
    PackItemGridPackItemId: TdxDBGridMaskColumn;
    PackItemGridPackageId: TdxDBGridMaskColumn;
    PackItemGridPieces: TdxDBGridMaskColumn;
    PackItemGridWeight: TdxDBGridMaskColumn;
    dxDBGrid3PackageId: TdxDBGridMaskColumn;
    dxDBGrid3PackId: TdxDBGridMaskColumn;
    dxDBGrid3PackDevTypeCode: TdxDBGridMaskColumn;
    dxDBGrid3PackDevTypeName: TdxDBGridButtonColumn;
    dxDBGrid3PackDevCode: TdxDBGridMaskColumn;
    dxDBGrid3PackDevName: TdxDBGridMaskColumn;
    dxDBGrid3PackDevNum: TdxDBGridMaskColumn;
    dxDBGrid3Dim1: TdxDBGridMaskColumn;
    dxDBGrid3Dim2: TdxDBGridMaskColumn;
    dxDBGrid3Dim3: TdxDBGridMaskColumn;
    dxDBGrid3Weight: TdxDBGridMaskColumn;
    dxDBGrid3SumWeight: TdxDBGridColumn;
    dxDBGrid3sWeight: TdxDBGridMaskColumn;
    dxDBGrid3Price: TdxDBGridMaskColumn;
    dxDBGrid3SumPrice: TdxDBGridMaskColumn;
    dxDBGrid3sPrice: TdxDBGridMaskColumn;
    dxDBGrid3CurrencyName: TdxDBGridLookupColumn;
    dxDBGrid3Note: TdxDBGridMaskColumn;
    MfCkszGridItemId: TdxDBGridMaskColumn;
    MfCkszGridPrDatum: TdxDBGridDateColumn;
    MfCkszGridMtKeszDatum: TdxDBGridDateColumn;
    MfCkszGridRegiCksz: TdxDBGridMaskColumn;
    MfCkszGridSAPCksz: TdxDBGridMaskColumn;
    MfCkszGridMtFelkeszDatum: TdxDBGridDateColumn;
    MfCkszGridNev: TdxDBGridMaskColumn;
    MfCkszGridHossz: TdxDBGridMaskColumn;
    MfCkszGridVulk5: TdxDBGridMaskColumn;
    MfCkszGridTomloveg5: TdxDBGridMaskColumn;
    MfCkszGridMuszJell: TdxDBGridMaskColumn;
    MfCkszGridKonstr: TdxDBGridMaskColumn;
    MfCkszGridKsz: TdxDBGridMaskColumn;
    MfCkszGridAsz: TdxDBGridMaskColumn;
    MfCkszGridMtfKesz: TdxDBGridMaskColumn;
    MfCkszGridMegjegyzes: TdxDBGridMaskColumn;
    MfCkszGridMtfFelkesz: TdxDBGridMaskColumn;
    MfCkszGridJelzesKod: TdxDBGridMaskColumn;
    MfCkszGridJelzesNev: TdxDBGridLookupColumn;
    MfCkszGridSzin: TdxDBGridLookupColumn;
    MfCkszGridKeszitette: TdxDBGridColumn;
    MfCkszGridKeszitesDatuma: TdxDBGridColumn;
    MfCkszGridModositotta: TdxDBGridColumn;
    MfCkszGridModositasDatuma: TdxDBGridColumn;
    RendFejGridVevo: TdxDBGridPickColumn;
    MEOSheet: TTabSheet;
    PageControl5: TPageControl;
    MeoDataSheet: TTabSheet;
    MeoChipSheet: TTabSheet;
    Panel67: TPanel;
    Label74: TLabel;
    Label75: TLabel;
    MeoDate1: TDateTimePicker;
    MeoDate2: TDateTimePicker;
    BitBtn6: TBitBtn;
    MeoGrid: TdxDBGrid;
    MeoGridMeo_Az: TdxDBGridMaskColumn;
    MeoGridGY_SZ: TdxDBGridMaskColumn;
    MeoGridK_SZ: TdxDBGridMaskColumn;
    MeoGridRendsz: TdxDBGridMaskColumn;
    MeoGridMERET: TdxDBGridMaskColumn;
    MeoGridId: TdxDBGridMaskColumn;
    MeoGridIdU: TdxDBGridMaskColumn;
    MeoGridIdMe: TdxDBGridLookupColumn;
    MeoGridEgyebAdat: TdxDBGridMaskColumn;
    MeoGridEgyebAdatU: TdxDBGridMaskColumn;
    MeoGridUzemiNyomas: TdxDBGridMaskColumn;
    MeoGridUzemiNyomasU: TdxDBGridMaskColumn;
    MeoGridUzemiNyomasMe: TdxDBGridLookupColumn;
    MeoGridNevlegesHossz: TdxDBGridMaskColumn;
    MeoGridNevlegesHosszU: TdxDBGridMaskColumn;
    MeoGridNevlegesHosszMe: TdxDBGridLookupColumn;
    MeoGridTIPUS: TdxDBGridPickColumn;
    MeoGridCSATL_TIP: TdxDBGridMaskColumn;
    MeoGridCSATL_SZ: TdxDBGridMaskColumn;
    MeoGridANYAGC: TdxDBGridMaskColumn;
    MeoGridSZUK_TIP: TdxDBGridMaskColumn;
    MeoGridSZUK_SZ: TdxDBGridMaskColumn;
    MeoGridANYAGS: TdxDBGridMaskColumn;
    MeoGridFEMSZ_TIP: TdxDBGridMaskColumn;
    MeoGridFEMSZ_SZ: TdxDBGridMaskColumn;
    MeoGridANYAGF: TdxDBGridMaskColumn;
    MeoGridSZEMREVET: TdxDBGridMaskColumn;
    MeoGridMERTH: TdxDBGridMaskColumn;
    MeoGridMertHossz: TdxDBGridMaskColumn;
    MeoGridMertHosszU: TdxDBGridMaskColumn;
    MeoGridMertHosszMe: TdxDBGridLookupColumn;
    MeoGridPROBANYOM: TdxDBGridMaskColumn;
    MeoGridVIZSGALO: TdxDBGridMaskColumn;
    MeoGridINSPEKT: TdxDBGridPickColumn;
    MeoGridMINOS: TdxDBGridPickColumn;
    MeoGridM_DAT: TdxDBGridMaskColumn;
    MeoGridDatum: TdxDBGridDateColumn;
    MeoGridMEGJEGYZES: TdxDBGridMaskColumn;
    MeoGridDOSZIE_SZ: TdxDBGridMaskColumn;
    MeoGridRogzitette: TdxDBGridMaskColumn;
    MeoGridRogzitesIdopontja: TdxDBGridDateColumn;
    MeoGridTorolt: TdxDBGridCheckColumn;
    MeoGridOrderModified: TdxDBGridCheckColumn;
    MeoGridOrderDeleted: TdxDBGridCheckColumn;
    MeoGridpsi: TdxDBGridMaskColumn;
    MeoGridRendelesAz: TdxDBGridMaskColumn;
    MeoGridTetelSrsz: TdxDBGridMaskColumn;
    MeoGridChipId: TdxDBGridMaskColumn;
    MeoGridChipDataExportDate: TdxDBGridColumn;
    Panel66: TPanel;
    DBNavigator23: TDBNavigator;
    MeoSaveBtn: TBitBtn;
    MeoUndoBtn: TBitBtn;
    Panel71: TPanel;
    Label76: TLabel;
    ChipDate1: TDateTimePicker;
    Label77: TLabel;
    ChipDate2: TDateTimePicker;
    BitBtn12: TBitBtn;
    Panel72: TPanel;
    Panel73: TPanel;
    ChipGrid: TdxDBGrid;
    Splitter15: TSplitter;
    ChipInspector: TdxDBInspector;
    ChipGridMenu: TPopupMenu;
    Oszlopokigaztsa9: TMenuItem;
    MeoGridTomeg: TdxDBGridColumn;
    GroupBox2: TGroupBox;
    Label15: TLabel;
    MeTypeCombo: TDBLookupComboBox;
    RxDBLookupList1: TRxDBLookupList;
    RxDBLookupList2: TRxDBLookupList;
    Label14: TLabel;
    FnpNumericEdit1: TFnpNumericEdit;
    FnpNumericEdit2: TFnpNumericEdit;
    ConvertBtn: TBitBtn;
    TechGroupBox: TGroupBox;
    BitBtn16: TBitBtn;
    Marking: TAction;
    PackDevices: TAction;
    TabSheet1: TTabSheet;
    ToolBar1: TToolBar;
    AddPackOrder: TAction;
    ToolButton1: TToolButton;
    AddPackItem: TAction;
    ToolButton2: TToolButton;
    Panel74: TPanel;
    DBNavigator24: TDBNavigator;
    OrderPackGrid: TdxDBGrid;
    OrderPackGridPackageId: TdxDBGridMaskColumn;
    OrderPackGridRendelesAz: TdxDBGridMaskColumn;
    OrderPackGridTetelSrsz: TdxDBGridMaskColumn;
    OrderPackGridPackDevTypeCode: TdxDBGridMaskColumn;
    OrderPackGridPackDevCode: TdxDBGridMaskColumn;
    OrderPackGridPackDevName: TdxDBGridMaskColumn;
    OrderPackGridPackDevNum: TdxDBGridMaskColumn;
    OrderPackGridNote: TdxDBGridMaskColumn;
    OrderPackGridOrdered: TdxDBGridCheckColumn;
    OrderPackGridOrderName: TdxDBGridMaskColumn;
    OrderPackGridOrderDate: TdxDBGridDateColumn;
    OrderPackGridDeleted: TdxDBGridCheckColumn;
    OrderPackGridRogzitette: TdxDBGridColumn;
    OrderPackGridRogzIdopont: TdxDBGridColumn;
    OrderPackGridPackDevTypeName: TdxDBGridButtonColumn;
    KonstrLszEdit: TDBEdit;
    Label78: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBNavigator7: TDBNavigator;
    dxDBGrid6: TdxDBGrid;
    Panel75: TPanel;
    Panel37: TPanel;
    RendFejQryGrid: TdxDBGrid;
    RendFejQryGridRendelesAz: TdxDBGridMaskColumn;
    RendFejQryGridRendSz: TdxDBGridMaskColumn;
    RendFejQryGridSapRevizio: TdxDBGridColumn;
    RendFejQryGridAjanlatszam: TdxDBGridColumn;
    RendFejQryGridPhxRendSz: TdxDBGridMaskColumn;
    RendFejQryGridVevoRendSz: TdxDBGridMaskColumn;
    RendFejQryGridVevo: TdxDBGridMaskColumn;
    RendFejQryGridFelhasznalo: TdxDBGridMaskColumn;
    RendFejQryGridErtTerulet: TdxDBGridColumn;
    RendFejQryGridRMegj: TdxDBGridMaskColumn;
    RendFejQryGridTorolt: TdxDBGridColumn;
    RendFejQryGridFAutoUpdate: TdxDBGridCheckColumn;
    Splitter16: TSplitter;
    Panel40: TPanel;
    dxDBGrid7: TdxDBGrid;
    dxDBGrid7RendelesAz: TdxDBGridMaskColumn;
    dxDBGrid7TetelSrsz: TdxDBGridMaskColumn;
    dxDBGrid7Cikkszam: TdxDBGridMaskColumn;
    dxDBGrid7Specifikacio: TdxDBGridMaskColumn;
    dxDBGrid7Atmero: TdxDBGridMaskColumn;
    dxDBGrid7psi: TdxDBGridMaskColumn;
    dxDBGrid7MPa: TdxDBGridMaskColumn;
    dxDBGrid7Lang: TdxDBGridCheckColumn;
    dxDBGrid7Bg: TdxDBGridCheckColumn;
    dxDBGrid7Kg: TdxDBGridCheckColumn;
    dxDBGrid7Pa: TdxDBGridCheckColumn;
    dxDBGrid7Tipus: TdxDBGridMaskColumn;
    dxDBGrid7Csatl1: TdxDBGridMaskColumn;
    dxDBGrid7Csatl1Rsz: TdxDBGridMaskColumn;
    dxDBGrid7Csatl2: TdxDBGridMaskColumn;
    dxDBGrid7Csatl2Rsz: TdxDBGridMaskColumn;
    dxDBGrid7DarabSzam: TdxDBGridMaskColumn;
    dxDBGrid7Hossz: TdxDBGridMaskColumn;
    dxDBGrid7HosszMe: TdxDBGridMaskColumn;
    dxDBGrid7TErtek: TdxDBGridMaskColumn;
    dxDBGrid7TPenznem: TdxDBGridMaskColumn;
    dxDBGrid7OsszeallRsz: TdxDBGridMaskColumn;
    dxDBGrid7Konstrukcio: TdxDBGridMaskColumn;
    dxDBGrid7Konstrukcio2: TdxDBGridMaskColumn;
    dxDBGrid7TKonfekcio: TdxDBGridMaskColumn;
    dxDBGrid7TKonfekDatum: TdxDBGridDateColumn;
    dxDBGrid7NormaIdo: TdxDBGridMaskColumn;
    dxDBGrid7DbjDatum: TdxDBGridDateColumn;
    dxDBGrid7MuvDatum: TdxDBGridDateColumn;
    dxDBGrid7KonstrDatum: TdxDBGridDateColumn;
    dxDBGrid7FszHatarido: TdxDBGridDateColumn;
    dxDBGrid7FszBeerk: TdxDBGridDateColumn;
    dxDBGrid7Anyag: TdxDBGridMaskColumn;
    dxDBGrid7Csomagolas: TdxDBGridMaskColumn;
    dxDBGrid7Egyeb: TdxDBGridMaskColumn;
    dxDBGrid7TMegj: TdxDBGridMaskColumn;
    dxDBGrid7TRogzit: TdxDBGridMaskColumn;
    dxDBGrid7TRogzIdo: TdxDBGridDateColumn;
    dxDBGrid7TModosit: TdxDBGridMaskColumn;
    dxDBGrid7TModIdo: TdxDBGridDateColumn;
    dxDBGrid7ModMezok: TdxDBGridMaskColumn;
    dxDBGrid7Torolt: TdxDBGridCheckColumn;
    dxDBGrid7Beszolg: TdxDBGridCheckColumn;
    dxDBGrid7TModHatarido: TdxDBGridDateColumn;
    dxDBGrid7BeszolgIdo: TdxDBGridDateColumn;
    dxDBGrid7BeszolgDb: TdxDBGridMaskColumn;
    dxDBGrid7BeszolgHossz: TdxDBGridMaskColumn;
    dxDBGrid7Tomeg: TdxDBGridMaskColumn;
    dxDBGrid7GyartasInd: TdxDBGridDateColumn;
    dxDBGrid7BefejezoMuv: TdxDBGridDateColumn;
    dxDBGrid7AccListExist: TdxDBGridCheckColumn;
    dxDBGrid7AccListDate: TdxDBGridDateColumn;
    dxDBGrid7AccCreator: TdxDBGridMaskColumn;
    dxDBGrid7BelsoHuvely: TdxDBGridMaskColumn;
    dxDBGrid7Huvely: TdxDBGridMaskColumn;
    dxDBGrid7Spiralkup: TdxDBGridMaskColumn;
    dxDBGrid7OsszeallitasiRajz: TdxDBGridMaskColumn;
    dxDBGrid7Emelobilincs: TdxDBGridMaskColumn;
    dxDBGrid7VedoHuvely: TdxDBGridMaskColumn;
    dxDBGrid7OsztottHuvely: TdxDBGridMaskColumn;
    dxDBGrid7EgyebNev1: TdxDBGridMaskColumn;
    dxDBGrid7EgyebKod1: TdxDBGridMaskColumn;
    dxDBGrid7EgyebNev2: TdxDBGridMaskColumn;
    dxDBGrid7EgyebKod2: TdxDBGridMaskColumn;
    dxDBGrid7TAutoUpdate: TdxDBGridCheckColumn;
    Panel42: TPanel;
    Splitter10: TSplitter;
    Panel19: TPanel;
    Splitter14: TSplitter;
    Panel38: TPanel;
    Panel68: TPanel;
    RendEgyebGrid: TdxDBGrid;
    RendEgyebGridRendelesAz: TdxDBGridMaskColumn;
    RendEgyebGridTetelSrsz: TdxDBGridMaskColumn;
    RendEgyebGridSorszam: TdxDBGridMaskColumn;
    RendEgyebGridActive: TdxDBGridCheckColumn;
    RendEgyebGridKiszallitando: TdxDBGridCheckColumn;
    RendEgyebGridMegnevezes: TdxDBGridMaskColumn;
    RendEgyebGridDarabszam: TdxDBGridMaskColumn;
    RendEgyebGridMegjegyzes: TdxDBGridMaskColumn;
    Panel69: TPanel;
    Panel70: TPanel;
    BiztSzerelvGrid: TdxDBGrid;
    BiztSzerelvGridId: TdxDBGridMaskColumn;
    BiztSzerelvGridEszkozFajta: TdxDBGridMaskColumn;
    BiztSzerelvGridBeszerzes: TdxDBGridMaskColumn;
    BiztSzerelvGridAzonosito: TdxDBGridMaskColumn;
    BiztSzerelvGridRendSz: TdxDBGridMaskColumn;
    BiztSzerelvGridRendelesAz: TdxDBGridMaskColumn;
    BiztSzerelvGridTetelSrsz: TdxDBGridMaskColumn;
    BiztSzerelvGridRogzitette: TdxDBGridMaskColumn;
    MsgPanel: TSecretPanel;
    CsomagolasBtn: TBitBtn;
    PackNotExistList: TAction;
    Timer1: TTimer;
    BitBtn19: TBitBtn;
    InfoChipDataExport: TAction;
    Label79: TLabel;
    BelsoHuvelyAnyagEdit: TDBEdit;
    Label80: TLabel;
    EmeloBilincsMeretEdit: TDBEdit;
    Label81: TLabel;
    BiztonsagiBilincsMeretEdit: TDBEdit;
    H2SCheckEdit: TdxDBCheckEdit;
    StatusBar1: TStatusBar;
    BiztSzerelvGridRogzIdopont: TdxDBGridColumn;
    Azsszesoszlopmegjelentse1: TMenuItem;
    SaveMfData: TAction;
    UndoMfData: TAction;
    MfCkszRefresh: TAction;
    ChipGridMeo_Az: TdxDBGridMaskColumn;
    ChipGridRendSz: TdxDBGridMaskColumn;
    ChipGridTetelSrsz: TdxDBGridMaskColumn;
    ChipGridAssetNumber: TdxDBGridMaskColumn;
    ChipGridCategoryID: TdxDBGridMaskColumn;
    ChipGridItemDescription: TdxDBGridMaskColumn;
    ChipGridDistributorID: TdxDBGridMaskColumn;
    ChipGridClientID: TdxDBGridMaskColumn;
    ChipGridLocationID: TdxDBGridMaskColumn;
    ChipGridChipID: TdxDBGridMaskColumn;
    ChipGridCertificationStatus: TdxDBGridMaskColumn;
    ChipGridCertificationInterval: TdxDBGridMaskColumn;
    ChipGridBoreSize: TdxDBGridMaskColumn;
    ChipGridNominalLegth: TdxDBGridMaskColumn;
    ChipGridDesignPressure: TdxDBGridMaskColumn;
    ChipGridTestPressure: TdxDBGridMaskColumn;
    ChipGridInternalstripwoundtube: TdxDBGridMaskColumn;
    ChipGridEndcoupling1: TdxDBGridMaskColumn;
    ChipGridEndcoupling2: TdxDBGridMaskColumn;
    ChipGridMaxdesigntemp: TdxDBGridMaskColumn;
    ChipGridMindesigntemp: TdxDBGridMaskColumn;
    ChipGridManufacturer: TdxDBGridMaskColumn;
    ChipGridHoseType: TdxDBGridMaskColumn;
    ChipGridHoseStandard: TdxDBGridMaskColumn;
    ChipGridHoseCover: TdxDBGridMaskColumn;
    ChipGridOutsideProtection: TdxDBGridMaskColumn;
    ChipGridNotes: TdxDBGridMaskColumn;
    ChipInspectorMeo_Az: TdxInspectorDBMaskRow;
    ChipInspectorRendSz: TdxInspectorDBMaskRow;
    ChipInspectorTetelSrsz: TdxInspectorDBMaskRow;
    ChipInspectorASSETNUMBER: TdxInspectorDBMaskRow;
    ChipInspectorCATEGORYID: TdxInspectorDBMaskRow;
    ChipInspectorITEMDESCRIPTION: TdxInspectorDBMaskRow;
    ChipInspectorDISTRIBUTORID: TdxInspectorDBMaskRow;
    ChipInspectorCLIENTID: TdxInspectorDBMaskRow;
    ChipInspectorLOCATIONID: TdxInspectorDBMaskRow;
    ChipInspectorCHIPID: TdxInspectorDBMaskRow;
    ChipInspectorCERTIFICATIONSTATUS: TdxInspectorDBMaskRow;
    ChipInspectorCERTIFICATIONINTERVAL: TdxInspectorDBMaskRow;
    ChipInspectorBoreSize: TdxInspectorDBMaskRow;
    ChipInspectorNominalLegth: TdxInspectorDBMaskRow;
    ChipInspectorDesignPressure: TdxInspectorDBMaskRow;
    ChipInspectorTestPressure: TdxInspectorDBMaskRow;
    ChipInspectorInternalstripwoundtube: TdxInspectorDBMaskRow;
    ChipInspectorEndcoupling1: TdxInspectorDBMaskRow;
    ChipInspectorEndcoupling2: TdxInspectorDBMaskRow;
    ChipInspectorMaxdesigntemp: TdxInspectorDBMaskRow;
    ChipInspectorMindesigntemp: TdxInspectorDBMaskRow;
    ChipInspectorManufacturer: TdxInspectorDBMaskRow;
    ChipInspectorHoseType: TdxInspectorDBMaskRow;
    ChipInspectorHoseStandard: TdxInspectorDBMaskRow;
    ChipInspectorHoseCover: TdxInspectorDBMaskRow;
    ChipInspectorOutsideProtection: TdxInspectorDBMaskRow;
    ChipInspectorNotes: TdxInspectorDBMaskRow;
    ChipGridDynamicMBR: TdxDBGridColumn;
    ChipGridStorageMBR: TdxDBGridColumn;
    ChipGridStaticMBR: TdxDBGridColumn;
    ChipInspectorRow28: TdxInspectorDBRow;
    ChipInspectorRow29: TdxInspectorDBRow;
    ChipInspectorRow30: TdxInspectorDBRow;
    SpeedButton19: TSpeedButton;
    ChipInspectorRow31: TdxInspectorDBRow;
    ChipGridICExportDate: TdxDBGridColumn;
    ChipGridICExporter: TdxDBGridColumn;
    ChipInspectorRow32: TdxInspectorDBRow;
    Label82: TLabel;
    Label83: TLabel;
    MarkIdEdit: TDBEdit;
    EgyebAlkatreszGridKiszallitando: TdxDBGridCheckColumn;
    Alkatrszlistaexportlsa2: TMenuItem;
    AlkatreszExport: TAction;
    ImageList3: TImageList;
    GroupBox: TGroupBox;
    TervCheckBox: TCheckBox;
    TechCheckBox: TCheckBox;
    MEOCheckBox: TCheckBox;
    Rajzbehvsa1: TMenuItem;
    MfCkszGridFelkesz5: TdxDBGridMaskColumn;
    MfCkszGridFelkesz9: TdxDBGridMaskColumn;
    MfCkszGridVulk9: TdxDBGridMaskColumn;
    MfCkszGridTomloveg9: TdxDBGridMaskColumn;
    RendEgyebGridDbFuggo: TdxDBGridCheckColumn;
    RendEgyebGridOsszDb: TdxDBGridColumn;
    RendEgyebGridCreatorName: TdxDBGridColumn;
    RendEgyebGridCreateDate: TdxDBGridColumn;
    ToolGroupBox: TGroupBox;
    BitBtn8: TBitBtn;
    MarkingShowBtn: TBitBtn;
    InfoCheckBox: TCheckBox;
    RendEgyebGridRajzszam: TdxDBGridMaskColumn;
    DocSheet: TTabSheet;
    PageControl6: TPageControl;
    MsoDrawSheet: TTabSheet;
    MsoDrawGrid: TdxDBGrid;
    MsoDrawGridMsoId: TdxDBGridMaskColumn;
    MsoDrawGridTipusjel: TdxDBGridMaskColumn;
    MsoDrawGridSorszam: TdxDBGridMaskColumn;
    MsoDrawGridMegnevezes: TdxDBGridMaskColumn;
    MsoDrawGridMegjegyzes: TdxDBGridMaskColumn;
    MsoDrawGridKotesszam: TdxDBGridMaskColumn;
    MsoDrawGridEgyebKapcsolat: TdxDBGridMaskColumn;
    MsoDrawGridMenu: TPopupMenu;
    Oszlopokigaztsa6: TMenuItem;
    MsoDrawGridRogzIdopont: TdxDBGridColumn;
    MsoDrawGridRogzitette: TdxDBGridColumn;
    Panel45: TPanel;
    DBNavigator22: TDBNavigator;
    MsoDrawGridFilenev: TdxDBGridHyperLinkColumn;
    SpeedButton20: TSpeedButton;
    Panel59: TPanel;
    CouplingsGrid: TdxDBGrid;
    CouplingsGridSrsz: TdxDBGridMaskColumn;
    CouplingsGridCsatlErv: TdxDBGridCheckColumn;
    CouplingsGridOsszeallErv: TdxDBGridCheckColumn;
    CouplingsGridinch: TdxDBGridMaskColumn;
    CouplingsGridpsi: TdxDBGridMaskColumn;
    CouplingsGridMPa: TdxDBGridMaskColumn;
    CouplingsGridRendSz: TdxDBGridMaskColumn;
    CouplingsGridCsatlRsz: TdxDBGridButtonColumn;
    CouplingsGridTechLap: TdxDBGridButtonColumn;
    CouplingsGridVegzodes: TdxDBGridMaskColumn;
    CouplingsGridOsszRsz: TdxDBGridButtonColumn;
    CouplingsGridKonfekcio: TdxDBGridButtonColumn;
    CouplingsGridTipus: TdxDBGridMaskColumn;
    CouplingsGridBg: TdxDBGridCheckColumn;
    CouplingsGridKg: TdxDBGridCheckColumn;
    CouplingsGridLa: TdxDBGridCheckColumn;
    CouplingsGridCsLang: TdxDBGridCheckColumn;
    CouplingsGridHe: TdxDBGridCheckColumn;
    CouplingsGridPA: TdxDBGridCheckColumn;
    CouplingsGridElov: TdxDBGridCheckColumn;
    CouplingsGridDrag: TdxDBGridCheckColumn;
    CouplingsGridNagyh: TdxDBGridCheckColumn;
    CouplingsGridFuth: TdxDBGridCheckColumn;
    CouplingsGridMaxOD: TdxDBGridColumn;
    CouplingsGridMegj: TdxDBGridMaskColumn;
    CouplingsGridDatum: TdxDBGridColumn;
    CouplingsGridSigno: TdxDBGridMaskColumn;
    Panel60: TPanel;
    Panel43: TPanel;
    SpeedButton10: TSpeedButton;
    DBNavigator17: TDBNavigator;
    tvonaltrlse1: TMenuItem;
    Panel61: TPanel;
    VegzodesImage: TDBImage;
    Splitter8: TSplitter;
    Panel62: TPanel;
    Panel63: TPanel;
    Label71: TLabel;
    AbraCombo: TRxDBLookupCombo;
    Label72: TLabel;
    L1CaptionComboBox: TDBComboBox;
    Label84: TLabel;
    Label73: TLabel;
    Label85: TLabel;
    DBText5: TDBText;
    DBText6: TDBText;
    DBNavigator25: TDBNavigator;
    LEdit: TDBEdit;
    L1Edit: TDBEdit;
    L2Edit: TDBEdit;
    L3Edit: TDBEdit;
    MaxODEdit: TDBEdit;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel76: TPanel;
    DBNavigator26: TDBNavigator;
    CsatlRajzTartGrid: TdxDBGrid;
    CsatlRajzTartGridSrsz: TdxDBGridMaskColumn;
    CsatlRajzTartGridTartozekId: TdxDBGridMaskColumn;
    CsatlRajzTartGridRajzszam: TdxDBGridMaskColumn;
    CsatlRajzTartGridDarabszam: TdxDBGridMaskColumn;
    CsatlRajzTartGridMegjegyzes: TdxDBGridMaskColumn;
    CsatlRajzTartGridMegnevezes: TdxDBGridColumn;
    CsatlRajzTartGridRogzitette: TdxDBGridColumn;
    CsatlRajzTartGridRogzIdopont: TdxDBGridColumn;
    RendEgyebGridTartozekId: TdxDBGridColumn;
    RendEgyebGridTomloVegId: TdxDBGridColumn;
    SpeedButton21: TSpeedButton;
    DBText7: TDBText;
    DBText8: TDBText;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    BitBtn2: TBitBtn;
    Panel12: TPanel;
    AdatlapInspector: TdxDBInspector;
    AdatlapInspectorAtmero: TdxInspectorDBMaskRow;
    AdatlapInspectorpsi: TdxInspectorDBMaskRow;
    AdatlapInspectorMPa: TdxInspectorDBMaskRow;
    AdatlapInspectorLang: TdxInspectorDBCheckRow;
    AdatlapInspectorBg: TdxInspectorDBCheckRow;
    AdatlapInspectorKg: TdxInspectorDBCheckRow;
    AdatlapInspectorPa: TdxInspectorDBCheckRow;
    AdatlapInspectorTipus: TdxInspectorDBMaskRow;
    AdatlapInspectorCsatl2: TdxInspectorDBMaskRow;
    AdatlapInspectorDarabSzam: TdxInspectorDBMaskRow;
    AdatlapInspectorHossz: TdxInspectorDBMaskRow;
    AdatlapInspectorHosszMe: TdxInspectorDBMaskRow;
    AdatlapInspectorTErtek: TdxInspectorDBMaskRow;
    AdatlapInspectorTPenznem: TdxInspectorDBMaskRow;
    AdatlapInspectorTKonfekcio: TdxInspectorDBMaskRow;
    AdatlapInspectorNormaIdo: TdxInspectorDBMaskRow;
    AdatlapInspectorDbjDatum: TdxInspectorDBDateRow;
    AdatlapInspectorMuvDatum: TdxInspectorDBDateRow;
    AdatlapInspectorFszHatarido: TdxInspectorDBDateRow;
    AdatlapInspectorFszBeerk: TdxInspectorDBDateRow;
    AdatlapInspectorAnyag: TdxInspectorDBMaskRow;
    AdatlapInspectorCsomagolas: TdxInspectorDBMaskRow;
    AdatlapInspectorEgyeb: TdxInspectorDBMaskRow;
    AdatlapInspectorTMegj: TdxInspectorDBMaskRow;
    AdatlapInspectorTModosit: TdxInspectorDBMaskRow;
    AdatlapInspectorTorolt: TdxInspectorDBCheckRow;
    AdatlapInspectorBeszolg: TdxInspectorDBCheckRow;
    AdatlapInspectorTModHatarido: TdxInspectorDBDateRow;
    AdatlapInspectorBeszolgIdo: TdxInspectorDBDateRow;
    AdatlapInspectorBeszolgDb: TdxInspectorDBMaskRow;
    AdatlapInspectorBeszolgHossz: TdxInspectorDBMaskRow;
    AdatlapInspectorTomeg: TdxInspectorDBMaskRow;
    AdatlapInspectorGyartasInd: TdxInspectorDBDateRow;
    AdatlapInspectorBefejezoMuv: TdxInspectorDBDateRow;
    AdatlapInspectorAccListExist: TdxInspectorDBCheckRow;
    AdatlapInspectorAccCreator: TdxInspectorDBMaskRow;
    AdatlapInspectorRow61: TdxInspectorComplexRow;
    AdatlapInspectorRow62: TdxInspectorComplexRow;
    AdatlapInspectorRow63: TdxInspectorComplexRow;
    AdatlapInspectorRow64: TdxInspectorComplexRow;
    AdatlapInspectorRow65: TdxInspectorComplexRow;
    AdatlapInspectorRow66: TdxInspectorComplexRow;
    AdatlapInspectorCsatl1: TdxInspectorDBMaskRow;
    AdatlapInspectorCsatl1Rsz: TdxInspectorDBButtonRow;
    AdatlapInspectorCsatl2Rsz: TdxInspectorDBButtonRow;
    AdatlapInspectorBelsoHuvely: TdxInspectorDBButtonRow;
    AdatlapInspectorHuvely: TdxInspectorDBButtonRow;
    AdatlapInspectorBiztBilincs: TdxInspectorDBButtonRow;
    AdatlapInspectorRow68: TdxInspectorDBCheckRow;
    AdatlapInspectorRow69: TdxInspectorDBMaskRow;
    AdatlapInspectorRow70: TdxInspectorDBMaskRow;
    AdatlapInspectorSpiralkup: TdxInspectorDBButtonRow;
    AdatlapInspectorEmelobilincs: TdxInspectorDBButtonRow;
    AdatlapInspectorVedoHuvely: TdxInspectorDBButtonRow;
    AdatlapInspectorOsztottHuvely: TdxInspectorDBButtonRow;
    AdatlapInspectorKonstrukcio: TdxInspectorDBButtonRow;
    AdatlapInspectorKonstrukcio2: TdxInspectorDBButtonRow;
    AdatlapInspectorKv: TdxInspectorDBCheckRow;
    AdatlapInspectorInspektor: TdxInspectorDBExtLookupRow;
    AdatlapInspectorInterlock: TdxInspectorDBCheckRow;
    AdatlapInspectorKvMua: TdxInspectorDBCheckRow;
    AdatlapInspectorKvFedHelix: TdxInspectorDBCheckRow;
    AdatlapInspectorKvNFedHelix: TdxInspectorDBCheckRow;
    AdatlapInspectorRow73: TdxInspectorDBRow;
    AdatlapInspectorRow74: TdxInspectorDBRow;
    AdatlapInspectorRow75: TdxInspectorComplexRow;
    AdatlapInspectorRow76: TdxInspectorDBRow;
    AdatlapInspectorRow77: TdxInspectorDBRow;
    AdatlapInspectorRow78: TdxInspectorDBRow;
    AdatlapInspectorRow79: TdxInspectorDBRow;
    AdatlapInspectorRow80: TdxInspectorDBRow;
    AdatlapInspectorRow81: TdxInspectorDBRow;
    AdatlapInspectorRow82: TdxInspectorDBRow;
    AdatlapInspectorRow83: TdxInspectorDBRow;
    AdatlapInspectorRow84: TdxInspectorDBRow;
    AdatlapInspectorRow85: TdxInspectorDBRow;
    AdatlapInspectorRow86: TdxInspectorDBRow;
    AdatlapInspectorRow87: TdxInspectorDBRow;
    AdatlapInspectorRow88: TdxInspectorDBRow;
    AdatlapInspectorRow89: TdxInspectorDBRow;
    AdatlapInspectorTRogzit: TdxInspectorDBRow;
    AdatlapInspectorTRogzIdo: TdxInspectorDBRow;
    AdatlapInspectorKonstrDatum: TdxInspectorDBRow;
    AdatlapInspectorTKonfekDatum: TdxInspectorDBRow;
    AdatlapInspectorAccListDate: TdxInspectorDBRow;
    AdatlapInspectorTModIdo: TdxInspectorDBRow;
    AdatlapInspectorRow90: TdxInspectorDBRow;
    AdatlapInspectorRow91: TdxInspectorDBRow;
    AdatlapInspectorRow92: TdxInspectorDBCheckRow;
    AdatlapInspectorRow93: TdxInspectorDBRow;
    AdatlapInspectorRow94: TdxInspectorDBRow;
    AdatlapInspectorRow95: TdxInspectorDBRow;
    AdatlapInspectorH2S: TdxInspectorDBCheckRow;
    AdatlapInspectorRow97: TdxInspectorDBRow;
    AdatlapInspectorRow98: TdxInspectorDBRow;
    AdatlapInspectorRow99: TdxInspectorDBRow;
    AdatlapInspectorEbExt: TdxInspectorDBButtonRow;
    AdatlapInspectorBbExt: TdxInspectorDBButtonRow;
    AdatlapInspectorOsszeallRsz: TdxInspectorDBButtonRow;
    ToolBar2: TToolBar;
    DBNavigator16: TDBNavigator;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    AutoChangeAccept: TAction;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolBar3: TToolBar;
    DBNavigator15: TDBNavigator;
    ToolButton17: TToolButton;
    ToolButton19: TToolButton;
    OrderRefresh: TAction;
    ToolButton18: TToolButton;
    ToolButton21: TToolButton;
    ToolButton24: TToolButton;
    Jump2Order: TAction;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolBar4: TToolBar;
    DBNavigator18: TDBNavigator;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    SetOrderHeadColWidth: TAction;
    ToolButton31: TToolButton;
    ToolBar5: TToolBar;
    DBNavigator5: TDBNavigator;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    MfCkszSaveBtn: TBitBtn;
    MfCkszUndoBtn: TBitBtn;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    SetMfCkszColWidth: TAction;
    dxDBGrid6KonstrLsz: TdxDBGridColumn;
    PackHeadGridCreatorName: TdxDBGridColumn;
    PackHeadGridCreateDate: TdxDBGridColumn;
    dxDBGrid3CreatorName: TdxDBGridColumn;
    dxDBGrid3CreateDate: TdxDBGridColumn;
    ErvtGrid: TdxDBGrid;
    ErvtGridKonstrLsz: TdxDBGridMaskColumn;
    ErvtGridErvenytelenit: TdxDBGridMaskColumn;
    ToolBar6: TToolBar;
    DBNavigator4: TDBNavigator;
    PackRefresh: TAction;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    NewPack: TAction;
    BitBtn3: TBitBtn;
    NewPackRev: TAction;
    BitBtn9: TBitBtn;
    NewPackVer: TAction;
    BitBtn10: TBitBtn;
    ToolButton41: TToolButton;
    PackQuery: TAction;
    ToolButton42: TToolButton;
    SetPackColWidth: TAction;
    PackItemQuery: TAction;
    ToolBar8: TToolBar;
    ShowPackReport: TAction;
    DBNavigator2: TDBNavigator;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    DrawSearch: TAction;
    PackItemGridDescription: TdxDBGridColumn;
    TomloNevCombo: TDBComboBox;
    InsertHoseTypeButton: TSpeedButton;
    OpenAtveteliDocs: TAction;
    ToolButton48: TToolButton;
    ToolButton47: TToolButton;
    BitBtn11: TBitBtn;
    HoseNameEdit: TAction;
    ToolButton49: TToolButton;
    ToolButton50: TToolButton;
    Timer2: TTimer;
    ToolButton51: TToolButton;
    ShowBookmarkList: TAction;
    AddPackBmk: TAction;
    ToolButton20: TToolButton;
    ToolButton22: TToolButton;
    ShowPackBmkList: TAction;
    ToolButton23: TToolButton;
    Panel2: TPanel;
    PackItemsGrid: TdxDBGrid;
    PackItemsGridPackId: TdxDBGridMaskColumn;
    PackItemsGridPackItemId: TdxDBGridMaskColumn;
    PackItemsGridDescription: TdxDBGridMaskColumn;
    ToolBar7: TToolBar;
    DBNavigator1: TDBNavigator;
    ToolButton44: TToolButton;
    ToolButton43: TToolButton;
    Splitter3: TSplitter;
    AnyagszSheet: TTabSheet;
    Panel7: TPanel;
    AnyagGridMenu: TPopupMenu;
    Oszlopkigaztsa1: TMenuItem;
    Azsszesgkibontsa1: TMenuItem;
    Azsszesgbecsuksa1: TMenuItem;
    Panel10: TPanel;
    Panel11: TPanel;
    RendAnormaGrid: TdxDBGrid;
    RendAnormaGridRendelesAz: TdxDBGridMaskColumn;
    RendAnormaGridRendSz: TdxDBGridMaskColumn;
    RendAnormaGridVevo: TdxDBGridMaskColumn;
    RendAnormaGridFelhasznalo: TdxDBGridMaskColumn;
    RendAnormaGridTetelSrsz: TdxDBGridMaskColumn;
    RendAnormaGridCikkszam: TdxDBGridMaskColumn;
    RendAnormaGridSpecifikacio: TdxDBGridMaskColumn;
    RendAnormaGridAtmero: TdxDBGridMaskColumn;
    RendAnormaGridAtmeroMe: TdxDBGridMaskColumn;
    RendAnormaGridHossz: TdxDBGridMaskColumn;
    RendAnormaGridHosszMe: TdxDBGridMaskColumn;
    RendAnormaGridDarabszam: TdxDBGridMaskColumn;
    RendAnormaGridTModHatarido: TdxDBGridDateColumn;
    RendAnormaGridRendRogzDatum: TdxDBGridDateColumn;
    RendAnormaGridAnormaId: TdxDBGridMaskColumn;
    RendAnormaGridKonstrukcioKod: TdxDBGridMaskColumn;
    RendAnormaGridAnormaKod: TdxDBGridMaskColumn;
    RendAnormaGridAnormaNev: TdxDBGridMaskColumn;
    Panel36: TPanel;
    Splitter13: TSplitter;
    Panel39: TPanel;
    AnyagszTetelGrid: TdxDBGrid;
    Splitter17: TSplitter;
    Panel41: TPanel;
    Panel44: TPanel;
    Panel77: TPanel;
    BitBtn17: TBitBtn;
    DBNavigator6: TDBNavigator;
    UjAnyagszukseglet: TAction;
    Panel78: TPanel;
    BitBtn20: TBitBtn;
    InsertSelected: TAction;
    BitBtn13: TBitBtn;
    OpenOrderQry: TAction;
    AnyagszTetelGridId: TdxDBGridMaskColumn;
    AnyagszTetelGridItemId: TdxDBGridMaskColumn;
    AnyagszTetelGridRendelesszam: TdxDBGridMaskColumn;
    AnyagszTetelGridTetelSrsz: TdxDBGridMaskColumn;
    AnyagszTetelGridCikkszam: TdxDBGridMaskColumn;
    AnyagszTetelGridKonstrukcio: TdxDBGridMaskColumn;
    AnyagszTetelGridAnormaId: TdxDBGridMaskColumn;
    AnyagszTetelGridHossz: TdxDBGridMaskColumn;
    AnyagszTetelGriddb: TdxDBGridMaskColumn;
    BitBtn21: TBitBtn;
    SaveAnyagszList: TAction;
    BitBtn22: TBitBtn;
    OpenAnyagszList: TAction;
    CalcAnyagszukseglet: TAction;
    BitBtn23: TBitBtn;
    AnyagszuksegletGrid: TdxDBGrid;
    AnyagszuksegletGridx: TdxDBGridMaskColumn;
    AnyagszuksegletGridRendelesszam: TdxDBGridMaskColumn;
    AnyagszuksegletGridTetelSrsz: TdxDBGridMaskColumn;
    AnyagszuksegletGridKeszCikkszam: TdxDBGridMaskColumn;
    AnyagszuksegletGridKonstrukcio: TdxDBGridMaskColumn;
    AnyagszuksegletGridAnormaTetelSzam: TdxDBGridMaskColumn;
    AnyagszuksegletGridTetelNev: TdxDBGridMaskColumn;
    AnyagszuksegletGridCikkszam: TdxDBGridMaskColumn;
    AnyagszuksegletGridAnyagnev: TdxDBGridMaskColumn;
    AnyagszuksegletGridBruttoUzme: TdxDBGridMaskColumn;
    AnyagszuksegletGridUzme: TdxDBGridMaskColumn;
    AnyagszuksegletGridBruttoTomeg: TdxDBGridMaskColumn;
    AnyagszuksegletGridMe: TdxDBGridMaskColumn;
    AnyagszGridMenu: TPopupMenu;
    Oszlopokigaztsa4: TMenuItem;
    sszesgkibontsa1: TMenuItem;
    Azsszesgbecsuksa2: TMenuItem;
    Adatokvglapra1: TMenuItem;
    Cellamsolsa1: TMenuItem;
    ToolButton52: TToolButton;
    Jump2MfCksz: TAction;
    ToolButton53: TToolButton;
    ToolButton54: TToolButton;
    Jump2DataSheet: TAction;
    MfCkszGridFelkesz6: TdxDBGridMaskColumn;
    MfCkszGridVulk6: TdxDBGridMaskColumn;
    MfCkszGridTomloveg6: TdxDBGridMaskColumn;
    MfCkszGridFelkesz7: TdxDBGridMaskColumn;
    MfCkszGridVulk7: TdxDBGridMaskColumn;
    MfCkszGridTomloveg7: TdxDBGridMaskColumn;
    Panel79: TPanel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    TipusJelEdit: TMaskEdit;
    SorozatSzamEdit: TMaskEdit;
    SorszamEdit: TMaskEdit;
    VerzioEdit: TMaskEdit;
    DrawPathEdit: TComboEdit;
    MegnevezesEdit: TEdit;
    Label94: TLabel;
    Label95: TLabel;
    MegjegyzesEdit: TEdit;
    KotesszamEdit: TEdit;
    Label96: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    EgyebKapcsEdit: TEdit;
    MsoFocsoportCombo: TDBLookupComboBox;
    MsoCsoportCombo: TDBLookupComboBox;
    MsoAlcsoportCombo: TDBLookupComboBox;
    Label101: TLabel;
    SharePointLinkEdit: TEdit;
    NewMsoBtn: TBitBtn;
    SaveMsoBtn: TBitBtn;
    MsoDrawGridCsoportNev: TdxDBGridColumn;
    MsoDrawGridAlcsoportNev: TdxDBGridColumn;
    MsoDrawGridSharePointLink: TdxDBGridHyperLinkColumn;
    MsoDrawGridFocsoportNev: TdxDBGridColumn;
    MsoIdEdit: TEdit;
    Label102: TLabel;
    DokTipusCombo: TDBLookupComboBox;
    Azsszesgkibontsa2: TMenuItem;
    Azsszesgbecsuksa3: TMenuItem;
    MsoDrawGridUtvonal: TdxDBGridColumn;
    MsoDrawGridMsoKategoriaNev: TdxDBGridColumn;
    MsoDrawGridMsoDoktipusNev: TdxDBGridColumn;
    MsoDrawGridSorozatszam: TdxDBGridColumn;
    DrawNameEdit: TComboEdit;
    OpenDialog1: TOpenDialog;
    MsoDrawGridVerzio: TdxDBGridColumn;
    NewMsoItem: TAction;
    SaveMsoItem: TAction;
    MarkNumEdit: TComboEdit;
    MarkMemo: TMemo;
    CouplingsGridSSRC: TdxDBGridCheckColumn;
    CouplingsGridMP: TdxDBGridCheckColumn;
    MsoDrawGridErvenyes: TdxDBGridCheckColumn;
    ErvenyesCheckBox: TCheckBox;
    Panel80: TPanel;
    Splitter18: TSplitter;
    MfCkszInspector: TdxDBInspector;
    MfCkszInspectorItemId: TdxInspectorDBMaskRow;
    MfCkszInspectorPrDatum: TdxInspectorDBDateRow;
    MfCkszInspectorMtKeszDatum: TdxInspectorDBDateRow;
    MfCkszInspectorRegiCksz: TdxInspectorDBMaskRow;
    MfCkszInspectorSAPCksz: TdxInspectorDBMaskRow;
    MfCkszInspectorMtFelkeszDatum: TdxInspectorDBDateRow;
    MfCkszInspectorNev: TdxInspectorDBMaskRow;
    MfCkszInspectorHossz: TdxInspectorDBMaskRow;
    MfCkszInspectorFelkesz5: TdxInspectorDBMaskRow;
    MfCkszInspectorVulk5: TdxInspectorDBMaskRow;
    MfCkszInspectorTomloveg5: TdxInspectorDBMaskRow;
    MfCkszInspectorFelkesz6: TdxInspectorDBMaskRow;
    MfCkszInspectorVulk6: TdxInspectorDBMaskRow;
    MfCkszInspectorTomloveg6: TdxInspectorDBMaskRow;
    MfCkszInspectorFelkesz7: TdxInspectorDBMaskRow;
    MfCkszInspectorVulk7: TdxInspectorDBMaskRow;
    MfCkszInspectorTomloveg7: TdxInspectorDBMaskRow;
    MfCkszInspectorFelkesz9: TdxInspectorDBMaskRow;
    MfCkszInspectorVulk9: TdxInspectorDBMaskRow;
    MfCkszInspectorTomloveg9: TdxInspectorDBMaskRow;
    MfCkszInspectorMuszJell: TdxInspectorDBMaskRow;
    MfCkszInspectorKonstr: TdxInspectorDBMaskRow;
    MfCkszInspectorKsz: TdxInspectorDBMaskRow;
    MfCkszInspectorAsz: TdxInspectorDBMaskRow;
    MfCkszInspectorMtfKesz: TdxInspectorDBMaskRow;
    MfCkszInspectorMegjegyzes: TdxInspectorDBMaskRow;
    MfCkszInspectorMtfFelkesz: TdxInspectorDBMaskRow;
    MfCkszInspectorKeszitette: TdxInspectorDBMaskRow;
    MfCkszInspectorKeszitesDatuma: TdxInspectorDBDateRow;
    MfCkszInspectorModositotta: TdxInspectorDBMaskRow;
    MfCkszInspectorModositasDatuma: TdxInspectorDBDateRow;
    MfCkszInspectorJelzesKod: TdxInspectorDBMaskRow;
    MfCkszInspectorJelzesNev: TdxInspectorLookupRow;
    MfCkszInspectorSzin: TdxInspectorLookupRow;
    MfCkszInspectorNorma: TdxInspectorDBCheckRow;
    MfCkszInspectorSAP: TdxInspectorDBCheckRow;
    MfCkszInspectorTBP: TdxInspectorDBCheckRow;
    MfCkszInspectorGraf: TdxInspectorDBCheckRow;
    MfCkszInspectorTorzslap: TdxInspectorDBCheckRow;
    MfCkszGridNorma: TdxDBGridCheckColumn;
    MfCkszGridSAP: TdxDBGridCheckColumn;
    MfCkszGridTBP: TdxDBGridCheckColumn;
    MfCkszGridGraf: TdxDBGridCheckColumn;
    MfCkszGridTorzslap: TdxDBGridCheckColumn;
    MfCkszMenu: TPopupMenu;
    Akivlasztottrekordmsolsajrekordba1: TMenuItem;
    AdatokexportlsaExcelbe1: TMenuItem;
    Akivlasztottrekordadatainakmsolsajrekordba1: TMenuItem;
    CopyCouplingData: TAction;
    Adatokmsolsavglapra1: TMenuItem;
    Rekordmsolsa1: TMenuItem;
    Rekordbeillesztseakivlasztottsorokba1: TMenuItem;
    MeoGridSpecifikacio: TdxDBGridColumn;
    Oszlopelrejtse1: TMenuItem;
    PackHeadGridPackId: TdxDBGridColumn;
    MTDrawSheet: TTabSheet;
    Panel81: TPanel;
    MTRajzkonyvGrid: TdxDBGrid;
    MTRajzkonyvGridrajzszam: TdxDBGridMaskColumn;
    MTRajzkonyvGridrendelesszam: TdxDBGridMaskColumn;
    MTRajzkonyvGridID: TdxDBGridMaskColumn;
    MTRajzkonyvGridnyomas: TdxDBGridMaskColumn;
    MTRajzkonyvGridrev_datum: TdxDBGridMaskColumn;
    MTRajzkonyvGridmegjegyzes: TdxDBGridMaskColumn;
    DBNavigator27: TDBNavigator;
    MTRajzkonyvGridmegnevezes: TdxDBGridMemoColumn;
    AccessoriesSheet: TTabSheet;
    Panel82: TPanel;
    DBNavigator28: TDBNavigator;
    SzerelvenyGrid: TdxDBGrid;
    SzerelvenyGridTipusKod: TdxDBGridMaskColumn;
    SzerelvenyGridinch: TdxDBGridMaskColumn;
    SzerelvenyGridGegecsoOD: TdxDBGridMaskColumn;
    SzerelvenyGridOD: TdxDBGridMaskColumn;
    SzerelvenyGridID: TdxDBGridMaskColumn;
    SzerelvenyGridv1: TdxDBGridMaskColumn;
    SzerelvenyGridOD1: TdxDBGridMaskColumn;
    SzerelvenyGridOD2: TdxDBGridMaskColumn;
    SzerelvenyGridL: TdxDBGridMaskColumn;
    SzerelvenyGridMeret1: TdxDBGridMaskColumn;
    SzerelvenyGridMeret2: TdxDBGridMaskColumn;
    SzerelvenyGridpsi: TdxDBGridMaskColumn;
    SzerelvenyGridMPa: TdxDBGridMaskColumn;
    SzerelvenyGridRajzszam: TdxDBGridMaskColumn;
    SzerelvenyGridMegnevezes: TdxDBGridMaskColumn;
    SzerelvenyGridAveg: TdxDBGridMaskColumn;
    SzerelvenyGridBveg: TdxDBGridMaskColumn;
    SzerelvenyGridOsszeallRsz: TdxDBGridMaskColumn;
    SzerelvenyGridAnyag: TdxDBGridMaskColumn;
    SzerelvenyGridTomeg: TdxDBGridMaskColumn;
    SzerelvenyGridMegjegyzes: TdxDBGridMaskColumn;
    SzerelvenyGridTipusNev: TdxDBGridLookupColumn;
    HoronyvedelemSheet: TTabSheet;
    Panel83: TPanel;
    DBNavigator29: TDBNavigator;
    HoronyvedelemGrid: TdxDBGrid;
    HoronyvedelemGridHorony: TdxDBGridMaskColumn;
    HoronyvedelemGridHomokfuvozashoz: TdxDBGridMaskColumn;
    HoronyvedelemGridKiszallitashoz: TdxDBGridMaskColumn;
    HoronyvedelemGridMosatashoz: TdxDBGridMaskColumn;
    HoronyvedelemGridMegjegyzes: TdxDBGridMaskColumn;
    HoronyvedelemGridId: TdxDBGridColumn;
    HoronyvedelemGridRogzitette: TdxDBGridColumn;
    HoronyvedelemGridRogzIdopont: TdxDBGridColumn;
    SzerelvenyGridSrsz: TdxDBGridColumn;
    SzerelvenyGridRogzIdopont: TdxDBGridColumn;
    SzerelvenyGridRogzitette: TdxDBGridColumn;
    MTRajzkonyvGridRogzIdopont: TdxDBGridColumn;
    MTRajzkonyvGridRogzitette: TdxDBGridColumn;
    KikuldottSheet: TTabSheet;
    Panel84: TPanel;
    DBNavigator30: TDBNavigator;
    KikuldottGrid: TdxDBGrid;
    KikuldottGridOsszeallRajz: TdxDBGridMaskColumn;
    KikuldottGridMSORajz: TdxDBGridMaskColumn;
    KikuldottGridKotes: TdxDBGridMaskColumn;
    KikuldottGridCsatlakozo: TdxDBGridMaskColumn;
    KikuldottGridMegjegyzes: TdxDBGridMaskColumn;
    KikuldottGridId: TdxDBGridColumn;
    KikuldottGridRogzitette: TdxDBGridColumn;
    KikuldottGridRogzIdopont: TdxDBGridColumn;
    Panel85: TPanel;
    DBNavigator21: TDBNavigator;
    ToolBar9: TToolBar;
    ToolButton55: TToolButton;
    ToolButton56: TToolButton;
    ToolButton57: TToolButton;
    ToolButton58: TToolButton;
    ToolButton59: TToolButton;
    Find: TAction;
    CouplingsGridPSL_szint: TdxDBGridPickColumn;
    EgyebAlkatreszGridFestes: TdxDBGridColumn;
    EgyebAlkatreszGridTipus: TdxDBGridColumn;
    OnlyValidCheckBox: TCheckBox;
    BitBtn14: TBitBtn;
    SzerelvenyGridv: TdxDBGridColumn;
    SzerelvenyGridOD3: TdxDBGridColumn;
    SzerelvenyGridL1: TdxDBGridColumn;
    SzerelvenyGridL2: TdxDBGridColumn;
    SzerelvenyGridL3: TdxDBGridColumn;
    SzerelvenyGridL4: TdxDBGridColumn;
    SzerelvenyGridL5: TdxDBGridColumn;
    SzerelvenyGrida: TdxDBGridColumn;
    SzerelvenyGridR1: TdxDBGridColumn;
    SzerelvenyGridR2: TdxDBGridColumn;
    SzerelvenyGridpitch: TdxDBGridColumn;
    SzerelvenyGridalfa1: TdxDBGridColumn;
    SzerelvenyGridalfa2: TdxDBGridColumn;
    PackInspectorRow60: TdxInspectorComplexRow;
    PreOrderSheet: TTabSheet;
    Panel86: TPanel;
    ElorendelesMenu: TPopupMenu;
    Azsszeselemkibontsa1: TMenuItem;
    Azsszesgbecsuksa4: TMenuItem;
    AddElorendItem: TAction;
    RemoveElorendItem: TAction;
    PageControl7: TPageControl;
    TabSheet3: TTabSheet;
    Panel88: TPanel;
    ElorendelesGrid: TdxDBGrid;
    Panel87: TPanel;
    Label103: TLabel;
    Label104: TLabel;
    KezdoRendszEdit: TEdit;
    UtolsoRendszEdit: TEdit;
    ElorendReportBtn: TBitBtn;
    Panel89: TPanel;
    Panel90: TPanel;
    Panel91: TPanel;
    Splitter19: TSplitter;
    TabSheet4: TTabSheet;
    dxDBInspector1: TdxDBInspector;
    dxInspectorDBMaskRow1: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow2: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow3: TdxInspectorDBMaskRow;
    dxInspectorDBCheckRow1: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow2: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow3: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow4: TdxInspectorDBCheckRow;
    dxInspectorDBMaskRow4: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow6: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow7: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow8: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow9: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow10: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow11: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow12: TdxInspectorDBMaskRow;
    dxInspectorDBDateRow2: TdxInspectorDBDateRow;
    dxInspectorDBDateRow3: TdxInspectorDBDateRow;
    dxInspectorDBDateRow4: TdxInspectorDBDateRow;
    dxInspectorDBMaskRow13: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow14: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow15: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow16: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow17: TdxInspectorDBMaskRow;
    dxInspectorDBCheckRow5: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow6: TdxInspectorDBCheckRow;
    dxInspectorDBDateRow5: TdxInspectorDBDateRow;
    dxInspectorDBDateRow6: TdxInspectorDBDateRow;
    dxInspectorDBMaskRow18: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow19: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow20: TdxInspectorDBMaskRow;
    dxInspectorDBDateRow7: TdxInspectorDBDateRow;
    dxInspectorDBDateRow8: TdxInspectorDBDateRow;
    dxInspectorDBCheckRow7: TdxInspectorDBCheckRow;
    dxInspectorDBMaskRow21: TdxInspectorDBMaskRow;
    dxInspectorComplexRow1: TdxInspectorComplexRow;
    dxInspectorComplexRow2: TdxInspectorComplexRow;
    dxInspectorComplexRow3: TdxInspectorComplexRow;
    dxInspectorComplexRow4: TdxInspectorComplexRow;
    dxInspectorComplexRow5: TdxInspectorComplexRow;
    dxInspectorComplexRow6: TdxInspectorComplexRow;
    dxInspectorDBCheckRow8: TdxInspectorDBCheckRow;
    dxInspectorDBMaskRow23: TdxInspectorDBMaskRow;
    dxInspectorDBMaskRow24: TdxInspectorDBMaskRow;
    dxInspectorDBCheckRow9: TdxInspectorDBCheckRow;
    dxInspectorDBMemoRow1: TdxInspectorDBMemoRow;
    dxInspectorDBCheckRow10: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow11: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow12: TdxInspectorDBCheckRow;
    dxInspectorDBCheckRow13: TdxInspectorDBCheckRow;
    dxInspectorDBMemoRow2: TdxInspectorDBMemoRow;
    dxInspectorDBRow1: TdxInspectorDBRow;
    dxInspectorDBRow2: TdxInspectorDBRow;
    dxInspectorComplexRow7: TdxInspectorComplexRow;
    dxInspectorDBRow3: TdxInspectorDBRow;
    dxInspectorDBRow4: TdxInspectorDBRow;
    dxInspectorDBRow5: TdxInspectorDBRow;
    dxInspectorDBRow6: TdxInspectorDBRow;
    dxInspectorDBRow7: TdxInspectorDBRow;
    dxInspectorDBRow8: TdxInspectorDBRow;
    dxInspectorDBRow9: TdxInspectorDBRow;
    dxInspectorDBRow10: TdxInspectorDBRow;
    dxInspectorDBRow11: TdxInspectorDBRow;
    dxInspectorDBRow12: TdxInspectorDBRow;
    dxInspectorDBRow13: TdxInspectorDBRow;
    dxInspectorDBRow14: TdxInspectorDBRow;
    dxInspectorDBRow15: TdxInspectorDBRow;
    dxInspectorDBRow16: TdxInspectorDBRow;
    dxInspectorDBRow17: TdxInspectorDBRow;
    dxInspectorDBRow18: TdxInspectorDBRow;
    dxInspectorDBRow19: TdxInspectorDBRow;
    dxInspectorDBRow20: TdxInspectorDBRow;
    dxInspectorDBRow21: TdxInspectorDBRow;
    dxInspectorDBRow22: TdxInspectorDBRow;
    dxInspectorDBRow23: TdxInspectorDBRow;
    dxInspectorDBRow24: TdxInspectorDBRow;
    dxInspectorDBCheckRow14: TdxInspectorDBCheckRow;
    dxInspectorDBRow25: TdxInspectorDBRow;
    dxInspectorDBRow26: TdxInspectorDBRow;
    dxInspectorDBRow27: TdxInspectorDBRow;
    dxInspectorDBCheckRow15: TdxInspectorDBCheckRow;
    dxInspectorDBRow28: TdxInspectorDBRow;
    dxInspectorDBRow29: TdxInspectorDBRow;
    dxInspectorDBRow30: TdxInspectorDBRow;
    dxInspectorDBDateRow1: TdxInspectorDBRow;
    dxInspectorDBButtonRow14: TdxInspectorDBRow;
    dxInspectorDBButtonRow10: TdxInspectorDBRow;
    dxInspectorDBButtonRow11: TdxInspectorDBRow;
    dxInspectorDBMaskRow22: TdxInspectorDBRow;
    dxInspectorDBButtonRow1: TdxInspectorDBRow;
    dxInspectorDBMaskRow5: TdxInspectorDBRow;
    dxInspectorDBButtonRow2: TdxInspectorDBRow;
    dxInspectorDBButtonRow3: TdxInspectorDBRow;
    dxInspectorDBButtonRow4: TdxInspectorDBRow;
    dxInspectorDBButtonRow6: TdxInspectorDBRow;
    dxInspectorDBButtonRow7: TdxInspectorDBRow;
    dxInspectorDBButtonRow12: TdxInspectorDBRow;
    dxInspectorDBButtonRow5: TdxInspectorDBRow;
    dxInspectorDBButtonRow13: TdxInspectorDBRow;
    dxInspectorDBButtonRow9: TdxInspectorDBRow;
    dxInspectorDBExtLookupRow1: TdxInspectorDBRow;
    dxInspectorDBButtonRow8: TdxInspectorDBRow;
    dxDBInspector1Row102: TdxInspectorDBMemoRow;
    dxDBInspector1Row103: TdxInspectorDBMemoRow;
    dxDBInspector1Row104: TdxInspectorDBMemoRow;
    dxDBInspector1Row105: TdxInspectorDBMemoRow;
    Panel93: TPanel;
    Panel95: TPanel;
    ElorendelesRaktarraGrid: TdxDBGrid;
    Panel96: TPanel;
    DBNavigator31: TDBNavigator;
    ElorendelesRaktarraGridId: TdxDBGridMaskColumn;
    ElorendelesRaktarraGridRajzszam: TdxDBGridMaskColumn;
    ElorendelesRaktarraGridMegjegyzes: TdxDBGridMaskColumn;
    ElorendelesRaktarraGridRogzitette: TdxDBGridMaskColumn;
    ElorendelesRaktarraGridRogzIdopont: TdxDBGridDateColumn;
    ElorendelesRaktarraOpenBtn: TBitBtn;
    RaktarraBtn: TBitBtn;
    Splitter20: TSplitter;
    Panel97: TPanel;
    Panel98: TPanel;
    Panel99: TPanel;
    ElorendelesAdatokGrid: TdxDBGrid;
    ElorendelesAdatokGridElorendelesAdatId: TdxDBGridColumn;
    ElorendelesAdatokGridTipus: TdxDBGridPickColumn;
    ElorendelesAdatokGridRajzszam: TdxDBGridMaskColumn;
    ElorendelesAdatokGridIdMin: TdxDBGridMaskColumn;
    ElorendelesAdatokGridIdMax: TdxDBGridMaskColumn;
    ElorendelesAdatokGridFestes: TdxDBGridPickColumn;
    ElorendelesAdatokGridAr: TdxDBGridMaskColumn;
    ElorendelesAdatokGridCikkszamVeg: TdxDBGridMaskColumn;
    ElorendelesAdatokGridRogzitette: TdxDBGridMaskColumn;
    ElorendelesAdatokGridRogzIdopont: TdxDBGridDateColumn;
    DBNavigator32: TDBNavigator;
    ElorendelesAdatokOpenBtn: TBitBtn;
    Splitter21: TSplitter;
    Panel100: TPanel;
    Panel94: TPanel;
    ElorendSaveBtn: TBitBtn;
    ElorendUndoBtn: TBitBtn;
    MegrendelesBtn: TBitBtn;
    AdatlapInspectorOhExt: TdxInspectorDBButtonRow;
    Splitter22: TSplitter;
    Panel102: TPanel;
    Panel103: TPanel;
    DBNavigator33: TDBNavigator;
    BeszallitokOpenBtn: TBitBtn;
    ElorendelesGridId: TdxDBGridMaskColumn;
    ElorendelesGridRendSz: TdxDBGridMaskColumn;
    ElorendelesGridRendelesAz: TdxDBGridMaskColumn;
    ElorendelesGridTetelSrsz: TdxDBGridMaskColumn;
    ElorendelesGridSorszam: TdxDBGridMaskColumn;
    ElorendelesGridMegnevezes: TdxDBGridMaskColumn;
    ElorendelesGridSpecifikacio: TdxDBGridMaskColumn;
    ElorendelesGridRajzszam: TdxDBGridMaskColumn;
    ElorendelesGridAnyag: TdxDBGridMaskColumn;
    ElorendelesGridMeret: TdxDBGridMaskColumn;
    ElorendelesGridFestes: TdxDBGridMaskColumn;
    ElorendelesGridAzonosito: TdxDBGridMaskColumn;
    ElorendelesGridMegjegyzes: TdxDBGridMaskColumn;
    ElorendelesGridKiszallitando: TdxDBGridCheckColumn;
    ElorendelesGriddb: TdxDBGridMaskColumn;
    ElorendelesGridBeszallitoKod: TdxDBGridMaskColumn;
    ElorendelesGridBeszallitoiHatarido: TdxDBGridDateColumn;
    ElorendelesGridHozzaadottElem: TdxDBGridCheckColumn;
    ElorendelesGridAktiv: TdxDBGridCheckColumn;
    ElorendelesGridKivalasztva: TdxDBGridCheckColumn;
    ElorendelesGridFeldolgozva: TdxDBGridCheckColumn;
    ElorendelesGridRaktarra: TdxDBGridCheckColumn;
    ElorendelesGridRogzitette: TdxDBGridMaskColumn;
    ElorendelesGridRogzIdopont: TdxDBGridDateColumn;
    ElorendelesGridBeszallitoNev: TdxDBGridLookupColumn;
    Oszlopokigaztsa5: TMenuItem;
    BeszallitokGrid: TdxDBGrid;
    BeszallitokGridBeszallitoKod: TdxDBGridMaskColumn;
    BeszallitokGridBeszallitoNev: TdxDBGridMaskColumn;
    BeszallitokGridBeszallitoCim: TdxDBGridMaskColumn;
    BeszallitokGridRogzitette: TdxDBGridMaskColumn;
    BeszallitokGridRogzIdopont: TdxDBGridDateColumn;
    ElorendelesGridDiszponensMegjegyzes: TdxDBGridPopupColumn;
    DiszpoMegjMemo: TDBMemo;
    BeszMegjMemo: TDBMemo;
    ElorendelesGridBeszallitoMegjegyzes: TdxDBGridPopupColumn;
    BeszallitokGridElorendelesiMegjegyzes: TdxDBGridColumn;
    ElorendelesGridFelosztva: TdxDBGridCheckColumn;
    ItemDevideBtn: TBitBtn;
    NewLineBtn: TBitBtn;
    BitBtn18: TBitBtn;
    CouplingCopyAccessories: TAction;
    CouplingPasteAccessories: TAction;
    CouplingAccessoryToolBar: TToolBar;
    ToolButton60: TToolButton;
    ToolButton61: TToolButton;
    ToolButton62: TToolButton;
    ToolButton63: TToolButton;
    BitBtn24: TBitBtn;
    InspekcioLayout: TdxDBGridLayout;
    AdatlapInspectorInspectorMegj: TdxInspectorDBExtLookupRow;
    ShowSerials: TAction;
    ToolButton64: TToolButton;
    ToolButton65: TToolButton;
    WordApplication: TWordApplication;
    ShowOrderComment: TAction;
    ToolButton66: TToolButton;
    AdatlapInspectorRow67: TdxInspectorDBMemoRow;
    ApplicationEvents1: TApplicationEvents;
    AboutBoxBtn: TBitBtn;
    MfCkszGridDarabjegyzek: TdxDBGridCheckColumn;
    MfCkszInspectorRow40: TdxInspectorDBCheckRow;
    AdatlapInspectorRow103: TdxInspectorDBRow;
    RendFejQryGridRevExist: TdxDBGridCheckColumn;
    procedure FormCreate(Sender: TObject);
    procedure PackInspectorRow41ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure PackInspectorRow44ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure PackInspectorRow45ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure PackInspectorLiftingCollarIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure PackInspectorSafetyClampIdButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dxDBGrid3PackDevTypeNameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure PackItemsGridStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure PackItemsGridEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure MfCkszGridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure MfCkszOpenExecute(Sender: TObject);
    procedure MfCkszCloseExecute(Sender: TObject);
    procedure ConvertBtnClick(Sender: TObject);
    procedure MeTypeComboEnter(Sender: TObject);
    procedure KonstrOpenExecute(Sender: TObject);
    procedure KonstrCloseExecute(Sender: TObject);
    procedure DataSheet1OpenExecute(Sender: TObject);
    procedure KonfGridRajzszamEditButtonClick(Sender: TObject);
    procedure DBCheckBox9Click(Sender: TObject);
    procedure AllandoGridRajzszamEditButtonClick(Sender: TObject);
    procedure ValtozoGridRajzszamEditButtonClick(Sender: TObject);
    procedure DataSheet1CloseExecute(Sender: TObject);
    procedure PackOpenExecute(Sender: TObject);
    procedure PackCloseExecute(Sender: TObject);
    procedure CsatlGridCsatlakozoRszEditButtonClick(Sender: TObject);
    procedure ExtraDataSheetCloseExecute(Sender: TObject);
    procedure ExtraDataSheetOpenExecute(Sender: TObject);
    procedure AdatlapInspectorCsatl1RszButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorCsatl2RszButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CouplingsOpenExecute(Sender: TObject);
    procedure CouplingsCloseExecute(Sender: TObject);
    procedure AdatlapInspectorBelsoHuvelyButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorHuvelyButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorSpiralkupButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorEmelobilincsButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorBiztBilincsButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorVedoHuvelyButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorOsztottHuvelyButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Panel43Resize(Sender: TObject);
    procedure AtveteliExportExecute(Sender: TObject);
    procedure AdatlapInspectorKonstrukcioButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure AdatlapInspectorKonstrukcio2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure DataSheetImportExecute(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure WorkHelpSheetShow(Sender: TObject);
    procedure PackSheetShow(Sender: TObject);
    procedure MfCkszSheetShow(Sender: TObject);
    procedure KonstrSheetShow(Sender: TObject);
    procedure DataSheetGeneralShow(Sender: TObject);
    procedure DataSheetSpecificShow(Sender: TObject);
    procedure CouplingSheetShow(Sender: TObject);
    procedure FormStorage1SavePlacement(Sender: TObject);
    procedure FormStorage1RestorePlacement(Sender: TObject);
    procedure ItemChangesExecute(Sender: TObject);
    procedure QualificationOpenExecute(Sender: TObject);
    procedure QualificationReportExecute(Sender: TObject);
    procedure MinBizGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CopyMiscExecute(Sender: TObject);
    procedure PasteMiscExecute(Sender: TObject);
    procedure RendMinGridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure QualificationModReportExecute(Sender: TObject);
    procedure KiadatlanTetelekExecute(Sender: TObject);
    procedure OrderInputOpenExecute(Sender: TObject);
    procedure OrderInputSheetShow(Sender: TObject);
    procedure OrderOpenExecute(Sender: TObject);
    procedure OrderSheetShow(Sender: TObject);
    procedure DataSheetReportExecute(Sender: TObject);
    procedure DataSheetSelectionExecute(Sender: TObject);
    procedure DataSheetCopyExecute(Sender: TObject);
    procedure DataSheetPasteExecute(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DataSheetQualificationShow(Sender: TObject);
    procedure DataSheetAccessoryShow(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure CouplingsGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure KonstrSearchExecute(Sender: TObject);
    procedure CkszSearchExecute(Sender: TObject);
    procedure AddBookmarkExecute(Sender: TObject);
    procedure CopyTechnicalDataExecute(Sender: TObject);
    procedure PasteTechnicalDataExecute(Sender: TObject);
    procedure RendFejQryGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid7CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure Oszlopokigaztsa1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure TermekComboChange(Sender: TObject);
    procedure Oszlopokigaztsa2Click(Sender: TObject);
    procedure Oszlopokigaztsa3Click(Sender: TObject);
    procedure RendFejGridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure RendTetelGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure Rendelsvltozsai1Click(Sender: TObject);
    procedure Ttelekvltozsai1Click(Sender: TObject);
    procedure CkszEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpecEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RendMpaEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RendPsiEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpecEditEnter(Sender: TObject);
    procedure SpecEditExit(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RxDBComboEdit1ButtonClick(Sender: TObject);
    procedure Csatl1RszEditButtonClick(Sender: TObject);
    procedure Csatl2RszEditButtonClick(Sender: TObject);
    procedure CsomagEditButtonClick(Sender: TObject);
    procedure AdatImportBtnClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FeetLengthEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AdatlapInspectorGetEditColor(Sender: TdxInspectorRow;
      var AColor: TColor);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EmailSentExecute(Sender: TObject);
    procedure Panel62Resize(Sender: TObject);
    procedure PlanGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SpeedButton17Click(Sender: TObject);
    procedure Oszlopokigaztsa8Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure MeoSaveBtnClick(Sender: TObject);
    procedure MeoUndoBtnClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SafetyItemEditExecute(Sender: TObject);
    procedure SafetyItemAddExecute(Sender: TObject);
    procedure SafetyItemRemoveExecute(Sender: TObject);
    procedure PackItemGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure PackItemGridDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BitBtn12Click(Sender: TObject);
    procedure Oszlopokigaztsa9Click(Sender: TObject);
    procedure PackDevicesExecute(Sender: TObject);
    procedure AddPackOrderExecute(Sender: TObject);
    procedure AddPackItemExecute(Sender: TObject);
    procedure OrderPackGridPackDevTypeNameButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure RendEgyebGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure PackNotExistListExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure OrderPackGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure InfoChipDataExportExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Azsszesoszlopmegjelentse1Click(Sender: TObject);
    procedure SaveMfDataExecute(Sender: TObject);
    procedure UndoMfDataExecute(Sender: TObject);
    procedure MfCkszRefreshExecute(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure AlkatreszExportExecute(Sender: TObject);
    procedure Rajzbehvsa1Click(Sender: TObject);
    procedure AdatlapInspectorEbExtButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure MarkingShowBtnClick(Sender: TObject);
    procedure AdatlapInspectorOsszeallRszButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure MsoDrawSheetShow(Sender: TObject);
    procedure Oszlopokigaztsa6Click(Sender: TObject);
    procedure MsoDrawGridFilenevStartClick(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure CouplingsGridCsatlRszEditButtonClick(Sender: TObject);
    procedure MsoDrawGridUtvonalButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure MsoDrawGridClick(Sender: TObject);
    procedure tvonaltrlse1Click(Sender: TObject);
    procedure DBNavigator7BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure Panel61Resize(Sender: TObject);
    procedure SetCouplingAccessory(CsatlRsz: string; TomlovegId: integer) ;
    procedure SpeedButton21Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure AutoChangeAcceptExecute(Sender: TObject);
    procedure OrderRefreshExecute(Sender: TObject);
    procedure Jump2OrderExecute(Sender: TObject);
    procedure SetOrderHeadColWidthExecute(Sender: TObject);
    procedure SetMfCkszColWidthExecute(Sender: TObject);
    procedure dxDBGrid6DblClick(Sender: TObject);
    procedure ErvtGridDblClick(Sender: TObject);
    procedure PackRefreshExecute(Sender: TObject);
    procedure NewPackExecute(Sender: TObject);
    procedure NewPackRevExecute(Sender: TObject);
    procedure NewPackVerExecute(Sender: TObject);
    procedure PackQueryExecute(Sender: TObject);
    procedure SetPackColWidthExecute(Sender: TObject);
    procedure PackItemQueryExecute(Sender: TObject);
    procedure ShowPackReportExecute(Sender: TObject);
    procedure DrawSearchExecute(Sender: TObject);
    procedure InsertHoseTypeButtonClick(Sender: TObject);
    procedure OpenAtveteliDocsExecute(Sender: TObject);
    procedure HoseNameEditExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ShowBookmarkListExecute(Sender: TObject);
    procedure DataSheetAccessoryExit(Sender: TObject);
    procedure DataSheetAccessoryEnter(Sender: TObject);
    procedure AddPackBmkExecute(Sender: TObject);
    procedure ShowPackBmkListExecute(Sender: TObject);
    procedure PackSheetEnter(Sender: TObject);
    procedure PackSheetExit(Sender: TObject);
    procedure Oszlopkigaztsa1Click(Sender: TObject);
    procedure Azsszesgkibontsa1Click(Sender: TObject);
    procedure Azsszesgbecsuksa1Click(Sender: TObject);
    procedure RendAnormaGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure InsertSelectedExecute(Sender: TObject);
    procedure UjAnyagszuksegletExecute(Sender: TObject);
    procedure OpenOrderQryExecute(Sender: TObject);
    procedure SaveAnyagszListExecute(Sender: TObject);
    procedure OpenAnyagszListExecute(Sender: TObject);
    procedure CalcAnyagszuksegletExecute(Sender: TObject);
    procedure Oszlopokigaztsa4Click(Sender: TObject);
    procedure sszesgkibontsa1Click(Sender: TObject);
    procedure Azsszesgbecsuksa2Click(Sender: TObject);
    procedure Adatokvglapra1Click(Sender: TObject);
    procedure Cellamsolsa1Click(Sender: TObject);
    procedure Jump2MfCkszExecute(Sender: TObject);
    procedure Jump2DataSheetExecute(Sender: TObject);
    procedure DocSheetShow(Sender: TObject);
    procedure DrawPathEditButtonClick(Sender: TObject);
    procedure MsoFocsoportComboCloseUp(Sender: TObject);
    procedure MsoCsoportComboCloseUp(Sender: TObject);
    procedure Azsszesgkibontsa2Click(Sender: TObject);
    procedure Azsszesgbecsuksa3Click(Sender: TObject);
    procedure DrawNameEditButtonClick(Sender: TObject);
    procedure NewMsoItemExecute(Sender: TObject);
    procedure SaveMsoItemExecute(Sender: TObject);
    procedure MarkNumEditButtonClick(Sender: TObject);
    procedure MfCkszGridChangeNodeEx(Sender: TObject);
    procedure Akivlasztottrekordmsolsajrekordba1Click(Sender: TObject);
    procedure AdatokexportlsaExcelbe1Click(Sender: TObject);
    procedure CopyCouplingDataExecute(Sender: TObject);
    procedure Adatokmsolsavglapra1Click(Sender: TObject);
    procedure Rekordmsolsa1Click(Sender: TObject);
    procedure Rekordbeillesztseakivlasztottsorokba1Click(Sender: TObject);
    procedure Oszlopelrejtse1Click(Sender: TObject);
    procedure MTDrawSheetShow(Sender: TObject);
    procedure AccessoriesSheetShow(Sender: TObject);
    procedure HoronyvedelemSheetShow(Sender: TObject);
    procedure KikuldottSheetShow(Sender: TObject);
    procedure FindExecute(Sender: TObject);
    procedure ScrollBox7Resize(Sender: TObject);
    procedure EgyebAlkatreszGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure OnlyValidCheckBoxClick(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Azsszeselemkibontsa1Click(Sender: TObject);
    procedure Azsszesgbecsuksa4Click(Sender: TObject);
    procedure ElorendelesGridCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure NewItemBtnClick(Sender: TObject);
    procedure ElorendSaveBtnClick(Sender: TObject);
    procedure ElorendUndoBtnClick(Sender: TObject);
    procedure ElorendelesGridEditing(Sender: TObject;
      Node: TdxTreeListNode; var Allow: Boolean);
    procedure ElorendReportBtnClick(Sender: TObject);
    procedure ElorendelesRaktarraOpenBtnClick(Sender: TObject);
    procedure RaktarraBtnClick(Sender: TObject);
    procedure ElorendelesAdatokOpenBtnClick(Sender: TObject);
    procedure Panel94Resize(Sender: TObject);
    procedure MegrendelesBtnClick(Sender: TObject);
    procedure NewLineBtnClick(Sender: TObject);
    procedure BeszallitokOpenBtnClick(Sender: TObject);
    procedure Oszlopokigaztsa5Click(Sender: TObject);
    procedure ElorendelesGridDiszponensMegjegyzesCloseUp(Sender: TObject;
      var Text: String; var Accept: Boolean);
    procedure ElorendelesGridBeszallitoMegjegyzesCloseUp(Sender: TObject;
      var Text: String; var Accept: Boolean);
    procedure ItemDevideBtnClick(Sender: TObject);
    procedure KezdoRendszEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UtolsoRendszEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn18Click(Sender: TObject);
    procedure CouplingCopyAccessoriesExecute(Sender: TObject);
    procedure CouplingPasteAccessoriesExecute(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure ToolButton64Click(Sender: TObject);
    procedure ShowSerialsExecute(Sender: TObject);
    procedure ShowOrderCommentExecute(Sender: TObject);
    function GetOrderComment: widestring ;
    procedure ApplicationEvents1ActionExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure AboutBoxBtnClick(Sender: TObject);
    procedure ActionList1Execute(Action: TBasicAction;
      var Handled: Boolean);
  private
    PackReadOnly, PackOpened, OrderHeadReadOnly, OrderItemReadOnly: Boolean ;
    function SetUserRights(ProgName: String; Uid: integer): Boolean ;
    procedure FocusNextControl(CurrentControl: TWinControl) ;
    procedure SetSalesAreas ;
    procedure SetCurrencies ;
    procedure SetHoseUsers ;
    procedure SetHoseDealers ;
    procedure SetNewVisibles ;
    procedure ProgUpdates ;
  public
    CurrentUserName, HostName, IPaddr, WSAErr: string ;
    Versio: TVersionInfo ;
    SelectedDataSheetId, CurrentUserId, ActTermek, MaxPlanOrderNum, LastPanelHeight, MeoChangeNum,
    PlanChangeNum, LastPackNum, MfCkszChangeNum, BilincsChangeNum, MsoChangeNum: integer ;
    AtveteliSablonPath, ExtraCurrency, LastCurrency, LastOrderNum, PackMsg, VerMsg, ProgName, DrawStartPath,
    SeViewerPrg, SharePointAtveteliPath: string ;
    SharePointDbConnectionString: AnsiString ;
    TechnicalRec : TTechnicalRec ;
    PublicationChanged, AdatlapErvenyes, TechDataChanged, SpecGenerated, AutoUpdate, TestRun, NewVersionExist: Boolean ;
    ControlList: TList ;
    Technologus, Tervezo, MEO, Info, DataSheetBmkFormVisible, PackBmkFormVisible: Boolean ;
    ActAnyagszId, FocsoportKod, CsoportKod, AlcsoportKod, MfCkszRecId: integer ;
    MeoFields: Variant ;
    AktivNdx, HozzaadottElemNdx, KivalasztvaNdx, RaktarraNdx, FeldolgozvaNdx, FelosztvaNdx, PackLastCurrencyCode: integer ;
    procedure RefreshStatusBar ;
    function UnitConv(SourceUnit, DestUnit: integer; Value: double): double ;
    function GetMatNormCode(ConstrCode: string): string ;
    function GetSpecData(Cikkszam: string): TSpecDataRec ;
    function GetSapData(DataSet: TDataSet): TSapSpecRec ;
    function FeetToMeter(Feet: double): double ;
    function MpaToPsi(Mpa: double): double ;
    function PsiToMpa(psi: double): double ;
    function PaLining(Cikkszam: string): Boolean ;
    function FormatMsg(Rendelesszam: string; TetelSrsz: integer; Msg: string): string ;
    procedure MakeHoseSlaveRec(sr: TSapSpecRec; sd: TSpecDataRec) ;
    procedure RefreshOrders ;
    function NamedUnitConversion(InUnit, OutUnit: string; Value: double; Decimal: integer): double ;
    function SendMsg(FromAddress, Subject: string;
          ToAddress, ToCarbonCopy, ToBlindCarbonCopy, Body: TStringList; SilentMode: Boolean): Boolean ;
    procedure GetProgramBase ;
    function PackDevSelection(var PackDevRec: TPackDevRec): Boolean ;
    procedure ShowPackMessage ;
    procedure SpecDataSheetInit ;
    function GetErtTerulet(Vevo: string): string ;
    function GetCouplingMaxOD(KonstrLsz, CsatlRsz: string): double ;
    function OpenDraw(FullPath: string):Boolean ;
    function FindDraw(DwgName: string): String ;
    function GetCouplingWeight(CsatlRsz: string): double ;
    function GetTechLapData(CsatlRsz: string; var L1Caption: string): double ;
    function GetBodyWeight(KonstrLsz: string): double ;
    procedure LoadHoseTypeList ;
    procedure InsertHoseType ;
    function LocateOrderItem(Rendsz: string; TetelSrsz: integer): Boolean ;
    function LocatePackItem(CsomSz, Rev, Ver, Srsz: integer): Boolean ;
    function GetCouplingMaterial(CouplingDNb: string): string ;
    procedure GetMsoData ;
    procedure SetMsoData ;
    function CheckMsoData: Boolean ;
    procedure OpenAtveteli(DocName: string) ;
    //procedure ShowRsReport(ReportName: string) ;
    procedure AddEvent(EventName, ProgFileName, Note: string) ;
  end;

  procedure SetGridColWidth(Grid: TdxDbGrid) ;
  procedure ReadInspectorParams(Inspector: TDxDBInspector; FormStorage: TFormStorage) ;
  procedure WriteInspectorParams(Inspector: TDxDBInspector; FormStorage: TFormStorage) ;
  function GetDecimalNum(x: double): integer ;

var
  MainForm: TMainForm;
  f: Text ;
  CouplingAccessoryFields: variant ;
  HsIsStarting: Boolean ;
  //CouplingAccessoryLineCount, CouplingAccessoryFieldCount: integer ;

implementation

uses HoseSlaveDmU, KonstrJellFormU, FindItemFormU, CouplingQryFormU,
  AccessoryQryFormU, PackDevSelectFormU, PackReportU, RevSelectFormU,
  AdatlapReportU, ReportDmU, DataSheetImportFormU, ItemChangesFormU,
  QualificCompareFormU, PrgFormU, BizonylatInputFormU, RendMinReportU,
  RendMinModReportU, NemKiadottFormU, dmOrderU, DataSheetSelectFormU,
  ConstrSearchFormU, MatNumSearchFormU, RendelesDmU, OrderDmU,
  LookupFormU, NewOrderListFormU,
  MessagesFormU, PlanDmU, BiztEszkFormU, SafetyItemSelectFormU,
  MarkingFormU, ToolsDmU, RequiredPackListFormU, ICDataExportFormU,
  CompListExportFormU, DrawSearchFormU, BilincsFormU, PathSelectionFormU,
  HistoryFormU, AtveteliOpenFormU, HoseNameEditFormU, BookmarkListFormU,
  PackBmkListFormU, OpenAnyagszListFormU, VisibleColumnsFormU, SPDmU,
  MessageFormU, ReportParamsFormU, ElorendelesFormU, 
  ElorendelesReportU, ElorendelesEbBbOhReportU, ElorendelesOtherReportU,
  ChildNumInputFormU, SerialFormU, OrderCommentFormU, EventsFormU,
  AboutBoxU;

{$R *.DFM}

procedure SetGridColWidth(Grid: TdxDbGrid) ;
var
  i: integer ;
begin
  try
    for i := 0 to Grid.ColumnCount - 1 do begin
      Grid.ApplyBestFit(Grid.Columns[i]) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.SendMsg(FromAddress, Subject: string;
          ToAddress, ToCarbonCopy, ToBlindCarbonCopy, Body: TStringList; SilentMode: Boolean): Boolean ;
begin
  Result := False ;
  try
    NMSMTP1.PostMessage.ToAddress.Clear ;
    NMSMTP1.PostMessage.Body.Clear ;
    NMSMTP1.PostMessage.Attachments.Clear ;
    NMSMTP1.PostMessage.ToCarbonCopy.Clear ;
    NMSMTP1.PostMessage.ToBlindCarbonCopy.Clear ;

    NMSMTP1.PostMessage.FromAddress := FromAddress ;
    NMSMTP1.PostMessage.Subject := Subject ;
    if ToAddress <> Nil then NMSMTP1.PostMessage.ToAddress := ToAddress ;
    if ToCarbonCopy <> Nil then NMSMTP1.PostMessage.ToCarbonCopy := ToCarbonCopy ;
    if ToBlindCarbonCopy <> Nil then NMSMTP1.PostMessage.ToBlindCarbonCopy := ToBlindCarbonCopy ;
    if Body <> Nil then NMSMTP1.PostMessage.Body := Body ;
    if not NMSMTP1.Connected then NMSMTP1.Connect ;
    NMSMTP1.SendMail ;
    if not SilentMode then MessageDlg('A lev�l elk�ldve!', mtInformation, [mbOK], 0) ;
    Result := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.FormCreate(Sender: TObject);
(*
var
  fn, dir: string ;
  fd, FirstDate: TDatetime ;
  *)
begin
  try

    Dm.MainDb.Connected ;
    Versio := TVersionInfo.Create(Application.ExeName) ;
    ProgName := Versio.InternalName ;
    Dm.GetCurrentUser.ParamByName('@ProgramName').AsString := ProgName ;
    Dm.GetCurrentUser.Active := True ;
    CurrentUserName := Dm.GetCurrentUserUserName.AsString ;
    CurrentUserId := Dm.GetCurrentUserUserId.AsInteger ;
    Dm.GetCurrentUser.Active := False ;
    if not CheckVersion(Dm.MainDb, ProgName, Versio.FileVersion, 'ActualVersion', True) then begin
      Application.Terminate ;
    end ;

    // SharePointDbConnectionString
    Dm.spGetBaseParamStr.ParamByName('@ProgName').AsString := 'HoseSlave' ;
    Dm.spGetBaseParamStr.ParamByName('@ProductCode').AsInteger := 1 ;
    Dm.spGetBaseParamStr.ParamByName('@ParamName').AsString := 'SharePointDbConnectionString1' ;
    Dm.spGetBaseParamStr.ExecProc ;
    SharePointDbConnectionString := Trim(Dm.spGetBaseParamStr.ParamByName('@ParamStr').AsString) ;
    Dm.spGetBaseParamStr.ParamByName('@ParamName').AsString := 'SharePointDbConnectionString2' ;
    Dm.spGetBaseParamStr.ExecProc ;
    SharePointDbConnectionString := SharePointDbConnectionString + Trim(Dm.spGetBaseParamStr.ParamByName('@ParamStr').AsString) ;
    // SharePointAtveteliPath
    Dm.spGetBaseParamStr.ParamByName('@ParamName').AsString := 'SharePointAtveteliPath' ;
    Dm.spGetBaseParamStr.ExecProc ;
    SharePointAtveteliPath := Trim(Dm.spGetBaseParamStr.ParamByName('@ParamStr').AsString) ;

    // SharePointDbConnectionString
    // sdas010
    (*
    SharePointDbConnectionString := 'Provider=SQLOLEDB.1;Password=Start234;Persist Security Info=True;User ID=sdkonfuser;'
        + 'Initial Catalog=SharePoint_Content_MainPage;Data Source=sdas010;Use Procedure for Prepare=1;Auto Translate=True;'
        + 'Packet Size=4096;Workstation ID=SDD-FLU072;Use Encryption for Data=False;Tag with column collation when possible=False' ;
    *)
    // sdas001a
    (*
    SharePointDbConnectionString := 'Provider=SQLOLEDB.1;Password=konf123;Persist Security Info=True;User ID=sdkonfuser;'
        + 'Initial Catalog=SharePoint_Content_MainPage;Data Source=sdas001a;Use Procedure for Prepare=1;Auto Translate=True;'
        + 'Packet Size=4096;Workstation ID=SDD-FLU072;Use Encryption for Data=False;Tag with column collation when possible=False' ;
    // SharePointAtveteliPath
    //SharePointAtveteliPath := 'http://sdas001/' ;
    SharePointAtveteliPath := 'http://sdas001a/' ;
    *)

    PageControl1.ActivePage := WorkHelpSheet ;
    ControlList := TList.Create ;
    MainForm.GetTabOrderList(ControlList) ;
    if not SetUserRights(ProgName, CurrentUserId) then Halt(0) ;
    // D�tum form�tum be�ll�t�sa
    UseDelphiDateTimeFormats := True ;
    RefreshStatusBar ;
    PackOpened := False ;
    PublicationChanged := False ;
    TechDataChanged := False ;
    SpecGenerated := False ;
    AutoUpdate := False ;

    MeoChangeNum := 0 ;
    PlanChangeNum := 0 ;
    MfCkszChangeNum := 0 ;
    BilincsChangeNum := 0 ;
    MsoChangeNum := 0 ;
    MfCkszRecId := 0 ;

    LastPackNum := 0 ;
    ActAnyagszId := 0 ;
    PackMsg := '' ;
    VerMsg := '' ;
    NewVersionExist := False ;
    PackLastCurrencyCode := 16 ;
    SetNewVisibles ;

    ShowPackMessage ;
    //GetElorendelesGridColIndex ;

    // Inspekci� fajt�k felt�lt�se
    Dm.mInspekcio.Active := True ;
    Dm.mInspekcio.Append ;
    Dm.mInspekcioInspekcio.AsString := '' ;
    Dm.mInspekcio.Post ;
    Dm.mInspekcio.Append ;
    Dm.mInspekcioInspekcio.AsString := 'ABS-CDS' ;
    Dm.mInspekcio.Post ;
    Dm.mInspekcio.Append ;
    Dm.mInspekcioInspekcio.AsString := 'DNV-OS-E101' ;
    Dm.mInspekcio.Post ;
    Dm.mInspekcio.Append ;
    Dm.mInspekcioInspekcio.AsString := 'L�sd:Egy�b m�sz.jell.' ;
    Dm.mInspekcio.Post ;

    GetIPFromHost(HostName, IPaddr, WSAErr) ;
    AddEvent('A program elind�t�sa.', Versio.FileName, Versio.FileVersion + ';' + HostName + ';' + IPaddr) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.RefreshStatusBar ;
begin
  StatusBar1.Panels[0].Text := 'Felhaszn�l�: '+CurrentUserName ;
  StatusBar1.Panels[1].Text := Versio.FileVersion ;
  StatusBar1.Panels[2].Text := 'DB:' + Dm.MainDb.AliasName ;
end ;

procedure TMainForm.PackInspectorRow41ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  BodyId, BodyOd, MBRstorage, BodyWeight, OdMax: double ;
  BodyCode, BodyName: string ;
  InnerSteel, FireResistant, OuterSteel, Pa, Helix, HeatRaced,
  DragChain, LongHose: Boolean ;
begin
  try
    try
      if not (Dm.PackItem.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.KonstrJellQry.Active:=False ;
      Dm.KonstrJellQry.Active:=True ;
      if KonstrJellForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        BodyId:=Dm.KonstrJellQryIDrated.AsFloat ;
        BodyOd:=Dm.KonstrJellQryOD.AsFloat ;
        MBRstorage:=Dm.KonstrJellQryMBRstorage.AsFloat ;
        BodyWeight:=Dm.KonstrJellQryweight.AsFloat ;
        BodyCode:=Trim(Dm.KonstrJellQrybodyDNb.AsString) ;
        BodyName:=Dm.KonstrJellQrydescriptionH.AsString ;

        InnerSteel:=Dm.KonstrJellQrybg.AsBoolean ;
        FireResistant:=Dm.KonstrJellQryla.AsBoolean ;
        OuterSteel:=Dm.KonstrJellQrykg.AsBoolean ;
        Pa:=Dm.KonstrJellQrypa.AsBoolean ;
        Helix:=Dm.KonstrJellQryhe.AsBoolean ;
        HeatRaced:=Dm.KonstrJellQryfu.AsBoolean ;
        DragChain:=Dm.KonstrJellQrydc.AsBoolean ;
        LongHose:=Dm.KonstrJellQrynh.AsBoolean ;

        OdMax:=0 ;
        if BodyCode<>'' then begin
          Dm.GetDiameters.ParamByName('@KonstrukcioKod').AsString:=BodyCode ;
          Dm.GetDiameters.Active:=True ;
          if Dm.GetDiameters.RecordCount>0 then OdMax:=Dm.GetDiametersCsatlakozotest.AsFloat
          else begin
            OdMax:=0 ;
            ErrMsg('Nincs a csatlakoz� feletti �tm�r�re vonatkoz� adat!') ;
          end ;
        end ;

        //Dm.PackItem.Edit ;
        Dm.PackItemBodyId.AsFloat:=BodyId ;
        Dm.PackItemBodyOd.AsFloat:=BodyOd ;
        Dm.PackItemMBRstorage.AsFloat:=MBRstorage ;
        Dm.PackItemBodyWeight.AsFloat:=BodyWeight ;
        Dm.PackItemBodyCode.AsString:=BodyCode ;
        Dm.PackItemBodyName.AsString:=BodyName ;
        Dm.PackItemOdMax1.AsFloat:=OdMax ;
        Dm.PackItemOdMax2.AsFloat:=OdMax ;

        Dm.PackItemInnerSteel.AsBoolean:=InnerSteel ;
        Dm.PackItemFireResistant.AsBoolean:=FireResistant ;
        Dm.PackItemOuterSteel.AsBoolean:=OuterSteel ;
        Dm.PackItemPa.AsBoolean:=Pa ;
        Dm.PackItemHelix.AsBoolean:=Helix ;
        Dm.PackItemHeatRaced.AsBoolean:=HeatRaced ;
        Dm.PackItemDragChain.AsBoolean:=DragChain ;
        Dm.PackItemLongHose.AsBoolean:=LongHose ;

        DataSheetBmkFormVisible := False ;
        PackBmkFormVisible := False ;

        //Dm.PackItem.Post ;
      end ;
    finally
      Dm.KonstrJellQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackInspectorRow44ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  CouplingCode, CouplingName: string ;
  CouplingOd, CouplingWeight: double ;
begin
  try
    try
      if not (Dm.PackItem.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.CouplingQry.Active:=True ;
      if CouplingQryForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        CouplingCode:=Trim(Dm.CouplingQrycouplingDNb.AsString) ;
        CouplingName:=Dm.CouplingQryendFittingName.AsString ;
        CouplingOd:=Dm.CouplingQryND1.AsFloat ;
        CouplingWeight:=Dm.CouplingQryweight.AsFloat ;

        Dm.PackItemCouplingCode1.AsString:=CouplingCode ;
        Dm.PackItemCouplingName1.AsString:=CouplingName ;
        Dm.PackItemCouplingOd1.AsFloat:=CouplingOd ;
        Dm.PackItemCouplingWeight1.AsFloat:=CouplingWeight ;
      end ;
    finally
      Dm.GetDiameters.Active:=False ;
      Dm.CouplingQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackInspectorRow45ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  CouplingCode, CouplingName: string ;
  CouplingOd, CouplingWeight: double ;
begin
  try
    try
      if not (Dm.PackItem.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.CouplingQry.Active:=True ;
      if CouplingQryForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        CouplingCode:=Trim(Dm.CouplingQrycouplingDNb.AsString) ;
        CouplingName:=Dm.CouplingQryendFittingName.AsString ;
        CouplingOd:=Dm.CouplingQryND1.AsFloat ;
        CouplingWeight:=Dm.CouplingQryweight.AsFloat ;

        Dm.PackItemCouplingCode2.AsString:=CouplingCode ;
        Dm.PackItemCouplingName2.AsString:=CouplingName ;
        Dm.PackItemCouplingOd2.AsFloat:=CouplingOd ;
        Dm.PackItemCouplingWeight2.AsFloat:=CouplingWeight ;
      end ;
    finally
      Dm.GetDiameters.Active:=False ;
      Dm.CouplingQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackInspectorLiftingCollarIdButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
  LiftingCollarCode, LiftingCollarName: string ;
  LiftingCollarWeight, LiftingCollarId, LiftingCollarOd: double ;
begin
  try
    try
      if not (Dm.PackItem.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.AccessoryQry.Active:=False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString:='where accessoryType = 2' ;
      Dm.AccessoryQry.Active:=True ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        LiftingCollarCode:=Dm.AccessoryQryaccessoryDNb.AsString ;
        LiftingCollarName:=Dm.AccessoryQrydescription.AsString ;
        LiftingCollarWeight:=Dm.AccessoryQryweight.AsFloat ;
        LiftingCollarId:=Dm.AccessoryQryID.AsFloat ;
        LiftingCollarOd:=Dm.AccessoryQryOD.AsFloat ;

        Dm.PackItemLiftingCollarCode.AsString:=LiftingCollarCode ;
        Dm.PackItemLiftingCollarName.AsString:=LiftingCollarName ;
        Dm.PackItemLiftingCollarWeight.AsFloat:=LiftingCollarWeight ;
        Dm.PackItemLiftingCollarId.AsFloat:=LiftingCollarId ;
        Dm.PackItemLiftingCollarOd.AsFloat:=LiftingCollarOd ;
      end ;
    finally
      Dm.AccessoryQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackInspectorSafetyClampIdButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  SafetyClampCode, SafetyClampName: string ;
  SafetyClampWeight, SafetyClampId, SafetyClampOd: double ;
begin
  try
    try
      if not (Dm.PackItem.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.AccessoryQry.Active:=False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString:='where accessoryType = 1' ;
      //Dm.AccessoryQry.ParamByName('accessoryType').AsInteger:=1 ;
      Dm.AccessoryQry.Active:=True ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        SafetyClampCode:=Dm.AccessoryQryaccessoryDNb.AsString ;
        SafetyClampName:=Dm.AccessoryQrydescription.AsString ;
        SafetyClampWeight:=Dm.AccessoryQryweight.AsFloat ;
        SafetyClampId:=Dm.AccessoryQryId.AsFloat ;
        SafetyClampOd:=Dm.AccessoryQryOd.AsFloat ;

        Dm.PackItemSafetyClampCode.AsString:=SafetyClampCode ;
        Dm.PackItemSafetyClampName.AsString:=SafetyClampName ;
        Dm.PackItemSafetyClampWeight.AsFloat:=SafetyClampWeight ;
        Dm.PackItemSafetyClampId.AsFloat:=SafetyClampId ;
        Dm.PackItemSafetyClampOd.AsFloat:=SafetyClampOd ;
      end ;
    finally
      Dm.AccessoryQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.dxDBGrid3PackDevTypeNameButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  PackDevRec: TPackDevRec ;
begin
  try
    try
      FillChar(PackDevRec, SizeOf(TPackDevRec), 0) ;
      PackDevRec.DeviceTypeName := Trim(dxDBGrid3PackDevTypeName.Field.AsString) ;
      PackDevRec.DeviceTypeCode := dxDBGrid3PackDevTypeCode.Field.AsInteger ;
      PackDevRec.DeviceId := dxDBGrid3PackDevCode.Field.AsInteger ;
      PackDevRec.DeviceName := Trim(dxDBGrid3PackDevName.Field.AsString) ;
      PackDevRec.CurrencyCode := dxDBGrid3.DataSource.DataSet.FieldByName('CurrencyCode').AsInteger ;
      if PackDevSelection(PackDevRec) then begin
        if not (dm.Packages.State in [dsEdit, dsInsert]) then dm.Packages.Edit ;
        Dm.PackagesPackDevTypeName.AsString := PackDevRec.DeviceTypeName ;
        Dm.PackagesPackDevName.AsString := PackDevRec.DeviceName ;
        Dm.PackagesDim1.AsFloat := PackDevRec.d1 ;
        Dm.PackagesDim2.AsFloat := PackDevRec.d2 ;
        Dm.PackagesDim3.AsFloat := PackDevRec.d3 ;
        Dm.PackagesWeight.AsFloat := PackDevRec.Weight ;
        Dm.PackagesPrice.AsFloat := PackDevRec.Price ;
      end ;
    finally
      //Dm.PackDevice.Active := False ;
      //Dm.PackDeviceType.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackItemsGridStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  PackItemsGrid.Enabled:=False ;
end;

procedure TMainForm.PackItemsGridEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  PackItemsGrid.Enabled:=True ;
end;

function TMainForm.SetUserRights(ProgName: String; Uid: integer): Boolean ;
var
  ControlTag, CurrentTag, ActionTag, i: integer ;
  TagList: TLongintList ;
  Control: TControl ;
  Active: Boolean ;
  Action: TAction ;
begin
  Result := False ;
  TagList := Nil ;
  Technologus := False ;
  Tervezo := False ;
  MEO := False ;
  Info := False ;
  try
    try
      // Csoporttags�g meg�llap�t�sa                                                                                      +
      Dm.spUserRoleMembers.ParamByName('@UserName').AsString := CurrentUserName ;
      Dm.spUserRoleMembers.Active := True ;

      if Dm.spUserRoleMembers.Locate('DbRole', 'Technologusok', [loCaseInsensitive]) then begin
        Technologus := True ;
        TechCheckBox.Checked := True ;
      end else TechCheckBox.Checked := False ;
      if Dm.spUserRoleMembers.Locate('DbRole', 'Tervezok', [loCaseInsensitive]) then begin
        Tervezo := True ;
        TervCheckBox.Checked := True ;
      end else TervCheckBox.Checked := False ;
      if Dm.spUserRoleMembers.Locate('DbRole', 'MEO', [loCaseInsensitive]) then begin
        MEO := True ;
        MEOCheckBox.Checked := True ;
      end else MEOCheckBox.Checked := False ;
      if Dm.spUserRoleMembers.Locate('DbRole', 'HoseSlaveInfo', [loCaseInsensitive]) then begin
        Info := True ;
        InfoCheckBox.Checked := True ;
      end ; //else MEOCheckBox.Checked := False ;

      if TestRun then begin
        Technologus := True ;
        //Tervezo := True ;
        //MEO := True ;
        //Info := True ;
      end ;

 { TODO : Ez vissza kell �ll�tani!!! }     Tervezo := True ;

      if not Tervezo then begin
        AutoChangeAccept.Enabled := False ;
        AlkatreszExport.Enabled := False ;
        EmailSent.Enabled := False ;
        DataSheetImport.Enabled := False ;
        CopyTechnicalData.Enabled := False ;
        PasteTechnicalData.Enabled := False ;
        CopyMisc.Enabled := False ;
        PasteMisc.Enabled := False ;

        //RendFejGrid.OptionsBehavior := RendTetelGrid.OptionsBehavior - [edgoEditing] ;
        RendFejGrid.OptionsDB := RendTetelGrid.OptionsDB - [edgoCanDelete, edgoCanInsert] ;
        DBNavigator21.VisibleButtons := DBNavigator20.VisibleButtons - [nbDelete, nbInsert, nbEdit] ;

        RendTetelGrid.OptionsBehavior := RendTetelGrid.OptionsBehavior - [edgoEditing] ;
        RendTetelGrid.OptionsDB := RendTetelGrid.OptionsDB - [edgoCanDelete, edgoCanInsert] ;
        DBNavigator20.VisibleButtons := DBNavigator20.VisibleButtons - [nbDelete, nbInsert] ;//, nbEdit] ;
        //ScrollBox4.Enabled := False ;
        for i := 0 to ScrollBox4.ControlCount - 1 do begin
          if ScrollBox4.Controls[i].Name <> 'SpecEdit' then ScrollBox4.Controls[i].Enabled := False ;
        end ;
      end ;

      Dm.spUserRoleMembers.Active := False ;

      TagList := TLongintList.Create ;
      Dm.GetUserRights.ParamByName('@ProgName').AsString := ProgName ;
      Dm.GetUserRights.ParamByName('@Uid').AsInteger := Uid ;
      Dm.GetUserRights.Active := True ;
      Dm.GetUserRights.First ;
      while not Dm.GetUserRights.Eof do begin
        CurrentTag := Dm.GetUserRights.FindField('Tag').AsInteger ;
        TagList.AddItem(CurrentTag) ;
        Dm.GetUserRights.Next ;
      end ;

      // �llom�ny hozz�f�r�si jogok be�ll�t�sa
      PackReadOnly := TagList.FindItem(1001) = -1 ;
      OrderHeadReadOnly := TagList.FindItem(7001) = -1 ;
      OrderItemReadOnly := TagList.FindItem(7002) = -1 ;
      OrderDm.tRendFej.ReadOnly := OrderHeadReadOnly ;
      OrderDm.tRendTetel.ReadOnly := OrderItemReadOnly ;

      for i := 0 to ControlList.Count-1 do begin
        Control := TControl(ControlList.Items[i]) ;
        ControlTag := Control.Tag ;
        if ControlTag <> 0 then begin
          Active := TagList.FindItem(ControlTag) >= 0 ;
          //if Control is TTabSheet then TTabSheet(Control).Enabled := Active ;
          if Control is TTabSheet then TTabSheet(Control).TabVisible := Active ;
          if Control is TScrollBox then TScrollBox(Control).Enabled := Active ;
          if Control is TBitBtn then TBitBtn(Control).Enabled := Active ;
          if Control is TSpeedButton then TSpeedButton(Control).Enabled := Active ;
        end ;
      end ;

      for i := 0 to ActionList1.ActionCount - 1 do begin
        Action := TAction(ActionList1.Actions[i]) ;
        ActionTag := Action.Tag ;
        if ActionTag <> 0 then begin
          Active := TagList.FindItem(ActionTag) >= 0 ;
          Action.Enabled := Active ;
        end ;
      end ;

      Result := True ;
    finally
      Dm.GetUserRights.Active := False ;
      if Assigned(TagList) then TagList.Free ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.MfCkszGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  c, i: integer ;
begin
  if not AColumn.Visible then Exit ;
  i := TdxDBGrid(Sender).ColumnByFieldName('Szin').Index;
  if AColumn.ReadOnly then begin
    AColumn.Color := clSilver
  end
  else begin
    if ANode.Values[i] = Null then Exit ;
    c := Integer(ANode.Values[i]) ;
    AColor := c ;
    //MfCkszInspector.Color := c ;
  end ;
end;

procedure TMainForm.MfCkszOpenExecute(Sender: TObject);
begin
  try
    try
      //Dm.MfCikkszamok.Active:=True ;
      Dm.qMfCikkszamok.Active := True ;
      MfCkszGrid.GotoFirst ;
    finally
      Dm.JelzesQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MfCkszCloseExecute(Sender: TObject);
begin
  try
    //Dm.MfCikkszamok.Active:=False ;
    Dm.qMfCikkszamok.Active := False ;
    //BitBtn1.Action:=ActionList1.Actions[0] ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ConvertBtnClick(Sender: TObject);
begin
  FnpNumericEdit2.AsFloat :=
    UnitConv(RxDBLookupList1.KeyValue, RxDBLookupList2.KeyValue, FnpNumericEdit1.AsFloat) ;
end;

procedure TMainForm.MeTypeComboEnter(Sender: TObject);
begin
  try
    if not Dm.UnitGroups.Active then begin
      Dm.UnitGroups.Active:=True ;
      Dm.Units.Active:=True ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.KonstrOpenExecute(Sender: TObject);
begin
  try
    Dm.Konstrukciok.Active:=True ;
    Dm.ErvtKonstrukciok.Active:=True ;
    Dm.LelekQry.Active:=True ;
    Dm.SodronyQry.Active:=True ;
    //BitBtn4.Action:=ActionList1.Actions[5] ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.KonstrCloseExecute(Sender: TObject);
begin
  try
    Dm.Konstrukciok.Active:=False ;
    Dm.ErvtKonstrukciok.Active:=False ;
    Dm.LelekQry.Active:=False ;
    Dm.SodronyQry.Active:=False ;
    //BitBtn4.Action:=ActionList1.Actions[4] ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheet1OpenExecute(Sender: TObject);
begin
  try
    if not Dm.Adatlap.Active then begin
      Dm.Adatlap.Active:=True ;
      Dm.AdatlapKonf.Active:=True ;
      Dm.AdatlapCsom.Active:=True ;
      Dm.AllandoAlk.Active:=True ;
      Dm.ValtozoAlk.Active:=True ;
      Dm.AdatlapCsatl.Active:=True ;
      Dm.StandardQry.Active:=True ;
      Dm.StandardQry.First ;
      dxDBInspector2Szabvany.Items.Clear ;
      ScrollBox2.VertScrollBar.Position:=0 ;
      ScrollBox2.HorzScrollBar.Position:=0 ;
      while not Dm.StandardQry.Eof do begin
        dxDBInspector2Szabvany.Items.Add(Dm.StandardQrydescription.AsString) ;
        Dm.StandardQry.Next ;
      end ;
      //BitBtn5.Action:=DataSheet1Close ;
    end
    else begin

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.KonfGridRajzszamEditButtonClick(Sender: TObject);
var
  BodyCode, BodyName, KompListCode: string ;
  BodyId, BodyOd, MBRstorage, BodyWeight, OdMax: double ;
begin
  if not (Dm.AdatlapKonf.State in [dsInsert, dsEdit]) then begin
    ErrMsg('Az adatforr�s nincs m�dos�t�, vagy besz�r� m�dban!') ;
    Exit ;
  end ;
  try
    try
      Dm.KonstrJellQry.Active:=False ;
      Dm.KonstrJellQry.Active:=True ;
      if KonstrJellForm.ShowModal = mrOk then begin
        OdMax:=0 ;
        KompListCode:='' ;
        BodyId:=Dm.KonstrJellQryIDrated.AsFloat ;
        BodyOd:=Dm.KonstrJellQryOD.AsFloat ;
        MBRstorage:=Dm.KonstrJellQryMBRstorage.AsFloat ;
        BodyWeight:=Dm.KonstrJellQryweight.AsFloat ;
        BodyCode:=Trim(Dm.KonstrJellQrybodyDNb.AsString) ;
        BodyName:=Dm.KonstrJellQrydescriptionH.AsString ;

        if BodyCode<>'' then begin
          if Dm.GetDiameters.Active then Dm.GetDiameters.Active:=False ;
          Dm.GetDiameters.ParamByName('@KonstrukcioKod').AsString:=BodyCode ;
          Dm.GetDiameters.Active:=True ;
          OdMax:=Dm.GetDiametersCsatlakozotest.AsFloat ;
          KompListCode:=Dm.GetDiametersKompListKod.AsString ;
        end ;

        Dm.AdatlapKonfMegnevezes.AsString:=BodyName ;
        Dm.AdatlapKonfRajzszam.AsString:=BodyCode ;
        Dm.AdatlapKonfTomloKulatm.AsFloat:=BodyId ;
        Dm.AdatlapKonfTomloKulatm.AsFloat:=BodyOd ;
        Dm.AdatlapKonfMinHajlitas.AsFloat:=MBRstorage ;
        Dm.AdatlapKonfTomeg.AsFloat:=BodyWeight ;
        Dm.AdatlapKonfCsatlKulatm.AsFloat:=OdMax ;
        Dm.AdatlapKonfAnyagnormaSzam.AsString:=KompListCode ;
      end ;
    finally
      Dm.KonstrJellQry.Active:=False ;
      Dm.GetDiameters.Active:=False ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DBCheckBox9Click(Sender: TObject);
begin
  MainForm.PublicationChanged:=True ;
end;

procedure TMainForm.AllandoGridRajzszamEditButtonClick(Sender: TObject);
var
  Megnevezes, Rajzszam: string ;
  Weight: double ;
  accessoryType: integer ;
begin
  try
    try
      if not (Dm.AllandoAlk.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.AccessoryQry.Active:=False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString:='where accessoryType in (3,5,6,7)' ;
      Dm.AccessoryQry.Active:=True ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        Megnevezes:=Dm.AccessoryQrydescription.AsString ;
        Rajzszam:=Dm.AccessoryQryaccessoryDNb.AsString ;
        Weight:=Dm.AccessoryQryweight.AsFloat ;
        accessoryType:=Dm.AccessoryQryaccessoryType.AsInteger ;

        Dm.AllandoAlkMegnevezes.AsString:=Megnevezes ;
        Dm.AllandoAlkRajzszam.AsString:=Rajzszam ;
        Dm.AllandoAlkTomeg.AsFloat:=Weight ;
        Dm.AllandoAlkaccessoryType.AsInteger:=accessoryType ;
      end ;
    finally
      Dm.AccessoryQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ValtozoGridRajzszamEditButtonClick(Sender: TObject);
var
  Megnevezes, Rajzszam: string ;
  Weight: double ;
  accessoryType: integer ;
begin
  try
    try
      if not (Dm.ValtozoAlk.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.AccessoryQry.Active:=False ;
      //(1-Biztons�gi bilincs, 2-Emel� bilincs, 3-V�d�h�vely, 4-Osztott h�vely,
      // 18-K�zdarab)
      Dm.AccessoryQry.MacroByName('Filter').AsString:='where accessoryType in (1,2,3,4,18)' ;
      Dm.AccessoryQry.Active:=True ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        Megnevezes:=Dm.AccessoryQrydescription.AsString ;
        Rajzszam:=Dm.AccessoryQryaccessoryDNb.AsString ;
        Weight:=Dm.AccessoryQryweight.AsFloat ;
        accessoryType:=Dm.AccessoryQryaccessoryType.AsInteger ;

        Dm.ValtozoAlkMegnevezes.AsString:=Megnevezes ;
        Dm.ValtozoAlkRajzszam.AsString:=Rajzszam ;
        Dm.ValtozoAlkTomeg.AsFloat:=Weight ;
        Dm.ValtozoAlkaccessoryType.AsInteger:=accessoryType ;
      end ;
    finally
      Dm.AccessoryQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheet1CloseExecute(Sender: TObject);
begin
  try
    Dm.Adatlap.Active:=False ;
    Dm.AdatlapKonf.Active:=False ;
    Dm.AdatlapCsom.Active:=False ;
    Dm.AllandoAlk.Active:=False ;
    Dm.ValtozoAlk.Active:=False ;
    Dm.AdatlapCsatl.Active:=False ;
    //BitBtn5.Action:=DataSheet1Open ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackOpenExecute(Sender: TObject);
begin
  try
    MainForm.Repaint ;
    if not Dm.qPackHead.Active then Dm.qPackHead.Active := True ;
    if not Dm.PackItem.Active then Dm.PackItem.Active := True ;
    if not Dm.PackDevAssign.Active then Dm.PackDevAssign.Active := True ;
    if not Dm.Packages.Active then Dm.Packages.Active:=True ;
    PackHeadGrid.GotoLast(False) ;
    //BitBtn6.Action:=PackClose ;
    PackOpened := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackCloseExecute(Sender: TObject);
begin
  try
    Dm.qPackHead.Active:=False ;
    Dm.PackItem.Active:=False ;
    Dm.PackDevAssign.Active:=False ;
    Dm.Packages.Active:=False ;
    //BitBtn6.Action:=PackOpen ;
    PackOpened:=False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CsatlGridCsatlakozoRszEditButtonClick(Sender: TObject);
var
  CouplingCode, CouplingName, AssemblyCode, EndFittingName: string ;
  CouplingWeight: double ;
begin
  try
    try
      if not (Dm.AdatlapCsatl.State in [dsEdit, dsInsert]) then begin
        ErrMsg('Az adatforr�s nincs besz�r� vagy m�dos�t� �zemm�dban!') ;
        Exit ;
      end ;
      Dm.CouplingQry.Active:=True ;
      if CouplingQryForm.ShowModal = mrOk then begin
        AssemblyCode:='' ;
        CouplingCode:=Trim(Dm.CouplingQrycouplingDNb.AsString) ;
        CouplingName:=Dm.CouplingQryendFittingName.AsString ;
        //CouplingOd:=Dm.CouplingQryND1.AsFloat ;
        CouplingWeight:=Dm.CouplingQryweight.AsFloat ;
        EndFittingName:=Dm.CouplingQryendFittingName.AsString ;

        Dm.AdatlapCsatlCsatlakozoRsz.AsString:=CouplingCode ;
        Dm.AdatlapCsatlMegnevezes.AsString:=CouplingName ;
        Dm.AdatlapCsatlVegzodes.AsString:=EndFittingName ;
        Dm.AdatlapCsatlOsszeallitasiRsz.AsString:=AssemblyCode ;
        Dm.AdatlapCsatlCsatlakozoSuly.AsFloat:=CouplingWeight ;
      end ;
    finally
      Dm.AccessoryQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ExtraDataSheetCloseExecute(Sender: TObject);
begin
  try
    Dm.HSOrderHeadList.Active:=False ;
    Dm.RendelesTetel.Active:=False ;
    //BitBtn7.Action:=ExtraDataSheetOpen ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ExtraDataSheetOpenExecute(Sender: TObject);
var
  FirstOpen: Boolean ;
begin
  try
    if not Dm.HSOrderHeadList.Active then FirstOpen := True else FirstOpen := False ;
    if firstOpen then SpecDataSheetInit ;
    Dm.HSOrderHeadList.Active := True ;
    Dm.RendelesTetel.Active := True ;
    Dm.RendEgyeb.Active := True ;
    Dm.RendMin.Active := True ;
    Dm.RendSarzs.Active := True ;
    Dm.tAnyagKi.Active := True ;
    Dm.tInspektorok.Active := True ;
    Dm.tBiztSzerelvenyek.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorCsatl1RszButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  CouplingCode, CouplingName, Konstr: string ;
  CouplingMaxOD: double ;
begin
  try
    try
      if not Dm.CouplingQry.Active then Dm.CouplingQry.Active := True ;
      CouplingCode := Trim(AdatlapInspectorCsatl1Rsz.Field.AsString) ;
      if CouplingCode <> '' then Dm.CouplingQry.Locate('couplingDNb', CouplingCode, [loCaseInsensitive]) ;
      if CouplingQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        CouplingCode := Trim(Dm.CouplingQrycouplingDNb.AsString) ;
        CouplingName := Dm.CouplingQryEndFittingName.AsString ;

        Dm.RendelesTetelCsatl1Rsz.AsString := CouplingCode ;
        Dm.RendelesTetelCsatl1.AsString := CouplingName ;

        Konstr := Dm.RendelesTetelKonstrukcio.AsString ;
        CouplingMaxOD := GetCouplingMaxOD(Konstr, CouplingCode) ;
        Dm.RendelesTetelCsatl1MaxAtmero.AsFloat := CouplingMaxOD ;
      end ;
      //SetCouplingAccessory(CouplingCode, 1) ;
    finally
      Dm.GetDiameters.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorCsatl2RszButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  CouplingCode, CouplingName, Konstr: string ;
  CouplingMaxOD: double ;
begin
  try
    try
      if not Dm.CouplingQry.Active then Dm.CouplingQry.Active := True ;
      CouplingCode := Trim(AdatlapInspectorCsatl2Rsz.Field.AsString) ;
      if couplingCode <> '' then Dm.CouplingQry.Locate('couplingDNb', CouplingCode, [loCaseInsensitive]) ;
      if CouplingQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        CouplingCode := Trim(Dm.CouplingQrycouplingDNb.AsString) ;
        CouplingName := Dm.CouplingQryendFittingName.AsString ;

        Dm.RendelesTetelCsatl2Rsz.AsString := CouplingCode ;
        Dm.RendelesTetelCsatl2.AsString := CouplingName ;

        Konstr := Dm.RendelesTetelKonstrukcio.AsString ;
        CouplingMaxOD := GetCouplingMaxOD(Konstr, CouplingCode) ;
        Dm.RendelesTetelCsatl2MaxAtmero.AsFloat := CouplingMaxOD ;
      end ;
      //SetCouplingAccessory(CouplingCode, 2) ;
    finally
      Dm.GetDiameters.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CouplingsOpenExecute(Sender: TObject);
begin
  try
    if not Dm.tCsatlRajzTart.Active then Dm.tCsatlRajzTart.Active := True ;
    if not Dm.tVegzodesTipusok.Active then Dm.tVegzodesTipusok.Active := True ;
    if not Dm.tTechlap.Active then Dm.tTechlap.Active := True ;
    if not Dm.Csatlakozok.Active then Dm.Csatlakozok.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CouplingsCloseExecute(Sender: TObject);
begin
  try
    Dm.tCsatlRajzTart.Active := True ;
    Dm.tVegzodesTipusok.Active := False ;
    Dm.tTechlap.Active := False ;
    Dm.Csatlakozok.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorBelsoHuvelyButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  InnerSleeveName, Material: string ;
begin
  try
    try
      if Dm.AccessoryQry.Active then Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 5 and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      InnerSleeveName := Trim(AdatlapInspectorBelsoHuvely.Field.AsString) ;
      if InnerSleeveName <> '' then Dm.AccessoryQry.Locate('accessoryDNb', InnerSleeveName, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        InnerSleeveName := Trim(Dm.AccessoryQryaccessoryDNb.AsString) ;
        Material := Trim(Dm.AccessoryQrymaterial.AsString) ;

        Dm.RendelesTetelBelsoHuvely.AsString := InnerSleeveName ;
        Dm.RendelesTetelBhAnyag.AsString := Material ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorHuvelyButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  SleeveCode: string ;
begin
  try
    try
      Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 6 and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      SleeveCode := Trim(AdatlapInspectorHuvely.Field.AsString) ;
      if SleeveCode <> '' then Dm.AccessoryQry.Locate('accessoryDNb', SleeveCode, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        SleeveCode := Dm.AccessoryQryaccessoryDNb.AsString ;

        Dm.RendelesTetelHuvely.AsString := SleeveCode ;
        //MainForm.AdatlapInspectorHuvely.OnChange(Sender) ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorSpiralkupButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  SpkCode: string ;
begin
  try
    try
      Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 7 and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      SpkCode := Trim(AdatlapInspectorSpiralkup.Field.AsString) ;
      if SpkCode <> '' then Dm.AccessoryQry.Locate('accessoryDNb', SpkCode, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        SpkCode := Dm.AccessoryQryaccessoryDNb.AsString ;

        Dm.RendelesTetelSpiralkup.AsString := SpkCode ;
        //MainForm.AdatlapInspectorSpiralkup.OnChange(Sender) ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorEmelobilincsButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  LifttingCollarCode: string ;
  ID: double ;
begin
  try
    try
      Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 2  and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      LifttingCollarCode := Trim(AdatlapInspectorEmelobilincs.Field.AsString) ;
      if LifttingCollarCode <> '' then Dm.AccessoryQry.Locate('accessoryDNb', LifttingCollarCode, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        LifttingCollarCode := Dm.AccessoryQryaccessoryDNb.AsString ;
        ID := Dm.AccessoryQryID.AsFloat ;

        Dm.RendelesTetelEmeloBilincs.AsString := LifttingCollarCode ;
        Dm.RendelesTetelEbMeret.AsFloat := ID ;
        //MainForm.AdatlapInspectorEmeloBilincs.OnChange(Sender) ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorBiztBilincsButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  SafetyClampCode: string ;
  ID: double ;
begin
  try
    try
      Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 1 and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      SafetyClampCode := Trim(AdatlapInspectorBiztBilincs.Field.AsString) ;
      if SafetyClampCode <> '' then Dm.AccessoryQry.Locate('accessoryDNb', SafetyClampCode, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        SafetyClampCode := Dm.AccessoryQryaccessoryDNb.AsString ;
        ID := Dm.AccessoryQryID.AsFloat ;

        Dm.RendelesTetelBiztBilincs.AsString := SafetyClampCode ;
        Dm.RendelesTetelBbMeret.AsFloat := ID ;
        //MainForm.AdatlapInspectorBiztBilincs.OnChange(Sender) ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorVedoHuvelyButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  VedoHuvelyCode: string ;
begin
  try
    try
      Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 3 and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      VedoHuvelyCode := Trim(AdatlapInspectorVedohuvely.Field.AsString) ;
      if VedoHuvelyCode <> '' then Dm.AccessoryQry.Locate('accessoryDNb', VedoHuvelyCode, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        VedoHuvelyCode := Dm.AccessoryQryaccessoryDNb.AsString ;

        Dm.RendelesTetelVedoHuvely.AsString := VedoHuvelyCode ;
        //MainForm.AdatlapInspectorVedoHuvely.OnChange(Sender) ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorOsztottHuvelyButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  OsztottHuvelyCode: string ;
begin
  try
    try
      Dm.AccessoryQry.Active := False ;
      Dm.AccessoryQry.MacroByName('Filter').AsString := 'where accessoryType = 4 and Status = 0' ;
      Dm.AccessoryQry.Active := True ;
      OsztottHuvelyCode := Trim(AdatlapInspectorOsztottHuvely.Field.AsString) ;
      if OsztottHuvelyCode <> '' then Dm.AccessoryQry.Locate('accessoryDNb', OsztottHuvelyCode, [loCaseInsensitive]) ;
      if AccessoryQryForm.ShowModal = mrOk then begin
        if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then Dm.RendelesTetel.Edit ;
        OsztottHuvelyCode := Dm.AccessoryQryaccessoryDNb.AsString ;

        Dm.RendelesTetelOsztottHuvely.AsString := OsztottHuvelyCode ;
        //MainForm.AdatlapInspectorOsztottHuvely.OnChange(Sender) ;
      end ;
    finally
      Dm.AccessoryQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Panel43Resize(Sender: TObject);
begin
  SetButtons(Panel43, False) ;
end;

procedure TMainForm.AtveteliExportExecute(Sender: TObject);
var
  Rendsz, ErtTerulet, Vevo, Megnevezes, TipusNev, Megjegyzes, DbStr, s, s1, s2, Tures, MatNormCode, MinMaxStr,
  Rajzszam, MarkazasTipusa, MarkazasMegnevezes, sor, Eszkoz, Beszerzes, Azonosito, Inspektor,
  L1Caption1, L1Caption2, TomloNeve, Standard, PoNum, CouplingMaterial, TolarenceText, Festes, BilincsMegjegyzes: string ;
  j, k, p, RendelesAz, TetelSrsz, Decimal, MarkingId, Db, TomloDb: integer ;
  oUnit, Style: OleVariant ;
  Coupling1Weight, Coupling2Weight, HosszMeter, HosszLab, Pressure, Min, Max, x, L1_1, L1_2,
  BodyWeight, PackWeight, BodySumWeight, SumWeight, CouplingSumWeight: double ;
  Comment: AnsiString ;
  bmk: TBookmark ;
  DbFuggo, ChainExist, RopeExist: Boolean ;
  SapComment: widestring ;
  BiztSzerStr: string ;
begin
  bmk := Nil ;
  if AtveteliSablonPath = '' then begin
    ErrMsg('A sablon el�r�si �tvonala nem defini�lt!') ;
    Exit ;
  end ;
  try
    try
      // Dokumentum el�k�sz�t�se
      WordApplication.Disconnect ;
      SetWordApp(WordApplication) ;
      WordApplication.Connect ;

      //AtveteliSablonPath := 'D:\Temp\Atveteli sablon-mod.doc' ;

      WordOpenDoc(AtveteliSablonPath) ;
      WordGotoFirstPageHeader ;
      GotoHome ;
      WordMoveRightCell(2) ;

      // Fejl�c l�trehoz�sa
      Rendsz := RendFejQryGridRendSz.Field.AsString ;
      ErtTerulet := UpperCase(Trim(RendFejQryGridErtTerulet.Field.AsString)) ;
      Vevo := RendFejQryGridVevo.Field.AsString ;
      if Trim(Vevo) = '' then begin
        if ErtTerulet = 'PHX-BC' then Vevo := 'PHOENIX BEATTIE Co.' ;
        if ErtTerulet = 'PHX-B' then Vevo := 'PHOENIX BEATTIE LTD.' ;
        if ErtTerulet = 'C-BC' then Vevo := 'ContiTech BEATTIE Co.' ;
        if ErtTerulet = 'C-B' then Vevo := 'ContiTech BEATTIE LTD.' ;
        if ErtTerulet = 'DOM' then Vevo := 'Dunlop Oil & Marine LTD.' ;
        if ErtTerulet = 'COM' then Vevo := 'ContiTech Oil & Marine Corp.' ;
      end ;

      WordTypeText('S-� ' + Rendsz) ;
      WordMoveRightCell(8) ;
      WordTypeText(ErtTerulet) ;
      WordMoveRightCell(4) ;
      WordTypeText(Vevo) ;
      WordMoveRightCell(2) ;
      WordTypeText(CurrentUserName) ;
      WordMoveRightCell(2) ;
      WordTypeText(Rendsz) ;
      WordMoveRightCell(2) ;
      if Trim(Dm.HSOrderHeadListPhxRendSz.AsString) <> '' then PoNum := Dm.HSOrderHeadListPhxRendSz.AsString
      else PoNum := Trim(Dm.HSOrderHeadListVevoRendSz.AsString) ;
      WordTypeText(PoNum) ;

      // T�tel adatok k�sz�t�se
      WordGotoMainDocument ;
      bmk := Dm.RendelesTetel.GetBookmark ;
      Dm.RendelesTetel.First ;
      RendelesAz := Dm.RendelesTetelRendelesAz.AsInteger ;

      while not Dm.RendelesTetel.Eof do begin

        if not Dm.RendelesTetelTorolt.AsBoolean then begin

          TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
          Style := 'T�tel' ;
          WordApplication.Selection.Set_Style(Style) ;
          WordTypeText('A rendel�s ' + IntToStr(TetelSrsz) + ' jel� t�tele') ;
          WordTypeText(#13) ;

          // T�ml� specifik�ci� - szakasz
          SetChapterTextProperties ;
          WordTypeText('Specifik�ci�' + #13) ;
          SetNormalTextProperties ;

          Style := 'Norm�l' ;
          WordApplication.Selection.Set_Style(Style) ;

          TomloNeve := Uppercase(Trim(Dm.RendelesTetelTipus.AsString)) ;
          if TomloNeve <> '' then begin
            WordTypeText('T�ml� neve' + #9 + ': ') ;
            WordTypeText(TomloNeve + #13) ;
          end ;

          // Standard
          Standard := Trim(Dm.RendelesTetelStandard.AsString) ;
          if Standard <> '' then WordTypeText('Szabv�ny' + #9 + ': ' + Standard + #13 + #13) ;

          Megnevezes := Trim(Dm.RendelesTetelSpecifikacio.AsString) ;

          TomloDb := Dm.RendelesTetelDarabSzam.AsInteger ;
          Pressure := Dm.RendelesTetelpsi.AsFloat ;
          WordTypeText('Megnevez�s' + #9 + ': ' + Megnevezes + ' ') ;
          if Pressure <> 0 then begin
            s := Trim(Format('%6.0n', [Pressure])) ;
            WordTypeText('W.P.: ' + s + ' psi') ;
          end ;
          WordTypeText(#13) ;

          // Cs�magm�ret
          if not Dm.RendelesTetelBg.AsBoolean then begin
            WordApplication.Selection.Font.ColorIndex := 6 ;
            ToolsDm.spGetToleranceText.ParamByName('@Id').AsFloat := Dm.RendelesTetelAtmero.AsFloat ;
            ToolsDm.spGetToleranceText.ExecProc ;
            TolarenceText := Trim(ToolsDm.spGetToleranceText.ParamByName('@ToleranceText').AsString) ;
            if TolarenceText <> '' then WordTypeText('Cs�magm�ret  (k�l�tm.)' + #9 + ': ' + TolarenceText + #13) ;
          end ;
          WordApplication.Selection.Font.ColorIndex := 0 ;

          // Konstrukci�
          s := Trim(Dm.RendelesTetelKonstrukcio.AsString) ;
          BodyWeight := 0 ;
          if s <> '' then begin
            WordTypeText('Konstrukci�s lap sz�ma' + #9 + ': ' + s + #13) ;
            BodyWeight := GetBodyWeight(s) ;
          end ;

          if Trim(s)<>'' then begin
            MatNormCode := GetMatNormCode(s) ;
            WordTypeText('Anyagnorma sz�ma' + #9 + ': ' + MatNormCode + #13) ;
          end ;

          s := Dm.RendelesTetelKonstrukcio2.AsString ;
          if s <> '' then begin
            WordTypeText('2.Konstrukci�s lap sz�ma' + #9 + ': ' + s + #13) ;
            MatNormCode := GetMatNormCode(s) ;
            WordTypeText('2.Anyagnorma sz�ma' + #9 + ': ' + MatNormCode + #13) ;
          end ;

          // �ssze�ll�t�si rajz sz�ma
          s := Trim(Dm.RendelesTetelOsszeallRsz.AsString) ;
          if s <> '' then WordTypeText('�ssze�ll�t�si rajz' + #9 + ': ' + s + #13) ;

          // Csatlakoz� adatok
          Coupling1Weight := 0 ;
          //Coupling2Weight := 0 ;
          L1Caption1 := '' ;
          L1Caption2 := '' ;
          L1_1 := 0 ;
          s := Trim(Dm.RendelesTetelCsatl1Rsz.AsString) ;
          if s <> '' then begin
            CouplingMaterial := 'Anyaga: ' + GetCouplingMaterial(s) ;
            Coupling1Weight := GetCouplingWeight(s) ;
            L1_1 := GetTechLapData(s, L1Caption1) ;
            WordTypeText('Csatlakoz� rsz."A"' + #9 + ': ' + s + #9 + CouplingMaterial + #13) ;
            s := Dm.RendelesTetelCsatl1.AsString ;
            WordTypeText('V�gz�d�s "A"' + #9 + ': ' + s + #13) ;
            //OrderDm.qCouplingMaterial.ParamByName(
          end ;
          s := Trim(Dm.RendelesTetelCsatl2Rsz.AsString) ;
          if s <> '' then begin
            CouplingMaterial := 'Anyaga: ' + GetCouplingMaterial(s) ;
            Coupling2Weight := GetCouplingWeight(s) ;
            L1_2 := GetTechLapData(s, L1Caption2) ;
            WordTypeText('Csatlakoz� rsz."B"' + #9 + ': ' + s + #9 + CouplingMaterial + #13) ;
            s := Dm.RendelesTetelCsatl2.AsString ;
            WordTypeText('V�gz�d�s "B"' + #9 + ': ' + s + #13) ;
          end
          else begin
            Coupling2Weight := Coupling1Weight ;
            L1Caption2 := L1Caption1 ;
            L1_2 := L1_1 ;
          end ;
          if (L1_1 + L1_2) <> 0 then WordTypeText(#9 + '  L1 hosszak �sszesen:' + #9 + FloatToStr(L1_1 + L1_2) + ' mm' + #13) ;

          // Bels�h�vely
          s := Trim(Dm.RendelesTetelBelsoHuvely.AsString) ;
          s2 := Trim(Dm.RendelesTetelBhAnyag.AsString) ;
          if s2 <> '' then s2 := 'Anyaga: ' + s2 ;
          if s <> '' then WordTypeText('Bels� h�vely rsz.' + #9 + ': ' + s + #9 + s2 + #13) ;

          // H�vely
          s := Dm.RendelesTetelHuvely.AsString ;
          if s <> '' then WordTypeText('H�vely rsz.' + #9 + ': ' + s + #13) ;

          // Spir�lk�p
          s := Dm.RendelesTetelSpiralkup.AsString ;
          if s <> '' then WordTypeText('Spir�lk�p rsz.' + #9 + ': ' + s + #13) ;

          // Emel�bilincs
          s := Trim(Dm.RendelesTetelEmeloBilincs.AsString) ;
          if s <> '' then begin
            s2 := Trim(Dm.RendelesTetelEbMeret.AsString) ;
            if s2 <> '' then s2 := #9 + 'ID=' + s2 + ' mm' ;
            s := s  + s2 ;
            if s <> '' then WordTypeText('Emel� bilincs' + #9 + ': ' + s + #13) ;
          end ;

          Dm.spGetBilincsList.Active := False ;
          Dm.spGetBilincsList.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spGetBilincsList.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spGetBilincsList.ParamByName('@TipusKod').AsInteger := 1 ;
          Dm.spGetBilincsList.Active := True ;
          if Dm.spGetBilincsList.RecordCount > 0 then WordTypeText('E.b.jellemz�k') ;
          while not Dm.spGetBilincsList.Eof do begin
            s := Dm.spGetBilincsListAzonosito.AsString ;
            if s <> '' then s := s + #9 ;
            Festes := Dm.spGetBilincsListFestes.AsString ;
            if Festes <> '' then Festes := Festes + #9 ;
            BilincsMegjegyzes := Dm.spGetBilincsListMegjegyzes.AsString ;
            WordTypeText(#9 + ': ' + s + Festes + BilincsMegjegyzes + #13) ;
            Dm.spGetBilincsList.Next ;
          end ;

          // Biztons�gi bilincs
          s := Trim(Dm.RendelesTetelBiztBilincs.AsString) ;
          if s <> '' then begin
            s2 := Trim(Dm.RendelesTetelBbMeret.AsString) ;
            if s2 <> '' then s2 := #9 + 'ID=' +  s2 + ' mm' ;
            s := s + s2 ;
            if s <> '' then WordTypeText('Biztons�gi bilincs' + #9 + ': ' + s + #13) ;
          end ;

          Dm.spGetBilincsList.Active := False ;
          Dm.spGetBilincsList.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spGetBilincsList.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spGetBilincsList.ParamByName('@TipusKod').AsInteger := 2 ;
          Dm.spGetBilincsList.Active := True ;
          if Dm.spGetBilincsList.RecordCount > 0 then WordTypeText('B.b.jellemz�k') ;
          while not Dm.spGetBilincsList.Eof do begin
            s := Trim(Dm.spGetBilincsListAzonosito.AsString) ;
            if s <> '' then s := s + #9 ;
            Festes := Trim(Dm.spGetBilincsListFestes.AsString) ;
            if Festes <> '' then Festes := Festes + #9 ;
            BilincsMegjegyzes := Dm.spGetBilincsListMegjegyzes.AsString ;
            WordTypeText(#9 + ': ' + s + Festes + BilincsMegjegyzes + #13) ;
            Dm.spGetBilincsList.Next ;
          end ;

          // V�d�h�vely
          s := Dm.RendelesTetelVedoHuvely.AsString ;
          if s <> '' then WordTypeText('V�d� h�vely' + #9 + ': ' + s + #13) ;

          // Osztotth�vely
          s := Dm.RendelesTetelOsztottHuvely.AsString ;
          if s <> '' then WordTypeText('Osztott h�vely' + #9 + ': ' + s + #13) ;

          Dm.spGetBilincsList.Active := False ;
          Dm.spGetBilincsList.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spGetBilincsList.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spGetBilincsList.ParamByName('@TipusKod').AsInteger := 3 ;
          Dm.spGetBilincsList.Active := True ;
          if Dm.spGetBilincsList.RecordCount > 0 then WordTypeText('O.h.jellemz�k') ;
          while not Dm.spGetBilincsList.Eof do begin
            s := Trim(Dm.spGetBilincsListAzonosito.AsString) ;
            if s <> '' then s := s + #9 ;
            Festes := Trim(Dm.spGetBilincsListFestes.AsString) ;
            if Festes <> '' then Festes := Festes + #9 ;
            BilincsMegjegyzes := Dm.spGetBilincsListMegjegyzes.AsString ;
            WordTypeText(#9 + ': ' + s + Festes + BilincsMegjegyzes + #13) ;
            Dm.spGetBilincsList.Next ;
          end ;

          //Rendel�st�tel egy�b alkatr�szei
          Dm.RendEgyeb.First ;
          k := 0 ;
          while not Dm.RendEgyeb.Eof do begin
            if Dm.RendEgyebActive.AsBoolean then begin
              inc(k) ;
              if k = 1 then begin
                WordTypeText(#13 + 'Egy�b alkatr�szek' + #13) ;
              end ;
              TipusNev := Dm.RendEgyebMegnevezes.AsString ;
              Megjegyzes := Dm.RendEgyebMegjegyzes.AsString ;
              DbFuggo := Dm.RendEgyebDbFuggo.AsBoolean ;
              Db := Dm.RendEgyebDarabszam.AsInteger ;
              if DbFuggo then begin
                DbStr := IntToStr(Db) + ' db/t�ml�' ;
              end
              else begin
                DbStr := IntToStr(Db) + ' DB/T�TEL' ;
              end ;
              Rajzszam := Trim(Dm.RendEgyebRajzszam.AsString) ;
              s2 := '' ;
              if Dm.RendEgyebKiszallitando.AsBoolean then begin
                s2 := 'Kisz�ll�tand�!' ;
              end ;
              sor := Tipusnev ;
              //if Tipusnev <> '' then sor := sor + ':' ;
              sor := sor + #9 + ': ' ;
              if Rajzszam <> '' then sor := sor + Rajzszam ;
              WordTypeText(sor) ;
              sor := '' ;
              if DbStr <> '' then begin
                if Rajzszam <> '' then sor := sor + ', ' ;
                sor := sor + DbStr ;
                if not DbFuggo then begin
                  WordApplication.Selection.Font.ColorIndex := 6 ;
                end ;
                WordTypeText(sor) ;
                WordApplication.Selection.Font.ColorIndex := 0 ;
                sor := '' ;
              end ;
              if Megjegyzes <> '' then sor := sor + ', ' + Megjegyzes ;
              if s2 <> '' then sor := sor + ', ' + s2 ;
              sor := sor + #13 ;
              WordTypeText(sor) ;
            end ;
            Dm.RendEgyeb.Next ;
          end ;

          // Egy�b m�szaki jellemz�k (megjegyz�s)
          WordApplication.Selection.Font.ColorIndex := 0 ;
          j := 0 ;
          Comment := Dm.RendelesTetelEgyebek.AsString ;
          while Length(Comment) > 0 do begin
            p := Pos(#13#10, Comment) ;
            if p > 0 then begin
              s := Copy(Comment, 1, p - 1) ;
              Delete(Comment, 1, p + 1) ;
            end
            else begin
              s := Comment ;
              Comment := '' ;
            end ;
            if j = 0 then WordTypeText(#13 + 'Egy�b m�szaki jell.megjegyz�s' + #9 + ': ' + s + #13)
            else WordTypeText('                              ' + #9 + s + #13) ;
            inc(j) ;
          end ;

          // T�ml� jellemz�k (l�ng�ll�s�g stb.)
          WordTypeText(#13) ;
          s := '' ;
          if Dm.RendelesTetelLang.AsBoolean then s := s + 'l�ng�ll�, ' ;
          if Dm.RendelesTetelBg.AsBoolean then s := s + 'bels� g�gecs�, ' ;
          if Dm.RendelesTetelKg.AsBoolean then begin
            s := s + 'k�ls� g�gecs�' ;
            if Dm.RendelesTetelKgInter.AsBoolean then s := s + '(interlock)' ;
            s := s + ', ' ;
          end ;
          if Dm.RendelesTetelPa.AsBoolean then s := s + 'poliamid, ' ;
          if Dm.RendelesTetelKv.AsBoolean then begin
            s := s + 'k�ls� v�delem' ;
            if Dm.RendelesTetelKvMua.AsBoolean then begin
              if Dm.RendelesTetelKvFedHelix.AsBoolean or Dm.RendelesTetelKvNFedHelix.AsBoolean then s := s + '(m�anyag' else s := s + '(m�anyag)' ;
            end ;
            if Dm.RendelesTetelKvFedHelix.AsBoolean then begin
              if Dm.RendelesTetelKvMua.AsBoolean then s := s + ' + fedett helix)' else s := s + '(fedett helix)' ;
            end ;
            if Dm.RendelesTetelKvNFedHelix.AsBoolean then begin
              if Dm.RendelesTetelKvMua.AsBoolean then s := s + ' + nem fedett helix)' else s := s + '(nem fedett helix)' ;
            end ;
            s := s + ', ' ;
          end ;
          if Dm.RendelesTetelH2S.AsInteger = 1 then begin
            s := s + 'H2S Service NACE MR0175, ' ;
          end ;
          delete(s, Length(s) - 1, 2) ;
          if s <> '' then begin
            s := 'Jellemz�k' + #9 + ': ' + s + #13 ;
            WordTypeText(s) ;
          end ;

          // *** T�ml� gy�rt�s, m�rk�z�s - szakasz
          SetChapterTextProperties ;
          WordTypeText('Gy�rt�s, m�rk�z�s' + #13) ;
          SetNormalTextProperties ;

          Style := 'Norm�l' ;
          WordApplication.Selection.Set_Style(Style) ;
          WordTypeText(#13) ;

          HosszMeter := Dm.RendelesTetelHossz.AsFloat ;
          //Dm.rendelestetelhossz
          if HosszMeter <> 0 then begin
            HosszLab := round(UnitConv(4, 7, HosszMeter) * 10) * 0.1 ;
            s := IntToStr(TomloDb) + ' db' ;
            s := s + ' ' + FloatToStr(HosszLab) + ' l�b ' ;
            s := s + ' ' + Dm.RendelesTetelHossz.AsString ;
            s := s + ' ' + LowerCase(Trim(Dm.RendelesTetelHosszMe.AsString)) ;
            Decimal := GetDecimalNum(HosszMeter) ;
            if Decimal < 2 then Decimal := 2 ;
            if HosszMeter > 6 then begin
              Tures := ' �1%' ;
              Min := RoundD(HosszMeter - (HosszMeter * 0.01), Decimal) ;
              Max := RoundD(HosszMeter + (HosszMeter * 0.01), Decimal) ;
            end
            else begin
              Tures := ' �64mm' ;
              Min := RoundD(HosszMeter - 0.064, Decimal) ;
              Max := RoundD(HosszMeter + 0.064, Decimal) ;
            end ;
            MinMaxStr := '( ' + Format('%*.*f', [0, Decimal, Min]) + ' - ' + Format('%*.*f', [0, Decimal, Max]) + ' m )' ;
            s := s + Tures ;

            WordTypeText('Mennyis�g, hossz�s�g' + #9 + ': ' + s + #9#9 + MinMaxStr + #13) ;

            WordTypeText(#13) ;
          end ;

          // M�rk�z�s (SAP)
          if Trim(Dm.RendelesTetelMarking.AsString) <> '' then begin
            s := Trim(Dm.RendelesTetelMarking.AsString) ;
            WordTypeText('M�rk�z�s(SAP)' + #9 + ': ' + s + #13) ;
          end ;

          // M�rk�z�si rajz
          MarkingId := Dm.RendelesTetelMarkingId.AsInteger ;
          if MarkingId <> 0 then begin
            OrderDm.spGetJoinedMarkingItem.ParamByName('@MarkId').AsInteger := MarkingId ;
            OrderDm.spGetJoinedMarkingItem.ExecProc ;
            Rajzszam := OrderDm.spGetJoinedMarkingItem.ParamByName('@Rajzszam').AsString ;
            MarkazasTipusa := OrderDm.spGetJoinedMarkingItem.ParamByName('@MarkazasTipusa').AsString ;
            MarkazasMegnevezes := OrderDm.spGetJoinedMarkingItem.ParamByName('@Megnevezes').AsString ;
            s := Rajzszam + ' (' + MarkazasTipusa + ',' + MarkazasMegnevezes + ')' ;
            WordTypeText('M�rk�z�s' + #9 + ': ' + s + #13 + #13) ;
          end ;

          // *** Korr�zi�v�delem - szakasz
          SetChapterTextProperties ;
          WordTypeText('Korr�zi�v�delem' + #13) ;
          SetNormalTextProperties ;

          Style := 'Norm�l' ;
          WordApplication.Selection.Set_Style(Style) ;
          WordTypeText(#13) ;

          // *** Ut�munka, csomagol�s - szakasz
          SetChapterTextProperties ;
          WordTypeText('Ut�munka, csomagol�s' + #13) ;
          SetNormalTextProperties ;

          Style := 'Norm�l' ;
          WordApplication.Selection.Set_Style(Style) ;
          WordTypeText(#13) ;

          // Csomagol�s
          OrderDm.qRendCsomEszk.Active := False ;
          OrderDm.qRendCsomEszk.ParamByName('RendelesAz').AsInteger := RendelesAz ;
          OrderDm.qRendCsomEszk.ParamByName('TetelSrsz').AsInteger := TetelSrsz ;
          OrderDm.qRendCsomEszk.Active := True ;
          PackWeight := 0 ;
          while not OrderDm.qRendCsomEszk.Eof do begin
            s := Trim(OrderDm.qRendCsomEszkPackDevTypeName.AsString) ;
            s1 := Trim(OrderDm.qRendCsomEszkPackDevName.AsString) ;
            s2 := Trim(Format('%3.0n x %3.0n x %3.0n', [OrderDm.qRendCsomEszkDim1.AsFloat,
            OrderDm.qRendCsomEszkDim2.AsFloat, OrderDm.qRendCsomEszkDim3.AsFloat])) + ')' ;
            if ((s <> '') and (s <> 'Nincs')) or (s1 <> '') then begin
              s := s + ' - ' + s1 + ' (' + s2 ;
              WordTypeText('Csomagol�s' + #9 + ': ' + s + #13) ;
              WordTypeText(#9 + Format('  T�meg: %3.0n Kg; �r: %3.0n Ft', [OrderDm.qRendCsomEszkDim9.AsFloat,
                OrderDm.qRendCsomEszkDim10.AsFloat]) + #13) ;
              PackWeight := PackWeight + OrderDm.qRendCsomEszkDim9.AsFloat ;
            end ;
            OrderDm.qRendCsomEszk.Next ;
            PackWeight := RoundD(PackWeight, 0) ;
          end ;
          BodySumWeight := BodyWeight * HosszMeter ;
          CouplingSumWeight := Coupling1Weight + Coupling2Weight ;
          SumWeight := PackWeight + BodySumWeight + CouplingSumWeight ;
          if SumWeight > 0 then WordTypeText(Format(#9 + '  �sszt�meg: kb. %3.0n kg (%3.0n - %3.0n - %3.0n)',
            [SumWeight, PackWeight, BodySumWeight, CouplingSumWeight]) + #13) ;

          // Biztons�gi szerelv�nyek
          Dm.tBiztSzerelvenyek.First ;
          ChainExist := False ;
          RopeExist := False ;
          while not Dm.tBiztSzerelvenyek.Eof do begin
            Eszkoz := Trim(Dm.tBiztSzerelvenyekEszkozFajta.AsString) ;
            if Eszkoz <> '' then begin
              if (not RopeExist) and (Eszkoz = 'K�t�l') then RopeExist := True ;
              if (not ChainExist) and (Eszkoz = 'L�nc') then ChainExist := True ;
            end ;
            Dm.tBiztSzerelvenyek.Next ;
          end ;

          BiztSzerStr := '' ;
          if RopeExist and ChainExist then BiztSzerStr := 'A t�telhez k�t�l �s l�nc is tartozik!' ;
          if RopeExist and (not ChainExist) then BiztSzerStr := 'A t�telhez k�t�l is tartozik!' ;
          if (not RopeExist) and ChainExist then BiztSzerStr := 'A t�telhez l�nc is tartozik!' ;
          if BiztSzerStr <> '' then  WordTypeText(BiztSzerStr + #13) ;

        end ;

        // T�meg adatok ki�r�sa

        Inspektor := Trim(Dm.RendelesTetelInspector.AsString) ;
        if Inspektor <> '' then begin
          WordTypeText(#13 + Inspektor + ' �tvev�!' + #13) ;
        end ;

        // *** K�szterm�k vizsg�latok - szakasz
        SetChapterTextProperties ;
        WordTypeText('K�szterm�k vizsg�latok' + #13) ;
        SetNormalTextProperties ;

        Style := 'Norm�l' ;
        WordApplication.Selection.Set_Style(Style) ;
        WordTypeText(#13) ;

        Dm.RendelesTetel.Next ;
      end ;

      // *** Megrendel�s (SAP) szerinti vev�ig�ny - szakasz
      SetChapterTextProperties ;
      WordTypeText('Megrendel�s (SAP) szerinti vev�ig�ny' + #13) ;
      SetNormalTextProperties ;

      Style := 'Norm�l' ;
      WordApplication.Selection.Set_Style(Style) ;

      SapComment := GetOrderComment ;
      WordTypeText(SapComment) ;

      oUnit := wdStory ;
      WordApplication.Selection.HomeKey(oUnit, emptyparam) ;

      MessageDlg('A dokumentum elk�sz�lt!', mtInformation, [mbOK], 0) ;

      WordApplication.Visible := True ;
      WordApplication.Activate ;

    finally
      if Dm.RendelesTetel.BookmarkValid(bmk) then Dm.RendelesTetel.GotoBookmark(bmk) ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.UnitConv(SourceUnit, DestUnit: integer; Value: double): double ;
begin
  Result := -1 ;
  try
    try
      Dm.ConvertUnit.ParamByName('@InCode').AsInteger := SourceUnit ;
      Dm.ConvertUnit.ParamByName('@OutCode').AsInteger := DestUnit ;
      Dm.ConvertUnit.ParamByName('@Value').AsFloat := Value ;
      Dm.ConvertUnit.Active := True ;
      Result := Dm.ConvertUnit.Fields[0].AsFloat ;
    finally
      Dm.ConvertUnit.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.AdatlapInspectorKonstrukcioButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  BodyCode, Konstrukcio: string ;
begin
  try
    try
      if not Dm.KonstrJellQry.Active then Dm.KonstrJellQry.Active := True ;
      Konstrukcio := Trim(AdatlapInspectorKonstrukcio.Field.AsString) ;
      if Konstrukcio <> '' then Dm.KonstrJellQry.Locate('bodyDNb', Konstrukcio, [loCaseInsensitive]) ;
      if KonstrJellForm.ShowModal = mrOk then begin
        if not (Dm.REndelestetel.State in [dsEdit, dsInsert]) then Dm.REndelestetel.Edit ;
        BodyCode := Trim(Dm.KonstrJellQrybodyDNb.AsString) ;
        Dm.RendelesTetelKonstrukcio.AsString := BodyCode ;
        Dm.RendelesTetelKonstrukcioMaxAtmero.AsFloat := Dm.KonstrJellQryOD.AsFloat ;
      end ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatlapInspectorKonstrukcio2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  BodyCode, Konstrukcio: string ;
begin
  try
    try
      if not Dm.KonstrJellQry.Active then Dm.KonstrJellQry.Active := True ;
      Konstrukcio := Trim(AdatlapInspectorKonstrukcio2.Field.AsString) ;
      if Konstrukcio <> '' then Dm.KonstrJellQry.Locate('bodyDNb', Konstrukcio, [loCaseInsensitive]) ;
      if KonstrJellForm.ShowModal = mrOk then begin
        if not (Dm.REndelestetel.State in [dsEdit, dsInsert]) then Dm.REndelestetel.Edit ;
        BodyCode := Trim(Dm.KonstrJellQrybodyDNb.AsString) ;
        Dm.RendelesTetelKonstrukcio2.AsString := BodyCode ;
      end ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetImportExecute(Sender: TObject);
var
  i, Kategoria, accType: integer ;
  KatCount: array [1..4] of integer ;
  ErrInfoStr, Megnevezes, Rajzszam, Etc, TipusNev, KonstrRsz: string ;
  KonstrMaxOD, EndMaxOD: double ;
begin
  try
    try
      KonstrRsz := '' ;
      DataSheetImportForm.ItemsGridaccessoryType.Visible := False ;
      if DataSheetImportForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        if not (Dm.RendelesTetel.State in [dsInsert, dsEdit]) then Dm.RendelesTetel.Edit ;
        KatCount[1] := 0 ;
        KatCount[2] := 0 ;
        KatCount[3] := 0 ;
        KatCount[4] := 0 ;
        Dm.RendelesTetelEgyebek.Clear ;
        with DataSheetImportForm do begin
          RxMemoryData1.First ;
          while not RxMemoryData1.Eof do begin
            Kategoria:=RxMemoryData1KategoriaId.AsInteger ;
            if RxMemoryData1Checked.AsBoolean then begin
              inc(KatCount[Kategoria]) ;
              i := KatCount[Kategoria] ;
              accType := RxMemoryData1accessoryType.AsInteger ;
              Case Kategoria of
                1: // Konstrukci�k
                  begin
                    if i = 1 then begin
                      TipusNev := 'Konstrukcio1: ' ;
                      KonstrRsz := RxMemoryData1Rajzszam.AsString ;
                      Dm.RendelesTetelKonstrukcio.AsString := RxMemoryData1Rajzszam.AsString ;
                      if not Dm.KonstrJellQry.Active then Dm.KonstrJellQry.Active := True ;
                      if Dm.KonstrJellQry.Locate('bodyDNb', RxMemoryData1Rajzszam.AsString, [loCaseInsensitive]) then begin
                        KonstrMaxOD := Dm.KonstrJellQryOD.AsFloat ;
                        Dm.RendelesTetelKonstrukcioMaxAtmero.AsFloat := KonstrMaxOD ;
                        if KonstrMaxOD = 0 then ErrMsg('�v�nytelen a t�ml�test �tm�r�je!') ;
                      end
                      else ErrMsg('Nem tal�lhat� a konstrukci�!') ;
                    end
                    else if i = 2 then begin
                      TipusNev := 'Konstrukcio2: ' ;
                      Dm.RendelesTetelKonstrukcio2.AsString:=RxMemoryData1Rajzszam.AsString ;
                    end
                    else if i > 0 then ErrMsg('Csak k�t konstrukc� vihet� �t!') ;
                  end ;
                2:  // Be�p�tett �lland� alkatr�szek
                  begin
                    Case accType of
                      3: // V�d�h�vely
                        begin
                          TipusNev := 'V�d�h�vely: ' ;
                          Dm.RendelesTetelVedoHuvely.AsString:=RxMemoryData1Rajzszam.AsString ;
                        end ;
                      5: // Bels� h�vely
                        begin
                          TipusNev := 'Bels�h�vely: ' ;
                          Dm.RendelesTetelBelsohuvely.AsString := RxMemoryData1Rajzszam.AsString ;
                          Dm.RendelesTetelBhAnyag.AsString := Trim(RxMemoryData1Megjegyzes.AsString) ;
                        end ;
                      6: // H�vely
                        begin
                          TipusNev := 'H�vely: ' ;
                          Dm.RendelesTetelHuvely.AsString:=RxMemoryData1Rajzszam.AsString ;
                        end ;
                      7: // Spir�lk�p
                        begin
                          TipusNev := 'Spir�lk�p: ' ;
                          Dm.RendelesTetelSpiralkup.AsString:=RxMemoryData1Rajzszam.AsString ;
                        end ;
                      else begin
                        ErrInfoStr := #13 + '(' + RxMemoryData1Megnevezes.AsString + ' - '
                          + RxMemoryData1Rajzszam.AsString + ')' ;
                        ErrMsg('Ismeretlen alkatr�sz besorol�s!' + ErrInfoStr) ;
                      end ;
                    end ;
                  end ;
                3:  // Be�p�tett v�ltoz� alkatr�szek
                  begin
                    Case accType of
                      4: // Osztott h�vely
                        begin
                          TipusNev := 'Osztotth�vely: ' ;
                          Dm.RendelesTetelOsztottHuvely.AsString := RxMemoryData1Rajzszam.AsString ;
                        end ;
                      2: // Emel� bilincs
                        begin
                          TipusNev := 'Emel�bilincs: ' ;
                          Dm.RendelesTetelEmelobilincs.AsString := RxMemoryData1Rajzszam.AsString ;
                          Dm.RendelesTetelEbMeret.AsFloat := WordFromStr(RxMemoryData1Megjegyzes.AsString) ;
                        end ;
                      1: // Biztons�gi bilincs
                        begin
                          TipusNev := 'Biztons�gi bilincs: ' ;
                          Dm.RendelesTetelBiztBilincs.AsString := RxMemoryData1Rajzszam.AsString ;
                          Dm.RendelesTetelBbMeret.AsFloat := WordFromStr(RxMemoryData1Megjegyzes.AsString) ;
                        end ;
                      7: // V�d�h�vely
                        begin
                          TipusNev := 'V�d�h�vely: ' ;
                          Dm.RendelesTetelVedoHuvely.AsString := RxMemoryData1Rajzszam.AsString ;
                        end ;
                      else begin
                        Megnevezes := RxMemoryData1Megnevezes.AsString ;
                        Rajzszam := RxMemoryData1Rajzszam.AsString ;
                        Etc := Dm.RendelesTetelEgyebek.AsString ;
                        if Etc <> '' then Etc := Etc + #13 ;
                        Etc := Etc + Rajzszam + ' ' + Megnevezes ;
                        Dm.RendelesTetelEgyebek.AsString := Etc ;
                      end ;
                    end ;
                  end ;
                4:  // Csatlakoz�k
                  begin
                    if i = 1 then begin
                      TipusNev := 'Csatlakoz� "A": ' ;
                      Dm.RendelesTetelCsatl1.AsString := RxMemoryData1Megnevezes.AsString ;
                      Dm.RendelesTetelCsatl1Rsz.AsString := RxMemoryData1Rajzszam.AsString ;
                      Dm.RendelesTetelOsszeallRsz.AsString := RxMemoryData1OsszeallRsz.AsString ;
                      EndMaxOD := GetCouplingMaxOD(KonstrRsz, RxMemoryData1Rajzszam.AsString) ;
                      Dm.RendelesTetelCsatl1MaxAtmero.AsFloat := EndMaxOD ;
                      if EndMaxOD = 0 then ErrMsg('Nem hat�rozhat� meg az "A" v�g maxim�lis �tm�r�je!') ;
                    end
                    else if i = 2 then begin
                      TipusNev := 'Csatlakoz� "B": ' ;
                      Dm.RendelesTetelCsatl2.AsString := RxMemoryData1Megnevezes.AsString ;
                      Dm.RendelesTetelCsatl2Rsz.AsString := RxMemoryData1Rajzszam.AsString ;
                      EndMaxOD := GetCouplingMaxOD(KonstrRsz, RxMemoryData1Rajzszam.AsString) ;
                      Dm.RendelesTetelCsatl2MaxAtmero.AsFloat := EndMaxOD ;
                      if EndMaxOD = 0 then ErrMsg('Nem hat�rozhat� meg az "B" v�g maxim�lis �tm�r�je!') ;
                    end
                    else if i > 0 then begin
                      ErrMsg('Legfeljebb k�t csatlakoz�t lehet import�lni!') ;
                    end ;
                  end ;
                else begin
                  ErrMsg('Ismeretelen kateg�ria!') ;
                end ;
              end ;
              if Trim(RxMemoryData1Megjegyzes.AsString) <> '' then begin
                if Trim(Dm.RendelesTetelEgyebek.AsString) <> '' then
                  Dm.RendelesTetelEgyebek.AsString:=Dm.RendelesTetelEgyebek.AsString
                    + #13 + TipusNev + RxMemoryData1Megjegyzes.AsString
                else Dm.RendelesTetelEgyebek.AsString:=TipusNev+RxMemoryData1Megjegyzes.AsString ;
              end ;
            end ;
            RxMemoryData1.Next ;
          end ;
        end ;
      end ;
    finally
      DataSheetImportForm.AdatlapQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PageControl3Change(Sender: TObject);
begin
  ErrMsg(Sender.ClassName) ;
end;

function TMainForm.GetMatNormCode(ConstrCode: string): string ;
begin
  Result:='' ;
  try
    try
      if Trim(ConstrCode)<>'' then begin
        Dm.AnormaQry.Active:=False ;
        Dm.AnormaQry.ParamByName('KonstrukcioKod').AsString:=Trim(ConstrCode) ;
        Dm.AnormaQry.Active:=True ;
        if Dm.AnormaQry.RecordCount=0 then Result:='A konstrukci�hoz anyagnorma nem kapcsolhat�!'
        else Result:=Dm.AnormaQryAnormaKod.AsString ;
      end
      else Result:='Nincs konstrukci� megadva!' ;
    finally
      Dm.AnormaQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.WorkHelpSheetShow(Sender: TObject);
begin
  try
    if not MeTypecombo.ListSource.DataSet.Active
    then begin
      MeTypecombo.ListSource.DataSet.Active := True ;
      Dm.Units.Active := True ;
    end ;
    if MeTypecombo.KeyValue <= 0 then MeTypecombo.KeyValue := 1 ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackSheetShow(Sender: TObject);
begin
  PackOpenExecute(Sender) ;
  dxDBGrid3PackDevCode.Visible := False ;
end;

procedure TMainForm.MfCkszSheetShow(Sender: TObject);
begin
  if MfCkszSheet.TabVisible then begin
    MainForm.Refresh ;
    if not Dm.qMfCikkszamok.Active then MfCkszOpenExecute(Sender) ;
  end ;
end;

procedure TMainForm.KonstrSheetShow(Sender: TObject);
begin
  KonstrOpenExecute(Sender) ;
end;

procedure TMainForm.DataSheetGeneralShow(Sender: TObject);
begin
  DataSheet1OpenExecute(Sender) ;
end;

procedure TMainForm.DataSheetSpecificShow(Sender: TObject);
begin
  ExtraDataSheetOpenExecute(Sender) ;
end;

procedure TMainForm.CouplingSheetShow(Sender: TObject);
begin
  CouplingsOpenExecute(Sender) ;
  if not Tervezo then begin
    Abracombo.Enabled := False ;
    L1CaptionComboBox.Enabled := False ;
  end ;
end;

procedure TMainForm.FormStorage1SavePlacement(Sender: TObject);
var
  MeType: integer ;
begin
  if MeTypeCombo.KeyValue = Null then MeType := 0 else MeType := MeTypeCombo.KeyValue ;
  FormStorage1.WriteString('AtveteliSablonPath', AtveteliSablonPath) ;
  FormStorage1.WriteString('LastOrderNum', LastOrderNum) ;
  FormStorage1.WriteString('DrawStartPath', DrawStartPath) ;
  FormStorage1.WriteInteger('MeType', MeType) ;
  FormStorage1.WriteInteger('LastOrderProd', ActTermek) ;
  FormStorage1.WriteInteger('LastPanelHeight', LastPanelHeight) ;
  FormStorage1.WriteString('SeViewerPrg', SeViewerPrg) ;
  //FormStorage1.WriteString('MsoDrawGridFilter', MsoDrawGrid.Filter.FilterText) ;

  if ActTermek <> 0 then FormStorage1.WriteInteger('ActTermek', ActTermek) ;
  // A DxDBIspector be�ll�t�sainak ment�se
  WriteInspectorParams(AdatlapInspector, FormStorage1) ;
  WriteInspectorParams(PackInspector, FormStorage1) ;
  WriteInspectorParams(ChipInspector, FormStorage1) ;
  WriteInspectorParams(MfCkszInspector, FormStorage1) ;
end;

procedure TMainForm.FormStorage1RestorePlacement(Sender: TObject);
var
  Year, Month, Day: word ;
begin
  AtveteliSablonPath := FormStorage1.ReadString('AtveteliSablonPath', '') ;
  DrawStartPath := FormStorage1.ReadString('DrawStartPath', '\\SDFS002\SDG-Group\Fluid\TMO Rajztar') ;
  LastOrderNum := FormStorage1.ReadString('LastOrderNum', '') ;
  if Trim(AtveteliSablonPath) = '' then
    AtveteliSablonPath := '"U:\Fluid\TMO Technol�gia\�tv�teli el��r�s\Atveteli sablon.doc"' ;
  MeTypeCombo.KeyValue := FormStorage1.ReadInteger('MeType', 0) ;
  // A DxDBIspector be�ll�t�sainak bet�lt�se
  DecodeDate(Date, Year, Month, Day) ;
  LastPanelHeight := FormStorage1.ReadInteger('LastPanelHeight', 0) ;
  SeViewerPrg := FormStorage1.ReadString('SeViewerPrg', 'iCnct.exe') ;
  ReadInspectorParams(AdatlapInspector, FormStorage1) ;
  ReadInspectorParams(PackInspector, FormStorage1) ;
  ReadInspectorParams(ChipInspector, FormStorage1) ;
  ReadInspectorParams(MfCkszInspector, FormStorage1) ;
  SpecDataSheetInit ;
  if FormStorage1.ReadInteger('Panel80_Width', 0) = 0 then Panel80.Width := Splitter18.MinSize ;
  //MsoDrawGrid.Filter.FilterText := FormStorage1.ReadString('MsoDrawGridFilter', '') ;
  AddEvent('"' + PageControl1.ActivePage.Caption + '" f�l kiv�laszt�sa.', Versio.FileName, '') ;
end;

procedure TMainForm.ItemChangesExecute(Sender: TObject);
var
  RendelesSzam: string ;
  Tetel: integer ;
begin
  try
    RendelesSzam := Dm.HSOrderHeadListRendSz.AsString ;
    Tetel := Dm.RendelesTetelTetelSrsz.AsInteger ;
    Dm.RendMod.Active := False ;
    Dm.RendMod.ParamByName('@Rendelesszam').AsString := RendelesSzam ;
    Dm.RendMod.ParamByName('@TetelSorszam').AsInteger := Tetel ;
    Dm.RendMod.Active := True ;
    ItemChangesForm.ShowModal ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.QualificationOpenExecute(Sender: TObject);
var
  Csatl1Megn, Csatl2Megn, Csatl1Rsz, Csatl2Rsz, bh, h, spk,
  eb, bb, vh, oh, Tipusnev, FieldName, Rajzszam, Cikkszam, Msg: string ;
  db, i, j, k, TetelSrsz: integer ;
  Differ: boolean ;
begin
  Differ:=False ;
  try
    MessagesForm.MsgEdit.Clear ;
    if not Dm.RendMin.Active then Dm.RendMin.Active := True ;
    RxMemoryData1.Active := False ;
    RxMemoryData1.Active := True ;
    Dm.RendMin.CheckBrowseMode ;
    Dm.RendelesTetel.First ;
    while not Dm.RendelesTetel.Eof do begin
      Csatl1Megn := Trim(Dm.RendelesTetelCsatl1.AsString) ;
      Csatl1Rsz := Trim(Dm.RendelesTetelCsatl1Rsz.AsString) ;
      Csatl2Megn := Trim(Dm.RendelesTetelCsatl2.AsString) ;
      Csatl2Rsz := Trim(Dm.RendelesTetelCsatl2Rsz.AsString) ;
      bh := Trim(Dm.RendelesTetelBelsoHuvely.AsString) ;
      h := Trim(Dm.RendelesTetelHuvely.AsString) ;
      spk := Trim(Dm.RendelesTetelSpiralkup.AsString) ;
      eb := Trim(Dm.RendelesTetelEmeloBilincs.AsString) ;
      bb := Trim(Dm.RendelesTetelBiztBilincs.AsString) ;
      vh := Trim(Dm.RendelesTetelVedoHuvely.AsString) ;
      oh := Trim(Dm.RendelesTetelOsztottHuvely.AsString) ;
      db := Dm.RendelesTetelDarabSzam.AsInteger ;

      // Csatlakoz� adatok feldolgoz�sa
      TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
      if (Csatl2Megn = '') and (Csatl2Rsz = '') then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Csatlakoz� "A"' ;
        RxMemoryData1Megnevezes.AsString := Csatl1Megn ;
        RxMemoryData1Rajzszam.AsString := Csatl1Rsz ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end
      else begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Csatlakoz� "A"' ;
        RxMemoryData1Megnevezes.AsString := Csatl1Megn ;
        RxMemoryData1Rajzszam.AsString := Csatl1Rsz ;
        RxMemoryData1Darabszam.AsInteger := 1 * db ;
        RxMemoryData1.Post ;
        RxMemoryData1.Append ;
        RxMemoryData1Tipusnev.AsString := 'Csatlakoz� "B"' ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Megnevezes.AsString := Csatl2Megn ;
        RxMemoryData1Rajzszam.AsString := Csatl2Rsz ;
        RxMemoryData1Darabszam.AsInteger := 1 * db ;
        RxMemoryData1.Post ;
      end ;

      // Bels�h�vely adatok feldolgoz�sa
      if bh <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Bels�h�vely' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := bh ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // H�vely adatok feldolgoz�sa
      if h <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'H�vely' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := h ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // Spir�lk�p adatok feldolgoz�sa
      if spk <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Spir�lk�p' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := spk ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // Emel� bilincs adatok feldolgoz�sa
      if eb <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Emel�bilincs' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := eb ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // Biztons�gi bilincs adatok feldolgoz�sa
      if bb <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Biztons�gi bilincs' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := bb ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // V�d�h�vely adatok feldolgoz�sa
      if vh <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'V�d�h�vely' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := vh ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // Osztott h�vely adatok feldolgoz�sa
      if oh <> '' then begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := 'Osztotth�vely' ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := oh ;
        RxMemoryData1Darabszam.AsInteger := 2 * db ;
        RxMemoryData1.Post ;
      end ;

      // Egy�b adatok feldolgoz�sa
      Dm.RendEgyeb.First ;
      while not Dm.RendEgyeb.Eof do begin
        RxMemoryData1.Append ;
        RxMemoryData1TetelSrsz.AsInteger := TetelSrsz ;
        RxMemoryData1Tipusnev.AsString := Dm.RendEgyebMegnevezes.AsString ;
        RxMemoryData1Megnevezes.AsString := '' ;
        RxMemoryData1Rajzszam.AsString := Dm.RendEgyebRajzszam.AsString ;
        RxMemoryData1Darabszam.AsInteger := Dm.RendEgyebDarabszam.AsInteger ;
        RxMemoryData1.Post ;
        Dm.RendEgyeb.Next ;
      end ;
      Dm.RendelesTetel.Next ;
    end ;

    //x:=RxMemoryData1.RecordCount ;

    // Cikksz�mok bet�lt�se az alap list�ba
    PrgForm.Caption := 'Cikksz�mok keres�se...' ;
    //PrgForm.Label1.Refresh ;
    PrgForm.ProgressBar1.Position := 0 ;
    PrgForm.ProgressBar1.Max := RxMemoryData1.RecordCount ;
    PrgForm.Show ;
    k := 0 ;
    RxMemoryData1.First ;
    while not RxMemoryData1.Eof do begin
      inc(k) ;
      PrgForm.ProgressBar1.Position := k ;
      Rajzszam := Trim(RxMemoryData1Rajzszam.AsString) ;
      if Rajzszam <> '' then begin
        Dm.GetMaterialNum.ParamByName('@Pattern').AsString := Rajzszam ;
        Dm.GetMaterialNum.Active := True ;
        Cikkszam := Trim(Dm.GetMaterialNum.Fields[0].AsString) ;
        if Dm.GetMaterialNum.RecordCount > 1 then begin
          Msg := Rajzszam+' rajzsz�mhoz t�bb cikksz�m tartozik!' + #13 + 'Ellen�rizd!' ;
          MessagesForm.MsgEdit.Lines.Add(Msg) ;
        end ;
        Dm.GetMaterialNum.Active := False ;
      end
      else begin
        Msg := RxMemoryData1TetelSrsz.AsString + '. t�tel, ' + RxMemoryData1TipusNev.AsString
               + ' elemhez nem tartozik rajzsz�m!' ;
        MessagesForm.MsgEdit.Lines.Add(Msg) ;
      end ;

      if Cikkszam <> '' then begin
        RxMemoryData1.Edit ;
        RxMemoryData1Cikkszam.AsString := Cikkszam ;
        RxMemoryData1.Post ;
      end ;
      RxMemoryData1.Next ;
    end ;
    PrgForm.Hide ;

    RxMemoryData1.First ;
    if Dm.RendMin.RecordCount = 0 then begin // Ha �res a lista, felt�lt�s
      while not RxMemoryData1.Eof do begin
        Dm.RendMin.Append ;
        Dm.RendMinTetelSrsz.AsInteger := RxMemoryData1TetelSrsz.AsInteger ;
        Dm.RendMinTipusnev.AsString := RxMemoryData1TipusNev.AsString ;
        Dm.RendMinMegnevezes.AsString := RxMemoryData1Megnevezes.AsString ;
        Dm.RendMinRajzszam.AsString := RxMemoryData1Rajzszam.AsString ;
        Dm.RendMinCikkszam.AsString := RxMemoryData1Cikkszam.AsString ;
        Dm.RendMinDarabszam.AsInteger := RxMemoryData1Darabszam.AsInteger ;
        Dm.RendMin.Post ;
        RxMemoryData1.Next ;
      end ;
    end
    else begin // Ha nem �res a lista, akkor �sszehasonl�t�s
      QualificCompareForm.CompareData.Active := False ;
      QualificCompareForm.CompareData.Active := True ;
      while not RxMemoryData1.Eof do begin
        Tipusnev := RxMemoryData1Tipusnev.AsString ;
        TetelSrsz := RxMemoryData1TetelSrsz.AsInteger ;
        if Dm.RendMin.Locate('Tipusnev;TetelSrsz', VarArrayOf([Tipusnev,TetelSrsz]), [loCaseInsensitive]) then begin
          for i := 0 to RxMemoryData1.FieldCount-1 do begin
            FieldName := RxMemoryData1.Fields[i].FieldName ;
            Differ := Dm.RendMin.FieldByName(FieldName).AsString <> RxMemoryData1.FieldByName(FieldName).AsString ;
            if Differ then Break ;
          end ;
          if Differ then begin
            QualificCompareForm.CompareData.Append ;
            for i := 0 to RxMemoryData1.FieldCount - 1 do begin
              FieldName := RxMemoryData1.Fields[i].FieldName ;
              QualificCompareForm.CompareData.FieldByName(FieldName).Value := RxMemoryData1.FieldByName(FieldName).Value ;
            end ;
            QualificCompareForm.CompareData.Post ;
          end ;
        end
        else begin
          QualificCompareForm.CompareData.Append ;
          for i := 0 to RxMemoryData1.FieldCount-1 do begin
            FieldName := RxMemoryData1.Fields[i].FieldName ;
            QualificCompareForm.CompareData.FieldByName(FieldName).Value := RxMemoryData1.FieldByName(FieldName).Value ;
          end ;
          QualificCompareForm.CompareData.Post ;
        end ;

        // QualificCompareForm.CompareData.Append ;
        RxMemoryData1.Next ;
      end ;
      if (QualificCompareForm.CompareData.RecordCount > 0) and
      (QualificCompareForm.ShowModal = mrOk) then begin
        QualificCompareForm.CompareData.First ;
        while not QualificCompareForm.CompareData.Eof do begin
          if QualificCompareForm.CompareDataSelected.AsBoolean then begin
            for i := 0 to QualificCompareForm.CompareData.FieldCount - 2 do begin
              Tipusnev := QualificCompareForm.CompareDataTipusnev.AsString ;
              TetelSrsz := QualificCompareForm.CompareDataTetelSrsz.AsInteger ;
              if Dm.RendMin.Locate('Tipusnev;TetelSrsz', VarArrayOf([Tipusnev, TetelSrsz]), [loCaseInsensitive]) then begin
                Dm.RendMin.Edit ;
                for j := 0 to QualificCompareForm.CompareData.FieldCount - 2 do begin
                  FieldName := QualificCompareForm.CompareData.Fields[j].FieldName ;
                  Dm.RendMin.FieldByName(FieldName).Value := QualificCompareForm.CompareData.Fields[j].Value ;
                end ;
                Dm.RendMin.Post ;
              end
              else begin
                Dm.RendMin.Append ;
                for j := 0 to QualificCompareForm.CompareData.FieldCount-2 do begin
                  FieldName := QualificCompareForm.CompareData.Fields[j].FieldName ;
                  Dm.RendMin.FieldByName(FieldName).Value := QualificCompareForm.CompareData.Fields[j].Value ;
                end ;
                Dm.RendMin.Post ;
              end ;
            end ;
          end ;
          QualificCompareForm.CompareData.Next ;
        end ;
        //QualificCompareForm.CompareData.Next ;
      end
      else begin
        MessageDlg('Nem t�rt�nt v�ltoz�s!', mtInformation, [mbOk], 0) ;
      end ;
    end ;
    if MessagesForm.MsgEdit.Lines.Count > 0 then MessagesForm.ShowModal ;
    Dm.RendMin.Refresh ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end
  // Ha l�tezik m�r bejegyz�s, akkor megnyit�s
end;

procedure TMainForm.QualificationReportExecute(Sender: TObject);
var
  RendelesAz: integer ;
begin
  try
    try
      RendelesAz:=RendRaktarGrid.DataSource.DataSet.FindField('RendelesAz').AsInteger ;
      Dm.qRendMin.Active:=False ;
      Dm.qRendMin.ParamByName('RendelesAz').AsInteger:=RendelesAz ;
      Dm.qRendMin.Active:=True ;
      RendMinReport.Keszitette.Caption:=MainForm.CurrentUserName+' - '+DatetimeToStr(Now) ;
      RendMinReport.Preview ;
    finally
      Dm.qRendMin.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MinBizGridDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  Grid: TdxDbGrid ;
  SourceDataSet: TDataSet ;
  i, MinId, db, Bizonylatszam: integer ;
begin
  Grid:=TdxDbGrid(Source) ;
  SourceDataSet:=Grid.DataSource.DataSet ;
  if BizonylatInputForm.ShowModal <> mrYes then Exit ;
  Bizonylatszam:=StrToInt(BizonylatInputForm.Edit1.Text) ;
  for i:= 0 to Grid.SelectedCount - 1 do begin
    SourceDataSet.GotoBookmark(pointer(Grid.SelectedRows[i])) ;
    //RendelesAz:=SourceDataSet.FindField('RendelesAz').AsInteger ;
    MinId:=SourceDataSet.FindField('MinId').AsInteger ;
    db:=SourceDataSet.FindField('Darabszam').AsInteger ;
    Dm.tAnyagKi.Append ;
    Dm.tAnyagKiBizonylatszam.AsInteger:=Bizonylatszam ;
    Dm.tAnyagKiMinId.AsInteger:=MinId ;
    Dm.tAnyagKiKiadottDarab.AsInteger:=db ;
    Dm.tAnyagKi.Post ;
  end ;
end;

procedure TMainForm.CopyMiscExecute(Sender: TObject);
var
  i, j: integer ;
  fn: string ;
  DataSet: TDataSet ;
begin
  try
    if not MiscTempData.Active then MiscTempData.Active := True else MiscTempData.EmptyTable ;
    DataSet := RendEgyebGrid.DataSource.DataSet ;
    if RendEgyebGrid.SelectedCount = 0 then begin
      ErrMsg('A m�sol�shoz ki kellene v�lasztani a megfelel� sorokat!') ;
      Exit ;
    end ;
    for i := 0 to RendEgyebGrid.SelectedCount - 1 do begin
      if DataSet.BookmarkValid(pointer(RendEgyebGrid.SelectedRows[i])) then begin
        DataSet.GotoBookmark(pointer(RendEgyebGrid.SelectedRows[i])) ;
        MiscTempData.Append ;
        for j := 0 to MiscTempData.FieldCount - 1 do begin
          fn := MiscTempData.Fields[j].FieldName ;
          MiscTempData.Fields[j].Value := DataSet.FindField(fn).Value ;
        end ;
        MiscTempData.Post ;
        PasteMisc.Enabled := True ;
      end ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PasteMiscExecute(Sender: TObject);
var
  DataSet: TDataSet ;
  i: integer ;
  fn: string ;
begin
  try
    DataSet := RendEgyebGrid.DataSource.DataSet ;
    MiscTempData.First ;
    while not MiscTempData.Eof do begin
      DataSet.Append ;
      for i:= 0 to MiscTempData.FieldCount - 1 do begin
        fn := MiscTempData.Fields[i].FieldName ;
        DataSet.FindField(fn).Value := MiscTempData.Fields[i].Value ;
      end ;
      DataSet.Post ;
      MiscTempData.Next ;
    end ;
    DataSet.Refresh ;
    RendEgyebGrid.ClearSelection ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.RendMinGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Egyenleg: integer ;
begin
  if RendMinGrid.DataSource.DataSet.RecordCount > 0 then begin
    Egyenleg:=ANode.Values[9] ;
    if Egyenleg = 0 then AFont.Color := clGreen ;
    if Egyenleg < 0 then AFont.Color := clRed ;
  end ;
end;

procedure TMainForm.QualificationModReportExecute(Sender: TObject);
var
  RendelesAz: integer ;
begin
  try
    try
      RendelesAz:=RendRaktarGrid.DataSource.DataSet.FindField('RendelesAz').AsInteger ;
      Dm.qRendMinMod.Active:=False ;
      Dm.qRendMinMod.ParamByName('RendelesAz').AsInteger:=RendelesAz ;
      Dm.qRendMinMod.Active:=True ;
      RendMinModReport.Keszitette.Caption:=MainForm.CurrentUserName+' - '+DatetimeToStr(Now) ;
      RendMinModReport.Preview ;
    finally
      Dm.qRendMinMod.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.KiadatlanTetelekExecute(Sender: TObject);
var
  RendelesAz: integer ;
begin
  try
    try
      Dm.qKiadatlan.Active:=True ;
      if NemKiadottForm.ShowModal = mrOk then begin
        RendelesAz:=Dm.qKiadatlanRendelesAz.AsInteger ;
        if not Dm.HSOrderHeadList.Locate('RendelesAz', RendelesAz, [loCaseInsensitive])
        then ErrMsg('Nem tal�lhat� a rekord!') ;
      end ;
    finally
      Dm.qKiadatlan.Active:=False ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OrderInputOpenExecute(Sender: TObject);
begin
  try
    dmOrder.tRendelesFej.Active:=True ;
    dmOrder.tRendelesTetel.Active:=True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OrderInputSheetShow(Sender: TObject);
begin
  OrderInputOpenExecute(Sender) ;
end;

procedure TMainForm.OrderOpenExecute(Sender: TObject);
begin
  try
    if not OrderDm.tRendFej.Active then begin
      //OrderDm.vMarking.Active := True ;
      OrderDm.spJoinedMarkingList.Active := True ;
      OrderDm.spGetUserProductList.Active := False ;
      OrderDm.spGetUserProductList.ParamByName('@ProgName').AsString := Versio.InternalName ;
      OrderDm.spGetUserProductList.ParamByName('@Uid').AsInteger := CurrentUserId ;
      OrderDm.spGetUserProductList.Active := True ;
      if not OrderDm.qRendEgyeb.Active then OrderDm.qRendEgyeb.Active := True ;
      ActTermek := FormStorage1.ReadInteger('ActTermek', 0) ;
      if ActTermek <> 0 then TermekCombo.KeyValue := ActTermek ;
      LoadHoseTypeList ;
    end
    else begin
      // RefreshOrders ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OrderSheetShow(Sender: TObject);
begin
  OrderOpenExecute(Sender) ;
end;

procedure TMainForm.DataSheetReportExecute(Sender: TObject);
var
  AdatlapId: longint ;
begin
  try
    try
      AdatlapId:=Dm.AdatlapAdatlapId.AsInteger ;
      with AdatlapReport do begin
        AdatlapFejQry.Active:=False ;
        AdatlapKonf.Active:=False ;
        AdatlapAllandoAlk.Active:=False ;
        AdatlapCsom.Active:=False ;
        ValtozoAlk.Active:=False ;
        AdatlapCsatl.Active:=False ;
        AdatlapFejQry.ParamByName('AdatlapId').AsInteger:=AdatlapId ;
        AdatlapFejQry.Active:=True ;
        AdatlapKonf.Active:=True ;
        AdatlapAllandoAlk.Active:=True ;
        AdatlapCsom.Active:=True ;
        ValtozoAlk.Active:=True ;
        AdatlapCsatl.Active:=True ;
      end ;
      AdatlapReport.Keszitette.Caption:=CurrentUserName+ ' - ' + DateTimeToStr(Now) ;
      AdatlapReport.Preview ;
    finally
      AdatlapReport.AdatlapFejQry.Active:=False ;
      AdatlapReport.AdatlapKonf.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetSelectionExecute(Sender: TObject);
var
  AdatlapId: longint ;
begin
  try
    try
      DataSheetSelectForm.qAdatlap.Active:=True ;
      if DataSheetSelectForm.ShowModal = mrOk then begin
        AdatlapId:=DataSheetSelectForm.qAdatlapAdatlapId.AsInteger ;
        if Dm.Adatlap.Locate('AdatlapId', AdatlapId, [loCaseInsensitive]) then begin
          // Az �llom�nyok st�tusz�nak ellen�rz�se j�het ide
        end
        else ErrMsg('Nem tal�lhat� a kiv�lasztott adatlap!') ;
      end ;
    finally
      DataSheetSelectForm.qAdatlap.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetCopyExecute(Sender: TObject);
begin
  try
    SelectedDataSheetId:=Dm.AdatlapAdatlapId.AsInteger ;
    DataSheetPaste.Enabled:=True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetPasteExecute(Sender: TObject);
var
  ActiveDataSheetId: longint ;
begin
  try
    try
      ActiveDataSheetId:=Dm.AdatlapAdatlapId.AsInteger ;
      Dm.AdatlapKonf.Active:=False ;
      Dm.AdatlapCsom.Active:=False ;
      Dm.AllandoAlk.Active:=False ;
      Dm.ValtozoAlk.Active:=False ;
      Dm.AdatlapCsatl.Active:=False ;
      Dm.spGeneral.StoredProcName:='sp_CopyDataSheet;1' ;
      Dm.spGeneral.Prepare ;
      Dm.spGeneral.ParamByName('@SourceId').AsInteger:=SelectedDataSheetId ;
      Dm.spGeneral.ParamByName('@DestId').AsInteger:=ActiveDataSheetId ;
      Dm.spGeneral.ExecProc ;
      DataSheetPaste.Enabled:=False ;
    finally
      Dm.AdatlapKonf.Active:=True ;
      Dm.AdatlapCsom.Active:=True ;
      Dm.AllandoAlk.Active:=True ;
      Dm.ValtozoAlk.Active:=True ;
      Dm.AdatlapCsatl.Active:=True ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  try
    Dm.qRendRaktar.Active:=False ;
    Dm.qRendRaktar.Active:=True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetQualificationShow(Sender: TObject);
begin
  try
    RendRaktarGrid.SetFocus ;
    if not Dm.qRendRaktar.Active then Dm.qRendRaktar.Active:=True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetAccessoryShow(Sender: TObject);
begin
  MainForm.Refresh ;
  RendFejQryGrid.SetFocus ;
end;

procedure TMainForm.SpeedButton10Click(Sender: TObject);
var
  fn: string ;
begin
  SaveDialog1.DefaultExt:='xls' ;
  SaveDialog1.Filter:='*.*' ;
  if SaveDialog1.Execute then begin
    fn:=Savedialog1.FileName ;
    CouplingsGrid.SaveToXLS(fn, False) ;
  end ;
end;

procedure TMainForm.CouplingsGridCustomDrawCell(Sender: TObject;
 ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
 AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
 var AText: String; var AColor: TColor; AFont: TFont;
 var AAlignment: TAlignment; var ADone: Boolean);
var
  i, j, x: integer ;
  CsatlErv, OsszeallErv: Boolean ;
begin
  for x := 0 to CouplingsGrid.GroupColumnCount - 1 do begin
      if CouplingsGrid.GroupColumns[x] = AColumn then Exit ;
  end ;
  i := TdxDBGrid(Sender).ColumnByFieldName('CsatlErv').Index ;
  j := TdxDBGrid(Sender).ColumnByFieldName('OsszeallErv').Index ;
  if (ANode.Values[i] = Null) or (ANode.Values[j] = Null) then Exit ;
  CsatlErv := Boolean(ANode.Values[i]) ;
  OsszeallErv := Boolean(ANode.Values[j]) ;
  if not CsatlErv then AColor := clSilver ;
  if OsszeallErv then AFont.Color := clGreen ;
end;

procedure TMainForm.KonstrSearchExecute(Sender: TObject);
begin
  try
    if not (Dm.RendelesTetel.State in [dsBrowse]) then begin
      ErrMsg('Az adatok m�dos�t�sa k�zben nem ind�that� keres�s!') ;
      Exit ;
    end ;
    ConstrSearchForm.Show ;
  except
    On E: exception do Errmsg(E.Message) ;
  end ;
end;

procedure TMainForm.CkszSearchExecute(Sender: TObject);
begin
  try
    if not (Dm.RendelesTetel.State in [dsBrowse]) then begin
      ErrMsg('Az adatok m�dos�t�sa k�zben nem ind�that� keres�s!') ;
      Exit ;
    end ;
    MatNumSearchForm.Show ;
  except
    On E: exception do Errmsg(E.Message) ;
  end ;
end;

procedure TMainForm.AddBookmarkExecute(Sender: TObject);
var
  Rendsz : string ;
  TetelSrsz : integer ;
begin
  try
    if not Dm.DataSheetBmkData.Active then begin
      Dm.DataSheetBmkData.Active := True ;
      ShowBookmarkList.Enabled := True ;
    end ;
    Rendsz := Dm.HSOrderHeadListRendSz.AsString ;
    TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
    Dm.DataSheetBmkData.Append ;
    Dm.DataSheetBmkDataRendsz.AsString := Rendsz ;
    Dm.DataSheetBmkDataTetelSrsz.AsInteger := TetelSrsz ;
    Dm.DataSheetBmkData.Post ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.LocateOrderItem(Rendsz: string; TetelSrsz: integer): Boolean ;
begin
  Result := True ;
  try
    if not Dm.HSOrderHeadList.Locate('Rendsz', Rendsz, [loCaseInsensitive]) then Result := False
    else if not Dm.RendelesTetel.Locate('TetelSrsz', TetelSrsz, [loCaseInsensitive]) then Result := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.CopyTechnicalDataExecute(Sender: TObject);
begin
  try
    TechnicalRec.Rendsz := Dm.HSOrderHeadListRendSz.AsString ;
    TechnicalRec.TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
    TechnicalRec.OsszeallRsz := Dm.RendelesTetelOsszeallRsz.AsString ;
    TechnicalRec.Konstrukcio := Dm.RendelesTetelKonstrukcio.AsString ;
    TechnicalRec.Konstrukcio2 := Dm.RendelesTetelKonstrukcio2.AsString ;
    TechnicalRec.Csatl1 := Dm.RendelesTetelCsatl1.AsString ;
    TechnicalRec.Csatl1Rsz := Dm.RendelesTetelCsatl1Rsz.AsString ;
    TechnicalRec.Csatl2 := Dm.RendelesTetelCsatl2.AsString ;
    TechnicalRec.Csatl2Rsz := Dm.RendelesTetelCsatl2Rsz.AsString ;
    TechnicalRec.BelsoHuvely := Dm.RendelesTetelBelsoHuvely.AsString ;
    TechnicalRec.BhAnyag := Dm.RendelesTetelBhAnyag.AsString ;
    TechnicalRec.Huvely := Dm.RendelesTetelHuvely.AsString ;
    TechnicalRec.SpiralKup := Dm.RendelesTetelSpiralKup.AsString ;
    TechnicalRec.EmeloBilincs := Dm.RendelesTetelEmeloBilincs.AsString ;
    TechnicalRec.EbMeret := Dm.RendelesTetelEbMeret.AsFloat ;
    TechnicalRec.BiztBilincs := Dm.RendelesTetelBiztBilincs.AsString ;
    TechnicalRec.BbMeret := Dm.RendelesTetelBbMeret.AsFloat ;
    TechnicalRec.VedoHuvely := Dm.RendelesTetelVedoHuvely.AsString ;
    TechnicalRec.OsztottHuvely := Dm.RendelesTetelOsztottHuvely.AsString ;
    TechnicalRec.Egyebek := Dm.RendelesTetelEgyebek.AsString ;
    TechnicalRec.Inspector := Dm.RendelesTetelInspector.AsString ;
    TechnicalRec.InspectorMegj := Dm.RendelesTetelInspectorMegj.AsString ;
    PasteTechnicalData.Enabled := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PasteTechnicalDataExecute(Sender: TObject);
begin
  try
    if not (Dm.RendelesTetel.State in [dsEdit, dsInsert]) then begin
      if MessageDlg('Biztos, hogy fel�l akarod �rni az akt�lis m�szaki adatokat?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
      Dm.RendelesTetel.CheckBrowseMode ;
      Dm.RendelesTetel.Edit ;
    end ;
    Dm.RendelesTetelOsszeallRsz.AsString := TechnicalRec.OsszeallRsz ;
    Dm.RendelesTetelKonstrukcio.AsString := TechnicalRec.Konstrukcio ;
    Dm.RendelesTetelKonstrukcio2.AsString := TechnicalRec.Konstrukcio2 ;
    Dm.RendelesTetelCsatl1.AsString := TechnicalRec.Csatl1 ;
    Dm.RendelesTetelCsatl1Rsz.AsString := TechnicalRec.Csatl1Rsz ;
    Dm.RendelesTetelCsatl2.AsString := TechnicalRec.Csatl2 ;
    Dm.RendelesTetelCsatl2Rsz.AsString := TechnicalRec.Csatl2Rsz ;
    Dm.RendelesTetelBelsoHuvely.AsString := TechnicalRec.BelsoHuvely ;
    Dm.RendelesTetelBhAnyag.AsString := TechnicalRec.BhAnyag ;
    Dm.RendelesTetelHuvely.AsString := TechnicalRec.Huvely ;
    Dm.RendelesTetelSpiralKup.AsString := TechnicalRec.SpiralKup ;
    Dm.RendelesTetelEmeloBilincs.AsString := TechnicalRec.EmeloBilincs ;
    Dm.RendelesTetelEbMeret.AsFloat := TechnicalRec.EbMeret ;
    Dm.RendelesTetelBiztBilincs.AsString := TechnicalRec.BiztBilincs ;
    Dm.RendelesTetelBbMeret.AsFloat := TechnicalRec.BbMeret ;
    Dm.RendelesTetelVedoHuvely.AsString := TechnicalRec.VedoHuvely ;
    Dm.RendelesTetelOsztottHuvely.AsString := TechnicalRec.OsztottHuvely ;
    Dm.RendelesTetelEgyebek.AsString := TechnicalRec.Egyebek ;
    Dm.RendelesTetelInspector.AsString := TechnicalRec.Inspector ;
    //AdatlapInspectorMegj.EditText := WideString('fhjhg') ;
    //AdatlapInspectorMegj.EditText := Trim(TechnicalRec.InspectorMegj) ;
    //Dm.RendelesTetelInspectorMegj.AsString := Trim(TechnicalRec.InspectorMegj) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.RendFejQryGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  DeletedNdx, UpdatedNdx, RevExistNdx: integer ;
  Deleted, Updated, RevExist: Variant ;
begin
  DeletedNdx := TdxDBGrid(Sender).ColumnByFieldName('torolt').Index ;
  UpdatedNdx := TdxDBGrid(Sender).ColumnByFieldName('FAutoUpdate').Index ;
  RevExistNdx := TdxDBGrid(Sender).ColumnByFieldName('RevExist').Index ;
  if not VarIsNull(ANode.Values[DeletedNdx]) then begin
    Deleted := ANode.Values[DeletedNdx] ;
    if Deleted then begin
      AColor := clSilver ;
      Exit ;
    end ;
  end ;
  if not VarIsNull(ANode.Values[UpdatedNdx]) then begin
    Updated := ANode.Values[UpdatedNdx] ;
    if Updated then AFont.Color := clRed ;
  end ;
  if not VarIsNull(ANode.Values[RevExistNdx]) then begin
    RevExist := ANode.Values[RevExistNdx] ;
    if not RevExist then AColor := notExistSapRevColor ;
  end ;
end;

procedure TMainForm.dxDBGrid7CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  i, j: integer ;
  Deleted, Updated: Boolean ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('torolt').Index;
  j := TdxDBGrid(Sender).ColumnByFieldName('TAutoUpdate').Index;
  if ANode.Values[i] = Null then Exit ;
  Deleted := Boolean(ANode.Values[i]) ;
  Updated := Boolean(ANode.Values[j]) ;
  if Deleted then AColor := clSilver else if Updated then AFont.Color := clRed ;
end;

procedure TMainForm.Oszlopokigaztsa1Click(Sender: TObject);
begin
  SetGridColWidth(CouplingsGrid) ;
end;

procedure TMainForm.MenuItem1Click(Sender: TObject);
begin
  SetGridColWidth(MfCkszGrid) ;
end;

procedure TMainForm.TermekComboChange(Sender: TObject);
begin
  if TermekCombo.KeyValue <> Null then ActTermek := TermekCombo.KeyValue else ActTermek := 0 ;

  // Csak tervez� ind�thaja a SAP szinkroniz�l�st
  if ActTermek = 1 then begin
    if Tervezo then AdatImportBtn.Enabled := True else AdatImportBtn.Enabled := False ;
  end
  else AdatImportBtn.Enabled := False ;

  if not OrderDm.tRendFej.Active then OrderDm.tRendFej.Active := True ;
  if not OrderDm.tRendTetel.Active then OrderDm.tRendTetel.Active := True ;
  if not OrderDm.tRendCsomEszk.Active then OrderDm.tRendCsomEszk.Active := True ;
  SetSalesAreas ;
  SetCurrencies ;
  SetHoseUsers ;
  SetHoseDealers ;
end;

procedure TMainForm.Oszlopokigaztsa2Click(Sender: TObject);
begin
  SetGridColWidth(RendFejGrid) ;
end;

procedure TMainForm.Oszlopokigaztsa3Click(Sender: TObject);
begin
  SetGridColWidth(RendTetelGrid) ;
end;

procedure TMainForm.RendFejGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Deleted, Updated: Boolean ;
  i, j: integer ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('torolt').Index;
  j := TdxDBGrid(Sender).ColumnByFieldName('FAutoUpdate').Index;
  if (ANode.Values[i] = Null) or (ANode.Values[j] = Null) then Exit ;
  Deleted := Boolean(ANode.Values[i]) ;
  Updated := Boolean(ANode.Values[j]) ;
  if Deleted then AColor := clGray ;
  if Updated then AFont.Color := clRed ;
end;

procedure TMainForm.RendTetelGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Deleted, Updated: Boolean ;
  i, j: integer ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('torolt').Index;
  j := TdxDBGrid(Sender).ColumnByFieldName('TAutoUpdate').Index;
  if (ANode.Values[i] = Null) or (ANode.Values[j] = Null) then Exit ;
  Deleted := Boolean(ANode.Values[i]) ;
  Updated := Boolean(ANode.Values[j]) ;
  if Deleted then AColor := clGray else if Updated then AFont.Color := clRed ;
end;

procedure TMainForm.Rendelsvltozsai1Click(Sender: TObject);
var
  Rendelesszam: string ;
begin
  try
    try
      RendelesSzam := OrderDm.tRendFejRendSz.AsString ;
      if Dm.RendMod.Active then Dm.RendMod.Active := False ;
      Dm.RendMod.ParamByName('@Rendelesszam').AsString := Rendelesszam ;
      Dm.RendMod.ParamByName('@Tetelsorszam').Clear ;
      Dm.RendMod.Active := True ;
      ItemChangesForm.ShowModal ;
    finally
      Dm.RendMod.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Ttelekvltozsai1Click(Sender: TObject);
var
  Tetelszam: integer ;
  Rendelesszam: string ;
begin
  try
    try
      RendelesSzam := OrderDm.tRendFejRendSz.AsString ;
      Tetelszam := OrderDm.tRendTetelTetelSrsz.AsInteger ;
      if Dm.RendMod.Active then Dm.RendMod.Active := False ;
      Dm.RendMod.ParamByName('@Rendelesszam').AsString := Rendelesszam ;
      Dm.RendMod.ParamByName('@Tetelsorszam').AsInteger := Tetelszam ;
      Dm.RendMod.Active := True ;
      ItemChangesForm.ShowModal ;
    finally
      Dm.RendMod.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SetSalesAreas ;
var
  SalesAreaCol: TDxDBGridPickColumn ;
begin
  try
    try
      OrderDm.qSalesAreas.ParamByName('TermekKod').AsInteger := ActTermek ;
      OrderDm.qSalesAreas.Active := True ;
      SalesAreaCol := TDxDBGridPickColumn(RendFejGrid.ColumnByFieldName('ErtTerulet')) ;
      OrderDm.qSalesAreas.First ;
      SalesAreaCol.Items.Clear ;
      while not OrderDm.qSalesAreas.Eof do begin
        SalesAreaCol.Items.Add(OrderDm.qSalesAreasSalesAreaName.AsString) ;
        OrderDm.qSalesAreas.Next ;
      end ;
    finally
      OrderDm.qSalesAreas.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SetCurrencies ;
var
  CurrenciesCol: TDxDBGridPickColumn ;
begin
  try
    try
      OrderDm.qPenznem.Active := True ;
      CurrenciesCol := TDxDBGridPickColumn(RendFejGrid.ColumnByFieldName('ExtrPenznem')) ;
      OrderDm.qPenznem.First ;
      CurrenciesCol.Items.Clear ;
      PenznemComboBox.Items.Clear ;
      RendFejGridExtrPenznem.Items.Clear ;
      while not OrderDm.qPenznem.Eof do begin
        CurrenciesCol.Items.Add(OrderDm.qPenznemShortName.AsString) ;
        PenznemComboBox.Items.Add(OrderDm.qPenznemShortName.AsString) ;
        RendFejGridExtrPenznem.Items.Add(OrderDm.qPenznemShortName.AsString) ;
        OrderDm.qPenznem.Next ;
      end ;
    finally
      OrderDm.qPenznem.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SetHoseUsers ;
begin
  try
    OrderDm.qHoseUsers.Active := False ;
    OrderDm.qHoseUsers.ParamByName('TomloTipus').AsInteger := ActTermek ;
    OrderDm.qHoseUsers.Active := True ;
    RendFejGridFelhasznalo.Items.Clear ;
    while not OrderDm.qHoseUsers.Eof do begin
      RendFejGridFelhasznalo.Items.Add(OrderDm.qHoseUsersFelhasznalo.AsString) ;
      OrderDm.qHoseUsers.Next ;
    end ;
    OrderDm.qHoseUsers.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SetHoseDealers ;
begin
  try
    OrderDm.qHoseDealers.Active := False ;
    OrderDm.qHoseDealers.ParamByName('TomloTipus').AsInteger := ActTermek ;
    OrderDm.qHoseDealers.Active := True ;
    RendFejGridVevo.Items.Clear ;
    while not OrderDm.qHoseDealers.Eof do begin
      RendFejGridVevo.Items.Add(OrderDm.qHoseDealersVevo.AsString) ;
      OrderDm.qHoseDealers.Next ;
    end ;
    OrderDm.qHoseDealers.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.CkszEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Cikkszam: string ;
  SpecDataRec: TSpecDataRec ;
begin
  if Key = Vk_RETURN then begin
    if ActTermek = 1 then begin
      try
        Cikkszam := Trim(CkszEdit.Text) ;
        SpecDataRec := GetSpecData(Cikkszam) ;
        if SpecDataRec.DataOK then begin
          OrderDm.tRendTetelSpecifikacio.AsString := SpecDataRec.Specifikacio ;
          OrderDm.tRendTetelAtmero.AsFloat := SpecDataRec.Atmero ;
          OrderDm.tRendTetelpsi.AsFloat := SpecDataRec.psi ;
          OrderDm.tRendTetelMPa.AsFloat := SpecDataRec.MPa ;
          OrderDm.tRendTetelHossz.AsFloat := SpecDataRec.Hossz ;
          OrderDm.tRendTetelHosszMe.AsString := SpecDataRec.HosszMe ;
          OrderDm.tRendTetelLang.AsBoolean := SpecDataRec.Lang ;
          OrderDm.tRendTetelBg.AsBoolean := SpecDataRec.Bg ;
          OrderDm.tRendTetelKg.AsBoolean := SpecDataRec.Kg ;
          OrderDm.tRendTetelPa.AsBoolean := SpecDataRec.Pa ;
          OrderDm.tRendTetelKv.AsBoolean := SpecDataRec.Kv ;
          OrderDm.tRendTetelKgInter.AsBoolean := SpecDataRec.KgInter ;
          OrderDm.tRendTetelKvMua.AsBoolean := SpecDataRec.KvMua ;
          OrderDm.tRendTetelKvFedHelix.AsBoolean := SpecDataRec.KvFedHelix ;
          OrderDm.tRendTetelKvNFedHelix.AsBoolean := SpecDataRec.KvNFedHelix ;
          OrderDm.tRendTetelTorolt.AsBoolean := False ;
        end
        else begin
          AtmEdit.SetFocus ;
          Exit ;
        end ;
      except
        On E: exception do ErrMsg(E.Message) ;
      end ;
      FocusNextControl(TWinControl(Sender)) ;
    end ;
  end ;
end;

procedure TMainForm.FocusNextControl(CurrentControl: TWinControl) ;
var
  Control: TWinControl ;
begin
  if CurrentControl is TWinControl then begin
    Control:=FindNextControl(CurrentControl, True, True, False) ;
    Control.SetFocus ;
  end ;
end ;

procedure TMainForm.SpecEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  control: TWinControl ;
  Memo: TDbMemo ;
  s: string ;
begin
  Control:=TWinControl(Sender) ;
  if UpperCase(Control.Name) = 'SPECEDIT' then begin
    Memo := TDbMemo(Sender) ;
    s := Memo.Text ;
    if Key = Vk_RETURN then begin
      if SpecGenerated then begin
        SpecGenerated:=False ;
        dbEdit.SetFocus ;
        s := Memo.Text ;
      end
      else begin
        FocusNextControl(Control) ;
        s := Memo.Text ;
        Key := VK_CANCEL ;
      end ;
    end ;
  end
  else if Key = Vk_RETURN then begin
    FocusNextControl(Control) ;
  end ;
end;

procedure TMainForm.RendMpaEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  psi, MPa, x: double ;
  s: string ;
begin
  if Key = VK_RETURN then begin
    s := DelSpace(RendMPaEdit.Text) ;
    s := DelChars(s, #160) ;
    MPa := StrToFloat(s) ;
    try
      try
        x := 51.7 ;
        if MPa = x then begin // Ez egy remek kiv�tel!!!
          psi := 7500 ;
        end
        else begin
          psi := MpaToPsi(Mpa) ;
        end ;
        RendPsiEdit.Field.AsFloat := psi ;
        if Trim(SpecEdit.Text )= '' then begin
          OrderDm.tRendTetelSpecifikacio.AsString := AtmEdit.Text + '" ' + RendMPaEdit.Text + ' MPa' ;
          SpecEdit.SetFocus ;
          SpecEdit.SelStart := Length(SpecEdit.Text) ;
          SpecGenerated := True ;
          Exit ;
        end ;
      finally

      end ;
    except
      On E: exception do ErrMsg(E.Message) ;
    end ;
    FocusNextControl(TWinControl(Sender)) ;
  end ;
end;

procedure TMainForm.RendPsiEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  psi, MPa: double ;
  s: string ;
begin
  if Key = VK_RETURN then begin
    s := DelSpace(RendPsiEdit.Text) ;
    s := DelChars(s, #160) ;
    psi := StrToFloat(s) ;
    try
      try
        Mpa := PsiToMpa(psi) ;
        RendMPaEdit.Field.AsFloat := MPa ;
      finally

      end ;
    except
      On E: exception do ErrMsg(E.Message) ;
    end ;
    FocusNextControl(TWinControl(Sender)) ;
  end ;
end;

procedure TMainForm.SpecEditEnter(Sender: TObject);
var
  Memo : TDbMemo ;
  i : integer ;
begin
  Memo := TDbMemo(Sender) ;
  i := Memo.GetTextLen ;
  Memo.SelStart := i ;
end;

procedure TMainForm.SpecEditExit(Sender: TObject);
var
  Memo : TDbMemo ;
  i : integer ;
  s: string ;
  Control : TControl ;
begin
  Control := TWinControl(Sender) ;
  if UpperCase(Control.Name) = 'SPECEDIT' then begin
    Memo := TDbMemo(Sender) ;
    s := Memo.Text ;
    //i := Length(s) ;
    s := DelChars(s, #13) ;
    s := DelChars(s, #10) ;
    i := Length(s) ;
    Memo.Text := s ;
    Memo.SelStart := i ;
  end ;
end;

procedure TMainForm.BitBtn15Click(Sender: TObject);
begin
  try
    OrderDm.tRendTetel.CheckBrowseMode ;
    OrderDm.tRendTetel.Append ;
    CkszEdit.SetFocus ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.RxDBComboEdit1ButtonClick(Sender: TObject);
begin
  (*
  OrderDM.TipusQry.Active := False ;
  OrderDM.TipusQry.ParamByName('TermekKod').AsInteger := ActTermek ;
  LookupForm.DataSource1.DataSet := OrderDm.TipusQry ;
  LookupForm.DBLookupListBox1.ListField := OrderDm.TipusQry.Fields[0].FieldName ;
  LookupForm.DBLookupListBox1.KeyField := OrderDm.TipusQry.Fields[0].FieldName ;
  OrderDm.TipusQry.Active:=True ;
  if LookupForm.ShowModal=mrOk then begin
    if not (RxDBComboEdit1.DataSource.DataSet.State=dsEdit) then begin
      RxDBComboEdit1.DataSource.DataSet.Edit ;
    end ;
    RxDBComboEdit1.Text := Lookupform.DBLookupListBox1.SelectedItem ;
  end ;
  OrderDm.TipusQry.Active := False ;
  *)
end;

procedure TMainForm.Csatl1RszEditButtonClick(Sender: TObject);
begin
  OrderDm.CouplingCodeQry.Active := False ;
  LookupForm.DataSource1.DataSet := OrderDm.CouplingCodeQry ;
  LookupForm.DBLookupListBox1.ListField := OrderDm.CouplingCodeQry.Fields[0].FieldName ;
  LookupForm.DBLookupListBox1.KeyField := OrderDm.CouplingCodeQry.Fields[0].FieldName ;
  OrderDm.CouplingCodeQry.Active := True ;
  if LookupForm.ShowModal=mrOk then begin
    if not (Csatl1RszEdit.DataSource.DataSet.State = dsEdit) then Csatl1RszEdit.DataSource.DataSet.Edit ;
    Csatl1RszEdit.Text := Lookupform.DBLookupListBox1.SelectedItem ;
    Csatl1Edit.Text := OrderDm.CouplingCodeQry.FindField('endFittingName').AsString ;
  end ;
end;

procedure TMainForm.Csatl2RszEditButtonClick(Sender: TObject);
begin
  OrderDm.CouplingCodeQry.Active := False ;
  LookupForm.DataSource1.DataSet := OrderDm.CouplingCodeQry ;
  LookupForm.DBLookupListBox1.ListField := OrderDm.CouplingCodeQry.Fields[0].FieldName ;
  LookupForm.DBLookupListBox1.KeyField := OrderDm.CouplingCodeQry.Fields[0].FieldName ;
  OrderDm.CouplingCodeQry.Active := True ;
  if LookupForm.ShowModal=mrOk then begin
    if not (Csatl2RszEdit.DataSource.DataSet.State = dsEdit) then Csatl2RszEdit.DataSource.DataSet.Edit ;
    Csatl2RszEdit.Text := Lookupform.DBLookupListBox1.SelectedItem ;
    Csatl2Edit.Text := OrderDm.CouplingCodeQry.FindField('endFittingName').AsString ;
  end ;
end;

procedure TMainForm.CsomagEditButtonClick(Sender: TObject);
begin
  OrderDm.qPack.Active := False ;
  LookupForm.DataSource1.DataSet := OrderDm.dsPack.DataSet ;
  LookupForm.DBLookupListBox1.ListField := OrderDm.qPack.Fields[0].FieldName ;
  LookupForm.DBLookupListBox1.KeyField := OrderDm.qPack.Fields[0].FieldName ;
  if TermekCombo.KeyValue <> Null then OrderDm.qPack.ParamByName('TermekKod').AsInteger := TermekCombo.KeyValue
  else OrderDm.qPack.ParamByName('TermekKod').AsInteger := 0 ;
  OrderDm.qPack.Active := True ;
  if LookupForm.ShowModal = mrOk then begin
    if not (CsomagEdit.DataSource.DataSet.State = dsEdit) then CsomagEdit.DataSource.DataSet.Edit ;
    CsomagEdit.Text := Lookupform.DBLookupListBox1.SelectedItem ;
    //DBEdit9.Text := OrderDm.CouplingCodeQry.FindField('endFittingName').AsString ;
  end ;
end;

procedure TMainForm.AdatImportBtnClick(Sender: TObject);
var
  sr: TSapSpecRec ;
  sd: TSpecDataRec ;
  DataSet: TDataSet ;
  TetelSrsz, RendelesAz, i, Revizio, ChangeNum: integer ;
  HeadBmk, ItemBmk: TBookmark ;
  ExtraKtg: double ;
  Rendelesszam, TempRendSz, fn: string ;
  H: THandle ;
begin
//{$O-}
  RendelesAz := -1 ;
  ExtraKtg := 0 ;
  HeadBmk := Nil ;
  ItemBmk := Nil ;
  try
    try
      Timer1.Enabled := False ;

      if not OrderDm.tRendFej.Active then begin
        ErrMsg('Csak nyitott �llom�nyon hajthat� v�gre a m�velet!') ;
        Exit ;
      end ;
      HeadBmk := OrderDm.tRendFej.GetBookmark ;
      ItemBmk := OrderDm.tRendTetel.GetBookmark ;
      //OrderDm.tRendFej.DisableControls ;
      //OrderDm.tRendTetel.DisableControls ;

      OrderDm.spNewSapOrders.Active := True ;
      OrderDm.spNewSapOrders.Filtered := False ;

      OrderDm.mNewOrderList.Active := False ;
      OrderDm.mNewOrderList.Active := True ;

      Rendelesszam := '' ;
      // Rendel�ssz�mok �s rev�zi�k kigy�jt�se egy �tmeneti t�bl�ba
      OrderDm.spNewSapOrders.First ;
      ProgLabel.Caption := 'Rendel�sek kigy�jt�se...' ;
      ProgLabel.Refresh ;
      while not OrderDm.spNewSapOrders.Eof do begin
        if Rendelesszam <> OrderDm.spNewSapOrdersRendelesszam.AsString then begin
          OrderDm.mNewOrderList.Append ;
          OrderDm.mNewOrderListRendelesszam.AsString := OrderDm.spNewSapOrdersRendelesszam.AsString ;
          OrderDm.mNewOrderListRevizio.AsInteger := OrderDm.spNewSapOrdersRevizio.AsInteger ;
          OrderDm.mNewOrderList.Post ;
        end ;
        Rendelesszam := OrderDm.spNewSapOrdersRendelesszam.AsString ;
        OrderDm.spNewSapOrders.Next ;
      end ;

      // Rendel�sek friss�t�se az �tmeneti t�bla alapj�n
      MessagesForm.MsgEdit.Clear ;
      MessagesForm.MsgEdit.Lines.Add('Rendel�s import eredm�nye:') ;
      OrderDm.mNewOrderList.First ;
      DataSet := OrderDm.spNewSapOrders ;
      OrderDm.tRendFej.CheckBrowseMode ;
      OrderDm.mRendSorok.Active := False ;
      OrderDm.mRendSorok.Active := True ;

      // Rendel�s sorok felt�lt�se a memoryTable - be
      ProgressBar1.Position := 0 ;
      ProgressBar1.Max := OrderDm.spNewSapOrders.RecordCount ;
      MainForm.Refresh ;

      i := 0 ;
      ProgLabel.Caption := 'V�ltoz�sok keres�se...' ;
      ProgLabel.Refresh ;
      while not OrderDm.mNewOrderList.Eof do begin
        MainForm.Refresh ;
        Rendelesszam := OrderDm.mNewOrderListRendelesszam.AsString ;
        OrderDm.spNewSapOrders.Filter := 'Rendelesszam = ' + Rendelesszam ;
        OrderDm.spNewSapOrders.Filtered := True ;
        OrderDm.spNewSapOrders.First ;

        // Rendel�s t�tel adatok
        while not OrderDm.spNewSapOrders.Eof do begin
          inc(i) ;
          ProgressBar1.Position := i ;
          ProgressBar1.Refresh ;
          //
          sr := GetSapData(DataSet) ;
          sd := GetSpecData(sr.Cikkszam) ;
          MakeHoseSlaveRec(sr, sd) ;
          OrderDm.spNewSapOrders.Next ;
        end ;
        OrderDm.mNewOrderList.Next ;
        Application.ProcessMessages() ;
      end ;
      ProgLabel.Caption := '' ;

      if OrderDm.mRendSorok.RecordCount = 0 then begin
        ErrMsg('Nincs friss�tend� rendel�s!') ;
        MainForm.Refresh ;
        Exit ;
      end
      else begin
        OrderDm.mRendSorok.First ;
        i := 0 ;
        while not OrderDm.mRendSorok.Eof do begin
          OrderDm.mRendSorok.Edit ;
          OrderDm.mRendSorokCounter.AsInteger := i ;
          OrderDm.mRendSorokUpdatable.AsBoolean := False ;
          OrderDm.mRendSorok.Post ;
          OrderDm.mRendSorok.Next ;
          inc(i) ;
        end ;
      end ;

      H := FindWindow('TMainForm', 'HoseSlave') ;
      if not IsWindowVisible(H) then PostMessage(H, wm_User, 0, 0) ;

      if NewOrderListForm = nil then NewOrderListForm := TNewOrderListForm.Create(Application) ;

      SetForegroundWindow(H) ;

      NewOrderListForm.RecNumLabel.Caption := '�sszesen ' + IntTostr(OrderDm.mRendSorok.RecordCount) + ' rekord' ;
      if NewOrderListForm.ShowModal <> mrOk then begin
        MainForm.Refresh ;
        Exit ;
      end ;

      MainForm.Cursor := crHourGlass ;
      MainForm.Refresh ;

      OrderDm.mRendSorok.CheckBrowseMode ;
      OrderDm.mRendSorok.First ;
      ProgressBar1.Position := 0 ;
      ProgressBar1.Max := OrderDm.mRendSorok.RecordCount ;
      OrderDm.mRendSorok.DisableControls ;
      while not OrderDm.mRendSorok.Eof do begin
        ProgressBar1.Position := OrderDm.mRendSorok.RecNo ;
        MainForm.Refresh ;
        if not OrderDm.mRendSorokUpdatable.AsBoolean then begin
          OrderDm.mRendSorok.Delete ;
        end
        else OrderDm.mRendSorok.Next ;
      end ;

      // Rendel�sek ki�r�sa az adatb�zisba
      AutoUpdate := True ;
      OrderDm.mRendSorok.First ;
      TempRendsz := '' ;
      ProgressBar1.Position := 0 ;
      ProgressBar1.Max := OrderDm.mRendSorok.RecordCount ;
      ProgLabel.Caption := 'Rendel�sek friss�t�se...' ;
      ProgLabel.Refresh ;
      while not OrderDm.mRendSorok.Eof do begin
        ProgressBar1.Position := OrderDm.mRendSorok.RecNo ;
        MainForm.Refresh ;
        Rendelesszam := OrderDm.mRendSorokRendsz.AsString ;

        // Extra k�lts�gek lek�rdez�se
        if Rendelesszam <> TempRendSz then begin
          Revizio := OrderDm.mRendSorokSapRevizio.AsInteger ;
          OrderDm.spGetExtraKtg.ParamByName('@RendSz').AsString := Rendelesszam ;
          OrderDm.spGetExtraKtg.ParamByName('@Revizio').AsInteger := Revizio ;
          OrderDm.spGetExtraKtg.ExecProc ;
          ExtraKtg := OrderDm.spGetExtraKtg.ParamByName('@ExtraKtg').AsFloat ;
          OrderDm.mRendSorok.Edit ;
          OrderDm.mRendSorokExtrKtsg.AsFloat := ExtraKtg ;
          OrderDm.mRendSorok.Post ;
        end ;

        // Nem l�tez� rendel�s felv�tele
        if not OrderDm.tRendFej.Locate('Rendsz', Rendelesszam, [loCaseInsensitive]) then begin
          // �j rendel�s felv�tele
          if Rendelesszam <> TempRendSz then begin
            OrderDm.spCreateNewOrder.ParamByName('@TermekKod').AsInteger := 1 ;
            OrderDm.spCreateNewOrder.ParamByName('@RendSz').AsString := Rendelesszam ;
            OrderDm.spCreateNewOrder.ExecProc ;

            OrderDm.tRendFej.Refresh ;
            RendelesAz := OrderDm.spCreateNewOrder.ParamByName('@RendelesAz').AsInteger ;
            OrderDm.tRendFej.Locate('RendelesAz', RendelesAz, [loCaseInsensitive]) ;
            OrderDm.tRendFej.Edit ;
            OrderDm.tRendFejPhxRendSz.AsString := OrderDm.mRendSorokPhxRendSz.AsString ;
            OrderDm.tRendFejVevoRendSz.AsString := OrderDm.mRendSorokVevoRendSz.AsString ;
            OrderDm.tRendFejVevo.AsString := OrderDm.mRendSorokVevo.AsString ;
            OrderDm.tRendFejFelhasznalo.AsString := OrderDm.mRendSorokFelhasznalo.AsString ;
            OrderDm.tRendFejHatarido.AsDateTime := OrderDm.mRendSorokHatarido.AsDateTime ;
            OrderDm.tRendFejExtrKtsg.AsFloat := ExtraKtg ;
            OrderDm.tRendFejExtrPenznem.AsString := OrderDm.mRendSorokExtrPenznem.AsString ;
            OrderDm.tRendFejErtTerulet.AsString := OrderDm.mRendSorokErtTerulet.AsString ;
            OrderDm.tRendFejSapRevizio.AsInteger := OrderDm.mRendSorokSapRevizio.AsInteger ;
            OrderDm.tRendFejFAutoUpdate.AsBoolean := True ;
            OrderDm.tRendFejRRogzit.AsString := CurrentUserName ;
            OrderDm.tRendFejRRogzIdo.AsDateTime := Now ;
            OrderDm.tRendFej.Post ;
            RendelesAz := OrderDm.tRendFejRendelesAz.AsInteger ;
            MessagesForm.MsgEdit.Lines.Add(Rendelesszam + ' sz. rendel�s felv�tele') ;
          end ;
          // �j rendel�s t�telek felv�tele (legal�bb 1 rekord)
          repeat
            TetelSrsz := OrderDm.mRendSorokTetelSrsz.AsInteger ;
            OrderDm.tRendTetel.Insert ;
            OrderDm.tRendTetelRendelesAz.AsInteger := RendelesAz ;
            for i := 1 to OrderDm.tRendTetel.FieldCount - 1 do begin
              fn := OrderDm.tRendTetel.Fields[i].FieldName ;
              if UpperCase(fn) = 'H2S' then begin
                if OrderDm.mRendSorok.FieldByName(Fn).AsInteger = -1 then
                MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' Nincs eld�ntve, hogy H2S szervizre alkalmas-e!') ;
              end ;
              if UpperCase(fn) = 'KG' then begin
                if OrderDm.mRendSorok.FieldByName(Fn).AsBoolean then
                MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' Nincs eld�ntve a k�ls� g�gecs� t�pusa!') ;
              end ;
              if Uppercase(fn) = 'KV' then begin
                if OrderDm.mRendSorok.FieldByName(Fn).AsBoolean then
                MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' Nincs eld�ntve a k�ls� v�delem t�pusa!') ;
              end ;
              if (fn <> 'Stamp') and (OrderDm.mRendSorok.Findfield(fn) <> Nil)
              then OrderDm.tRendTetel.Fields[i].Value := OrderDm.mRendSorok.Findfield(fn).Value ;
            end ;
            OrderDm.tRendTetelTAutoUpdate.AsBoolean := True ;
            OrderDm.tRendTetelTRogzit.AsString := CurrentUserName ;
            OrderDm.tRendTetelTRogzIdo.AsDateTime := Now ;
            OrderDm.tRendTetel.Post ;
            OrderDm.mRendSorok.Next ;
            TempRendSz := OrderDm.mRendSorokRendSz.AsString ;
            MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' sz. t�tel felv�tele') ;
            ProgressBar1.Position := OrderDm.mRendSorok.RecNo ;
          until (Rendelesszam <> TempRendSz) or (OrderDm.mRendSorok.Eof) ;
          TempRendSz := '' ;
        end
        // Ha van m�r ilyen rendel�s, tov�bb vizsg�ljuk
        else begin
          // A fej adatok �sszehasonl�t�sa
          if Rendelesszam <> TempRendSz then begin
            RendelesAz := OrderDm.tRendFejRendelesAz.AsInteger ;
            MessagesForm.MsgEdit.Lines.Add(Rendelesszam + ' sz. rendel�s m�dos�t�sa') ;
            OrderDm.tRendFej.Edit ;
            ChangeNum := 0 ;
            for i := 0 to OrderDm.mRendSorok.FieldCount - 1 do begin
              if OrderDm.mRendSorok.Fields[i].Tag = 1 then begin
                fn := OrderDm.mRendSorok.Fields[i].FieldName ;
                // �sszehasonl�t�s
                if OrderDm.mRendSorok.Fields[i].AsString <> OrderDm.tRendFej.FieldByName(fn).AsString then begin
                  MessagesForm.MsgEdit.Lines.Add(#9 + fn + ': ' + OrderDm.tRendFej.FieldByName(fn).AsString + ' -> ' +
                  OrderDm.mRendSorok.Fields[i].AsString) ;
                  OrderDm.tRendFej.FieldByName(fn).Value := OrderDm.mRendSorok.Fields[i].Value ;
                  inc(ChangeNum) ;
                end ;
              end ;
            end ;
            if ChangeNum <> 0 then OrderDm.tRendFejFAutoUpdate.AsBoolean := True
            else OrderDm.tRendFejFAutoUpdate.AsBoolean := False ;
            OrderDm.tRendFejRRogzit.AsString := CurrentUserName ;
            OrderDm.tRendFejRRogzIdo.AsDateTime := Now ;
            OrderDm.tRendFej.Post ;
            repeat
              TetelSrsz := OrderDm.mRendSorokTetelSrsz.AsInteger ;
              if OrderDm.tRendTetel.Locate('TetelSrsz', TetelSrsz, [loCaseInsensitive]) then begin
                // Rendel�s t�tel adatok �sszehasonl�t�sa
                ChangeNum := 0 ;
                OrderDm.tRendTetel.Edit ;
                for i := 0 to OrderDm.mRendSorok.FieldCount - 1 do begin
                  if OrderDm.mRendSorok.Fields[i].Tag = 2 then begin
                    fn := OrderDm.mRendSorok.Fields[i].FieldName ;
                    if UpperCase(fn) = 'H2S' then begin
                      if OrderDm.mRendSorok.FieldByName(Fn).AsInteger = -1 then
                      MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' Nincs eld�ntve, hogy H2S szervizre alkalmas-e!') ;
                    end ;
                    if UpperCase(fn) = 'KG' then begin
                      if OrderDm.mRendSorok.FieldByName(Fn).AsBoolean then
                      MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' Nincs eld�ntve a k�ls� g�gecs� t�pusa!') ;
                    end ;
                    if UpperCase(fn) = 'KV' then begin
                      if OrderDm.mRendSorok.FieldByName(Fn).AsBoolean then
                      MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' Nincs eld�ntve a k�ls� v�delem t�pusa!') ;
                    end ;
                    // �sszehasonl�t�s
                    if OrderDm.mRendSorok.Fields[i].AsString <> OrderDm.tRendTetel.FieldByName(fn).AsString then begin
                      if (ChangeNum = 0) and (fn <> 'Emelobilincs') and  (fn <> 'BiztBilincs') and (fn <> 'OsztottHuvely')
                      then MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' sz. t�tel m�dos�t�sa') ;
                      // Emel�bilincs, biztons�gi bilincs, �s C elem eset�n az el�z� tartalom vizsg�lata
                      if (fn = 'Emelobilincs') or  (fn = 'BiztBilincs') or (fn = 'OsztottHuvely') then begin
                        if UpperCase(Trim(OrderDm.mRendSorok.Fields[i].AsString)) = 'YES' then begin
                          if UpperCase(Trim(OrderDm.tRendTetel.FieldByName(fn).AsString)) = '' then begin
                            MessagesForm.MsgEdit.Lines.Add(#9#9 + fn + ': ' + OrderDm.tRendTetel.FieldByName(fn).AsString +
                            ' -> YES') ;
                            OrderDm.tRendTetel.FieldByName(fn).AsString := 'YES' ;
                            inc(ChangeNum) ;
                          end ;
                        end ;
                        if UpperCase(Trim(OrderDm.mRendSorok.Fields[i].AsString)) = 'NO' then begin
                          if UpperCase(Trim(OrderDm.tRendTetel.FieldByName(fn).AsString)) <> '' then begin
                            MessagesForm.MsgEdit.Lines.Add(#9#9 + fn + ': ' + OrderDm.tRendTetel.FieldByName(fn).AsString +
                            ' -> NO') ;
                            OrderDm.tRendTetel.FieldByName(fn).AsString := 'NO' ;
                            inc(ChangeNum) ;
                          end ;
                        end ;
                      end
                      else begin
                        MessagesForm.MsgEdit.Lines.Add(#9#9 + fn + ': ' + OrderDm.tRendTetel.FieldByName(fn).AsString +
                        ' -> ' + OrderDm.mRendSorok.Fields[i].AsString) ;
                        OrderDm.tRendTetel.FieldByName(fn).Value := OrderDm.mRendSorok.Fields[i].Value ;
                        inc(ChangeNum) ;
                      end ;
                    end ;
                  end ;
                end ;
                if ChangeNum <> 0 then OrderDm.tRendTetelTAutoUpdate.AsBoolean := True
                else OrderDm.tRendTetelTAutoUpdate.AsBoolean := False ;
                OrderDm.tRendTetelTRogzit.AsString := CurrentUserName ;
                OrderDm.tRendTetelTRogzIdo.AsDateTime := Now ;
                OrderDm.tRendTetel.Post ;
                OrderDm.mRendSorok.Next ;
                ProgressBar1.Position := OrderDm.mRendSorok.RecNo ;
              end
              else begin
                // Rendel�s t�tel adatok felv�tele
                OrderDm.tRendTetel.Insert ;
                OrderDm.tRendTetelRendelesAz.AsInteger := RendelesAz ;
                OrderDm.tRendTetelTetelSrsz.AsInteger := TetelSrsz ;
                OrderDm.tRendTetelTorolt.AsBoolean := False ;
                OrderDm.tRendTetelBeszolg.AsBoolean := False ;
                for i := 0 to OrderDm.mRendSorok.FieldCount - 1 do begin
                  fn := OrderDm.mRendSorok.Fields[i].FieldName ;
                  if OrderDm.mRendSorok.Fields[i].Tag = 2 then begin
                    OrderDm.tRendTetel.FieldByName(fn).Value := OrderDm.mRendSorok.Fields[i].Value ;
                  end ;
                end ;
                OrderDm.tRendTetel.Post ;
                MessagesForm.MsgEdit.Lines.Add(#9 + IntToStr(TetelSrsz) + ' sz. t�tel felv�tele') ;
                ProgressBar1.Position := OrderDm.mRendSorok.RecNo ;
                OrderDm.mRendSorok.Next ; //?????
              end ;
              //OrderDm.mRendSorok.Next ;
              TempRendSz := OrderDm.mRendSorokRendSz.AsString ;
            until (Rendelesszam <> TempRendSz) or (OrderDm.mRendSorok.Eof) ;
            TempRendSz := '' ;
          end ;
          TempRendSz := Rendelesszam ;
          OrderDm.spDeleteVoidOrderItem.ParamByName('@Rendelesszam').AsString := Rendelesszam ;
          OrderDm.spDeleteVoidOrderItem.ExecProc ;
        end ;
        Application.ProcessMessages() ;        
      end ;
      //MessagesForm.ShowModal ;
      ProgLabel.Caption := '' ;

      MainForm.Refresh ;

    finally
      NewOrderListForm.Free ;
      NewOrderListForm := Nil ;
      Timer1.Enabled := True ;
      ProgLabel.Caption := '' ;
      ProgressBar1.Position := 0 ;
      OrderDm.qRendSpec.Active := False ;
      OrderDm.tRendFej.GotoBookmark(HeadBmk) ;
      OrderDm.tRendTetel.GotoBookmark(ItemBmk) ;
      OrderDm.tRendFej.EnableControls ;
      OrderDm.tRendTetel.EnableControls ;
      OrderDm.spNewSapOrders.Active := False ;
      AutoUpdate := False ;
      MainForm.Cursor := crDefault ;

      OrderDm.mRendSorok.EnableControls ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
//{$O+}
end;

procedure TMainForm.BitBtn7Click(Sender: TObject);
begin
  ErrMsg('Ez m�g nem m�k�dik!') ;
end;

procedure TMainForm.FeetLengthEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_RETURN then begin
    HosszEdit.Field.AsFloat := FeetToMeter(FeetLengthEdit.AsFloat) ;
    HosszEdit.SetFocus ;
  end ;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    (*
    Dm.spLogOut.ParamByName('@ProgramName').AsString := Versio.InternalName ;
    Dm.spLogOut.ParamByName('@UID').AsInteger := CurrentUserId ;
    Dm.spLogOut.ExecProc ;
    *)
    AddEvent('A program bez�r�sa.', Versio.FileName, '') ;
  except

  end
end;

function TMainForm.GetSpecData(Cikkszam: string): TSpecDataRec ;
begin
  FillChar(Result, SizeOf(TSpecDataRec), 0) ;
  try
    try
      OrderDm.qRendSpec.Active := False ;
      OrderDm.qRendSpec.ParamByName('Cikkszam').AsString := Cikkszam ;
      OrderDm.qRendSpec.Active := True ;
      if OrderDm.qRendSpec.RecordCount > 0 then begin
        OrderDm.qRendSpec.First ;
        Result.Specifikacio := OrderDm.qRendSpecSpecifikacio.AsString ;
        Result.Atmero := OrderDm.qRendSpecAtmero.AsFloat ;
        Result.psi := OrderDm.qRendSpecpsi.AsFloat ;
        Result.MPa := OrderDm.qRendSpecMPa.AsFloat ;
        Result.Hossz := OrderDm.qRendSpecHossz.AsFloat ;
        Result.HosszMe := Lowercase(OrderDm.qRendSpecHosszMe.AsString) ;
        Result.Lang := OrderDm.qRendSpeclang.AsBoolean ;
        Result.Bg := OrderDm.qRendSpecBg.AsBoolean ;
        Result.Kg := OrderDm.qRendSpecKg.AsBoolean ;
        Result.Pa := OrderDm.qRendSpecPa.AsBoolean ;
        Result.Kv := OrderDm.qRendSpecKv.AsBoolean ;
        Result.KgInter := OrderDm.qRendSpecKgInter.AsBoolean ;
        Result.KvMua := OrderDm.qRendSpecKvMua.AsBoolean ;
        Result.KvFedHelix := OrderDm.qRendSpecKvFedHelix.AsBoolean ;
        Result.KvNFedHelix := OrderDm.qRendSpecKvNFedHelix.AsBoolean ;
        Result.DataOK := True ;
      end
      else begin
        Dm.spGetMaterialName.ParamByName('@Cikkszam').AsString := Cikkszam ;
        Dm.spGetMaterialName.ExecProc ;
        Result.Specifikacio := Dm.spGetMaterialName.ParamByName('@Megnevezes').AsString ;
      end ;
    finally

    end ;
  except
    On E: Exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  RefreshOrders ;
end;

function TMainForm.GetSapData(DataSet: TDataSet): TSapSpecRec ;
var
  sr: TSapSpecRec ;
begin
  try
    FillChar(sr, SizeOf(sr), 0) ;
    sr.RendelesSzam := Trim(DataSet.FieldByName('RendelesSzam').AsString) ;
    sr.Revizio := DataSet.FieldByName('Revizio').AsInteger ;
    sr.Pozicio := DataSet.FieldByName('Pozicio').AsInteger ;
    sr.UzlKotCsop := DataSet.FieldByName('UzlKotCsop').AsString ;
    sr.Orszag := DataSet.FieldByName('Orszag').AsString ;
    sr.Megrendelo := DataSet.FieldByName('Megrendelo').AsString ;
    sr.VevoRefSz := DataSet.FieldByName('VevoRefSz').AsString ;
    sr.Kontakt := DataSet.FieldByName('Kontakt').AsString ;
    sr.Arufogado := DataSet.FieldByName('Arufogado').AsString ;
    sr.MegrendDatuma := DataSet.FieldByName('MegrendDatuma').AsDatetime ;
    sr.SzallHatarido := DataSet.FieldByName('SzallHatarido').AsDatetime ;
    sr.RefBiz := DataSet.FieldByName('RefBiz').AsString ;
    sr.HozzSzam := DataSet.FieldByName('HozzSzam').AsString ;
    sr.FizetesiMod := DataSet.FieldByName('FizetesiMod').AsString ;
    sr.Incoterms1 := DataSet.FieldByName('Incoterms1').AsString ;
    sr.Incoterms2 := DataSet.FieldByName('Incoterms2').AsString ;
    sr.Penznem := DataSet.FieldByName('Penznem').AsString ;
    sr.Arfolyam := DataSet.FieldByName('Arfolyam').AsFloat ;
    sr.Szallitas := DataSet.FieldByName('Szallitas').AsInteger ;
    sr.Csomagolas := DataSet.FieldByName('Csomagolas').AsInteger ;
    sr.SzerzPotSz := DataSet.FieldByName('SzerzPot%').AsFloat ;
    sr.SzerzRab := DataSet.FieldByName('SzerzRab').AsFloat ;
    sr.SpecKtg1 := DataSet.FieldByName('SpecKtg1').AsFloat ;
    sr.SzerszamKtg := DataSet.FieldByName('SzerszamKtg').AsFloat ;
    sr.SzerzPotSz := DataSet.FieldByName('SzerzPot%').AsFloat ;
    sr.SzerzRab := DataSet.FieldByName('SzerzRab').AsFloat ;
    sr.SpecKtg1 := DataSet.FieldByName('SpecKtg1').AsFloat ;
    sr.SzerszamKtg := DataSet.FieldByName('SzerszamKtg').AsFloat ;
    sr.Cikkszam := DataSet.FieldByName('Cikkszam').AsString ;
    sr.Mennyiseg := DataSet.FieldByName('Mennyiseg').AsFloat ;
    sr.Me := Lowercase(DataSet.FieldByName('Me').AsString) ;
    sr.NettoAr := DataSet.FieldByName('NettoAr').AsFloat ;
    sr.Hataratert := DataSet.FieldByName('Hataratert').AsFloat ;
    sr.MennyCsok := DataSet.FieldByName('MennyCsok').AsFloat ;
    sr.RabatSz := DataSet.FieldByName('Rabat%').AsFloat ;
    sr.SpecKtg2 := DataSet.FieldByName('SpecKtg2').AsFloat ;
    sr.SpecCsom := DataSet.FieldByName('SpecCsom').AsFloat ;
    sr.UgynJutSz := DataSet.FieldByName('UgynJut%').AsFloat ;
    sr.UgynJut := DataSet.FieldByName('UgynJut').AsFloat ;
    sr.PotlekSz := DataSet.FieldByName('Potlek%').AsFloat ;
    sr.KikonyvDat := DataSet.FieldByName('KikonyvDat').AsDatetime ;
    sr.SzamlaDat := DataSet.FieldByName('SzamlaDat').AsDatetime ;
    sr.Kalkulalt := DataSet.FieldByName('Kalkulalt').AsFloat ;
    sr.StndErtek := DataSet.FieldByName('StndErtek').AsFloat ;
    sr.NettoArbHuf :=  DataSet.FieldByName('NettoArbHuf').AsFloat ;
    sr.AnyagNeve := DataSet.FieldByName('AnyagNeve').AsString ;
    sr.Marking := DataSet.FieldByName('Marking').AsString ;
    sr.Standard := DataSet.FieldByName('Standard').AsString ;
    sr.StandardText := DataSet.FieldByName('StandardText').AsString ;
    sr.TypeOfPacking := DataSet.FieldByName('TypeOfPacking').AsString ;
    sr.InsideDia := DataSet.FieldByName('InsideDia').AsFloat ;
    sr.Length := DataSet.FieldByName('Length').AsFloat ;
    sr.LengthUnit := DataSet.FieldByName('LengthUnit').AsString ;
    if Uppercase(Trim(sr.LengthUnit)) = 'FT' then begin
      sr.Length := FeetToMeter(DataSet.FieldByName('Length').AsFloat) ;
      sr.LengthUnit := 'M' ;
    end ;
    sr.Length2 := DataSet.FieldByName('Length2').AsFloat ;
    sr.TypeOfCoupling1 := DataSet.FieldByName('TypeOfCoupling1').AsString ;
    sr.TypeOfCoupling1Text := DataSet.FieldByName('TypeOfCoupling1Text').AsString ;
    sr.TypeOfCoupling2 := DataSet.FieldByName('TypeOfCoupling2').AsString ;
    sr.TypeOfCoupling2Text := DataSet.FieldByName('TypeOfCoupling2Text').AsString ;
    sr.SpecialImportOrder := DataSet.FieldByName('SpecialImportOrder').AsString ;
    sr.PressureCategory := DataSet.FieldByName('PressureCategory').AsString ;
    sr.WorkingPressure := DataSet.FieldByName('WorkingPressure').AsFloat ;
    sr.WorkingPressureUnit := DataSet.FieldByName('WorkingPressureUnit').AsString ;
    sr.DesignPressure := DataSet.FieldByName('DesignPressure').AsFloat ;
    sr.DesignPressureUnit := DataSet.FieldByName('DesignPressureUnit').AsString ;
    sr.TestPressure := DataSet.FieldByName('TestPressure').AsFloat ;
    sr.TestPressureUnit := DataSet.FieldByName('TestPressureUnit').AsString ;
    sr.SafetyFactor := DataSet.FieldByName('SafetyFactor').AsFloat ;
    sr.Cover := DataSet.FieldByName('Cover').AsString ;
    sr.OutsideProtection := DataSet.FieldByName('OutsideProtection').AsString ;
    sr.InternalStripwoundTube := DataSet.FieldByName('InternalStripwoundTube').AsString ;
    sr.TypeOfLining := DataSet.FieldByName('TypeOfLining').AsString ;
    sr.SafetyClamp := DataSet.FieldByName('SafetyClamp').AsString ;
    sr.LiftingCollar := DataSet.FieldByName('LiftingCollar').AsString ;
    sr.ElementC := DataSet.FieldByName('ElementC').AsString ;
    sr.MaxDesignTemperature := DataSet.FieldByName('MaxDesignTemperature').AsInteger ;
    sr.MinDesignTemperature := DataSet.FieldByName('MinDesignTemperature').AsInteger ;
    sr.PBLCollarChain := DataSet.FieldByName('PBLCollarChain').AsString ;
    sr.Text1 := DataSet.FieldByName('Text1').AsString ;
    sr.Text2 := DataSet.FieldByName('Text2').AsString ;
    sr.Text3 := DataSet.FieldByName('Text3').AsString ;
    sr.LastUpdate := DataSet.FieldByName('LastUpdate').AsDatetime ;
    sr.OsszetettKulcs := DataSet.FieldByName('OsszetettKulcs').AsString ;
    // H2S Services alkalmass�g
    sr.H2S := DataSet.FieldByName('H2S').AsInteger ;

    Result := sr ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.FeetToMeter(Feet: Double): Double ;
begin
  Result := 0 ;
  try
    Dm.ConvertUnit.Active := False ;
    Dm.ConvertUnit.ParamByName('@InCode').AsInteger := 7 ;
    Dm.ConvertUnit.ParamByName('@OutCode').AsInteger := 4 ;
    Dm.ConvertUnit.ParamByName('@Value').AsFloat := Feet ;
    Dm.ConvertUnit.Active := True ;
    Result := Round(Dm.ConvertUnit.Fields[0].AsFloat * 100) * 0.01 ;
    Dm.ConvertUnit.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.MpaToPsi(Mpa: double): double ;
begin
  Result := 0 ;
  try
    if Dm.ConvertUnit.Active then Dm.ConvertUnit.Active := False ;
    Dm.ConvertUnit.ParamByName('@InCode').AsInteger := 62 ; // psi
    Dm.ConvertUnit.ParamByName('@OutCode').AsInteger := 65 ; // MPa
    Dm.ConvertUnit.ParamByName('@Value').AsFloat := MPa ;
    Dm.ConvertUnit.Active := True ;
    Result := Round(Dm.ConvertUnit.Fields[0].AsFloat * 0.1) * 10 ;
    Dm.ConvertUnit.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.PsiToMpa(Psi: double): double ;
begin
  Result := 0 ;
  try
    if Dm.ConvertUnit.Active then Dm.ConvertUnit.Active := False ;
    Dm.ConvertUnit.ParamByName('@InCode').AsInteger := 65 ; // psi
    Dm.ConvertUnit.ParamByName('@OutCode').AsInteger := 62 ; // MPa
    Dm.ConvertUnit.ParamByName('@Value').AsFloat := psi ;
    Dm.ConvertUnit.Active := True ;
    Result := Dm.ConvertUnit.Fields[0].AsFloat ;
    Dm.ConvertUnit.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.PaLining(Cikkszam: string): Boolean ;
begin
  Result := False ;
  try
    if ((Copy(Cikkszam, 1, 5) = '42574') or (Copy(Cikkszam, 1, 5) = '42564')) then begin
      if Cikkszam[6] in ['0','1','2','3','4','5','6','7'] then Result := True else Result := False ;
    end
    else Result := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.FormatMsg(Rendelesszam: string; TetelSrsz: integer; Msg: string): string ;
begin
  Result := Format('%-10s %.3d - %s', [Rendelesszam, TetelSrsz, Msg]) ;
end ;

procedure TMainForm.MakeHoseSlaveRec(sr: TSapSpecRec; sd: TSpecDataRec) ;
var
  UnitStr: string ;
  i: integer ;
begin
  try
    //OrderDm.mRendSorokSapRevizio

    OrderDm.mRendSorok.Append ;
    // Fej adatok
    OrderDm.mRendSorokTermekKod.AsInteger := 1 ;
    OrderDm.mRendSorokRendSz.AsString := sr.RendelesSzam ;
    OrderDm.mRendSorokPhxRendSz.AsString := '' ;
    OrderDm.mRendSorokVevoRendSz.AsString := sr.VevoRefSz ;
    OrderDm.mRendSorokVevo.AsString := sr.Megrendelo ;
    OrderDm.mRendSorokFelhasznalo.AsString := sr.Arufogado ;
    OrderDm.mRendSorokHatarido.AsDateTime := sr.SzallHatarido ;
    OrderDm.mRendSorokExtrKtsg.AsFloat := 0 ; // ???
    OrderDm.mRendSorokExtrPenznem.AsString := sr.Penznem ;
    OrderDm.mRendSorokErtTerulet.AsString := GetErtTerulet(sr.Megrendelo) ;
    OrderDm.mRendSorokRKonfekcio.AsString := '' ;
    OrderDm.mRendSorokLevelSzama.AsString := '' ;
    OrderDm.mRendSorokLevelDatuma.Clear ;
    OrderDm.mRendSorokRMegj.AsString := '' ;
    OrderDm.mRendSorokRRogzit.AsString := CurrentuserName ;
    OrderDm.mRendSorokRRogzIdo.AsDateTime := Now ;
    OrderDm.mRendSorokRModosit.AsString := '' ;
    OrderDm.mRendSorokRModIdo.Clear ;
    OrderDm.mRendSorokRModMezok.Clear ;
    OrderDm.mRendSorokTorolt.AsBoolean := False ;
    OrderDm.mRendSorokEnged.AsBoolean := False ;
    OrderDm.mRendSorokVissza.AsBoolean := False ;
    OrderDm.mRendSorokIgertHatarido.Clear ;
    OrderDm.mRendSorokAjanlatSzam.Clear ;
    OrderDm.mRendSorokSapRevizio.AsInteger := sr.Revizio ;

    // T�tel adatok
    OrderDm.mRendSorokTetelSrsz.AsInteger := OrderDm.spNewSapOrdersPozicio.AsInteger ;
    OrderDm.mRendSorokCikkszam.AsString := sr.Cikkszam ;
    OrderDm.mRendSorokSpecifikacio.AsString := sd.Specifikacio ;
    OrderDm.mRendSorokAtmero.AsFloat := sr.InsideDia ;
    UnitStr := sr.WorkingPressureUnit ;
    // WorkingPressure -> DesignPressure 07.09.04.
    OrderDm.mRendSorokPsi.AsFloat := NamedUnitConversion(UnitStr, 'psi', sr.DesignPressure, 0) ;
    //OrderDm.mRendSorokMPa.AsFloat := NamedUnitConversion(UnitStr, 'mpa', sr.WorkingPressure, 1) ;
    // Kerek�t�s 7500 psi -> 51,7 MPa
    // WorkingPressure -> DesignPressure 07.09.04.
    OrderDm.mRendSorokMPa.AsFloat := Trunc(NamedUnitConversion(UnitStr, 'mpa', sr.DesignPressure, 2) * 10) * 0.1 ;

    // T�ml� jellemz�k �tv�tele
    // La
    if Uppercase(Trim(sr.Cover)) = 'FIRE RESISTANT' then OrderDm.mRendSorokLang.AsBoolean := True
    else OrderDm.mRendSorokLang.AsBoolean := False ;
    // Bg
    if Uppercase(Trim(sr.InternalStripwoundTube)) = 'YES' then OrderDm.mRendSorokBg.AsBoolean := True
    else OrderDm.mRendSorokBg.AsBoolean := False ;
    // Kg
    if Uppercase(Trim(sr.OutsideProtection)) = 'ST. STEEL OUTER WRAP' then begin
      OrderDm.mRendSorokKg.AsBoolean := True ;
      //MsgLine := FormatMsg(sr.Rendelesszam, sr.Pozicio, 'Nincs eld�ntve a g�gecs� t�pusa!') ;
      //MessagesForm.MsgEdit.Lines.Add(MsgLine) ;
    end
    else OrderDm.mRendSorokKg.AsBoolean := False ;
    // Pa
    OrderDm.mRendSorokPa.AsBoolean := PaLining(sr.Cikkszam) ;
    // Kv
    if Uppercase(Trim(sr.OutsideProtection)) = 'SPECIAL' then begin
      OrderDm.mRendSorokKv.AsBoolean := True ;
      //MsgLine := FormatMsg(sr.Rendelesszam, sr.Pozicio, 'Nincs eld�ntve a v�delem t�pusa!') ;
      //MessagesForm.MsgEdit.Lines.Add(MsgLine) ;
    end
    else OrderDm.mRendSorokKv.AsBoolean := False ;
    // KgInter
    OrderDm.mRendSorokKgInter.AsBoolean := False ;
    OrderDm.mRendSorokKvMua.AsBoolean := False ;
    OrderDm.mRendSorokKvFedHelix.AsBoolean := False ;
    OrderDm.mRendSorokKvNFedHelix.AsBoolean := False ;
    OrderDm.mRendSorokTipus.Clear ;
    OrderDm.mRendSorokCsatl1.Clear ;
    OrderDm.mRendSorokCsatl1Rsz.Clear ;
    OrderDm.mRendSorokCsatl2.Clear ;
    OrderDm.mRendSorokCsatl2Rsz.Clear ;
    OrderDm.mRendSorokDarabszam.AsFloat := sr.Mennyiseg ;
    OrderDm.mRendSorokHossz.AsFloat := sr.Length ;
    OrderDm.mRendSorokHosszMe.AsString := sr.LengthUnit ;
    OrderDm.mRendSorokTErtek.AsFloat := sr.NettoAr * sr.Mennyiseg ;
    OrderDm.mRendSorokTPenznem.AsString := sr.Penznem ;
    OrderDm.mRendSorokOsszeallRsz.Clear ;
    OrderDm.mRendSorokKonstrukcio.Clear ;
    OrderDm.mRendSorokKonstrukcio2.Clear ;
    OrderDm.mRendSorokTKonfekcio.Clear ;
    OrderDm.mRendSorokTKonfekDatum.Clear ;
    OrderDm.mRendSorokNormaIdo.Clear ;
    OrderDm.mRendSorokDbjDatum.Clear ;
    OrderDm.mRendSorokMuvDatum.Clear ;
    OrderDm.mRendSorokKonstrDatum.Clear ;
    OrderDm.mRendSorokFszHatarido.Clear ;
    OrderDm.mRendSorokFszBeerk.Clear ;
    OrderDm.mRendSorokAnyag.Clear ;
    //OrderDm.mRendSorokCsomagolas.AsString := sr.TypeOfPacking ;
    OrderDm.mRendSorokCsomagolas.Clear ;
    OrderDm.mRendSorokEgyeb.Clear ;
    OrderDm.mRendSorokTMegj.Clear ;
    OrderDm.mRendSorokTRogzit.AsString := CurrentUserName ;
    OrderDm.mRendSorokTRogzIdo.AsDateTime := Now ;
    OrderDm.mRendSorokTModosit.Clear ;
    OrderDm.mRendSorokTModIdo.Clear ;
    OrderDm.mRendSorokModMezok.Clear ;
    OrderDm.mRendSorokTorolt.Clear ;
    OrderDm.mRendSorokBeszolg.Clear ;
    OrderDm.mRendSorokTModHatarido.AsDatetime := sr.SzallHatarido ;
    OrderDm.mRendSorokBeszolgIdo.Clear ;
    OrderDm.mRendSorokBeszolgDb.Clear ;
    OrderDm.mRendSorokBeszolgHossz.Clear ;
    OrderDm.mRendSorokTomeg.Clear ;
    OrderDm.mRendSorokGyartasInd.Clear ;
    OrderDm.mRendSorokBefejezoMuv.Clear ;
    OrderDm.mRendSorokAccListExist.Clear ;
    OrderDm.mRendSorokAccListDate.Clear ;
    OrderDm.mRendSorokAccCreator.Clear ;
    OrderDm.mRendSorokBelsoHuvely.Clear ;
    OrderDm.mRendSorokHuvely.Clear ;
    OrderDm.mRendSorokSpiralkup.Clear ;
    OrderDm.mRendSorokEmelobilincs.AsString := Trim(sr.LiftingCollar) ;
    OrderDm.mRendSorokBiztBilincs.AsString := Trim(sr.SafetyClamp) ;
    OrderDm.mRendSorokTomitoGyuru1.Clear ;
    OrderDm.mRendSorokTomitoGyuru2.Clear ;
    OrderDm.mRendSorokFeneklap1.Clear ;
    OrderDm.mRendSorokFeneklap2.Clear ;
    OrderDm.mRendSorokNyomPrBilincs1.Clear ;
    OrderDm.mRendSorokNyomPrBilincs2.Clear ;
    OrderDm.mRendSorokVedoHuvely.Clear ;
    (*
    if Uppercase(Trim(sr.ElementC)) = 'YES' then begin
      if sr.ElementC
      OrderDm.mRendSorokOsztottHuvely.AsString :=
      dkddjdhjdhjdhjd
    *)
    OrderDm.mRendSorokOsztottHuvely.AsString := Trim(sr.ElementC) ;
    OrderDm.mRendSorokEgyebek.Clear ;
    OrderDm.mRendSorokAtveteliKesz.Clear ;
    OrderDm.mRendSorokAtveteliIdopont.Clear ;
    OrderDm.mRendSorokAtvetelitKeszitette.Clear ;
    OrderDm.mRendSorokInspector.Clear ;
    OrderDm.mRendSorokInspectorMegj.Clear ;
    OrderDm.mRendSorokSapTypeOfCoupling1.AsString := sr.TypeOfCoupling1 + ' - ' + sr.TypeOfCoupling1Text ;
    OrderDm.mRendSorokSapTypeOfCoupling2.AsString := sr.TypeOfCoupling2 + ' - ' + sr.TypeOfCoupling2Text ;
    OrderDm.mRendSorokMarking.AsString := sr.Marking ;
    OrderDm.mRendSorokStandard.AsString := sr.Standard ;
    OrderDm.mRendSorokStandardText.AsString := sr.StandardText ;
    OrderDm.mRendSorokTypeOfPacking.AsString := sr.TypeOfPacking ;
    OrderDm.mRendSorokWorkingPressure.AsFloat := sr.WorkingPressure ;
    OrderDm.mRendSorokWorkingPressureUnit.AsString := sr.WorkingPressureUnit ;
    OrderDm.mRendSorokDesignPressure.AsFloat := sr.DesignPressure ;
    OrderDm.mRendSorokDesignPressureUnit.AsString := sr.DesignPressureUnit ;
    OrderDm.mRendSorokTestPressure.AsFloat := sr.TestPressure ;
    OrderDm.mRendSorokTestPressureUnit.AsString := sr.TestPressureUnit ;
    OrderDm.mRendSorokSafetyFactor.AsFloat := sr.SafetyFactor ;
    OrderDm.mRendSorokTypeOfLining.AsString := sr.TypeOfLining ;
    OrderDm.mRendSorokMinDesignTemperature.AsFloat := sr.MinDesignTemperature ;
    OrderDm.mRendSorokMaxDesignTemperature.AsFloat := sr.MaxDesignTemperature ;
    OrderDm.mRendSorokH2S.AsInteger := sr.H2S ;

    // Az �rt�k n�lk�li Boolean t�pus� mez�k 'False'-ra �ll�t�sa
    for i := 0 to OrderDm.mRendSorok.Fields.Count - 1 do begin
      if OrderDm.mRendSorok.Fields[i].DataType = ftBoolean then begin
        if OrderDm.mRendSorok.Fields[i].IsNull then OrderDm.mRendSorok.Fields[i].AsBoolean := False ;
      end ;
    end ;
    OrderDm.mRendSorok.Post ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.AdatlapInspectorGetEditColor(Sender: TdxInspectorRow;
  var AColor: TColor);
begin
  if Sender.ReadOnly then AColor := clSilver ;
end;

procedure TMainForm.RefreshOrders ;
var
  FejBmk, TetelBmk: TBookmark ;
begin
  FejBmk := Nil ;
  TetelBmk := Nil ;
  try
    try
      OrderDm.tRendFej.CheckBrowseMode ;
      OrderDm.tRendTetel.CheckBrowseMode ;

      FejBmk := OrderDm.tRendFej.GetBookmark ;
      TetelBmk := OrderDm.tRendTetel.GetBookmark ;

      OrderDm.tRendFej.Refresh ;
      OrderDm.tRendTetel.Refresh ;

      OrderDm.qImportOrderRev.Active := False ;
      OrderDm.qImportOrderRev.Active := True ;
    finally
      OrderDm.tRendFej.GotoBookmark(FejBmk) ;
      OrderDm.tRendTetel.GotoBookmark(TetelBmk) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
var
  Rendsz: string ;
const
  MsgChange =  'Az adatlapokon v�ltoztat�s t�rt�nt!' + #13 + 'Menthetem a v�ltoz�sokat?' ;
begin
  try
    try
      if not OrderDm.tRendFej.Active then begin
        ErrMsg('Nincs megnyitva a rendel�s�llom�ny!') ;
        Exit ;
      end ;
      if Dm.RendelesTetel.State = dsEdit then begin
        if MessageDlg(MsgChange, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
      end ;
      RendSz := OrderDm.tRendFejRendSz.AsString ;
      Dm.HSOrderHeadList.Active := False ;
      Dm.HSOrderHeadList.Active := True ;
      Dm.HSOrderHeadList.Locate('RendSz', RendSz, [loCaseInsensitive]) ;
      PageControl1.ActivePage := DataSheetBase ;
      PageControl3.ActivePage := DataSheetAccessory ;
      AdatlapInspector.SetFocus ;
    finally
      if not Dm.HSOrderHeadList.Active then Dm.HSOrderHeadList.Active := True ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.NamedUnitConversion(InUnit, OutUnit: string; Value: double; Decimal: integer): double ;
begin
  Result := 0 ;
  try
    if Uppercase(Trim(InUnit)) = Uppercase(Trim(OutUnit)) then begin
      Result := RoundD(Value, Decimal) ;
      Exit ;
    end ;
    if (Value = 0) or (Trim(InUnit) = '') or (Trim(OutUnit) = '') then begin
      Result := 0 ;
      Exit ;
    end ;
    Dm.spNamedUnitConversion.ParamByName('@InUnitStr').AsString := InUnit ;
    Dm.spNamedUnitConversion.ParamByName('@OutUnitStr').AsString := OutUnit ;
    Dm.spNamedUnitConversion.ParamByName('@Value').AsFloat := Value ;
    Dm.spNamedUnitConversion.ExecProc ;
    Result := RoundD(Dm.spNamedUnitConversion.ParamByName('@ResValue').AsFloat, Decimal) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.EmailSentExecute(Sender: TObject);
var
  bmk: TBookmark ;
  LevelKuldheto: Boolean ;
begin
  bmk := Nil ;
  try
    try
      bmk := Dm.RendelesTetel.GetBookmark ;
      Dm.RendelesTetel.DisableControls ;
      Dm.RendelesTetel.CheckBrowseMode ;
      Dm.RendelesTetel.First ;
      LevelKuldheto := True ;
      while (not Dm.RendelesTetel.Eof) and LevelKuldheto do begin
        if (not Dm.RendelesTetelAccListExist.AsBoolean) and (not Dm.RendelesTetelTorolt.AsBoolean)
          then LevelKuldheto := False ;
        Dm.RendelesTetel.Next ;
      end ;
      if LevelKuldheto then begin
        Dm.RendelesTetel.First ;
        while not Dm.RendelesTetel.Eof do begin
          if not Dm.RendelesTetelAccListMailSent.AsBoolean then begin
            Dm.RendelesTetel.Edit ;
            Dm.RendelesTetelAccListMailDate.AsDateTime := Now ;
            Dm.RendelesTetelAccListMailSender.AsString := CurrentUserName ;
            Dm.RendelesTetelAccListMailSent.AsBoolean := True ;
            Dm.RendelesTetel.Post ;
          end ;
          Dm.RendelesTetel.Next ;
        end ;
      end
      else ErrMsg('A rendel�s el nem fogadott alkatr�szlist�(ka)t tartalmaz!') ;
    finally
      Dm.RendelesTetel.GotoBookmark(bmk) ;
      Dm.RendelesTetel.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Panel62Resize(Sender: TObject);
begin
  //SetButtons(Panel62, False) ;
end;

procedure TMainForm.GetProgramBase ;
begin
end ;

procedure TMainForm.PlanGridDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  IdColNum, OrdColNum, YearColNum, MonthColNum, AreaColNum, DragNum, DragId,
  DestNum, DestYear, DestMonth, DestArea: integer ;
  Grid: TDxDBGrid ;
  DataSet: TDataSet ;
begin
  Grid := TDxDBGrid(Sender) ;

  IdColNum := Grid.ColumnByFieldName('Id').Index ;
  OrdColNum := Grid.ColumnByFieldName('Sorrend').Index ;
  YearColNum := Grid.ColumnByFieldName('Prog�v').Index ;
  MonthColNum := Grid.ColumnByFieldName('ProgH�nap').Index ;
  AreaColNum := Grid.ColumnByFieldName('Gy�rt�si_ter�letk�d').Index ;
  DragId := Grid.DragNode.Values[IdColNum] ;
  DragNum := Grid.DragNode.Values[OrdColNum] ;
  DestNum := Grid.FocusedNode.Values[OrdColNum] ;
  DestYear := Grid.FocusedNode.Values[YearColNum] ;
  DestMonth := Grid.FocusedNode.Values[MonthColNum] ;
  DestArea := Grid.FocusedNode.Values[AreaColNum] ;

  DataSet := Grid.DataSource.DataSet ;
  try
    try
      DataSet.DisableControls ;
      if DataSet.Locate('Id', DragId, [loCaseInsensitive]) then begin
        DataSet.Edit ;
        DataSet.FieldByName('Sorrend').AsInteger := -1 ;
        DataSet.Post ;
      end ;

      if DragNum > DestNum then begin
        DataSet.First ;
        while not DataSet.Eof do begin
          if (DataSet.FieldByName('Sorrend').AsInteger < DragNum)
          and (DataSet.FieldByName('Sorrend').AsInteger >= DestNum)
          and  (DataSet.FieldByName('Sorrend').AsInteger > -1) then begin
            DataSet.Edit ;
            DataSet.FieldByName('Sorrend').AsInteger := DataSet.FieldByName('Sorrend').AsInteger + 1 ;
            DataSet.Post ;
          end ;
          DataSet.Next ;
        end ;
        if DataSet.Locate('Id', DragId, [loCaseInsensitive]) then begin
          DataSet.Edit ;
          DataSet.FieldByName('Sorrend').AsInteger := DestNum ;
          DataSet.FieldByName('Prog�v').AsInteger := DestYear ;
          DataSet.FieldByName('ProgH�nap').AsInteger := DestMonth ;
          DataSet.FieldByName('Gy�rt�si_ter�letk�d').AsInteger := DestArea ;
          DataSet.Post ;
        end ;
      end
      else begin
        DataSet.First ;
        while not DataSet.Eof do begin
          if (DataSet.FieldByName('Sorrend').AsInteger > DragNum)
          and (DataSet.FieldByName('Sorrend').AsInteger <= DestNum)
          and  (DataSet.FieldByName('Sorrend').AsInteger > -1) then begin
            DataSet.Edit ;
            DataSet.FieldByName('Sorrend').AsInteger := DataSet.FieldByName('Sorrend').AsInteger - 1 ;
            DataSet.Post ;
          end ;
          DataSet.Next ;
        end ;
        if DataSet.Locate('Id', DragId, [loCaseInsensitive]) then begin
          DataSet.Edit ;
          DataSet.FieldByName('Sorrend').AsInteger := DestNum ;
          DataSet.FieldByName('Prog�v').AsInteger := DestYear ;
          DataSet.FieldByName('ProgH�nap').AsInteger := DestMonth ;
          DataSet.FieldByName('Gy�rt�si_ter�letk�d').AsInteger := DestArea ;
          DataSet.Post ;
        end ;
      end ;
    finally
      Grid.DataSource.DataSet.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.PackDevSelection(var PackDevRec: TPackDevRec): Boolean ;
var
  DevTypeCode, DevCode: integer ;
  positioned: Boolean ;
  fn: string ;
begin
  Result := False ;
  DevTypeCode := 0 ;
  DevCode := 0 ;
  positioned := False ;
  try
    try
      if not Dm.PackDevice.Active then Dm.PackDevice.Active := True ;
      if not Dm.PackDeviceType.Active then Dm.PackDeviceType.Active := True ;
      if not Dm.qPackTypes.Active then Dm.qPackTypes.Active := True ;

      // A csomagol� eszk�z t�pus�hoz t�rt�n� pozicion�l�s.
      if PackDevRec.DeviceId <> 0 then begin // Ha van kiv�lasztott csomagol� eszk�z t�pus, akkor ide pozicion�lja a kurzort.
        if Dm.qPackTypes.Locate('DeviceId', PackDevRec.DeviceId, [loCaseInsensitive])
        then begin
          DevTypeCode := Dm.qPackTypesDeviceTypeCode.AsInteger ;
          DevCode := Dm.qPackTypesDeviceId.AsInteger ;
          positioned := True ;
        end ;
      end
      else if PackDevRec.DeviceName <> '' then begin // Ha csak nmegnevez�s van, akkor is megpr�b�lja.
        if Dm.qPackTypes.Locate('DeviceName', PackDevRec.DeviceName, [loCaseInsensitive])
        then begin
          DevTypeCode := Dm.qPackTypesDeviceTypeCode.AsInteger ;
          DevCode := Dm.qPackTypesDeviceId.AsInteger ;
          positioned := True ;
        end ;
      end ;
      if positioned then begin
        Dm.PackDeviceType.Locate('DeviceTypeCode', DevTypeCode, [loCaseInsensitive]) ;
        Dm.PackDevice.Locate('DeviceId', DevCode , [loCaseInsensitive]) ;
      end ;

      if PackDevSelectForm.ShowModal = mrOk then begin
        PackDevRec.DeviceTypeName := Dm.PackDeviceTypeDeviceTypeName.AsString ;
        PackDevRec.DeviceTypeCode := Dm.PackDeviceDeviceTypeCode.AsInteger ;
        PackDevRec.DeviceName := Dm.PackDeviceDeviceName.AsString ;
        PackDevRec.DeviceId := Dm.PackDeviceDeviceId.AsInteger ;
        PackDevRec.d1 := Dm.PackDevicedim1.AsFloat ;
        PackDevRec.d2 := Dm.PackDevicedim2.AsFloat ;
        PackDevRec.d3 := Dm.PackDevicedim3.AsFloat ;
        PackDevRec.d4 := Dm.PackDevicedim4.AsFloat ;
        PackDevRec.d5 := Dm.PackDevicedim5.AsFloat ;
        PackDevRec.d6 := Dm.PackDevicedim6.AsFloat ;
        PackDevRec.d7 := Dm.PackDevicedim7.AsFloat ;
        PackDevRec.d8 := Dm.PackDevicedim8.AsFloat ;
        PackDevRec.weight := Dm.PackDevicedim9.AsFloat ;
        case PackDevRec.CurrencyCode of
          16 : fn := 'Dim13' ; // EUR
          19 : fn := 'Dim11' ; // GBP
          43 : fn := 'Dim12' ; // USD
          else fn := '' ;
        end ;
        if fn = '' then begin
          PackDevRec.price := 0 ;
          ErrMsg('A kiv�lasztott p�nznemben nincs nyilv�ntartott �r!') ;
        end else PackDevRec.price := Dm.PackDevice.FieldByName(fn).AsFloat ;
        Result := True ;
      end ;
    finally
      //Dm.PackDevice.Active := False ;
      //Dm.PackDeviceType.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SpeedButton17Click(Sender: TObject);
begin
  try
    if Dm.RendelesTetel.State <> dsEdit	then begin
      Dm.RendelesTetel.CheckBrowseMode ;
      Dm.RendelesTetel.Edit ;
    end ;
    if Dm.RendelesTetelTAutoUpdate.AsBoolean then Dm.RendelesTetelTAutoUpdate.AsBoolean := False
    else ErrMsg('M�r el van fogadva a kiv�lasztott t�tel!') ;
    Dm.RendelesTetel.Post ;
    if not Dm.RendelesTetel.Eof then Dm.RendelesTetel.Next ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Oszlopokigaztsa8Click(Sender: TObject);
begin
  SetGridColWidth(MeoGrid) ;
end;

procedure TMainForm.BitBtn6Click(Sender: TObject);
var
  bmk: TBookmark ;
  ListUpdatable: Boolean ;
begin
  bmk := Nil ;
  try
    try
      bmk := OrderDm.qMeo.GetBookmark ;
      OrderDm.qMeo.DisableControls ;
      if OrderDm.qMeo.Active then begin
        OrderDm.qMeo.Active := False ;
        ListUpdatable := False ;
      end else ListUpdatable := True ;

      OrderDm.qMeo.ParamByName('Date1').AsDatetime := MeoDate1.Date ;
      OrderDm.qMeo.ParamByName('Date2').AsDatetime := MeoDate2.Date ;
      OrderDm.qMeo.Active := True ;

      if ListUpdatable then begin
        OrderDm.qInspektors.Active := False ;
        OrderDm.qInspektors.Active := True ;
        OrderDm.qHoseTypes.Active := False ;
        OrderDm.qHoseTypes.Active := True ;

        MeoGridINSPEKT.Items.Clear ;
        while not OrderDm.qInspektors.Eof do begin
          MeoGridINSPEKT.Items.Add(OrderDm.qInspektorsinspekt.AsString) ;
          OrderDm.qInspektors.Next ;
        end ;

        MeoGridTIPUS.Items.Clear ;
        while not OrderDm.qHoseTypes.Eof do begin
          MeoGridTIPUS.Items.Add(OrderDm.qHoseTypesTipus.AsString) ;
          OrderDm.qHoseTypes.Next ;
        end ;
      end ;
    finally
      if (bmk <> Nil) and OrderDm.qMeo.BookmarkValid(bmk) then OrderDm.qMeo.GotoBookmark(bmk) ;
      OrderDm.qMeo.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MeoSaveBtnClick(Sender: TObject);
begin
  if not MEO then begin
    ErrMsg('Csak a MEO csoport tagja mentheti a v�ltoz�sokat!') ;
    Exit ;
  end ;
  if not OrderDm.qMeo.Active then Exit ;
  OrderDm.qMeo.CheckBrowseMode ;
  with OrderDm.qMeo do begin
    Dm.MainDb.StartTransaction;
    try
      ApplyUpdates; {try to write the updates to the database};
      Dm.MainDb.Commit; {on success, commit the changes};
    except
      Dm.MainDb.Rollback; {on failure, undo the changes};
    raise; {raise the exception to prevent a call to CommitUpdates!}
    end ;
    CommitUpdates ;
    MeoChangeNum := 0 ;
  end ;
end;

procedure TMainForm.MeoUndoBtnClick(Sender: TObject);
begin
  try
    try
      if not OrderDm.qMeo.Active then Exit ;
      OrderDm.qMeo.DisableControls ;
      OrderDm.qMeo.CancelUpdates ;
      OrderDm.qMeo.Active := False ;
      OrderDm.qMeo.Active := True ;
      MeoChangeNum := 0 ;
    finally
      OrderDm.qMeo.EnableControls ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  QryMsg: string ;
begin
  LastOrderNum := Dm.HSOrderHeadListRendSz.AsString ;
  // MEO nyilv�ntart�s ellen�rz�se
  if OrderDm.qMeo.Active then begin
    OrderDm.qMeo.CheckBrowseMode ;
    if MeoChangeNum > 0 then begin
      QryMsg := 'A MEO nyilv�ntart�sban el nem mentett v�ltoz�sok vannak!' + #13 + 'Biztos, hogy bez�rhatom?' ;
      if MessageDlg(QryMsg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then CanClose := False ;
      Exit ;
    end ;
  end ;
  // MfCikksz�mok v�ltoz�sainak ellen�rz�se
  if Dm.qMfCikkszamok.Active then begin
    Dm.qMfCikkszamok.CheckBrowseMode ;
    if MfCkszChangeNum > 0 then begin
      QryMsg := 'A cikksz�mok k�z�tt el nem mentett v�ltoz�sok vannak!' + #13 + 'Biztos, hogy bez�rhatom?' ;
      if MessageDlg(QryMsg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then CanClose := False ;
      Exit ;
    end ;
  end ;
end;

procedure TMainForm.SafetyItemEditExecute(Sender: TObject);
var
  Id: integer ;
begin
  try
    if BiztEszkForm = Nil then begin
      BiztEszkForm := TBiztEszkForm.Create(Application) ;
    end ;
    BiztEszkForm.Table1.Active := True ;
    Id := BiztSzerelvGridId.Field.AsInteger ;
    BiztEszkForm.Table1.Locate('Id', Id, [loCaseInsensitive]) ;
    BiztEszkForm.ShowModal ;
    BiztEszkForm.Table1.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SafetyItemAddExecute(Sender: TObject);
var
  Eszkoz, Beszerzes, SafetyMsg: string ;
  Id, Db, RendelesAz, TetelSrsz, i: integer ;
begin
  if not Dm.RendelesTetel.Active then Exit ;
  try
    try
      Dm.tBiztSzerelvenyek.DisableControls ;
      if SafetyItemSelectForm = Nil then begin
        SafetyItemSelectForm := TSafetyItemSelectForm.Create(Self) ;
      end ;
      SafetyItemSelectForm.qEszkoz.Active := True ;
      SafetyItemSelectForm.qBeszerzes.Active := True ;
      Db := Dm.RendelesTetelDarabSzam.AsInteger * 2 ;
      SafetyItemSelectForm.DbEdit.AsInteger := Db ;
      if SafetyItemSelectForm.ShowModal = mrOk then begin
        Db := SafetyItemSelectForm.DbEdit.AsInteger ;
        Eszkoz := SafetyItemSelectForm.EszkozCombo.Text ;
        if SafetyItemSelectForm.SelectedType = 'L�nc' then Beszerzes := '%' else Beszerzes := SafetyItemSelectForm.BeszerzesCombo.Text ;
        Dm.qSafetyItems.Active := False ;
        Dm.qSafetyItems.ParamByName('Eszkoz').AsString := Eszkoz ;
        Dm.qSafetyItems.ParamByName('Beszerzes').AsString := Beszerzes ;
        Dm.qSafetyItems.Active := True ;
        if Db > Dm.qSafetyItems.RecordCount then begin
          SafetyMsg := 'A kiv�lasztott alkatr�szb�l nem �ll rendelkez�sre kell� mennyis�g!' ;
          SafetyMsg := SafetyMsg + #13 + 'El�bb vedd fel a megfelel� elemeket!' ;
          ErrMsg(SafetyMsg) ;
          Exit ;
        end ;
        Dm.qSafetyItems.First ;
        i := 0 ;
        while (not Dm.qSafetyItems.Eof) and (i < db) do begin
          inc(i) ;
          Id := Dm.qSafetyItemsId.AsInteger ;
          RenDelesAz := Dm.RendelesTetelRendelesAz.AsInteger ;
          TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
          Dm.spAddSafetyItem.ParamByName('@Id').AsInteger := Id ;
          Dm.spAddSafetyItem.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spAddSafetyItem.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spAddSafetyItem.ExecProc ;
          Dm.qSafetyItems.Next ;
        end ;
      end ;
    finally
      Dm.qSafetyItems.Active := False ;
      SafetyItemSelectForm.qEszkoz.Active := False ;
      SafetyItemSelectForm.qBeszerzes.Active := False ;
      Dm.tBiztSzerelvenyek.Refresh ;
      Dm.tBiztSzerelvenyek.Resync([rmCenter]) ;
      Dm.tBiztSzerelvenyek.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SafetyItemRemoveExecute(Sender: TObject);
var
  L: TList ;
  i: integer ;
  DataSet: TDataSet ;
  bmk: TBookmark ;
begin
  L := Nil ;
  try
    try
      if BiztSzerelvGrid.SelectedCount = 0 then begin
        ErrMsg('Nincs kv�lasztott elem!') ;
        Exit ;
      end ;
      if MessageDlg('A kiv�lasztott eleme(ke)t t�r�lhetem?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
      L := TList.Create ;
      DataSet := BiztSzerelvGrid.DataSource.DataSet ;
      DataSet.First ;
      for i := 0 to BiztSzerelvGrid.SelectedCount - 1 do begin
        bmk := TBookmark(BiztSzerelvGrid.SelectedRows[i]) ;
        DataSet.GotoBookmark(bmk) ;
        Dm.tBiztSzerelvenyek.Edit ;
        Dm.tBiztSzerelvenyekRendelesAz.Clear ;
        Dm.tBiztSzerelvenyekRendSz.Clear ;
        Dm.tBiztSzerelvenyekTetelSrsz.Clear ;
        Dm.tBiztSzerelvenyek.Post ;
      end ;
    finally
      if L <> Nil then L.Free ;
      Dm.tBiztSzerelvenyek.Resync([rmCenter]) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackItemGridDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  PackId, PackItemId, PackageId: longint ;
  Pieces, db: integer ;
  Weight: double ;
  Grid: TdxDbGrid ;
  DataSet: TDataSet ;
begin
  try
    Grid := TdxDbGrid(Source) ;
    DataSet := Grid.DataSource.DataSet ;
    PackId := DataSet.FindField('PackId').AsInteger ;
    PackItemId := DataSet.FindField('PackItemId').AsInteger ;
    PackageId := Dm.PackagesPackageId.AsInteger ;
    db := DataSet.Findfield('Pieces').AsInteger ;
    if db <> 0 then Pieces := db else Pieces := 1 ;
    Weight := DataSet.Findfield('SumWeight').AsFloat ;
    //Dm.PackDevAssign.CheckBrowseMode ;
    Dm.PackDevAssign.Append ;
    Dm.PackDevAssignPackItemId.AsInteger := PackItemId ;
    Dm.PackDevAssignPackId.AsInteger := PackId ;
    Dm.PackDevAssignPackageId.AsInteger := PackageId ;
    Dm.PackDevAssignPieces.AsInteger := Pieces ;
    Dm.PackDevAssignWeight.AsFloat := Weight ;
    Dm.PackDevAssign.Post ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackItemGridDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  Grid: TdxDbGrid ;
  s: string ;
begin
  Accept := False ;
  if State = dsDragEnter then begin
    if (Dm.PackDevAssign.State in [dsInsert, dsEdit]) then begin
      ErrMsg('El�bb az el�z� t�tel m�dos�t�s�t kell elfogadni!') ;
      Exit ;
    end ;
    if (Dm.PackDevice.State in [dsInsert, dsEdit]) then begin
      ErrMsg('El�bb a csamogol� eszk�z�k m�dos�t�s�t kell elfogadni!') ;
      Exit ;
    end ;
  end ;
  if Source is TdxDbGrid then begin
    Grid := TdxDbGrid(Source) ;
    s := Grid.Name ;
    if s = 'PackItemsGrid' then begin
      Accept := True ;
    end ;
    s := '' ;
  end ;
end;

procedure TMainForm.BitBtn12Click(Sender: TObject);
var
  bmk: TBookmark ;
begin
  bmk := Nil ;
  try
    try
      bmk := OrderDm.spCreateChipData.GetBookmark ;  // .qChipData.GetBookmark ;
      OrderDm.spCreateChipData.Active := False ;     // .qChipData.Active := False ;
      OrderDm.spCreateChipData.DisableControls ;
      OrderDm.spCreateChipData.ParamByName('@Date1').AsDatetime := ChipDate1.Date ;
      OrderDm.spCreateChipData.ParamByName('@Date2').AsDatetime := ChipDate2.Date ;
      OrderDm.spCreateChipData.Active := True ;
    finally
      if (bmk <> Nil) and OrderDm.spCreateChipData.BookmarkValid(bmk) then OrderDm.spCreateChipData.GotoBookmark(bmk) ;
      OrderDm.spCreateChipData.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Oszlopokigaztsa9Click(Sender: TObject);
begin
  SetGridColWidth(ChipGrid) ;
end;

procedure ReadInspectorParams(Inspector: TDxDBInspector; FormStorage: TFormStorage) ;
var
  i: integer ;
  n: TDxInspectorNode ;
begin
  Inspector.BandWidth := FormStorage.ReadInteger(Inspector.Name + '_BandWidth', Inspector.BandWidth) ;
  Inspector.DividerPos := FormStorage.ReadInteger(Inspector.Name + '_DividerPos', Inspector.DividerPos) ;
  for i := 0 to Inspector.Count - 1 do begin
    n := Inspector.Items[i] ;
    if n.HasChildren then begin
      if FormStorage.ReadInteger(Inspector.Name + '_IspectorNode' + IntToStr(i), 0) = 1 then
      n.Expand(False) else n.Collapse(False) ;
    end ;
  end ;
end ;

procedure WriteInspectorParams(Inspector: TDxDBInspector; FormStorage: TFormStorage) ;
var
  i, x: integer ;
  n: TDxInspectorNode ;
begin
  FormStorage.WriteInteger(Inspector.Name + '_BandWidth', Inspector.BandWidth) ;
  FormStorage.WriteInteger(Inspector.Name + '_DividerPos', Inspector.DividerPos) ;
  for i := 0 to Inspector.Count - 1 do begin
    n := Inspector.Items[i] ;
    if n.HasChildren then begin
      if n.Expanded then x := 1 else x := 0 ;
      FormStorage.WriteInteger(Inspector.Name + '_IspectorNode' + IntToStr(i), x) ;
    end ;
  end ;
end ;

procedure TMainForm.PackDevicesExecute(Sender: TObject);
var
  PackDevRec: TPackDevRec ;
begin
  try
    PackDevSelection(PackDevRec) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AddPackOrderExecute(Sender: TObject);
begin
  try
    OrderDm.tRendCsomEszk.CheckBrowseMode ;
    OrderDm.tRendCsomEszk.Append ;
    OrderDm.tRendCsomEszkTetelSrsz.AsInteger := 0 ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AddPackItemExecute(Sender: TObject);
begin
  try
    OrderDm.tRendCsomEszk.CheckBrowseMode ;
    OrderDm.tRendCsomEszk.Append ;
    OrderDm.tRendCsomEszkTetelSrsz.AsInteger := OrderDm.tRendTetelTetelSrsz.AsInteger ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OrderPackGridPackDevTypeNameButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
var
  PackDevRec: TPackDevRec ;
begin
  try
    FillChar(PackDevRec, SizeOf(TPackDevRec), 0) ;
    PackDevRec.DeviceTypeCode := OrderDm.tRendCsomEszkPackDevTypeCode.AsInteger ;
    PackDevRec.DeviceId := OrderDm.tRendCsomEszkPackDevCode.AsInteger ;
    if PackDevSelection(PackDevRec) then begin
      if not (OrderDm.tRendCsomEszk.State in [dsEdit, dsInsert]) then OrderDm.tRendCsomEszk.Edit ;
      OrderDm.tRendCsomEszkPackDevTypeCode.AsInteger := PackDevRec.DeviceTypeCode ;
      OrderDm.tRendCsomEszkPackDevTypeName.AsString := PackDevRec.DeviceTypeName ;
      OrderDm.tRendCsomEszkPackDevCode.AsInteger := PackDevRec.DeviceId ;
      OrderDm.tRendCsomEszkPackDevName.AsString := PackDevRec.DeviceName ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.RendEgyebGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  i, j, k: integer ;
  Kiszallitando, Active: Boolean ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('Kiszallitando').Index ;
  j := TdxDBGrid(Sender).ColumnByFieldName('Active').Index ;
  k := TdxDBGrid(Sender).ColumnByFieldName('TomlovegId').Index ;
  if ANode.Values[j] <> Null then begin
    Active := Boolean(ANode.Values[j]) ;
    if not Active then begin
      AColor := clGray ;
    end
    else begin
      if ANode.Values[i] <> Null then begin
        Kiszallitando := Boolean(ANode.Values[i]) ;
        //if Kiszallitando then AColor := clOlive ;
        if not AColumn.ReadOnly
        then if Kiszallitando then AColor := clYellow ;
      end ;
    end ;
  end ;
  if ANode.Values[k] <> Null then begin
    if ANode.Values[k] = 1 then AFont.Color := clMaroon ;
    if ANode.Values[k] = 2 then AFont.Color := clNavy ;
    //AFont.Style := [fsbold] ;
  end ;
end;

procedure TMainForm.PackNotExistListExecute(Sender: TObject);
begin
  try
    OrderDm.spRequiredPacks.Active := True ;
    if not OrderDm.tRendFej.Active then begin
      ErrMsg('El�bb ki kell v�lasztani a term�ket!') ;
      Exit ;
    end ;
    if RequiredPackListForm = Nil then RequiredPackListForm := TRequiredPackListForm.Create(Application) ;
    RequiredPackListForm.Show ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ShowPackMessage ;
var
  FullMsg: string ;
  PackingCount: integer ;
begin
  if HsIsStarting then Exit ;

  try
    FullMsg := '' ;
    // Csomagol�sra v�r� t�telek
    if Technologus then begin
      if OrderDm.spRequiredPacks.Active then OrderDm.spRequiredPacks.Active := False ;
      OrderDm.spRequiredPacks.Active := True ;
      PackingCount := OrderDm.spRequiredPacks.RecordCount ;
      if PackingCount <> LastPackNum then begin
        if PackingCount > 0 then PackMsg := IntToStr(PackingCount) + ' db rendel�st�tel v�r csomagol�sra!'
        else PackMsg := '' ;
        LastPackNum := PackingCount ;
      end ;
    end ;

    // Verzi� vizsg�lat
    if not CheckVersion(Dm.MainDb, ProgName, Versio.FileVersion, 'ActualVersion', False)
    then NewVersionExist := True else NewVersionExist := False ;
    if NewVersionExist then begin
      if VerMsg = '' then VerMsg := NewVerMsg ;
    end else VerMsg := '' ;

    FullMsg := PackMsg ;
    if (FullMsg <> '') and (VerMsg <> '') then FullMsg := FullMsg + ' | ' ;
    FullMsg := FullMsg + VerMsg ;
    if FullMsg <> '' then begin
      MsgPanel.Active := False ;
      MsgPanel.Lines.Clear ;
      MsgPanel.Lines.Add(FullMsg) ;
      MsgPanel.Active := True ;
      MsgPanel.Refresh ;
      if not MsgPanel.Visible then begin
        MsgPanel.Top := StatusBar1.Top - MsgPanel.Height ;
        MsgPanel.Visible := True ;
      end ;
    end
    else MsgPanel.Visible := False ;
    StatusBar1.Refresh ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  if not Testrun then ShowPackMessage ;
end;

procedure TMainForm.SpecDataSheetInit ;
begin
  try
    if LastOrderNum <> '' then begin
      if Dm.HSOrderHeadList.Active then Dm.HSOrderHeadList.Locate('RendSz', LastOrderNum, [loCaseInsensitive]) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.OrderPackGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Deleted: Boolean ;
  i: integer ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('Deleted').Index;
  if (ANode.Values[i] = Null) then Exit ;
  Deleted := Boolean(ANode.Values[i]) ;
  if Deleted then AColor := clGray ;
end;

procedure TMainForm.InfoChipDataExportExecute(Sender: TObject);
var
  FieldName, ExportName, DefValue, ItemStr, ColName, BandName, DataStr, s: string ;
  i, j: integer ;
  bmk: TBookmark ;
  ds: TDataSet ;
begin
  try
    try
      if ChipGrid.SelectedCount = 0 then begin
        ErrMsg('Nincs kiv�lasztott t�tel!') ;
        Exit ;
      end ;
      OrderDm.mICData.Active := False ;
      OrderDm.tInfoChipConversion.Active := True ;
      OrderDm.mICData.Active := True ;
      if ICDataExportForm = Nil then ICDataExportForm := TICDataExportForm.Create(Self) ;
      for i := 0 to ICDataExportForm.ICDataExportGrid.ColumnCount - 1 do begin
        ColName := ICDataExportForm.ICDataExportGrid.Columns[i].FieldName ;
        if OrderDm.tInfoChipConversion.Locate('HSName', ColName, [loCaseInsensitive]) then begin
          BandName := OrderDm.tInfoChipConversionExportName.AsString ;
          ICDataExportForm.ICDataExportGrid.Bands[i].Caption := BandName ;
        end
        else begin
          ICDataExportForm.ICDataExportGrid.Columns[i].ReadOnly := True ;
          ICDataExportForm.ICDataExportGrid.Columns[i].Color := clSilver ;
        end ;
      end ;

      for i := 0 to ChipGrid.SelectedCount - 1 do begin
        bmk := TBookmark(ChipGrid.SelectedRows[i]) ;
        ds := ChipGrid.DataSource.DataSet ;
        if ds.BookmarkValid(bmk) then begin
          ChipGrid.DataSource.DataSet.GotoBookmark(bmk) ;
          OrderDm.mICData.Append ;
          for j := 0 to ds.FieldCount - 1 do begin
            FieldName := ds.Fields[j].FieldName ;
            DataStr := ds.Fields[j].AsString ;
            if OrderDm.tInfoChipConversion.Locate('HSName', FieldName, [loCaseInsensitive]) then begin
              ExportName := OrderDm.tInfoChipConversionExportName.AsString ;
              DefValue := OrderDm.tInfoChipConversionDefValue.AsString ;
            end
            else DefValue := '' ;
            if OrderDm.mICData.FindField(FieldName) <> Nil then begin
              if DefValue <> '' then OrderDm.mICData.FieldByName(FieldName).AsString := DefValue
              else OrderDm.mICData.FieldByName(FieldName).AsString := DataStr ;
            end ;
            s := ds.Fields[j].AsString ;
            ItemStr := FieldName + '=' + s + #9 ;
          end ;
          OrderDm.mICData.Post ;
        end ;
      end ;

      SetGridColWidth(ICDataExportForm.ICDataExportGrid) ;
      if ICDataExportForm.ShowModal = mrOk then begin
        bmk := OrderDm.spCreateChipData.GetBookmark ;
        OrderDm.spCreateChipData.DisableControls ;
        OrderDm.spCreateChipData.Active := False ;
        OrderDm.spCreateChipData.Active := True ;
        OrderDm.spCreateChipData.GotoBookmark(bmk) ;
      end ;
    finally
      OrderDm.spCreateChipData.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.FormActivate(Sender: TObject);
var
  i: integer ;
  PControl: TPageControl ;
begin
  try
    if TestRun then begin
      Statusbar1.Color := clRed ;
      //Tervezo := True ;
      Technologus := True ;
    end ;
    // Az akt�v f�l be�ll�t�sa l�that�s�g szerint
    for i:= 0 to ControlList.Count-1 do begin
      if TControl(ControlList.Items[i]) is TPageControl then begin
        PControl := TPageControl(ControlList.Items[i]) ;
        if PControl.ActivePageIndex = -1 then begin
          PControl.ActivePage := PControl.FindNextPage(PControl.ActivePage, True, True) ;
        end
        else begin
          if (not PControl.ActivePage.TabVisible) then
          PControl.ActivePage := PControl.FindNextPage(PControl.ActivePage, True, True) ;
        end ;
      end ;
    end ;
    ProgUpdates ;
  except
    On e: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Azsszesoszlopmegjelentse1Click(Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to MeoGrid.ColumnCount - 1 do MeoGrid.Columns[i].Visible := True ;
end;

procedure TMainForm.SaveMfDataExecute(Sender: TObject);
begin
  if (not Dm.qMfCikkszamok.Active) then Exit ;
  try
    try
      MfCkszGrid.LockRefresh := True ;
      Dm.qMfCikkszamok.CheckBrowseMode ;
      if not Dm.qMfCikkszamok.UpdatesPending then begin
        ErrMsg('Az utols� ment�s �ta nem t�rt�nt v�ltoz�s!') ;
        Exit ;
      end ;
      with Dm.qMfCikkszamok do begin
        Dm.MainDb.StartTransaction ;
        try
          ApplyUpdates ;
          Dm.MainDb.Commit ;
        except
          Dm.MainDb.Rollback ;
          raise ;
        end ;
        CommitUpdates ;
        MfCkszChangeNum := 0 ;
      end ;
    finally
      MfCkszGrid.LockRefresh := False ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.UndoMfDataExecute(Sender: TObject);
begin
  if not Dm.qMfCikkszamok.UpdatesPending then begin
    ErrMsg('Az utols� ment�s �ta nem t�rt�nt v�ltoz�s!') ;
    Exit ;
  end ;
  try
    try
      if (not Dm.qMfCikkszamok.Active) or (MfCkszChangeNum = 0) then Exit ;
      if MessageDlg(UndoMsg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
      Dm.qMfCikkszamok.DisableControls ;
      Dm.qMfCikkszamok.CancelUpdates ;
      MfCkszChangeNum := 0 ;
    finally
      Dm.qMfCikkszamok.EnableControls ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MfCkszRefreshExecute(Sender: TObject);
var
  QryMsg: string ;
  Id: integer ;
begin
  try
    try
      MfCkszGrid.LockRefresh := True ;
      if not Dm.qMfCikkszamok.Active then begin
        Dm.qMfCikkszamok.Active := True ;
        Exit ;
      end
      else begin
        Dm.qMfCikkszamok.CheckBrowseMode ;
        id := Dm.qMfCikkszamokItemId.AsInteger ;
        if MfCkszChangeNum <> 0 then begin
          QryMsg := 'Az adatr�cs el nem mentett v�ltoz�sokat tartalmaz!' + #13 + 'Ennek ellen�re folytatja?' ;
          if MessageDlg(QryMsg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
        end ;
        Dm.qMfCikkszamok.Active := False ;
        Dm.qMfCikkszamok.Active := True ;
        Dm.qMfCikkszamok.Locate('ItemId', Id, [loCaseInsensitive]) ;
      end ;
    finally
      MfCkszGrid.LockRefresh := False ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function GetDecimalNum(x: double): integer ;
var
  s: string ;
  p: integer ;
begin
  s := FloatToStr(x) ;
  p := Pos(',', s) ;
  if p = 0 then Result := 0
  else begin
    Result := Length(s) - p ;
  end ;
end ;

function TMainForm.GetErtTerulet(Vevo: string): string ;
begin
  Result := '' ;
  try
    OrderDm.spGetErtTerulet.ParamByName('@Vevo').AsString := Vevo ;
    OrderDm.spGetErtTerulet.Active := True ;
    Result := OrderDm.spGetErtTeruletErtTerulet.AsString ;
    OrderDm.spGetErtTerulet.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SpeedButton19Click(Sender: TObject);
begin
  MessagesForm.ShowModal ;
end;

procedure TMainForm.AlkatreszExportExecute(Sender: TObject);
var
  Rendsz, ErtTerulet, Vevo, Megnevezes, TipusNev, Megjegyzes, DbStr, s, s1, s2, s3, s4, Tures,
  MatNormCode, MinMaxStr, Rajzszam, MarkazasTipusa, MarkazasMegnevezes, Festes, BilincsMegjegyzes: string ;
  j, p, RendelesAz, TetelSrsz, Decimal, MarkingId: integer ;
  HosszMeter, HosszLab, Pressure, Min, Max: double ;
  Comment: AnsiString ;
  bmk: TBookmark ;
  CompListEdit: TRichEdit ;
  DbFuggo: Boolean ;
begin
  bmk := Nil ;
  try
    try
      if CompListExportForm = Nil then CompListExportForm := TCompListExportForm.Create(Application) ;
      CompListEdit := CompListExportForm.CompListEdit ;
      CompListEdit.Clear ;

      // Fejl�c l�trehoz�sa
      Rendsz := RendFejQryGridRendSz.Field.AsString ;
      ErtTerulet := UpperCase(Trim(RendFejQryGridErtTerulet.Field.AsString)) ;
      Vevo := RendFejQryGridVevo.Field.AsString ;
      if Trim(Vevo) = '' then begin
        if ErtTerulet = 'PHX-BC' then Vevo := 'PHOENIX BEATTIE Co.' ;
        if ErtTerulet = 'PHX-B' then Vevo := 'PHOENIX BEATTIE LTD.' ;
        if ErtTerulet = 'C-BC' then Vevo := 'ContiTech BEATTIE Co.' ;
        if ErtTerulet = 'C-B' then Vevo := 'ContiTech BEATTIE LTD.' ;
        if ErtTerulet = 'C-B' then Vevo := 'Dunlop Oil & Marine LTD.' ;
        if ErtTerulet = 'COM' then Vevo := 'ContiTech Oil & Marine Corp.' ;
      end ;

      CompListEdit.Font.Color := clBlack ;
      CompListEdit.Font.Style := [] ;

      CompListEdit.Paragraph.TabCount := 3 ;
      CompListEdit.Paragraph.Tab[0] := 120 ;
      CompListEdit.Paragraph.Tab[1] := 180 ;
      CompListEdit.Paragraph.Tab[2] := 240 ;
      CompListEdit.SelAttributes.Style := [fsBold] ;
      CompListEdit.SelAttributes.Color := clBlack ;
      CompListEdit.Lines.Add(RendSz) ;
      bmk := Dm.RendelesTetel.GetBookmark ;
      Dm.RendelesTetel.First ;
      RendelesAz := Dm.RendelesTetelRendelesAz.AsInteger ;

      while not Dm.RendelesTetel.Eof do begin
        TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
        if not Dm.RendelesTetelTorolt.AsBoolean then begin
          CompListEdit.Lines.Add('') ;
          CompListEdit.SelAttributes.Style := [fsBold] ;
          CompListEdit.SelAttributes.Color := clBlack ;
          CompListEdit.Lines.Add('Rendel�s ' + IntTostr(TetelSrsz) + '. t�tele') ;

          Megnevezes := Trim(Dm.RendelesTetelSpecifikacio.AsString) ;
          Pressure := Dm.RendelesTetelpsi.AsFloat ;
          TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
          CompListEdit.SelAttributes.Style := [] ;
          CompListEdit.SelAttributes.Color := clBlack ;
          s := 'Megnevez�s:' + #9 + Megnevezes ;
          if Pressure <> 0 then begin
            s1 := Trim(Format('%6.0n', [Pressure])) ;
            s := s + ' W.P.: ' + s1 + ' psi' ;
          end ;
          CompListEdit.Lines.Add(s) ;

          s := Trim(Dm.RendelesTetelKonstrukcio.AsString) ;
          CompListEdit.SelAttributes.Style := [] ;
          CompListEdit.SelAttributes.Color := clBlack ;
          if s <> '' then CompListEdit.Lines.Add('Konstrukci�s lap sz�ma:' + #9 + s) ;

          if Trim(s)<>'' then begin
            MatNormCode := GetMatNormCode(s) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Anyagnorma sz�ma:' + #9 + MatNormCode) ;
          end ;

          s := Dm.RendelesTetelKonstrukcio2.AsString ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('2.Konstrukci�s lap sz�ma:' + #9 + s) ;
            MatNormCode := GetMatNormCode(s) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('2.Anyagnorma sz�ma:' + #9 + MatNormCode) ;
          end ;

          s := Trim(Dm.RendelesTetelOsszeallRsz.AsString) ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('�ssze�llit�si rajz:' + #9 + s) ;
          end ;
          s := Trim(Dm.RendelesTetelCsatl1Rsz.AsString) ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Csatlakoz� rsz."A":' + #9 + s) ;
            s := Dm.RendelesTetelCsatl1.AsString ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('V�gz�d�s "A":' + #9 + s) ;
          end ;
          s := Trim(Dm.RendelesTetelCsatl2Rsz.AsString) ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Csatlakoz� rsz."B":' + #9 + s) ;
            s := Dm.RendelesTetelCsatl2.AsString ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('V�gz�d�s "B":' + #9 + s) ;
          end ;

          // Bels�h�vely
          s := Trim(Dm.RendelesTetelBelsoHuvely.AsString) ;
          s2 := Trim(Dm.RendelesTetelBhAnyag.AsString) ;
          if s2 <> '' then s2 := 'Anyaga: ' + s2 ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Bels� h�vely rsz.:' + #9 + s + #9 + s2) ;
          end ;

          // H�vely
          s := Dm.RendelesTetelHuvely.AsString ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('H�vely rsz.:' + #9 + s) ;
          end ;

          // Spir�lk�p
          s := Dm.RendelesTetelSpiralkup.AsString ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Spir�lk�p rsz.:' + #9 + s) ;
          end ;

          // Emel�bilincs
          s := Trim(Dm.RendelesTetelEmeloBilincs.AsString) ;
          if s <> '' then begin
            s2 := Trim(Dm.RendelesTetelEbMeret.AsString) ;
            if s2 <> '' then s2 := #9 + 'ID=' + s2 + ' mm' ;
            s := s  + s2 ;
            if s <> '' then begin
              CompListEdit.SelAttributes.Style := [] ;
              CompListEdit.SelAttributes.Color := clBlack ;
              CompListEdit.Lines.Add('Emel� bilincs:' + #9 + s) ;
            end ;
          end ;

          Dm.spGetBilincsList.Active := False ;
          Dm.spGetBilincsList.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spGetBilincsList.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spGetBilincsList.ParamByName('@TipusKod').AsInteger := 1 ;
          Dm.spGetBilincsList.Active := True ;
          if Dm.spGetBilincsList.RecordCount > 0 then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('E.b.jellemz�k:') ;
          end ;
          while not Dm.spGetBilincsList.Eof do begin
            s := Trim(Dm.spGetBilincsListAzonosito.AsString) ;
            Festes := Trim(Dm.spGetBilincsListFestes.AsString) ;
            BilincsMegjegyzes := Trim(Dm.spGetBilincsListMegjegyzes.AsString) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            s4 := '' ;
            if s <> '' then s4 := #9 + s ;
            if Festes <> '' then s4 := s4  + #9 + Festes ;
            if BilincsMegjegyzes <> '' then s4 := s4  + #9  + BilincsMegjegyzes ;
            //CompListEdit.Lines.Add(#9 + s + #9 + Festes + #9 + BilincsMegjegyzes) ;
            if s4 <> '' then CompListEdit.Lines.Add(s4) ;
            Dm.spGetBilincsList.Next ;
          end ;

          // Biztons�gi bilincs
          s := Trim(Dm.RendelesTetelBiztBilincs.AsString) ;
          if s <> '' then begin
            s2 := Trim(Dm.RendelesTetelBbMeret.AsString) ;
            if s2 <> '' then s2 := #9 + 'ID=' +  s2 + ' mm' ;
            s := s + s2 ;
            if s <> '' then begin
              CompListEdit.SelAttributes.Style := [] ;
              CompListEdit.SelAttributes.Color := clBlack ;
              CompListEdit.Lines.Add('Biztons�gi bilincs:' + #9 + s) ;
            end ;
          end ;

          Dm.spGetBilincsList.Active := False ;
          Dm.spGetBilincsList.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spGetBilincsList.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spGetBilincsList.ParamByName('@TipusKod').AsInteger := 2 ;
          Dm.spGetBilincsList.Active := True ;
          if Dm.spGetBilincsList.RecordCount > 0 then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('B.b.jellemz�k:') ;
          end ;
          while not Dm.spGetBilincsList.Eof do begin
            s := Trim(Dm.spGetBilincsListAzonosito.AsString) ;
            Festes := Trim(Dm.spGetBilincsListFestes.AsString) ;
            BilincsMegjegyzes := Trim(Dm.spGetBilincsListMegjegyzes.AsString) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            s4 := '' ;
            if s <> '' then s4 := #9 + s ;
            if Festes <> '' then s4 := s4 + #9 + Festes ;
            if BilincsMegjegyzes <> '' then s4 := s4 + #9 + BilincsMegjegyzes ;
            //CompListEdit.Lines.Add(#9 + s + #9 + Festes + #9 + BilincsMegjegyzes) ;
            if s4 <> '' then CompListEdit.Lines.Add(s4) ;
            Dm.spGetBilincsList.Next ;
          end ;

          // V�d�h�vely
          s := Dm.RendelesTetelVedoHuvely.AsString ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('V�d� h�vely:' + #9 + s) ;
          end ;

          // Osztotth�vely
          s := Dm.RendelesTetelOsztottHuvely.AsString ;
          if s <> '' then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Osztott h�vely:' + #9 + s) ;
          end ;

          Dm.spGetBilincsList.Active := False ;
          Dm.spGetBilincsList.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
          Dm.spGetBilincsList.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
          Dm.spGetBilincsList.ParamByName('@TipusKod').AsInteger := 3 ;
          Dm.spGetBilincsList.Active := True ;
          if Dm.spGetBilincsList.RecordCount > 0 then begin
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('O.h.jellemz�k:') ;
          end ;
          while not Dm.spGetBilincsList.Eof do begin
            s := Dm.spGetBilincsListAzonosito.AsString ;
            Festes := Dm.spGetBilincsListFestes.AsString ;
            BilincsMegjegyzes := Dm.spGetBilincsListMegjegyzes.AsString ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add(#9 + s + #9 + Festes + #9 + BilincsMegjegyzes) ;
            Dm.spGetBilincsList.Next ;
          end ;

          //Rendel�st�tel egy�b alkatr�szei
          Dm.RendEgyeb.First ;
          while not Dm.RendEgyeb.Eof do begin
            if Dm.RendEgyebActive.AsBoolean then begin
              TipusNev := Trim(Dm.RendEgyebMegnevezes.AsString) ;
              Megjegyzes := Trim(Dm.RendEgyebMegjegyzes.AsString) ;
              DbFuggo := Dm.RendEgyebDbFuggo.AsBoolean ;
              s := Trim(Dm.RendEgyebRajzszam.AsString) ;
              if Dm.RendEgyebDarabszam.AsInteger <> 0 then begin
                DbStr := IntToStr(Dm.RendEgyebDarabszam.AsInteger) ;
                if DbFuggo then DbStr := DbStr + 'db/t�ml�' else DbStr := DbStr + 'db/t�tel' ;
              end
              else DbStr := #9 ;
              s2 := '' ;
              if Dm.RendEgyebKiszallitando.AsBoolean then begin
                s2 := #9 + 'Kisz�ll�tand�!' ;
              end ;
              s3 := TipusNev ;
              if s3 <> '' then s3 := s3 + #9 ;
              //if s = '' then s := #9 ;
              if s <> '' then s := s + #9 ;
              s3 := s3 + s + DbStr ;
              CompListEdit.SelAttributes.Style := [] ;
              CompListEdit.SelAttributes.Color := clBlack ;
              CompListEdit.Lines.Add(s3 + #9 + Megjegyzes + #9 + s2) ;
            end ;
            Dm.RendEgyeb.Next ;
          end ;

          // Egy�b m�szaki jellemz�k (megjegyz�s)
          j := 0 ;
          Comment := Trim(Dm.RendelesTetelEgyebek.AsString) ;
          while Length(Comment) > 0 do begin
            p := Pos(#13#10, Comment) ;
            if p > 0 then begin
              s := Copy(Comment, 1, p-1) ;
              Delete(Comment, 1, p + 1) ;
            end
            else begin
              s := Comment ;
              Comment := '' ;
            end ;
            if j = 0 then begin
              CompListEdit.SelAttributes.Style := [fsBold] ;
              CompListEdit.SelAttributes.Color := clBlack ;
              CompListEdit.Lines.Add('Egy�b m�sz.megj.:' + #9 + s) ;
            end
            else begin
              CompListEdit.SelAttributes.Style := [fsBold] ;
              CompListEdit.SelAttributes.Color := clBlack ;
              CompListEdit.Lines.Add('                              ' + #9 + s) ;
            end ;
            inc(j) ;
          end ;

          // T�ml� jellemz�k (l�ng�ll�s�g stb.)
          CompListEdit.SelAttributes.Style := [] ;
          CompListEdit.SelAttributes.Color := clBlack ;
          CompListEdit.Lines.Add('') ;
          s := '' ;
          if Dm.RendelesTetelLang.AsBoolean then s := s + 'l�ng�ll�, ' ;
          if Dm.RendelesTetelBg.AsBoolean then s := s + 'bels� g�gecs�, ' ;
          if Dm.RendelesTetelKg.AsBoolean then begin
            s := s + 'k�ls� g�gecs�' ;
            if Dm.RendelesTetelKgInter.AsBoolean then s := s + '(interlock)' ;
            s := s + ', ' ;
          end ;
          if Dm.RendelesTetelPa.AsBoolean then s := s + 'poliamid, ' ;
          if Dm.RendelesTetelKv.AsBoolean then begin
            s := s + 'k�ls� v�delem' ;
            if Dm.RendelesTetelKvMua.AsBoolean then begin
              if Dm.RendelesTetelKvFedHelix.AsBoolean or Dm.RendelesTetelKvNFedHelix.AsBoolean then s := s + '(m�anyag' else s := s + '(m�anyag)' ;
            end ;
            if Dm.RendelesTetelKvFedHelix.AsBoolean then begin
              if Dm.RendelesTetelKvMua.AsBoolean then s := s + ' + fedett helix)' else s := s + '(fedett helix)' ;
            end ;
            if Dm.RendelesTetelKvNFedHelix.AsBoolean then begin
               if Dm.RendelesTetelKvMua.AsBoolean then s := s + ' + nem fedett helix)' else s := s + '(nem fedett helix)' ;
            end ;
            s := s + ', ' ;
          end ;
          if Dm.RendelesTetelH2S.AsInteger = 1 then begin
            s := s + 'H2S Service NACE MR0175, ' ;
          end ;
          delete(s, Length(s) - 1, 2) ;
          if s <> '' then begin
            s := 'Jellemz�k: ' + s ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add(s) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('') ;
          end ;

          HosszMeter := Dm.RendelesTetelHossz.AsFloat ;
          //Dm.rendelestetelhossz
          if HosszMeter <> 0 then begin
            HosszLab := round(UnitConv(4, 7, HosszMeter) * 10) * 0.1 ;
            s := Dm.RendelesTetelDarabSzam.AsString + ' db' ;
            s := s + ' ' + FloatToStr(HosszLab) + ' l�b ' ;
            s := s + ' ' + Dm.RendelesTetelHossz.AsString ;
            s := s + ' ' + LowerCase(Trim(Dm.RendelesTetelHosszMe.AsString)) ;
            Decimal := GetDecimalNum(HosszMeter) ;
            if Decimal < 2 then Decimal := 2 ;
            if HosszMeter > 6 then begin
              Tures := ' �1%' ;
              Min := HosszMeter - (HosszMeter * 0.01) ;
              Max := HosszMeter + (HosszMeter * 0.01) ;
            end
            else begin
              Tures := ' �64mm' ;
              Min := HosszMeter - 0.064 ;
              Max := HosszMeter + 0.064 ;
            end ;
            MinMaxStr := '( ' + Format('%*.*f', [0, Decimal, Min]) + ' - ' + Format('%*.*f', [0, Decimal, Max]) + ' m )' ;
            s := s + Tures ;

            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('Mennyis�g, hossz�s�g:' + #9 + s + #9#9 + MinMaxStr + #13) ;
            CompListEdit.Lines.Add('') ;
          end ;

          // M�rk�z�s (SAP)
          if Trim(Dm.RendelesTetelMarking.AsString) <> '' then begin
            s := Trim(Dm.RendelesTetelMarking.AsString) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('M�rk�z�s(SAP):' + #9 + s) ;
          end ;

          // M�rk�z�si rajz
          MarkingId := Dm.RendelesTetelMarkingId.AsInteger ;
          if MarkingId <> 0 then begin
            OrderDm.spGetJoinedMarkingItem.ParamByName('@MarkId').AsInteger := MarkingId ;
            OrderDm.spGetJoinedMarkingItem.ExecProc ;
            Rajzszam := OrderDm.spGetJoinedMarkingItem.ParamByName('@Rajzszam').AsString ;
            MarkazasTipusa := OrderDm.spGetJoinedMarkingItem.ParamByName('@MarkazasTipusa').AsString ;
            MarkazasMegnevezes := OrderDm.spGetJoinedMarkingItem.ParamByName('@Megnevezes').AsString ;
            s := Rajzszam + ' (' + MarkazasTipusa + ',' + MarkazasMegnevezes + ')' ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('M�rk�z�s:' + #9 + s) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('') ;
          end ;

          (*
          if not OrderDm.vMarking.Active then OrderDm.vMarking.Active := True ;
          if MarkingId <> 0 then begin
            ToolsDm.spGetMarkingItem.ParamByName('@MarkId').AsInteger := MarkingId ;
            ToolsDm.spGetMarkingItem.ExecProc ;
            Rajzszam := ToolsDm.spGetMarkingItem.ParamByName('@Rajzszam').AsString ;
            MarkazasTipusa := ToolsDm.spGetMarkingItem.ParamByName('@MarkazasTipusa').AsString ;
            MarkazasMegnevezes := ToolsDm.spGetMarkingItem.ParamByName('@Megnevezes').AsString ;
            s := Rajzszam + ' (' + MarkazasTipusa + ',' + MarkazasMegnevezes + ')' ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('M�rk�z�s:' + #9 + s) ;
            CompListEdit.SelAttributes.Style := [] ;
            CompListEdit.SelAttributes.Color := clBlack ;
            CompListEdit.Lines.Add('') ;
          end ;
          *)
        end
        else begin
          CompListEdit.Lines.Add('') ;
          CompListEdit.SelAttributes.Style := [fsBold] ;
          CompListEdit.SelAttributes.Color := clRed ;
          CompListEdit.Lines.Add('Rendel�s ' + IntTostr(TetelSrsz) + '. t�tele t�r�lve!') ;
        end ;

        Dm.RendelesTetel.Next ;
      end ;

      if MainForm.Tervezo then CompListExportForm.BitBtn1.Enabled := True else CompListExportForm.BitBtn1.Enabled := False ;
      if CompListExportForm.ShowModal = mrOk then begin
        EmailSentExecute(Sender) ;
      end
      else begin

      end ;
    finally
      if Dm.RendelesTetel.BookmarkValid(bmk) then Dm.RendelesTetel.GotoBookmark(bmk) ;
    end
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Rajzbehvsa1Click(Sender: TObject);
begin
  ErrMsg(MainForm.ActiveControl.Name) ;
end;

procedure TMainForm.SetNewVisibles ;
begin
  MfCkszGridFelkesz5.Visible := True ;
  MfCkszGridVulk5.Visible := True ;
  MfCkszGridTomloveg5.Visible := True ;
  MfCkszGridFelkesz9.Visible := True ;
  MfCkszGridVulk9.Visible := True ;
  MfCkszGridTomloveg9.Visible := True ;
  RendEgyebGridSorszam.Visible := True ;
  RendEgyebGridTomloVegId.Visible := True ;
  MfCkszGridItemId.Visible := True ;
  MsoDrawGrid.ShowNewItemRow := False ;
  dxDBGrid3PackDevTypeName.ShowButtonStyle := sbAlways ;
  //MfCkszGrid.ShowGroupPanel := True ;
end ;

procedure TMainForm.ProgUpdates ;
var
  dir, fn, verStr: string ;
  fd, FirstDate: TDatetime ;
  fileVer: TFileVersionInfo ;
  Exists: Boolean ;
begin
  try
    // PrgUpdater.ini fel�l�r�sa
    (*
    dir := ExtractFilePath(Application.ExeName) ;
    fn := dir + 'PrgUpdater.ini' ;
    if FileExists(fn) then fd := FileDateToDateTime(FileAge(fn)) else fd := StrToDate('2009.01.01') ;
    FirstDate := StrToDate('2009.10.09') ;
    if fd < FirstDate then begin
      AssignFile(f, fn) ;
      Rewrite(f) ;
      WriteLn(f, '[Def]') ;
      WriteLn(f, 'DbName=HoseMaster') ;
      WriteLn(f, 'RunnableExe=HoseSlave.exe') ;
      WriteLn(f, 'ProgGroup=HoseSlave') ;
      CloseFile(f) ;
    end ;
    *)

    // HSLoader friss�t�se
    (*
    Exists := FileExists(dir + 'HSLoader.exe') ;
    if Exists then begin
      fileVer := FileVersionInfo(dir + 'HSLoader.exe') ;
      verStr := fileVer.FileVersion ;
    end
    else verStr := '0.0.0.0' ;
    if not CompVersion('2.0.0.2', verStr) then begin
      CopyFile('\\sdfs004\sdo-projekt\Install\InternalProgs\HoseSlave\HSLoader.exe', dir + 'HSLoader.exe') ;
      CopyFile('\\sdfs004\sdo-projekt\Install\InternalProgs\HoseSlave\Loader.ini', dir + 'Loader.ini') ;
    end ;
    *)
  except
    On e: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.GetCouplingMaxOD(KonstrLsz, CsatlRsz: string): double ;
var
  Increase, CsatlTestOD, CsatlTestMaxOD, CsatlVegMaxOD: double ;
  CoupMsg: string ;
begin
  Result := 0 ;
  CoupMsg := '' ;
  try
    try
      // �tm�r� n�vekm�ny lek�rdez�se
      Dm.spGetDiameterIncrease.ParamByName('@Konstr').AsString := KonstrLsz ;
      Dm.spGetDiameterIncrease.ExecProc ;
      Increase := Dm.spGetDiameterIncrease.ParamByName('@Increase').AsFloat ;
      if Increase = 0 then CoupMsg := CoupMsg + 'Az �tm�r� n�vekm�ny nem meghat�rozhat�!' + #13 ;

      // Csatlakoz� test feletti �tm�r�
      Dm.spGetCouplingBodyOD.ParamByName('@CsatlRsz').AsString := CsatlRsz ;
      Dm.spGetCouplingBodyOD.ExecProc ;
      CsatlTestOD := Dm.spGetCouplingBodyOD.ParamByName('@CouplingBodyOD').AsFloat ;
      if CsatlTestOD = 0 then CoupMsg := CoupMsg + 'A csatlakoz�test �tm�r�je hi�nyzik!' + #13 ;
      CsatlTestMaxOD := CsatlTestOD + Increase ;

      // V�gz�d�s max �tm�r�
      Dm.spGetCouplingMaxOD.ParamByName('@CsatlRsz').AsString := CsatlRsz ;
      Dm.spGetCouplingMaxOD.ExecProc ;
      CsatlVegMaxOD := Dm.spGetCouplingMaxOD.ParamByName('@MaxOD').AsFloat ;
      if CsatlVegMaxOD = 0 then CoupMsg := CoupMsg + 'A v�gz�d�s legnagyobb �tm�r�je hi�nyzik!' + #13 ;

      if CoupMsg <> '' then ErrMsg(CoupMsg) ;

      if CsatlTestMaxOD > CsatlVegMaxOD then Result := CsatlTestMaxOD else Result := CsatlVegMaxOD ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.AdatlapInspectorEbExtButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  r: TDxInspectorDBButtonRow ;
  TomloDb, Tipus, RendelesAz, TetelSrsz: integer ;
begin
  Tipus := 0 ;
  try
    try
      if BilincsForm = Nil then BilincsForm := TBilincsForm.Create(Application) ;
      r := TDxInspectorDBButtonRow(Sender) ;
      TomloDb := AdatlapInspector.DataSource.DataSet.FieldByName('Darabszam').AsInteger ;
      RendelesAz := AdatlapInspector.DataSource.DataSet.FieldByName('RendelesAz').AsInteger ;
      TetelSrsz := AdatlapInspector.DataSource.DataSet.FieldByName('TetelSrsz').AsInteger ;
      if r.Name = 'AdatlapInspectorEbExt' then begin
        Tipus := 1 ;
        BilincsForm.Caption := 'Emel� bilincs jellemz�k' ;
      end ;
      if r.Name = 'AdatlapInspectorBbExt' then begin
        Tipus := 2 ;
        BilincsForm.Caption := 'Biztons�gi bilincs jellemz�k' ;
      end ;
      if r.Name = 'AdatlapInspectorOhExt' then begin
        Tipus := 3 ;
        BilincsForm.Caption := 'Osztott h�vely jellemz�k' ;
      end ;
      BilincsForm.RendelesAz := RendelesAz ;
      BilincsForm.TetelSrsz := TetelSrsz ;
      BilincsForm.TipusKod := Tipus ;
      BilincsForm.TomloDb := TomloDb ;
      Dm.qBilincs.Active := False ;
      Dm.qBilincs.ParamByName('RendelesAz').AsInteger := RendelesAz ;
      Dm.qBilincs.ParamByName('TetelSrsz').AsInteger := TetelSrsz ;
      Dm.qBilincs.ParamByName('Tipus').AsInteger := Tipus ;
      Dm.qBilincs.Active := True ;
      BilincsForm.ShowModal ;
      Dm.RefreshBilincsStatusz ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MarkingShowBtnClick(Sender: TObject);
var
  ReportName, ServerPath, ReportPath: string ;
begin
  ReportName := 'M�rk�z�si utas�t�sok list�z�sa' ;
  //ReportName := 'Az eddig kiosztott biztons�gi szerelv�nyek list�ja' ;
  Dm.spGetRsReportParams.ParamByName('@ReportName').AsString := ReportName ;
  Dm.spGetRsReportParams.ExecProc ;
  ServerPath := Dm.spGetRsReportParams.ParamByName('@ServerPath').AsString ;
  ReportPath := Dm.spGetRsReportParams.ParamByName('@ReportPath').AsString ;
  if ServerPath <> '' then begin
    ShowRsReport(ServerPath, ReportPath + '/' + ReportName, '') ;
  end ;
end;

procedure TMainForm.AdatlapInspectorOsszeallRszButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  ErrMsg(HmOsszallErrMsg) ;
end;

function TMainForm.OpenDraw(FullPath: string): Boolean ;
var
  RetValue: integer ;
  zPathName: array[0..250] of Char ;
begin
  Result := False ;
  if Trim(FullPath) = '' then Exit ;
  try
    RetValue := shellexecute(handle,'open',StrPCopy(zPathName, FullPath),'',nil,SW_MAXIMIZE) ;
    if (RetValue > 32) then begin
      Result := True ;
      Exit ;
    end
    else begin
      case RetValue of
        ERROR_PATH_NOT_FOUND : ErrMsg('Nem tal�lhat� az �tvonal!') ;
        ERROR_FILE_NOT_FOUND : ErrMsg('Nincs ilyen nev� f�jl!' + #13 + FullPath) ;
      end ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.FindDraw(DwgName: string): string ;
var
  fn, s: string ;
begin
  Result := '' ;
  try
    try
      s := UpperCase(Trim(DwgName)) ;
      if (s = '') or  (s = 'NO') then Exit ;
      fn := ReplaceStr(DwgName, '/', '') ;
      if ExtractFileExt(s) = '' then fn := fn + '.dwg' ;
      ToolsDm.spFindDraw.ParamByName('@FullPath').Clear ;
      ToolsDm.spFindDraw.ParamByName('@FileName').AsString := fn ;
      ToolsDm.spFindDraw.ExecProc ;
      Result := ToolsDm.spFindDraw.ParamByName('@FullPath').AsString ;
    finally
      //ToolsDm.qDwgSearch.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.MsoDrawSheetShow(Sender: TObject);
begin
  try
    if not ToolsDm.qMsoRajzLista.Active then begin
      ToolsDm.qMsoRajzLista.Active := True ;
      MsoDrawGrid.GotoFirst ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Oszlopokigaztsa6Click(Sender: TObject);
begin
  SetGridColWidth(MsoDrawGrid) ;
end;

procedure TMainForm.MsoDrawGridFilenevStartClick(Sender: TObject);
var
  fn, dn, ext: string ;
  zPathName, zParam: array[0..250] of Char ;
begin
  fn := Trim(MsoDrawGridFilenev.Field.AsString) ;
  dn := Trim(MsoDrawGridUtvonal.Field.AsString) ;
  ext := LowerCase(ExtractFileExt(MsoDrawGridFilenev.Field.AsString)) ;
  if LowerCase(Copy(dn, 1, 4)) = 'http' then begin
    fn := '' ;
    shellexecute(handle,'open',StrPCopy(zPathName, dn),'',nil,SW_MAXIMIZE) ;
    Exit ;
  end ;
  if (dn = '') and (ext = '.dwg') then begin
    if not OpenDraw(FindDraw(fn)) then ErrMsg('Nem tal�lhat� a rajz!') ;
  end
  else begin
    if dn = '' then ErrMsg('Nincs megadott �tvonal!')
    else begin
      if (ext = '.dft') //or (ext = '.par') or (ext = '.asm')
      then begin
        shellexecute(Application.Handle,'open', StrPCopy(zPathName, SeViewerPrg),StrPCopy(zParam, '"'+dn+fn+'"'),nil,SW_MAXIMIZE) ;
      end
      else OpenDraw(dn + fn) ;
    end ;
  end ;
end;

procedure TMainForm.SpeedButton20Click(Sender: TObject);
begin
  ToolsDm.MsoRefresh ;
end;

procedure TMainForm.CouplingsGridCsatlRszEditButtonClick(Sender: TObject);
var
  ButtonCol: TdxDBGridButtonColumn ;
  Rajzszam, fn: string ;
begin
  if Sender is TdxDBGridButtonColumn then begin
    ButtonCol := TdxDBGridButtonColumn(Sender) ;
    Rajzszam := Trim(ButtonCol.Field.AsString) ;
    fn := ButtonCol.FieldName ;
    try
      try
        if fn = 'Konfekcio' then begin
          if not Dm.KonstrJellQry.Active then Dm.KonstrJellQry.Active := True ;
          if Rajzszam <> '' then Dm.KonstrJellQry.Locate('bodyDNb', Rajzszam, [loCaseInsensitive]) ;
          if KonstrJellForm.ShowModal = mrOk then begin
            if not (CouplingsGrid.DataSource.DataSet.State in [dsEdit, dsInsert])
            then CouplingsGrid.DataSource.DataSet.Edit ;
            ButtonCol.Field.AsString := Dm.KonstrJellQrybodyDNb.AsString ;
          end ;
        end ;

        if fn = 'OsszRsz' then ErrMsg(HmOsszallErrMsg) ;

        if fn = 'TechLap' then ErrMsg(HmTechLapErrMsg) ;

        if fn = 'CsatlRsz' then begin
          if not Dm.CouplingQry.Active then Dm.CouplingQry.Active := True ;
          if Rajzszam <> '' then Dm.CouplingQry.Locate('couplingDNb', Rajzszam, [loCaseInsensitive]) ;
          if CouplingQryForm.ShowModal = mrOk then begin
            if not (CouplingsGrid.DataSource.DataSet.State in [dsEdit, dsInsert]) then CouplingsGrid.DataSource.DataSet.Edit ;
            ButtonCol.Field.AsString := Trim(Dm.CouplingQrycouplingDNb.AsString) ;
            CouplingsGrid.DataSource.DataSet.FieldByName('Vegzodes').AsString := Trim(Dm.CouplingQryendFittingName.AsString) ;
          end ;
        end ;
      finally

      end
    except
      On E: exception do ErrMsg(E.Message) ;
    end ;
  end ;
end;

procedure TMainForm.MsoDrawGridUtvonalButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
var
  FullPath, Path, FileName, Drive: string ;
begin
  if PathSelectionForm = Nil then begin
    PathSelectionForm := TPathSelectionForm.Create(Application) ;
    PathSelectionForm.FilenameEdit1.InitialDir := DrawStartPath ;
  end ;
  if PathSelectionForm.ShowModal = mrOk then begin
    if PathSelectionForm.FilenameEdit1.Text = '' then Exit ;
    if not (MsoDrawGrid.DataSource.DataSet.State in [dsInsert, dsEdit]) then MsoDrawGrid.DataSource.DataSet.Edit ;
    if LowerCase(Copy(PathSelectionForm.FilenameEdit1.Text, 1, 4)) = 'http' then begin
      Path := PathSelectionForm.FilenameEdit1.Text ;
      MsoDrawGridUtvonal.Field.AsString := Path ;
      //MsoDrawGridFileNev.Field.AsString := FileName ;
    end
    else begin
      FullPath := ReplaceStr(PathSelectionForm.FilenameEdit1.Text, '"', '') ;
      FullPath := ExpandUNCFileName(FullPath) ;
      Path := ExtractFilePath(FullPath) ;
      FileName := ExtractFileName(FullPath) ;
      Drive := ExtractFileDrive(FullPath) ;
      MsoDrawGridUtvonal.Field.AsString := Path ;
      MsoDrawGridFileNev.Field.AsString := FileName ;
      DrawStartPath := Path ;
    end ;
  end ;
end;

procedure TMainForm.MsoDrawGridClick(Sender: TObject);
begin
  MsoDrawGrid.Hint := 'Csak akkor t�ltsd ki, ha nem "dwg" a hivatkozott �llom�ny!' ;
  if MsoDrawGrid.FocusedField.FieldName = 'Utvonal' then begin
    MsoDrawGrid.ShowHint := True ;
  end
  else begin
    MsoDrawGrid.ShowHint := False ;
  end ;
end;

procedure TMainForm.tvonaltrlse1Click(Sender: TObject);
begin
  try
    if not (ToolsDm.qMsoRajzLista.State = dsEdit) then ToolsDm.qMsoRajzLista.Edit ;
    ToolsDm.qMsoRajzListaUtvonal.Clear ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DBNavigator7BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbInsert then begin
    KonstrLszEdit.SetFocus ;
  end ;
end;

procedure TMainForm.Panel61Resize(Sender: TObject);
begin
  // K�p oldalar�ny: 667/705
  VegzodesImage.Width := Round(VegzodesImage.Height * (18 / 14)) ;
end;

procedure TMainForm.SetCouplingAccessory(CsatlRsz: string; TomlovegId: integer) ;
begin
  try
    try
      Dm.RendEgyeb.CheckBrowseMode ;
      Dm.RendEgyeb.DisableControls ;
      Dm.qCsatlTartList.ParamByName('CsatlRsz').AsString := CsatlRsz ;
      Dm.qCsatlTartList.Active := True ;
      if Dm.qCsatlTartList.RecordCount <> 0 then begin
        if Dm.qCsatlTartListEllenorizte.IsNull then begin
          ErrMsg('A technol�giai lapok nincsenek ellen�rizve!' + #13 + CsatlRsz) ;
          //Exit ;
        end ;
      end ;

      while Dm.RendEgyeb.Locate('TomlovegId', TomlovegId, [loCaseInsensitive]) do begin
        Dm.RendEgyeb.Delete ;
      end ;

      Dm.qCsatlTartList.First ;
      while not Dm.qCsatlTartList.Eof do begin
        Dm.RendEgyeb.Append ;
        Dm.RendEgyebTetelSrsz.AsInteger := Dm.RendelesTetelTetelSrsz.AsInteger ;
        Dm.RendEgyebMegnevezes.AsString := Dm.qCsatlTartListMegnevezes.AsString ;
        Dm.RendEgyebDarabszam.AsInteger := Dm.qCsatlTartListDarabszam.AsInteger ;
        Dm.RendEgyebDbFuggo.AsBoolean := True ;
        Dm.RendEgyebRajzszam.AsString := Dm.qCsatlTartListRajzszam.AsString ;
        Dm.RendEgyebMegjegyzes.AsString := Dm.qCsatlTartListMegjegyzes.AsString ;
        Dm.RendEgyebActive.AsBoolean := True ;
        Dm.RendEgyebKiszallitando.AsBoolean := False ;
        Dm.RendEgyebTartozekId.AsInteger := Dm.qCsatlTartListTartozekId.AsInteger ;
        Dm.RendEgyebTomloVegId.AsInteger := TomlovegId ;
        Dm.RendEgyeb.Post ;

        Dm.qCsatlTartList.Next ;
      end ;
    finally
      Dm.qCsatlTartList.Active := False ;
      Dm.RendEgyeb.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SpeedButton21Click(Sender: TObject);
var
  Creator: string ;
begin
  try
    Dm.tTechlap.CheckBrowseMode ;
    Dm.tTechlap.Refresh ;
    Creator := Dm.tTechlapRogzitette.AsString ;
    if Dm.tTechlapEllenorizte.AsString <> '' then begin
      ErrMsg('A legut�bbi j�v�hagy�s �ta nem t�rt�nt v�ltoz�s!') ;
      Exit ;
    end ;
    if Creator = CurrentUserName then begin
      ErrMsg('A felt�lt� �s a j�v�hagy� nem lehet ugyanaz a szem�ly!') ;
      Exit ;
    end ;
    if not (Dm.tTechlap.State in [dsInsert, dsEdit]) then Dm.tTechlap.Edit ;
    Dm.tTechlapEllenorizte.AsString := CurrentUserName ;
    Dm.tTechlapEllenorzesIdopontja.AsDateTime := Now ;
    Dm.tTechlap.Post ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.BitBtn2Click(Sender: TObject);
begin
  try
    try
      if HistoryForm = Nil then HistoryForm := THistoryForm.Create(Application) ;
      ToolsDm.qProgHistory.ParamByName('ProgName').AsString := Versio.InternalName ;
      ToolsDm.qProgHistory.Active := True ;
      HistoryForm.ShowModal ;
    finally
      ToolsDm.qProgHistory.Active := False ;
    end ;
  Except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.GetCouplingWeight(CsatlRsz: string): double ;
begin
  Result := 0 ;
  try
    ToolsDm.spGetCouplingWeight.ParamByName('@CsatlRsz').AsString := CsatlRsz ;
    ToolsDm.spGetCouplingWeight.ExecProc ;
    Result := ToolsDm.spGetCouplingWeight.ParamByName('@Weight').AsFloat ;
    if Result = 0 then begin
      ErrMsg('A csatlakoz� t�mege nem szerepel a "HoseMaster" adatb�zis�ban!' + #13 + CsatlRsz) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.GetTechLapData(CsatlRsz: string; var L1Caption: string): double ;
begin
  Result := 0 ;
  try
    ToolsDm.spGetTechLapData.ParamByName('@CsatlRsz').AsString := CsatlRsz ;
    ToolsDm.spGetTechLapData.ExecProc ;
    L1Caption := ToolsDm.spGetTechLapData.ParamByName('@L1Caption').AsString ;
    Result := ToolsDm.spGetTechLapData.ParamByName('@L1').AsFloat ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

function TMainForm.GetBodyWeight(KonstrLsz: string): double ;
begin
  Result := 0 ;
  try
    ToolsDm.spGetBodyWeight.ParamByName('@KonstrLsz').AsString := KonstrLsz ;
    ToolsDm.spGetBodyWeight.ExecProc ;
    Result := ToolsDm.spGetBodyWeight.ParamByName('@Weight').AsFloat ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.AutoChangeAcceptExecute(Sender: TObject);
begin
  try
    if Dm.RendelesTetel.State <> dsEdit	then begin
      Dm.RendelesTetel.CheckBrowseMode ;
      Dm.RendelesTetel.Edit ;
    end ;

    if Dm.RendelesTetelTAutoUpdate.AsBoolean then Dm.RendelesTetelTAutoUpdate.AsBoolean := False
    else ErrMsg('M�r el van fogadva a kiv�lasztott t�tel!') ;
    Dm.RendelesTetel.Post ;
    if not Dm.RendelesTetel.Eof then Dm.RendelesTetel.Next ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OrderRefreshExecute(Sender: TObject);
var
  bmk: TBookmark ;
begin
  try
    bmk := Dm.HSOrderHeadList.GetBookmark ;
    Dm.RendelesTetel.CheckBrowseMode ;
    Dm.HSOrderHeadList.Active := False ;
    Dm.HSOrderHeadList.Active := True ;
    Dm.HSOrderHeadList.GotoBookmark(bmk) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Jump2OrderExecute(Sender: TObject);
var
  RendSz : string ;
  TermekKod: integer ;
const
  MsgChange = 'A rendel�s �llom�ny m�dos�t�s alatt van!' + #13 + 'Menthetem a v�ltoz�sokat?' ;
begin
  try
    try
      if not OrderDm.tRendFej.Active then OrderOpenExecute(Sender) ;
      if TermekCombo.KeyValue = null then TermekKod := 0 else TermekKod := TermekCombo.KeyValue ;
      if TermekKod <> 1 then begin
        ErrMsg('A term�k kiv�laszt�s nem megfelel� a "Rendel�sek" f�l�n!') ;
        Exit ;
      end ;
      RendSz := Dm.HSOrderHeadListRendSz.AsString ;
      if (OrderDm.tRendFej.State = dsEdit) or (OrderDm.tRendTetel.State = dsEdit) then begin
        if MessageDlg(MsgChange, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
        OrderDm.tRendFej.CheckBrowseMode ;
        OrderDm.tRendTetel.CheckBrowseMode ;
      end ;
      OrderDm.tRendFej.Locate('RendSz', RendSz, [loCaseInsensitive]) ;
      PageControl1.ActivePage := OrderSheet ;
    finally

    end ;
  except
    On e: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SetOrderHeadColWidthExecute(Sender: TObject);
begin
  SetGridColWidth(RendFejQryGrid) ;
end;

procedure TMainForm.SetMfCkszColWidthExecute(Sender: TObject);
begin
  SetGridColWidth(MfCkszGrid) ;
end;

procedure TMainForm.dxDBGrid6DblClick(Sender: TObject);
begin
  try
    if not OpenDraw(FindDraw(TDxDBGrid(Sender).ColumnByFieldName('KonstrLsz').Field.AsString)) then ErrMsg('Nem tal�lhat� a rajz!') ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ErvtGridDblClick(Sender: TObject);
begin
  try
    if not OpenDraw(FindDraw(TDxDBGrid(Sender).ColumnByFieldName('Ervenytelenit').Field.AsString))
    then ErrMsg('Nem tal�lhat� a rajz!') ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackRefreshExecute(Sender: TObject);
var
  Bookmark : TBookmark ;
begin
  try
    Bookmark := Dm.qPackHead.GetBookmark ;
    Dm.qPackHead.Active := False ;
    Dm.qPackHead.Active := True ;
    Dm.qPackHead.GotoBookmark(Bookmark) ;
    Dm.PackItemRefresh ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.NewPackExecute(Sender: TObject);
var
  Id: integer ;
begin
  try
    try
      Dm.qPackHead.DisableControls ;
      Dm.CreatePackHead.ParamByName('@CreatorName').AsString:=CurrentUserName ;
      Dm.CreatePackHead.Active:=True ;
      Id:=Dm.CreatePackHead.Fields[0].AsInteger ;
      Dm.CreatePackHead.Active:=False ;
      Dm.qPackHead.Active := False ;
      Dm.qPackHead.Active := True ;
      Dm.qPackHead.Locate('PackId', Id, [loCaseInsensitive]) ;
    finally
      Dm.qPackHead.EnableControls ;
    end ;
  except
    ON E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.NewPackRevExecute(Sender: TObject);
var
  PackId: integer ;
begin
  try
    PackId := Dm.qPackHeadPackId.AsInteger ;
    Dm.CreatePackRev.ParamByName('@PackId').AsInteger:=PackId ;
    Dm.CreatePackRev.ParamByName('@CreatorName').AsString:=CurrentUserName ;
    Dm.CreatePackRev.Active := True ;
    Dm.CreatePackRev.Active := False ;
    Dm.qPackHead.Active := False ;
    Dm.qPackHead.Active := True ;
    Dm.qPackHead.Locate('PackId', PackId, [loCaseInsensitive]) ;
  except
    ON E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.NewPackVerExecute(Sender: TObject);
var
  PackId: longint ;
  PackNum, PackRev: integer ;
begin
  try
    try
      PackId := Dm.qPackHeadPackId.AsInteger ;
      PackNum := Dm.qPackHeadPackNum.AsInteger ;
      Dm.GetPackRevs.ParamByName('PackNum').AsInteger:=PackNum ;
      Dm.GetPackRevs.Active:=True ;
      if RevSelectForm.ShowModal <> mrOk then Exit ;
      PackRev:=Dm.GetPackRevsPackRevision.AsInteger ;
      Dm.CreatePackVer.ParamByName('@PackId').AsInteger:=PackId ;
      Dm.CreatePackVer.ParamByName('@CreatorName').AsString:=CurrentUserName ;
      Dm.CreatePackVer.ParamByName('@PackRev').AsInteger:=PackRev ;
      Dm.CreatePackVer.Active:=True ;
      PackId:=Dm.CreatePackVerCOLUMN1.AsInteger ;
      Dm.CreatePackVer.Active:=False ;

      Dm.qPackHead.Active := False ;
      Dm.qPackHead.Active := True ;
      Dm.qPackHead.Locate('PackId', PackId, [loCaseInsensitive]) ;
    finally
      Dm.GetPackRevs.Active:=False ;
    end ;
  except
    ON E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PackQueryExecute(Sender: TObject);
var
  PackId, ItemId: longint ;
begin
  try
    try
      Dm.PackItemListQry.Active:=True ;
      if FindItemForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        PackId:=Dm.PackItemListQryPackId.AsInteger ;
        ItemId:=Dm.PackItemListQryPackItemId.AsInteger ;
        if not Dm.qPackHead.Locate('PackId', PackId, [loCaseInsensitive]) then begin
          ErrMsg('Nem tal�lhat� a kiv�lasztott elem!') ;
        end
        else begin
          if not Dm.PackItem.Locate('PackItemId', ItemId, [loCaseInsensitive]) then begin
            ErrMsg('Nem tal�lhat� a kiv�lasztott elem!') ;
          end ;
        end ;
      end ;
      MainForm.Refresh ;
    finally
      Dm.PackItemListQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SetPackColWidthExecute(Sender: TObject);
begin
  SetGridColWidth(PackHeadGrid) ;
  SetGridColWidth(PackItemsGrid) ;
  SetGridColWidth(dxDBGrid3) ;
  SetGridColWidth(PackItemGrid) ;
end;

procedure TMainForm.PackItemQueryExecute(Sender: TObject);
const
  UpdateMsg = 'A kiv�lasztott elem fel�l fog �r�dni!' + #13 + 'Ezt akarod?' ;
var
  PackId: longint ;
  PackItemId, i: integer ;
  fn: string ;
begin
  try
    try
      Dm.PackItemListQry.Active := True ;
      if FindItemForm.ShowModal = mrOk then begin
        MainForm.Refresh ;
        if not (Dm.PackItem.State in [dsInsert, dsEdit]) then begin
          if MessageDlg(UpdateMsg, mtConfirmation, [mbYes, mbNo], 0) = mrYes then Dm.PackItem.Edit else Exit ;
        end ;
        PackId := Dm.PackItemListQryPackId.AsInteger ;
        PackItemId := Dm.PackItemListQryPackItemId.AsInteger ;
        if Dm.GetPackItemQry.Active then Dm.GetPackItemQry.Active := False ;
        Dm.GetPackItemQry.ParamByName('PackId').AsInteger := PackId ;
        Dm.GetPackItemQry.ParamByName('PackItemId').AsInteger := PackItemId ;
        Dm.GetPackItemQry.Active := True ;
        for i := 0 to Dm.GetPackItemQry.FieldCount - 1 do begin
          fn := Dm.GetPackItemQry.Fields[i].FieldName ;
          Dm.PackItem.FindField(fn).Value := Dm.GetPackItemQry.Fields[i].Value ;
        end ;
      end
      else MainForm.Refresh ;
    finally
      Dm.PackItemListQry.Active := False ;
      Dm.GetPackItemQry.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ShowPackReportExecute(Sender: TObject);
var
  PackId: longint ;
begin
  try
    try
      if not PackOpened then begin
        ErrMsg('Csak nyitott �llom�nyon hajthat� v�gre a m�velet!') ;
        Exit ;
      end ;
      PackId := Dm.qPackHeadPackId.AsInteger ;
      Dm.PackRepQry.Active:=False ;
      Dm.PackRepQry.ParamByName('PackId').AsInteger:=PackId ;
      Dm.PackRepQry.Active:=True ;
      PackReport.Keszitette.Caption:='K�sz�tette: ' + CurrentUserName + ' - '
        + DateTimeToStr(Now) ;
      PackReport.Preview ;
    finally
      Dm.PackRepQry.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DrawSearchExecute(Sender: TObject);
begin
  try
    try
      if DrawSearchForm = Nil then DrawSearchForm := TDrawSearchForm.Create(Application) ;
      if not ToolsDm.qDwgFiles.Active then ToolsDm.qDwgFiles.Active := True ;
      DrawSearchForm.Show ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.InsertHoseTypeButtonClick(Sender: TObject);
begin
  InsertHoseType ;
end;

procedure TMainForm.InsertHoseType ;
var
  NewType: string ;
  Count: integer ;
begin
  try
    NewType := Trim(TomloNevCombo.Text) ;
    if NewType = '' then begin
      ErrMsg('�res a beviteli mez�!') ;
      Exit ;
    end ;
    OrderDm.spNewHoseName.ParamByName('@NewName').AsString := NewType ;
    OrderDm.spNewHoseName.ParamByName('@TermekKod').AsInteger := ActTermek ;
    OrderDm.spNewHoseName.ExecProc ;
    Count := OrderDm.spNewHoseName.ParamByName('@Count').AsInteger ;
    if Count = 0 then begin
      LoadHoseTypeList ;
    end
    else ErrMsg('Ilyen elem m�r van a list�n!') ;


    (*
    if TomloNevCombo.Items.IndexOf(NewType) <> -1 then begin
      ErrMsg('Ilyen elem m�r van a list�n!') ;
      Exit ;
    end ;
    TomloNevCombo.Items.Add(NewType) ;
    OrderDm.qNewHoseTypeName.ParamByName('TermekKod').AsInteger := ActTermek ;
    OrderDm.qNewHoseTypeName.ParamByName('Megnevezes').AsString := NewType ;
    OrderDm.qNewHoseTypeName.ExecSQL ;
    *)
  except
    On e: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainform.LoadHoseTypeList ;
var
  TermekKod : integer ;
begin
  try
    try
      if TermekCombo.KeyValue <> null then TermekKod := TermekCombo.KeyValue else TermekKod := 0 ;
      TomloNevCombo.Items.Clear ;
      if OrderDm.qTomloNev.Active then OrderDm.qTomloNev.Active := False ;
      OrderDm.qTomloNev.ParamByName('TermekKod').AsInteger := TermekKod ;
      OrderDm.qTomloNev.Active := True ;
      while not OrderDm.qTomloNev.Eof do begin
        TomloNevCombo.Items.Add(OrderDm.qTomloNevMegnevezes.AsString) ;
        OrderDm.qTomloNev.Next ;
      end ;
    finally
      OrderDm.qTomloNev.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.OpenAtveteliDocsExecute(Sender: TObject);
var
  Rendelesszam: string ;
begin
  try
    try
      Rendelesszam := Trim(Dm.HSOrderHeadListRendSz.AsString) ;
      if SPDm.SPConnection.Connected then SPDm.SPConnection.Connected := False ;
      if SPDm.qAtveteliList.Active then SPDm.qAtveteliList.Active := False ;
      SPDm.qAtveteliList.Parameters.ParamByName('LeafName').Value := RendelesSzam + '%' ;
      SPDm.qAtveteliList.Active := True ;
      case SPDm.qAtveteliList.RecordCount of
        0 : begin
              ErrMsg('A rendel�ssz�mhoz nem tartozik �tv�teli! (' + Rendelesszam + ')') ;
              Exit ;
            end ;
        1 : begin
              OpenAtveteli(SPDm.qAtveteliListLeafName.AsString) ;
            end ;
        else
          begin
            if AtveteliOpenForm = nil then AtveteliOpenForm := TAtveteliOpenForm.Create(Application) ;
            AtveteliOpenForm.ShowModal ;
          end ;
      end ;
    finally
      if MessageForm <> Nil then MessageForm.Hide ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.HoseNameEditExecute(Sender: TObject);
begin
  try
    try
      if HoseNameEditForm = nil then HoseNameEditForm := THoseNameEditForm.Create(Application) ;
      HoseNameEditForm.tTomloMegnevezesek.Active := True ;
      HoseNameEditForm.ShowModal ;
    finally
      HoseNameEditForm.tTomloMegnevezesek.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.PageControl1Change(Sender: TObject);
begin
  MainForm.Refresh ;
  AddEvent('"' + PageControl1.ActivePage.Caption + '" f�l kiv�laszt�sa.', Versio.FileName, '') ;
end;

procedure TMainForm.Timer2Timer(Sender: TObject);
begin
  MainForm.Refresh ;
end;

procedure TMainForm.ShowBookmarkListExecute(Sender: TObject);
begin
  try
    try
      if DataSheetBmkListForm = Nil then DataSheetBmkListForm := TDataSheetBmkListForm.Create(Application) ;
      DataSheetBmkListForm.Show ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DataSheetAccessoryExit(Sender: TObject);
begin
  if (DataSheetBmkListForm <> Nil) and DataSheetBmkListForm.Visible then begin
    DataSheetBmkFormVisible := True ;
    DataSheetBmkListForm.Hide ;
  end ;
end;

procedure TMainForm.DataSheetAccessoryEnter(Sender: TObject);
begin
  if DataSheetBmkFormVisible then DataSheetBmkListForm.Visible := True ;
end;

procedure TMainForm.AddPackBmkExecute(Sender: TObject);
var
  CsomSz, Rev, Ver, Srsz: integer ;
begin
  try
    CsomSz := Dm.qPackHeadPackNum.AsInteger ;
    Rev := Dm.qPackHeadPackRevision.AsInteger ;
    Ver := Dm.qPackHeadPackVersion.AsInteger ;
    Srsz := Dm.PackItemPackItemId.AsInteger ;
    if not Dm.PackBmkData.Active then Dm.PackBmkData.Active := True ; 
    Dm.PackBmkData.Append ;
    Dm.PackBmkDataCsomSz.AsInteger := CsomSz ;
    Dm.PackBmkDataRevizio.AsInteger := Rev ;
    Dm.PackBmkDataVerzio.AsInteger := Ver ;
    Dm.PackBmkDataSrsz.AsInteger := Srsz ;
    Dm.PackBmkData.Post ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ShowPackBmkListExecute(Sender: TObject);
begin
  try
    if PackBmkListForm = nil then PackBmkListForm := TPackBmkListForm.Create(Application) ;
    PackBmkListForm.Show ;
    PackBmkFormVisible := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.LocatePackItem(CsomSz, Rev, Ver, Srsz: integer): Boolean ;
begin
  Result := False ;
  try
    if PackHeadGrid.DataSource.DataSet.Locate('PackNum;PackRevision;PackVersion', VarArrayOf([CsomSz, Rev, Ver]),
      [loCaseInsensitive]) then begin
      if not PackItemsGrid.DataSource.DataSet.Locate('PackItemId', Srsz, [loCaseInsensitive]) then Exit ;
      Result := True ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.PackSheetEnter(Sender: TObject);
begin
  if PackBmkFormVisible then ShowPackBmkListExecute(Sender);
end;

procedure TMainForm.PackSheetExit(Sender: TObject);
begin
  if (PackBmkListForm <> Nil) then begin
    PackBmkFormVisible := PackBmkListForm.Visible ;
    PackBmkListForm.Visible := False ;
  end ;
end;

procedure TMainForm.Oszlopkigaztsa1Click(Sender: TObject);
begin
  SetGridColWidth(RendAnormaGrid) ;
end;

procedure TMainForm.Azsszesgkibontsa1Click(Sender: TObject);
begin
  RendAnormaGrid.FullExpand ;
end;

procedure TMainForm.Azsszesgbecsuksa1Click(Sender: TObject);
begin
  RendAnormaGrid.FullCollapse ;
end;

procedure TMainForm.RendAnormaGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  i: integer ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('AnormaId').Index;
  if ANode.Values[i] = Null then AColor := clGray ;
end;

procedure TMainForm.InsertSelectedExecute(Sender: TObject);
var
  i: integer ;
  ds: TDataSet ;
  bmk: TBookmark ;
begin
  try
    if RendAnormaGrid.SelectedCount = 0 then begin
      ErrMsg('Nincs kiv�lasztott elem!') ;
      Exit ;
    end ;
    if not OrderDm.qAnyagszTetel.Active then begin
      ErrMsg('Hozzon l�tre egy �j list�t, vagy nyisson meg egy kor�bbit az adatok �tv�tel�hez!') ;
      Exit ;
    end ;
    ds := RendAnormaGrid.DataSource.DataSet ;
    for i := 0 to RendAnormaGrid.SelectedCount - 1 do begin
      bmk := TBookmark(RendAnormaGrid.SelectedRows[i]) ;
      ds.GotoBookmark(bmk) ;
      OrderDm.qAnyagszTetel.Append ;
      OrderDm.qAnyagszTetelRendelesszam.AsString := ds.FieldByName('RendSz').AsString ;
      OrderDm.qAnyagszTetelTetelSrsz.AsInteger := ds.FieldByName('TetelSrsz').AsInteger ;
      OrderDm.qAnyagszTetelCikkszam.AsString := ds.FieldByName('Cikkszam').AsString ;
      OrderDm.qAnyagszTetelKonstrukcio.AsString := ds.FieldByName('KonstrukcioKod').AsString ;
      OrderDm.qAnyagszTetelAnormaId.AsInteger := ds.FieldByName('AnormaId').AsInteger ;
      OrderDm.qAnyagszTetelHossz.AsFloat := ds.FieldByName('Hossz').AsFloat ;
      OrderDm.qAnyagszTeteldb.AsInteger := ds.FieldByName('Darabszam').AsInteger ;
      OrderDm.qAnyagszTetel.Post ;
    end ;
  except
    On e: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.UjAnyagszuksegletExecute(Sender: TObject);
begin
  try
    OrderDm.spAddAnyagszList.ExecProc ;
    ActAnyagszId := OrderDm.spAddAnyagszList.ParamByName('@Id').AsInteger ;
    OrderDm.qAnyagszTetel.Active := False ;
    OrderDm.qAnyagszTetel.ParamByName('Id').AsInteger := ActAnyagszId ;
    OrderDm.qAnyagszTetel.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OpenOrderQryExecute(Sender: TObject);
begin
  try
    OrderDm.qRendelesNorma.Active := False ;
    OrderDm.qRendelesNorma.Active := True ;
    RendAnormaGrid.GotoFirst ;
    RendAnormaGrid.FullExpand ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SaveAnyagszListExecute(Sender: TObject);
begin
  Dm.MainDb.StartTransaction;
  try
    OrderDm.qAnyagszTetel.ApplyUpdates; {try to write the updates to the database};
    Dm.MainDb.Commit; {on success, commit the changes};
  except
    Dm.MainDb.Rollback; {on failure, undo the changes};
    raise; {raise the exception to prevent a call to CommitUpdates!}
  end;
  OrderDm.qAnyagszTetel.CommitUpdates; {on success, clear the cache}
  OrderDm.qAnyagszTetel.Active := False ;
  OrderDm.qAnyagszTetel.Active := True ;
end;

procedure TMainForm.OpenAnyagszListExecute(Sender: TObject);
begin
  try
    if OpenAnyagszListForm = Nil then OpenAnyagszListForm := TOpenAnyagszListForm.Create(Application) ;
    OrderDm.qAnyagszList.Active := True ;
    OpenAnyagszListForm.AnyagszListGrid.GotoFirst ;
    if OpenAnyagszListForm.ShowModal = mrOk then begin
      OrderDm.qAnyagszTetel.Active := False ;
      OrderDm.qAnyagszTetel.ParamByName('id').AsInteger := OrderDm.qAnyagszListId.AsInteger ;
      OrderDm.qAnyagszTetel.Active := True ;
      ActAnyagszId := OrderDm.qAnyagszListId.AsInteger ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CalcAnyagszuksegletExecute(Sender: TObject);
const
  ChangeMsg = 'A lista megv�ltozott!' + #13 + 'Anyagsz�ks�glet sz�m�t�s el�tt menteni kell a megv�ltozott adatokat!' ;
begin
  try
    if OrderDm.qAnyagszTetel.UpdatesPending then begin
      ErrMsg(ChangeMsg) ;
      Exit ;
    end ;
    OrderDm.spMRP.Active := False ;
    OrderDm.spMRP.ParamByName('@Id').AsInteger := ActAnyagszId ;
    OrderDm.spMRP.Active := True ;
    SetGridColWidth(AnyagszuksegletGrid) ;
    AnyagszuksegletGrid.FullExpand ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Oszlopokigaztsa4Click(Sender: TObject);
begin
  SetGridColWidth(AnyagszuksegletGrid) ;
end;

procedure TMainForm.sszesgkibontsa1Click(Sender: TObject);
begin
  AnyagszuksegletGrid.FullExpand ;
end;

procedure TMainForm.Azsszesgbecsuksa2Click(Sender: TObject);
begin
  AnyagszuksegletGrid.FullCollapse ;
end;

procedure TMainForm.Adatokvglapra1Click(Sender: TObject);
begin
  AnyagszuksegletGrid.CopyAllToClipboard ;
end;

function TMainForm.GetCouplingMaterial(CouplingDNb: string): string ;
begin
  Result := '' ;
  try
    OrderDm.qCouplingMaterial.Active := False ;
    OrderDm.qCouplingMaterial.ParamByName('CouplingDNb').AsString := CouplingDNb ;
    OrderDm.qCouplingMaterial.Active := True ;
    Result := OrderDm.qCouplingMaterialCouplingMaterial.AsString ;
    OrderDm.qCouplingMaterial.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.Cellamsolsa1Click(Sender: TObject);
begin
  Clipboard.AsText := RendTetelGrid.FocusedField.AsString ;
end;

procedure TMainForm.Jump2MfCkszExecute(Sender: TObject);
var
  Rendsz: integer;
  Cksz: string ;
begin
  try
    try
      if not Dm.qMfCikkszamok.Active then Dm.qMfCikkszamok.Active := True ;
      RendSz := Dm.HSOrderHeadListRendSz.AsInteger ;
      Cksz := Dm.RendelesTetelCikkszam.AsString ;
      if not Dm.qMfCikkszamok.Locate('SapCksz;Ksz', VarArrayOf([Cksz, Rendsz]), [loCaseInsensitive]) then begin
        ErrMsg('Nem tal�lok ilyen rekordot!') ;
        Exit ;
      end ;
      PageControl1.ActivePage := MfCkszSheet ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Jump2DataSheetExecute(Sender: TObject);
var
  Rendelesszam, Cikkszam: string ;
begin
  try
    try
      if not Dm.HSOrderHeadList.Active then Dm.HSOrderHeadList.Active := True ;
      if not Dm.RendelesTetel.Active then Dm.RendelesTetel.Active := True ;
      Rendelesszam := Dm.qMfCikkszamokKsz.AsString ;
      Cikkszam := Dm.qMfCikkszamokSAPCksz.AsString ;
      if not Dm.HSOrderHeadList.Locate('Rendsz', Rendelesszam, [loCaseInsensitive]) then begin
        ErrMsg('Nem tal�lom a rendel�ssz�mot!') ;
        Exit ;
      end ;
      if not Dm.RendelesTetel.Locate('Cikkszam', Cikkszam, [loCaseInsensitive]) then begin
        Errmsg('Nem tal�lom a cikksz�mot!') ;
        //Exit ;
      end ;
      PageControl1.ActivePage := DataSheetBase ;
    finally

    end ;
  except
    On E: exception do Errmsg(E.Message) ;
  end ;
end;

procedure TMainForm.DocSheetShow(Sender: TObject);
begin
  try
    try
      if not ToolsDm.qMsoFocsoport.Active then begin
        ToolsDm.qMsoFocsoport.DisableControls ;
        ToolsDm.qMsoFocsoport.Active := True ;
      end ;
      if not ToolsDm.qMsoDoktipusok.Active then begin
        ToolsDm.qMsoDoktipusok.DisableControls ;
        ToolsDm.qMsoDoktipusok.Active := True ;
      end ;
    finally
      ToolsDm.qMsoFocsoport.EnableControls ;
      ToolsDm.qMsoDoktipusok.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.DrawPathEditButtonClick(Sender: TObject);
var
  FullPath, Path, FileName, Drive, DrawPath: string ;
begin
  try
    if PathSelectionForm = nil then begin
      PathSelectionForm := TPathSelectionForm.Create(Application) ;
      PathSelectionForm.FilenameEdit1.InitialDir := DrawStartPath ;
    end ;
    DrawPath := Trim(DrawPathEdit.Text) ;
    if DrawPath <> '' then begin
      //PathSelectionForm.FilenameEdit1.Text := DrawPath ;
      PathSelectionForm.FilenameEdit1.InitialDir := DrawPath ;
    end ;
    if PathSelectionForm.ShowModal = mrOk then begin
      FullPath := ReplaceStr(PathSelectionForm.FilenameEdit1.Text, '"', '') ;
      FullPath := ExpandUNCFileName(FullPath) ;
      Path := ExtractFilePath(FullPath) ;
      FileName := ExtractFileName(FullPath) ;
      Drive := ExtractFileDrive(FullPath) ;
      DrawPathEdit.Text := Path ;
      DrawNameEdit.Text := FileName ;
      DrawStartPath := Path ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MsoFocsoportComboCloseUp(Sender: TObject);
begin
  try
    if MsoFocsoportCombo.KeyValue = null then FocsoportKod := 0 else FocsoportKod := MsoFocsoportCombo.KeyValue ;
    ToolsDm.qMsoCsoport.Active := False ;
    ToolsDm.qMsoCsoport.ParamByName('FocsoportKod').AsInteger := FocsoportKod ;
    ToolsDm.qMsoCsoport.Active := True ;
    ToolsDm.qMsoAlcsoport.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MsoCsoportComboCloseUp(Sender: TObject);
begin
  try
    if MsoCsoportCombo.KeyValue = null then CsoportKod := 0 else CsoportKod := MsoCsoportCombo.KeyValue ;
    ToolsDm.qMsoAlcsoport.Active := False ;
    ToolsDm.qMsoAlcsoport.ParamByName('CsoportKod').AsInteger := CsoportKod ;
    ToolsDm.qMsoAlcsoport.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.GetMsoData ;
begin
  try
    MsoIdEdit.Text := ToolsDm.qMsoRajzListaMsoId.AsString ;
    MsoFocsoportCombo.KeyValue := ToolsDm.qMsoRajzListaFocsoportKod.AsInteger ;
    ToolsDm.qMsoCsoport.Active := False ;
    ToolsDm.qMsoCsoport.ParamByName('FocsoportKod').AsInteger := ToolsDm.qMsoRajzListaFocsoportKod.AsInteger ;
    ToolsDm.qMsoCsoport.Active := True ;
    MsoCsoportCombo.KeyValue := ToolsDm.qMsoRajzListaCsoportKod.AsInteger ;
    ToolsDm.qMsoAlcsoport.Active := False ;
    ToolsDm.qMsoAlcsoport.ParamByName('CsoportKod').AsInteger := ToolsDm.qMsoRajzListaCsoportKod.AsInteger ;
    ToolsDm.qMsoAlcsoport.Active := True ;
    MsoAlcsoportCombo.KeyValue := ToolsDm.qMsoRajzListaAlcsoportKod.AsInteger ;
    TipusjelEdit.Text := ToolsDm.qMsoRajzListaTipusjel.AsString ;
    SorozatszamEdit.Text := ToolsDm.qMsoRajzListaSorozatszam.AsString ;
    SorszamEdit.Text := ToolsDm.qMsoRajzListaSorszam.AsString ;
    VerzioEdit.Text := ToolsDm.qMsoRajzListaVerzio.AsString ;
    DrawNameEdit.Text := ToolsDm.qMsoRajzListaFilenev.AsString ;
    DrawPathEdit.Text := ToolsDm.qMsoRajzListaUtvonal.AsString ;
    SharePointLinkEdit.Text := ToolsDm.qMsoRajzListaSharePointLink.AsString ;
    MegnevezesEdit.Text := ToolsDm.qMsoRajzListaMegnevezes.AsString ;
    MegjegyzesEdit.Text := ToolsDm.qMsoRajzListaMegjegyzes.AsString ;
    KotesszamEdit.Text := ToolsDm.qMsoRajzListaKotesszam.AsString ;
    EgyebKapcsEdit.Text := ToolsDm.qMsoRajzListaEgyebKapcsolat.AsString ;
    DokTipusCombo.KeyValue := ToolsDm.qMsoRajzListaMsoDokTipusKod.AsInteger ;
    ErvenyesCheckBox.Checked := ToolsDm.qMsoRajzListaErvenyes.AsBoolean ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.SetMsoData ;
begin
  try
    ToolsDm.qMsoRajzLista.Edit ;
    ToolsDm.qMsoRajzListaMsoId.AsString := MsoIdEdit.Text ;
    ToolsDm.qMsoRajzListaFocsoportKod.AsInteger := MsoFocsoportCombo.KeyValue ;
    ToolsDm.qMsoRajzListaCsoportKod.AsInteger := MsoCsoportCombo.KeyValue ;
    ToolsDm.qMsoRajzListaAlcsoportKod.AsInteger := MsoAlcsoportCombo.KeyValue ;
    ToolsDm.qMsoRajzListaTipusjel.AsString := TipusjelEdit.Text ;
    ToolsDm.qMsoRajzListaSorozatszam.AsString := SorozatszamEdit.Text ;
    ToolsDm.qMsoRajzListaSorszam.AsString := SorszamEdit.Text ;
    ToolsDm.qMsoRajzListaVerzio.AsString := VerzioEdit.Text ;
    ToolsDm.qMsoRajzListaFilenev.AsString := DrawNameEdit.Text ;
    ToolsDm.qMsoRajzListaUtvonal.AsString := DrawPathEdit.Text ;
    ToolsDm.qMsoRajzListaSharePointLink.AsString := SharePointLinkEdit.Text ;
    ToolsDm.qMsoRajzListaMegnevezes.AsString := MegnevezesEdit.Text ;
    ToolsDm.qMsoRajzListaMegjegyzes.AsString := MegjegyzesEdit.Text ;
    ToolsDm.qMsoRajzListaKotesszam.AsString := KotesszamEdit.Text ;
    ToolsDm.qMsoRajzListaEgyebKapcsolat.AsString := EgyebKapcsEdit.Text ;
    ToolsDm.qMsoRajzListaMsoDokTipusKod.AsInteger := DokTipusCombo.KeyValue ;
    ToolsDm.qMsoRajzListaErvenyes.AsBoolean := ErvenyesCheckbox.Checked ;
    //ToolsDm.qMsoRajzLista.Post ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.Azsszesgkibontsa2Click(Sender: TObject);
begin
  MsoDrawGrid.FullExpand ;
end;

procedure TMainForm.Azsszesgbecsuksa3Click(Sender: TObject);
begin
  MsoDrawGrid.FullCollapse ;
end;

function TMainForm.CheckMsoData: Boolean ;
const
  VoidFieldMsg = 'Hi�nyos "Rajzsz�m" mez�!' ;
var
  FocsoportKod, CsoportKod, AlcsoportKod, DokTipusKod, p: integer ;
  s, ExpectedCode: string ;
begin
  Result := False ;
  try
    if MsoFocsoportCombo.KeyValue = null then FocsoportKod := 0 else FocsoportKod := MsoFocsoportcombo.KeyValue ;
    if MsoCsoportCombo.KeyValue = null then CsoportKod := 0 else CsoportKod := MsoCsoportcombo.KeyValue ;
    if MsoAlcsoportCombo.KeyValue = null then AlcsoportKod := 0 else AlcsoportKod := MsoAlcsoportcombo.KeyValue ;
    if DokTipusCombo.KeyValue = null then DokTipusKod := 0 else DokTipusKod := DokTipusCombo.KeyValue ;
    if FocsoportKod = 0 then begin
      ErrMsg('A f�csoportot ki kell v�lasztani!') ;
      MsoFocsoportCombo.SetFocus ;
      Exit ;
    end ;
    if CsoportKod = 0 then begin
      ErrMsg('A csoportot ki kell v�lasztani!') ;
      MsoCsoportCombo.SetFocus ;
      Exit ;
    end ;
    if AlcsoportKod = 0 then begin
      ErrMsg('Az alcsoportot ki kell v�lasztani!') ;
      MsoAlcsoportCombo.SetFocus ;
      Exit ;
    end ;
    if Trim(MegnevezesEdit.Text) = '' then begin
      ErrMsg('A megnevez�st meg kell adni!') ;
      MegnevezesEdit.SetFocus ;
      Exit ;
    end ;
    if DokTipusKod = 0 then begin
      ErrMsg('A dokumentum t�pus�t meg kell adni!') ;
      DokTipusCombo.SetFocus ;
      Exit ;
    end ;
    if Trim(DrawNameEdit.Text) = '' then begin
      ErrMsg('A rajzf�jl nev�t meg kell adni!' + #13 + 'Ellen�rizd a gener�lt f�jln�v helyess�g�t!') ;
      s := Trim(TipusJelEdit.Text) + '-' + Trim(SorozatSzamEdit.Text) + '-' + Trim(SorszamEdit.Text) ;
      if Trim(VerzioEdit.Text) <> '' then s := s + Trim(VerzioEdit.Text) ;
      s := s + '.dwg' ;
      DrawNameEdit.Text := s ;
      DrawNameEdit.SetFocus ;
      Exit ;
    end ;

    if Trim(TipusJelEdit.Text) = '' then begin
      ErrMsg(VoidFieldMsg) ;
      TipusJelEdit.SetFocus ;
      Exit ;
    end ;
    if Trim(SorozatSzamEdit.Text) = '' then begin
      ErrMsg(VoidFieldMsg) ;
      SorozatSzamEdit.SetFocus ;
      Exit ;
    end ;
    if Trim(SorszamEdit.Text) = '' then begin
      ErrMsg(VoidFieldMsg) ;
      SorszamEdit.SetFocus ;
      Exit ;
    end ;

    // A f�jln�v helyess�g�nek ellen�rz�se
    ExpectedCode := Trim(TipusJelEdit.Text) + '-' + Trim(SorozatSzamEdit.Text) + '-' + Trim(SorszamEdit.Text) ;
    s := Trim(VerzioEdit.Text) ;
    if s <> '' then ExpectedCode := ExpectedCode + '-' + s ;
    s := ExtractFileName(DrawNameEdit.Text) ;
    p := pos('.', s) ;
    if p > 0 then delete(s, p, Length(s) - p + 1) ;
    if s <> ExpectedCode then begin
      ErrMsg('A f�jln�v elt�r a "Rajzsz�m" mez�kben megadottakt�l!' + #13 + '�gy nem menthet� a v�ltoz�s.'
        + #13 + 'M�dos�tom a f�jlnevet.' + #13 + 'Ha j�nak tal�lod, pr�b�ld meg menteni �jra.') ;
      DrawNameEdit.Text := ExpectedCode + ExtractFileExt(DrawNameEdit.Text) ;
      DrawNameEdit.SetFocus ;
      Exit ;
    end ;
    if ExtractFileExt(DrawNameEdit.Text) = '' then begin
      ErrMsg('Nincs megadva a f�jl kiterjeszt�se!') ;
      DrawNameEdit.SetFocus ;
      Exit ;
    end ;
    Result := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.DrawNameEditButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then begin
    DrawNameEdit.Text := ExtractFileName(Opendialog1.FileName) ;
  end ;
end;

procedure TMainForm.NewMsoItemExecute(Sender: TObject);
var
  MsoId: integer ;
begin
  try
    try
      ToolsDm.spNewMsoItem.ExecProc ;
      MsoId := ToolsDm.spNewMsoItem.ParamByName('@MsoId').AsInteger ;
      ToolsDm.qMsoRajzLista.DisableControls ;
      ToolsDm.qMsoRajzLista.Active := False ;
      ToolsDm.qMsoRajzLista.Active := True ;
      MsoDrawGrid.FullExpand ;
      MsoDrawGrid.Enabled := False ;
      ToolsDm.qMsoRajzLista.Locate('MsoId', MsoId, [loCaseInsensitive]) ;
    finally
      ToolsDm.qMsoRajzLista.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.SaveMsoItemExecute(Sender: TObject);
begin
  try
    try
      if not CheckMsoData then Exit ;
      MsoDrawGrid.DataSource.DataSet.DisableControls ;
      SetMsoData ;
      ToolsDm.qMsoRajzLista.Post ;
      MsoDrawGrid.Enabled := True ;
    finally
      MsoDrawGrid.DataSource.DataSet.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MarkNumEditButtonClick(Sender: TObject);
var
  ActMarkingId: integer ;
  bmk: TBookmark ;
begin
  bmk := Nil ;
  try
    try
      if MarkingForm = Nil then begin
        MarkingForm := TMarkingForm.Create(Application) ;
      end ;

      MarkingForm.MarkingGrid.FullCollapse ;
      OrderDm.spJoinedMarkingList.DisableControls ;
      if OrderDm.spJoinedMarkingList.Active then bmk := OrderDm.spJoinedMarkingList.GetBookmark ;
      OrderDm.spJoinedMarkingList.Active := False ;
      OrderDm.spJoinedMarkingList.Active := True ;
      OrderDm.spJoinedMarkingList.EnableControls ;
      if OrderDm.spJoinedMarkingList.BookmarkValid(bmk) then OrderDm.spJoinedMarkingList.GotoBookmark(bmk) ;

      ActMarkingId := OrderDm.tRendTetelMarkingId.AsInteger ;
      if ActMarkingId <> 0 then begin
        MarkingForm.MarkingGrid.FullCollapse ;
        OrderDm.spJoinedMarkingList.Locate('Id', ActMarkingId, [loCaseInsensitive]) ;
        MarkingForm.MarkingGrid.OptionsBehavior := MarkingForm.MarkingGrid.OptionsBehavior + [edgoSeekDetail] ;
      end
      else begin
        MarkingForm.MarkingGrid.OptionsBehavior := MarkingForm.MarkingGrid.OptionsBehavior - [edgoSeekDetail] ;
        MarkingForm.MarkingGrid.FullCollapse ;
      end ;

      if MarkingForm.ShowModal = mrOk then begin
        if not (OrderDm.tRendTetel.State in [dsEdit, dsInsert]) then OrderDm.tRendTetel.Edit ;
        OrderDm.tRendTetelMarkingId.AsInteger := MarkingForm.MarkingId ;
        MainForm.MarkNumEdit.Text := OrderDm.spJoinedMarkingListRajzszam.AsString ;
        Mainform.MarkMemo.Text := OrderDm.spJoinedMarkingListMegnevezes.AsString ;
      end ;
    finally
      OrderDm.spJoinedMarkingList.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.MfCkszGridChangeNodeEx(Sender: TObject);
var
  c: Tcolor ;
begin
  c := MfCkszGrid.ColumnByFieldName('Szin').Field.AsInteger ;
  Panel80.Color := c ;
end;

procedure TMainForm.Akivlasztottrekordmsolsajrekordba1Click(
  Sender: TObject);
var
  aField : Variant;
  i      : Integer;
begin
  try
    if Dm.qMfCikkszamokItemId.AsInteger < 0 then begin
      ErrMsg('M�g le nem mentett rekord nem m�solhat�!') ;
      Exit ;
    end ;
    aField := VarArrayCreate([0,Dm.qMfCikkszamok.Fieldcount-1], VarVariant);
    for i := 0 to (Dm.qMfCikkszamok.Fieldcount-1) do aField[i] := Dm.qMfCikkszamok.fields[i].Value ;
    Dm.qMfCikkszamok.Append ;
    for i := 0 to (Dm.qMfCikkszamok.Fieldcount-1) do Dm.qMfCikkszamok.fields[i].Value := aField[i] ;
    Dec(MfCkszRecId) ;
    Dm.qMfCikkszamokItemId.AsInteger := MfCkszRecId ;
    Dm.qMfCikkszamokJelzesKod.AsInteger := 0 ;
    Dm.qMfCikkszamokNorma.AsBoolean := False ;
    Dm.qMfCikkszamokSAP.AsBoolean := False ;
    Dm.qMfCikkszamokTBP.AsBoolean := False ;
    Dm.qMfCikkszamokGraf.AsBoolean := False ;
    Dm.qMfCikkszamokTorzslap.AsBoolean := False ;
    Dm.qMfCikkszamokKeszitette.AsString := CurrentUserName ;
    Dm.qMfCikkszamokKeszitesDatuma.AsDateTime := Now ;
    Dm.qMfCikkszamokModositotta.Clear ;
    Dm.qMfCikkszamokModositasDatuma.Clear ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AdatokexportlsaExcelbe1Click(Sender: TObject);
begin
  try
    MfCkszGrid.CopyAllToClipboard ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CopyCouplingDataExecute(Sender: TObject);
var
  DestId: integer ;
begin
  try
    if MessageDlg('Biztos, hogy m�solni akarod?', mtconfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
    Dm.CopyCouplingData.ParamByName('@SrcId').AsInteger := Dm.CsatlakozokSrsz.AsInteger ;
    Dm.CopyCouplingData.ParamByName('@DestId').Clear ;
    Dm.CopyCouplingData.ExecProc ;
    DestId := Dm.CopyCouplingData.ParamByName('@DestId').AsInteger ;
    Dm.Csatlakozok.Locate('Srsz', DestId, [loCaseInsensitive]) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Adatokmsolsavglapra1Click(Sender: TObject);
begin
  CouplingsGrid.CopyAllToClipboard ;
end;

procedure TMainForm.Rekordmsolsa1Click(Sender: TObject);
var
  i: integer ;
  f: TField ;
begin
  try
    try
      if not OrderDm.qMeo.Active then Exit ;
      VarClear(MeoFields) ;
      MeoFields := VarArrayCreate([0,MeoGrid.DataSource.DataSet.FieldCount - 1], VarVariant);

      for i := 0 to (MeoGrid.DataSource.DataSet.FieldCount - 1) do begin
        f := MeoGrid.DataSource.DataSet.Fields[i] ;
        if (f.Tag = 1) then MeoFields[i] := Null else MeoFields[i] := MeoGrid.DataSource.DataSet.Fields[i].Value ;
      end ;
    finally
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
(*
var
  aField : Variant;
  i      : Integer;
begin
  try
    if Dm.qMfCikkszamokItemId.AsInteger < 0 then begin
      ErrMsg('M�g le nem mentett rekord nem m�solhat�!') ;
      Exit ;
    end ;
    aField := VarArrayCreate([0,Dm.qMfCikkszamok.Fieldcount-1], VarVariant);
    for i := 0 to (Dm.qMfCikkszamok.Fieldcount-1) do aField[i] := Dm.qMfCikkszamok.fields[i].Value ;
    Dm.qMfCikkszamok.Append ;
    for i := 0 to (Dm.qMfCikkszamok.Fieldcount-1) do Dm.qMfCikkszamok.fields[i].Value := aField[i] ;
    Dec(MfCkszRecId) ;
    Dm.qMfCikkszamokItemId.AsInteger := MfCkszRecId ;
    Dm.qMfCikkszamokJelzesKod.AsInteger := 0 ;
    Dm.qMfCikkszamokNorma.AsBoolean := False ;
    Dm.qMfCikkszamokSAP.AsBoolean := False ;
    Dm.qMfCikkszamokTBP.AsBoolean := False ;
    Dm.qMfCikkszamokGraf.AsBoolean := False ;
    Dm.qMfCikkszamokTorzslap.AsBoolean := False ;
    Dm.qMfCikkszamokKeszitette.AsString := CurrentUserName ;
    Dm.qMfCikkszamokKeszitesDatuma.AsDateTime := Now ;
    Dm.qMfCikkszamokModositotta.Clear ;
    Dm.qMfCikkszamokModositasDatuma.Clear ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
*)
end;

procedure TMainForm.Rekordbeillesztseakivlasztottsorokba1Click(
  Sender: TObject);
var
  i, j: integer ;
  bmk: TBookmark ;
  f: TField ;
begin
  try
    try
      if VarIsEmpty(MeoFields) then begin
        ErrMsg('Nincs m�sol�sra kijel�lt rekord!') ;
        Exit ;
      end ;

      MeoGrid.DataSource.DataSet.DisableControls ;
      for i:= 0 to MeoGrid.SelectedCount - 1 do begin
        bmk := TBookmark(MeoGrid.SelectedRows[i]) ;
        MeoGrid.DataSource.DataSet.GotoBookmark(bmk) ;
        MeoGrid.DataSource.DataSet.Edit ;
        for j := 0 to MeoGrid.DataSource.DataSet.FieldCount - 1 do begin
          f := MeoGrid.DataSource.DataSet.Fields[j] ;
          if f.Tag = 0 then MeoGrid.DataSource.DataSet.Fields[j].Value := MeoFields[j] ;
        end ;
        MeoGrid.DataSource.DataSet.Post ;
      end ;

    finally
      MeoGrid.DataSource.DataSet.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Oszlopelrejtse1Click(Sender: TObject);
begin
  if not Assigned(VisibleColumnsForm) then VisibleColumnsForm := TVisibleColumnsForm.Create(Application);
  VisibleColumnsForm.Grid := MeoGrid ;
  VisibleColumnsForm.Show ;
end;

procedure TMainForm.MTDrawSheetShow(Sender: TObject);
begin
  try
    if not ToolsDm.tMTRajzkonyv.Active then begin
      ToolsDm.tMTRajzkonyv.Active := True ;
      MTRajzkonyvGrid.GotoLast(False) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AccessoriesSheetShow(Sender: TObject);
begin
  try
    if not ToolsDm.tSzerelveny.Active then begin
      ToolsDm.tSzerelveny.Active := True ;
      SzerelvenyGrid.GotoLast(False) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.HoronyvedelemSheetShow(Sender: TObject);
begin
  try
    if not ToolsDm.tHoronyvedelem.Active then begin
      ToolsDm.tHoronyvedelem.Active := True ;
      HoronyvedelemGrid.GotoLast(False) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.KikuldottSheetShow(Sender: TObject);
begin
  try
    if not ToolsDm.tKikuldottRajzok.Active then begin
      ToolsDm.tKikuldottRajzok.Active := True ;
      KikuldottGrid.GotoLast(False) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.OpenAtveteli(DocName: string) ;
var
  Dir, FullPath: string ;
begin
  try
    try
      Dir := SPDm.qAtveteliListDirName.AsString ;
      FullPath := SharePointAtveteliPath + Dir + '/' + DocName  ;
      if MessageForm = nil then MessageForm := TMessageForm.Create(Application) ;
      MessageForm.Show ;
      MessageForm.Label1.Refresh ;
      shellexecute(Application.Handle,'open', PChar(FullPath), nil, nil,SW_MAXIMIZE) ;
    finally
      if MessageForm <> nil then MessageForm.Hide ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.FindExecute(Sender: TObject);
var
  SearchStr, SearchStr2: string ;
  i: TdxDBInspector ;
  s: string ;
begin
  SearchStr := '' ;
  SearchStr2 := '' ;
  if MainForm.ActiveControl is TRxDBComboEdit then begin
    SearchStr := TRxDBComboEdit(MainForm.ActiveControl).EditText ;
  end ;
  if MainForm.ActiveControl is TDBEdit then begin
    SearchStr := TDBEdit(MainForm.ActiveControl).EditText ;
  end ;
  if MainForm.ActiveControl is TComboEdit then begin
    SearchStr := TComboEdit(MainForm.ActiveControl).EditText ;
  end ;
  if MainForm.ActiveControl is TDxDBGrid then begin
    SearchStr := TDxDBGrid(MainForm.ActiveControl).FocusedField.Text ;
    if TDxDBGrid(MainForm.ActiveControl).FocusedField.FieldName = 'OsszRsz' then begin
      SearchStr2 := SearchStr ;
      Insert('2', SearchStr2, 13) ;
    end ;
  end ;
  if MainForm.ActiveControl is TdxDBInspector then begin
    i := TdxDBInspector(MainForm.ActiveControl) ;
    SearchStr := Trim(i.FocusedField.Text) ;
    if i.FocusedField.FullName = 'OsszeallRsz' then begin
      SearchStr2 := SearchStr ;
      Insert('2', SearchStr2, 13) ;
    end ;
  end ;
  SearchStr := Trim(SearchStr) ;
  if SearchStr <> '' then begin
    if FindDraw(SearchStr) <> '' then OpenDraw(FindDraw(SearchStr)) else ErrMsg('Nem tal�lhat� ' + '"' + SearchStr + '" jelz�s� AutoCAD rajz!') ;
  end ;
  if SearchStr2 <> '' then begin
    if FindDraw(SearchStr2) <> '' then OpenDraw(FindDraw(SearchStr2)) ;//else ErrMsg('Nem tal�lhat� ' + '"' + SearchStr + '" jelz�s� AutoCAD rajz!') ;
  end ;
end;

procedure TMainForm.ScrollBox7Resize(Sender: TObject);
begin
  EgyebAlkatreszGrid.Width := ScrollBox7.Width - 16 ;
  if ScrollBox7.Height >= 360 then begin
    EgyebAlkatreszGrid.Height := ScrollBox7.Height - 190 ;
  end ;
end;

procedure TMainForm.EgyebAlkatreszGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  i, Tipus: integer ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('Tipus').Index;
  if (ANode.Values[i] = Null) then Exit ;
  Tipus := Integer(ANode.Values[i]) ;
  if Tipus = 2 then AColor := clYellow ;
  if Tipus = 3 then AColor := clLime ;
end;

procedure TMainForm.OnlyValidCheckBoxClick(Sender: TObject);
begin
  try
    if MsoDrawGrid.Filter.IsColumnFilterExist(MsoDrawGrid.ColumnByFieldName('Ervenyes')) then begin
      MsoDrawGrid.Filter.Remove(MsoDrawGrid.ColumnByFieldName('Ervenyes')) ;
    end ;
    if OnlyValidCheckBox.Checked then begin
      MsoDrawGrid.Filter.Add(MsoDrawGrid.ColumnByFieldName('Ervenyes'), True, 'True') ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.BitBtn14Click(Sender: TObject);
begin
  try
    if ElorendelesForm = nil then ElorendelesForm := TElorendelesForm.Create(Application) ;
    ElorendelesForm.ShowModal ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Azsszeselemkibontsa1Click(Sender: TObject);
begin
  ElorendelesGrid.FullExpand ;
end;

procedure TMainForm.Azsszesgbecsuksa4Click(Sender: TObject);
begin
  ElorendelesGrid.FullCollapse ;
end;

procedure TMainForm.ElorendelesGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Aktiv, Hozzaadott, Kivalasztva, Raktarra, Feldolgozva, Felosztva: Boolean ;
  x: integer ;
begin
  for x := 0 to ElorendelesGrid.GroupColumnCount - 1 do begin
      if ElorendelesGrid.GroupColumns[x] = AColumn then Exit ;
  end ;

  AktivNdx := ElorendelesGrid.ColumnByFieldName('Aktiv').Index ;
  HozzaadottElemNdx := ElorendelesGrid.ColumnByFieldName('HozzaadottElem').Index ;
  KivalasztvaNdx := ElorendelesGrid.ColumnByFieldName('Kivalasztva').Index ;
  RaktarraNdx := ElorendelesGrid.ColumnByFieldName('Raktarra').Index ;
  FeldolgozvaNdx := ElorendelesGrid.ColumnByFieldName('Feldolgozva').Index ;
  FelosztvaNdx := ElorendelesGrid.ColumnByFieldName('Felosztva').Index ;

  if ANode.Values[AktivNdx] <> Null then begin
    Aktiv := Boolean(ANode.Values[AktivNdx]) ;
    if not Aktiv then AColor := clGray ;
  end ;
  if ANode.Values[FelosztvaNdx] <> Null then begin
    Felosztva := Boolean(ANode.Values[FelosztvaNdx]) ;
    if Felosztva then AColor := clBlue ;
  end ;
  if ANode.Values[HozzaadottElemNdx] <> Null then begin
    Hozzaadott := Boolean(ANode.Values[HozzaadottElemNdx]) ;
    if Hozzaadott then AColor := clYellow ;
  end ;
  if ANode.Values[KivalasztvaNdx] <> Null then begin
    Kivalasztva := Boolean(ANode.Values[KivalasztvaNdx]) ;
    if Kivalasztva and Hozzaadott then AColor := EditColor else if Kivalasztva then AColor := EditColor2 ;
  end ;
  if ANode.Values[RaktarraNdx] <> Null then begin
    Raktarra := Boolean(ANode.Values[RaktarraNdx]) ;
    if Raktarra then AColor := clTeal ;
  end ;
  if ANode.Values[FeldolgozvaNdx] <> Null then begin
    Feldolgozva := Boolean(ANode.Values[FeldolgozvaNdx]) ;
    if Feldolgozva and Hozzaadott then AColor := DoneAddedColor else if Feldolgozva then AColor := clGreen ;
  end ;
end;

procedure TMainForm.NewItemBtnClick(Sender: TObject);
var
  RendelesAz, TetelSrsz, Id: integer;
  RendSz: string ;
begin
  try
    try
      if ToolsDm.qElorendeles.UpdatesPending then begin
        ErrMsg('El�bb menteni vagy visszavonni kell a kor�bbi v�ltozat�sokat!') ;
        Exit ;
      end ;
      ToolsDm.qElorendeles.CheckBrowseMode ;
      ToolsDm.qElorendeles.DisableControls ;
      RendelesAz := ToolsDm.qElorendelesRendelesAz.AsInteger ;
      TetelSrsz := ToolsDm.qElorendelesTetelSrsz.AsInteger ;
      RendSz := ToolsDm.qElorendelesRendSz.AsString ;
      ToolsDm.qElorendeles.Active := False ;
      ToolsDm.AddElorendItem.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
      ToolsDm.AddElorendItem.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
      ToolsDm.AddElorendItem.ParamByName('@RendSz').AsString := RendSz ;
      ToolsDm.AddElorendItem.ParamByName('@Id').Clear ;
      ToolsDm.AddElorendItem.ExecProc ;
      Id := ToolsDm.AddElorendItem.ParamByName('@Id').AsInteger ;
      ToolsDm.qElorendeles.Active := True ;
      if not ToolsDm.qElorendeles.Locate('Id', Id, [loCaseInsensitive]) then ErrMsg('Nem tal�lhat� a keresett rekord!') ;
    finally
      ToolsDm.qElorendeles.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
  //ErrMsg('Az aktu�lis rendel�s kiv�lasztott t�tel�hez �j sor hozz�ad�sa.') ;
end;

procedure TMainForm.ElorendSaveBtnClick(Sender: TObject);
begin
  try
    ToolsDm.qElorendeles.CheckBrowseMode ;
    if not ToolsDm.qElorendeles.UpdatesPending then begin
      ErrMsg('Nem t�rt�nt v�ltoz�s, �gy nincs mit menteni!') ;
      Exit ;
    end ;
    with ToolsDm.qElorendeles do
    begin
      Dm.MainDb.StartTransaction;
      try
        ApplyUpdates; {try to write the updates to the database};
        Dm.MainDb.Commit; {on success, commit the changes};
      except
        Dm.MainDb.Rollback; {on failure, undo the changes};
      raise; {raise the exception to prevent a call to CommitUpdates!}
      end;
      CommitUpdates; {on success, clear the cache}
    end;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ElorendUndoBtnClick(Sender: TObject);
begin
  try
    ToolsDm.qElorendeles.CheckBrowseMode ;
    if not ToolsDm.qElorendeles.UpdatesPending then begin
      ErrMsg('Nem t�rt�nt v�ltoz�s, �gy nincs mit visszavonni!') ;
      Exit ;
    end ;
    ToolsDm.qElorendeles.CancelUpdates ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ElorendelesGridEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
begin
  // az inakt�v, felosztott sort ne lehet edit�lni
  if (not ElorendelesGridAktiv.Field.AsBoolean) or (ElorendelesGrid.FocusedField = ElorendelesGridAktiv.Field)
  or ElorendelesGridFelosztva.Field.AsBoolean
  or (ElorendelesGrid.FocusedField = ElorendelesGridHozzaadottElem.Field) then begin
    Allow := False ;
    Exit ;
  end ;
  // Hozz�adott elem eset�n
  if ElorendelesGridHozzaadottElem.Field.AsBoolean then begin
    // nem v�ltoztathat� a hozz�adott elem "hozz�adott elem" st�tusza
    if ElorendelesGrid.FocusedField = ElorendelesGridHozzaadottElem.Field then begin
      Allow := False ;
      Exit ;
    end ;
    // nem v�ltoztathat� a hozz�adott elem "felosztva" st�tusza
    if ElorendelesGrid.FocusedField = ElorendelesGridFelosztva.Field then begin
      Allow := False ;
      Exit ;
    end ;
    // Egy�bk�nt m�dos�that�
    Allow := True ;
    Exit ;
  end
  else begin
    // Ha nem hozz�adott elem, akkor a "felosztva" st�tusz m�dos�that�
    if ElorendelesGrid.FocusedField = ElorendelesGridFelosztva.Field then Allow := True ;
    //Exit ;
  end ;
  // A besz�ll�t�i adatok, megjegyz�sek m�dosthat�k
  if (ElorendelesGrid.FocusedField = ElorendelesGridBeszallitoNev.Field)
  or (ElorendelesGrid.FocusedField = ElorendelesGridBeszallitoiHatarido.Field)
  or (ElorendelesGrid.FocusedField = ElorendelesGridKivalasztva.Field)
  or (ElorendelesGrid.FocusedField = ElorendelesGridDiszponensMegjegyzes.Field)
  or (ElorendelesGrid.FocusedField = ElorendelesGridBeszallitoMegjegyzes.Field)
  or (ElorendelesGrid.FocusedField = ElorendelesGridRaktarra.Field)
  then begin
    Allow := True ;
    Exit ;
  end
  else Allow := False ;
end;

procedure TMainForm.ElorendReportBtnClick(Sender: TObject);
var
  Msg: string ;
begin
  try
    if ToolsDm.qElorendeles.Active then begin
      Msg := 'El nem mentett m�dos�t�sok vannak, ennek elen�re friss�ted az �llom�nyt?' + #13 + '�gy a v�ltoztat�sok el fognak veszni.' ;
      if ToolsDm.qElorendeles.UpdatesPending then begin
        if MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit ;
      end ;
    end ;
    ToolsDm.tBeszallitok.Active := False ;
    ToolsDm.qRendTetel.Active := False ;
    ToolsDm.qElorendeles.Active := False ;
    ToolsDm.qElorendeles.ParamByName('RendszKezd').AsString := KezdoRendszEdit.Text ;
    if Trim(UtolsoRendszEdit.Text) = '' then ToolsDm.qElorendeles.ParamByName('RendszVeg').AsString := KezdoRendszEdit.Text
    else ToolsDm.qElorendeles.ParamByName('RendszVeg').AsString := UtolsoRendszEdit.Text ;
    ToolsDm.qElorendeles.Active := True ;
    ElorendelesGrid.FullExpand ;
    ToolsDm.qRendTetel.Active := True ;
    ToolsDm.tBeszallitok.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ElorendelesRaktarraOpenBtnClick(Sender: TObject);
begin
  try
    ToolsDm.tElorendelesRaktarra.Active := True ;
    //SetGridColWidth(ElorendelesRaktarraGrid) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.RaktarraBtnClick(Sender: TObject);
var
  Bmk: TBookmark;
  Rajzszam : string ;
  i: integer ;
begin
  try
    try
      if not ToolsDm.qElorendeles.Active then begin
        ErrMsg('Nincs megnyitva az �llom�ny!') ;
        Exit ;
      end ;
      ToolsDm.tElorendelesRaktarra.Active := True ;
      ToolsDm.tElorendelesRaktarra.DisableControls ;
      Bmk := ToolsDm.qElorendeles.GetBookmark ;
      ToolsDm.qElorendeles.DisableControls ;
      if PrgForm = nil then PrgForm := TPrgForm.Create(Application) ;
      PrgForm.ProgressBar1.Position := 0 ;
      PrgForm.ProgressBar1.Max := ToolsDm.qElorendeles.RecordCount ;
      PrgForm.Caption := 'Rakt�rra rendelt elemek megjel�l�se ...' ;
      PrgForm.Show ;
      i := 0 ;
      ToolsDm.qElorendeles.First ;
      while not ToolsDm.qElorendeles.Eof do begin
        inc(i) ;
        PrgForm.ProgressBar1.Position := i ;
        Rajzszam := ToolsDm.qElorendelesRajzszam.AsString ;
        if ToolsDm.tElorendelesRaktarra.Locate('Rajzszam', Rajzszam, [loCaseInsensitive]) then begin
          ToolsDm.qElorendeles.Edit ;
          ToolsDm.qElorendelesRaktarra.AsBoolean := True ;
          ToolsDm.qElorendeles.Post ;
        end ;
        ToolsDm.qElorendeles.Next ;
      end ;
    finally
      ToolsDm.tElorendelesRaktarra.EnableControls ;
      if (Bmk <> Nil) and ToolsDm.qElorendeles.BookmarkValid(bmk) then ToolsDm.qElorendeles.GotoBookmark(Bmk) ;
      ToolsDm.qElorendeles.EnableControls ;
      PrgForm.Hide ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ElorendelesAdatokOpenBtnClick(Sender: TObject);
begin
  try
    ToolsDm.tElorendelesAdatok.Active := True ;
    //SetGridColWidth(ElorendelesAdatokGrid) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Panel94Resize(Sender: TObject);
begin
  SetButtons(Panel94, False) ;
end;

procedure TMainForm.MegrendelesBtnClick(Sender: TObject);
var
  Id: integer ;
begin
  try
    try
      if not ToolsDm.qElorendeles.Active then begin
        ErrMsg('Nincs megnyitva az �llom�ny, �gy nem k�sz�thet� rendel�s!') ;
        Exit ;
      end ;
      ToolsDm.qElorendeles.CheckBrowseMode ;
      if ToolsDm.qElorendeles.UpdatesPending then begin
        ErrMsg('El nem mentett v�ltoz�sok vannak!' + #13 + 'Miel�tt tov�bbl�pn�l el kell menteni vagy vissza kell vonni azokat.') ;
        Exit ;
      end ;

      // Eb, Bb, Oh megrendel�se
      if ElorendelesEbBbOhReport = nil then ElorendelesEbBbOhReport := TElorendelesEbBbOhReport.Create(Application) ;
      ElorendelesEbBbOhReport.CimzettLabel.Caption := '' ;//CimzettEdit.Text ;
      //ElorendelesReport2.CegLabel.Caption := '' ;//CegEdit.Text ;
      if ElorendelesEbBbOhReport.ElorendelesEbBbOh.Active then ElorendelesEbBbOhReport.ElorendelesEbBbOh.Active := False ;
      ElorendelesEbBbOhReport.DatumLabel.Caption := DateToStr(Date) ;
      ElorendelesEbBbOhReport.ElorendelesEbBbOh.Active := True ;
      if ElorendelesEbBbOhReport.ElorendelesEbBbOh.RecordCount <> 0 then begin
        ElorendelesEbBbOhReport.Preview ;

        if MessageDlg('Feldolgozottra �ll�that� a kinyomtatott t�telek st�tusza?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
          ElorendelesEbBbOhReport.ElorendelesEbBbOh.First ;
          while not ElorendelesEbBbOhReport.ElorendelesEbBbOh.Eof do begin
            Id := ElorendelesEbBbOhReport.ElorendelesEbBbOhId.AsInteger ;
            ToolsDm.SetElorendesOk.ParamByName('@Id').AsInteger := Id ;
            ToolsDm.SetElorendesOk.ExecProc ;
            ElorendelesEbBbOhReport.ElorendelesEbBbOh.Next ;
          end ;
        end ;
      end ;
      if ElorendelesEbBbOhReport <> nil then ElorendelesEbBbOhReport.ElorendelesEbBbOh.Active := False ;

      // Egy�b alkatr�szek megrendel�se
      if ElorendelesOtherReport = nil then ElorendelesOtherReport := TElorendelesOtherReport.Create(Application) ;
      if ElorendelesOtherReport.ElorendelesOther.Active then ElorendelesOtherReport.ElorendelesOther.Active := False ;
      ElorendelesOtherReport.ElorendelesOther.Active := True ;
      if ElorendelesOtherReport.ElorendelesOther.RecordCount <> 0 then begin
        ElorendelesOtherReport.Preview ;
        if MessageDlg('Feldolgozottra �ll�that� a kinyomtatott t�telek st�tusza?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
          ElorendelesOtherReport.ElorendelesOther.First ;
          while not ElorendelesOtherReport.ElorendelesOther.Eof do begin
            Id := ElorendelesOtherReport.ElorendelesOtherId.AsInteger ;
            ToolsDm.SetElorendesOk.ParamByName('@Id').AsInteger := Id ;
            ToolsDm.SetElorendesOk.ExecProc ;
            ElorendelesOtherReport.ElorendelesOther.Next ;
          end ;
        end ;
      end ;
      if ElorendelesOtherReport <> nil then ElorendelesOtherReport.ElorendelesOther.Active := False ;

      ElorendReportBtnClick(Sender) ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.NewLineBtnClick(Sender: TObject);
var
  Id: integer ;
begin
  try
    try
      if not ToolsDm.qElorendeles.Active then begin
        ErrMsg('nincs megnyitva az �llom�ny!') ;
        Exit ;
      end ;
      ToolsDm.AddElorendItem.ParamByName('@RendelesAz').AsInteger := ToolsDm.qElorendelesRendelesAz.AsInteger ;
      ToolsDm.AddElorendItem.ParamByName('@RendSz').AsString := ToolsDm.qElorendelesRendSz.AsString ;
      ToolsDm.AddElorendItem.ParamByName('@TetelSrsz').AsInteger := ToolsDm.qElorendelesTetelSrsz.AsInteger ;
      ToolsDm.AddElorendItem.ParamByName('@Id').Clear ;
      ToolsDm.AddElorendItem.ExecProc ;
      Id := ToolsDm.AddElorendItem.ParamByName('@Id').AsInteger ;

      ToolsDm.qElorendeles.DisableControls ;
      ToolsDm.qElorendeles.Active := False ;
      ToolsDm.qElorendeles.Active := True ;
      ToolsDm.qElorendeles.Locate('Id', Id, [loCaseInsensitive]) ;
    finally
      ToolsDm.qElorendeles.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.BeszallitokOpenBtnClick(Sender: TObject);
begin
  try
    ToolsDm.tBeszallitok.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.Oszlopokigaztsa5Click(Sender: TObject);
begin
  SetGridColWidth(ElorendelesGrid) ;
end;

procedure TMainForm.ElorendelesGridDiszponensMegjegyzesCloseUp(
  Sender: TObject; var Text: String; var Accept: Boolean);
begin
  Accept := True ;
  ToolsDm.qElorendeles.CheckBrowseMode ;
end;

procedure TMainForm.ElorendelesGridBeszallitoMegjegyzesCloseUp(
  Sender: TObject; var Text: String; var Accept: Boolean);
begin
  Accept := True ;
  ToolsDm.qElorendeles.CheckBrowseMode ;
end;

procedure TMainForm.ItemDevideBtnClick(Sender: TObject);
var
  Id, ChildNum: integer ;
  Msg: string ;
begin
  try
    if not ToolsDm.qElorendeles.Active then begin
      ErrMsg('Nincs kiv�lasztott elem!') ;
      Exit ;
    end ;
    if (not ToolsDm.qElorendelesAktiv.AsBoolean) or ToolsDm.qElorendelesHozzaadottElem.AsBoolean
    or ToolsDm.qElorendelesFelosztva.AsBoolean or ToolsDm.qElorendelesKivalasztva.AsBoolean or ToolsDm.qElorendelesFeldolgozva.AsBoolean
    then begin
      ErrMsg('Csak akt�v, nem hozz�adott, nem felosztott,' + #13 + 'nem kiv�lasztott �s nem feldolgozott elem bonthat� t�telekre!') ;
      Exit ;
    end ;
    ToolsDm.qElorendeles.CheckBrowseMode ;
    if ToolsDm.qElorendeles.UpdatesPending then begin
      ErrMsg('A t�tel feloszt�sa el�tt az eddigi m�dos�t�sokat el kell menteni!') ;
      Exit ;
    end ;
    if ChildNumInputForm = nil then ChildNumInputForm := TChildNumInputForm.Create(Application) ;
    if ChildNumInputForm.ShowModal <> mrOk then Exit ;
    ChildNum := ChildNumInputForm.ChildNumEdit.AsInteger ;
    Id := ToolsDm.qElorendelesId.AsInteger ;

    ToolsDm.ElorendelesTetelFeloszt.ParamByName('@Id').AsInteger := Id ;
    ToolsDm.ElorendelesTetelFeloszt.ParamByName('@ChildNum').AsInteger := ChildNum ;
    ToolsDm.ElorendelesTetelFeloszt.ExecProc ;

    ElorendReportBtnClick(Sender) ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.KezdoRendszEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then ElorendReportBtnClick(Sender) ;
end;

procedure TMainForm.UtolsoRendszEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then ElorendReportBtnClick(Sender) ;
end;

procedure TMainForm.BitBtn18Click(Sender: TObject);
begin
  try
    ToolsDm.qUndo.ExecSQL ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CouplingCopyAccessoriesExecute(Sender: TObject);
var
  i, j, sorszam, SelCount: integer ;
  sor: variant ;
  DataSet: TDataSet ;
begin
  try
    DataSet := CsatlRajzTartGrid.DataSource.DataSet ;
    sorszam := DataSet.FieldByName('srsz').AsInteger ;
    CouplingAccessoryFields := VarArrayCreate([0, CsatlRajzTartGrid.SelectedCount - 1], VarVariant) ;
    sor := VarArrayCreate([0, DataSet.FieldCount - 1], VarVariant) ;
    SelCount := CsatlRajzTartGrid.SelectedCount ;
    if SelCount = 0 then begin
      ErrMsg('Nincs kiv�lasztva t�tel!') ;
      Exit ;
    end ;
    for i := 0 to SelCount - 1 do begin
      if DataSet.BookmarkValid(pointer(CsatlRajzTartGrid.SelectedRows[i])) then begin
        DataSet.GotoBookmark(pointer(CsatlRajzTartGrid.SelectedRows[i])) ;
        for j := 0 to DataSet.FieldCount - 1 do sor[j] := DataSet.Fields[j].Value ;
        CouplingAccessoryFields[i] := sor ;
      end ;
    end ;
    CsatlRajzTartGrid.ClearSelection ;
    CouplingPasteAccessories.Hint := 'A(z) ' + IntToStr(sorszam) + ' sorsz�m� csatlakoz� ' + IntToStr(SelCount) + ' tartoz�k�nak beilleszt�se.' ;
    CouplingPasteAccessories.Enabled := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.CouplingPasteAccessoriesExecute(Sender: TObject);
var
  i, j, sorszam: integer ;
  sor: variant ;
  DataSet: TDataSet ;
begin
  try
    Sorszam := Dm.CsatlakozokSrsz.AsInteger ;
    DataSet := CsatlRajzTartGrid.DataSource.DataSet ;
    for i := 0 to VarArrayHighBound(CouplingAccessoryFields, 1) do begin
      sor := CouplingAccessoryFields[i] ;
      DataSet.CheckBrowseMode ;
      DataSet.Insert ;
      DataSet.Post ;
      DataSet.Edit ;
      //s := '' ;
      for j := 0 to VarArrayHighBound(sor, 1) do begin
        if DataSet.Fields[j].FieldName <> 'TartozekId' then begin
          DataSet.Fields[j].Value := sor[j] ;
          //s := s + ',' + sor[j] ;
        end ;
      end ;
      //ErrMsg(s) ;
      DataSet.FieldByName('srsz').AsInteger := Sorszam ;
      DataSet.Post ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.BitBtn24Click(Sender: TObject);
begin
  Dm.CheckDependencies(Dm.tTechlapSrsz.AsInteger) ;
end;

procedure TMainForm.ToolButton64Click(Sender: TObject);
var
  TetelSrsz, RendelesAz: integer ;
begin
  try
    try
      if SerialForm = nil then SerialForm := TSerialForm.Create(Application) ;
      if OrderDm.qSerials.Active then OrderDm.qSerials.Active := False ;
      RendelesAz := Dm.HSOrderHeadListRendelesAz.AsInteger ;
      TetelSrsz := Dm.RendelesTetelTetelSrsz.AsInteger ;
      OrderDm.qSerials.ParamByName('RendelesAz').AsInteger := RendelesAz ;
      OrderDm.qSerials.ParamByName('TetelSrsz').AsInteger := TetelSrsz ;
      OrderDm.qSerials.Active := True ;
      SerialForm.ShowModal ;
    finally
      OrderDm.qSerials.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ShowSerialsExecute(Sender: TObject);
var
  RendelesAz: integer ;
begin
  try
    try
      if SerialForm = nil then SerialForm := TSerialForm.Create(Application) ;
      if OrderDm.qSerials.Active then OrderDm.qSerials.Active := False ;
      RendelesAz := Dm.HSOrderHeadListRendelesAz.AsInteger ;
      OrderDm.qSerials.ParamByName('RendelesAz').AsInteger := RendelesAz ;
      OrderDm.qSerials.Active := True ;
      SerialForm.ShowModal ;
    finally
      OrderDm.qSerials.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.ShowOrderCommentExecute(Sender: TObject);
var
  RendSz: string ;
  Revizio, RecCount: integer ;
  Comment: widestring ;
begin
  try
    try
      if OrderCommentForm = nil then OrderCommentForm := TOrderCommentForm.Create(Application) ;
      RendSz := Dm.HSOrderHeadListRendSz.AsString ;
      Revizio := Dm.HSOrderHeadListSapRevizio.AsInteger ;
      OrderCommentForm.Caption := 'A(z) ' + RendSz + ' sz. rendel�shez tartoz� megjegyz�sek' ;
      OrderDm.GetAllOrderComment.Active := False ;
      OrderDm.GetAllOrderComment.ParamByName('@RendSz').AsString := RendSz ;
      OrderDm.GetAllOrderComment.Active := True ;
      OrderDm.GetAllOrderComment.FetchAll ;
      RecCount := OrderDm.GetAllOrderComment.RecordCount ;
      if RecCount <= 0 then begin
        ErrMsg('A kiv�lasztott rendel�shez nem tartozik SAP import adat!') ;
        Exit ;
      end ;
      if not OrderDm.GetAllOrderComment.Locate('Revizio', Revizio, [loCaseInsensitive]) then begin
        ErrMsg('Az adott revizi�hoz nem tartozik SAP import adat, de l�tezik m�s revizi�hoz!') ;
      end ;
      OrderCommentForm.Revizio := Revizio ;
      OrderCommentForm.ShowModal ;
    finally
      OrderDm.GetOrderComment.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

function TMainForm.GetOrderComment: widestring ;
var
  RendSz: string ;
  Revizio: integer ;
begin
  Result := '' ;
  try
    try
      RendSz := Dm.HSOrderHeadListRendSz.AsString ;
      Revizio := Dm.HSOrderHeadListSapRevizio.AsInteger ;
      if OrderDm.GetOrderComment.Active then OrderDm.GetOrderComment.Active := False ;
      OrderDm.GetOrderComment.ParamByName('@RendSz').AsString := RendSz ;
      OrderDm.GetOrderComment.ParamByName('@Revizio').AsInteger := Revizio ;
      OrderDm.GetOrderComment.Active := True ;
      Result := OrderDm.GetOrderCommentMellekletHu.AsString ;
    finally
      OrderDm.GetOrderComment.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.ApplicationEvents1ActionExecute(Action: TBasicAction;
  var Handled: Boolean);
var
  ActionName: string ;
begin
  if EventsForm <> nil then begin
    ActionName := Trim(Action.Name) ;
    if ActionName <> '' then EventsForm.EventListBox.Items.Add(ActionName) ;
  end ;
end;

procedure TMainForm.AboutBoxBtnClick(Sender: TObject);
begin
  try
    if AboutBox = nil then AboutBox := TAboutBox.Create(Application) ;
    AboutBox.Version.Caption := 'Version: ' + Versio.FileVersion ;
    AboutBox.ShowModal ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TMainForm.AddEvent(EventName, ProgFileName, Note: string) ;
begin
  try
    Dm.AddProgEvent.ParamByName('@ProgEvent').AsString := EventName ;
    Dm.AddProgEvent.ParamByName('@ProgName').AsString := ProgFileName ;
    Dm.AddProgEvent.ParamByName('@Note').AsString := Note ;
    Dm.AddProgEvent.ExecProc ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TMainForm.ActionList1Execute(Action: TBasicAction;
  var Handled: Boolean);
begin
  AddEvent(TAction(Action).Name, Versio.FileName, '') ;
end;

end.
