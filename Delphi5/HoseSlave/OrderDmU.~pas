unit OrderDmU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MyProcs, RxMemDS;

const
  Msg3 = 'Biztos, hogy helyesen adtad meg a hosszt?' ;

type

  TSpesRec = record

  end ;

  TOrderDm = class(TDataModule)
    dsRendFej: TDataSource;
    dsRendTetel: TDataSource;
    spGetUserProductList: TStoredProc;
    dsGetUserProductList: TDataSource;
    qRendEgyeb: TQuery;
    qRendEgyebRendelesAz: TIntegerField;
    qRendEgyebTetelSrsz: TIntegerField;
    qRendEgyebSorszam: TIntegerField;
    qRendEgyebMegnevezes: TStringField;
    qRendEgyebDarabszam: TSmallintField;
    qRendEgyebMegjegyzes: TStringField;
    qRendEgyebActive: TBooleanField;
    qRendEgyebCreatorName: TStringField;
    qRendEgyebCreateDate: TDateTimeField;
    dsRendEgyeb: TDataSource;
    qPenznem: TQuery;
    qPenznemDevizaId: TIntegerField;
    qPenznemShortName: TStringField;
    qPenznemFullName: TStringField;
    qSalesAreas: TQuery;
    qSalesAreasProductCode: TSmallintField;
    qSalesAreasSalesAreaCode: TSmallintField;
    qSalesAreasSalesAreaName: TStringField;
    tRendTetel: TTable;
    tRendFej: TTable;
    tRendFejRendelesAz: TIntegerField;
    tRendFejTermekKod: TIntegerField;
    tRendFejRendSz: TStringField;
    tRendFejPhxRendSz: TStringField;
    tRendFejVevoRendSz: TStringField;
    tRendFejVevo: TStringField;
    tRendFejFelhasznalo: TStringField;
    tRendFejHatarido: TDateTimeField;
    tRendFejExtrKtsg: TFloatField;
    tRendFejExtrPenznem: TStringField;
    tRendFejErtTerulet: TStringField;
    tRendFejRKonfekcio: TStringField;
    tRendFejLevelSzama: TStringField;
    tRendFejLevelDatuma: TDateTimeField;
    tRendFejRMegj: TStringField;
    tRendFejRRogzit: TStringField;
    tRendFejRRogzIdo: TDateTimeField;
    tRendFejRModosit: TStringField;
    tRendFejRModIdo: TDateTimeField;
    tRendFejRModMezok: TFloatField;
    tRendFejTorolt: TBooleanField;
    tRendFejEnged: TBooleanField;
    tRendFejVissza: TBooleanField;
    tRendFejIgertHatarido: TDateTimeField;
    tRendFejAjanlatSzam: TStringField;
    qRendSpec: TQuery;
    qRendSpecCikkszam: TStringField;
    qRendSpecSpecifikacio: TStringField;
    qRendSpecAtmero: TFloatField;
    qRendSpecpsi: TFloatField;
    qRendSpecmpa: TFloatField;
    qRendSpechossz: TFloatField;
    qRendSpechosszme: TStringField;
    qRendSpeclang: TBooleanField;
    qRendSpecbg: TBooleanField;
    qRendSpeckg: TBooleanField;
    qRendSpecpa: TBooleanField;
    qRendSpeckv: TBooleanField;
    qRendSpecKgInter: TBooleanField;
    qRendSpecKvMua: TBooleanField;
    qRendSpecKvFedHelix: TBooleanField;
    qRendSpecKvNFedHelix: TBooleanField;
    qTomloNev: TQuery;
    CouplingCodeQry: TQuery;
    CouplingCodeQrycouplingDNb: TStringField;
    CouplingCodeQryendFittingName: TStringField;
    qPack: TQuery;
    dsPack: TDataSource;
    qPackcsomagolas: TStringField;
    spNewSapOrders: TStoredProc;
    dsNewSapOrders: TDataSource;
    Table1: TTable;
    spCreateOrderHead: TStoredProc;
    tRendFejSapRevizio: TSmallintField;
    qGetMaxItemNum: TQuery;
    qGetMaxItemNumSorszam: TIntegerField;
    spNewSapOrdersID: TStringField;
    spNewSapOrdersRendelesszam: TStringField;
    spNewSapOrdersRevizio: TIntegerField;
    spNewSapOrdersPozicio: TIntegerField;
    spNewSapOrdersUzlKotCsop: TStringField;
    spNewSapOrdersOrszag: TStringField;
    spNewSapOrdersMegrendelo: TStringField;
    spNewSapOrdersVevoRefSz: TStringField;
    spNewSapOrdersKontakt: TStringField;
    spNewSapOrdersArufogado: TStringField;
    spNewSapOrdersMegrendDatuma: TDateTimeField;
    spNewSapOrdersSzallHatarido: TDateTimeField;
    spNewSapOrdersRefBiz: TStringField;
    spNewSapOrdersHozzSzam: TStringField;
    spNewSapOrdersFizetesiMod: TStringField;
    spNewSapOrdersIncoterms1: TStringField;
    spNewSapOrdersIncoterms2: TStringField;
    spNewSapOrdersPenznem: TStringField;
    spNewSapOrdersArfolyam: TFloatField;
    spNewSapOrdersSzallitas: TIntegerField;
    spNewSapOrdersCsomagolas: TIntegerField;
    spNewSapOrdersSzerzPot: TFloatField;
    spNewSapOrdersSzerzRab: TFloatField;
    spNewSapOrdersSpecKtg1: TFloatField;
    spNewSapOrdersSzerszamKtg: TFloatField;
    spNewSapOrdersCikkszam: TStringField;
    spNewSapOrdersMennyiseg: TFloatField;
    spNewSapOrdersMe: TStringField;
    spNewSapOrdersNettoAr: TFloatField;
    spNewSapOrdersHataratert: TFloatField;
    spNewSapOrdersMennyCsok: TFloatField;
    spNewSapOrdersRabat: TFloatField;
    spNewSapOrdersSpecKtg2: TFloatField;
    spNewSapOrdersSpecCsom: TFloatField;
    spNewSapOrdersUgynJut: TFloatField;
    spNewSapOrdersUgynJut2: TFloatField;
    spNewSapOrdersPotlek: TFloatField;
    spNewSapOrdersKikonyvDat: TDateTimeField;
    spNewSapOrdersSzamlaDat: TDateTimeField;
    spNewSapOrdersKalkulalt: TFloatField;
    spNewSapOrdersStndErtek: TFloatField;
    spNewSapOrdersNettoArbHuf: TFloatField;
    spNewSapOrdersAnyagNeve: TStringField;
    spNewSapOrdersMarking: TStringField;
    spNewSapOrdersStandard: TStringField;
    spNewSapOrdersStandardText: TStringField;
    spNewSapOrdersTypeOfPacking: TStringField;
    spNewSapOrdersInsideDia: TFloatField;
    spNewSapOrdersLength: TFloatField;
    spNewSapOrdersLengthUnit: TStringField;
    spNewSapOrdersLength2: TFloatField;
    spNewSapOrdersTypeOfCoupling1: TStringField;
    spNewSapOrdersTypeOfCoupling1Text: TStringField;
    spNewSapOrdersTypeOfCoupling2: TStringField;
    spNewSapOrdersTypeOfCoupling2Text: TStringField;
    spNewSapOrdersSpecialImportOrder: TStringField;
    spNewSapOrdersPressureCategory: TStringField;
    spNewSapOrdersWorkingPressure: TFloatField;
    spNewSapOrdersWorkingPressureUnit: TStringField;
    spNewSapOrdersDesignPressure: TFloatField;
    spNewSapOrdersDesignPressureUnit: TStringField;
    spNewSapOrdersTestPressure: TFloatField;
    spNewSapOrdersTestPressureUnit: TStringField;
    spNewSapOrdersSafetyFactor: TFloatField;
    spNewSapOrdersCover: TStringField;
    spNewSapOrdersOutsideProtection: TStringField;
    spNewSapOrdersInternalStripwoundTube: TStringField;
    spNewSapOrdersTypeOfLining: TStringField;
    spNewSapOrdersSafetyClamp: TStringField;
    spNewSapOrdersLiftingCollar: TStringField;
    spNewSapOrdersElementC: TStringField;
    spNewSapOrdersMaxDesignTemperature: TIntegerField;
    spNewSapOrdersMinDesignTemperature: TIntegerField;
    spNewSapOrdersPBLCollarChain: TStringField;
    spNewSapOrdersText1: TStringField;
    spNewSapOrdersText2: TStringField;
    spNewSapOrdersText3: TStringField;
    spNewSapOrdersLastUpdate: TDateTimeField;
    spNewSapOrdersOsszetettKulcs: TStringField;
    mNewOrderList: TRxMemoryData;
    mNewOrderListRendelesszam: TStringField;
    mNewOrderListRevizio: TIntegerField;
    mRendSorok: TRxMemoryData;
    dsRendSorok: TDataSource;
    mRendSorokRendelesAz: TIntegerField;
    mRendSorokTermekKod: TIntegerField;
    mRendSorokRendSz: TStringField;
    mRendSorokPhxRendSz: TStringField;
    mRendSorokVevoRendSz: TStringField;
    mRendSorokVevo: TStringField;
    mRendSorokFelhasznalo: TStringField;
    mRendSorokHatarido: TDateTimeField;
    mRendSorokExtrKtsg: TFloatField;
    mRendSorokExtrPenznem: TStringField;
    mRendSorokErtTerulet: TStringField;
    mRendSorokRKonfekcio: TStringField;
    mRendSorokLevelSzama: TStringField;
    mRendSorokLevelDatuma: TDateTimeField;
    mRendSorokRMegj: TStringField;
    mRendSorokRRogzit: TStringField;
    mRendSorokRRogzIdo: TDateTimeField;
    mRendSorokRModosit: TStringField;
    mRendSorokRModIdo: TDateTimeField;
    mRendSorokRModMezok: TFloatField;
    mRendSorokTorolt: TBooleanField;
    mRendSorokEnged: TBooleanField;
    mRendSorokVissza: TBooleanField;
    mRendSorokIgertHatarido: TDateTimeField;
    mRendSorokAjanlatSzam: TStringField;
    mRendSorokSapRevizio: TSmallintField;
    tRendTetelRendelesAz: TIntegerField;
    tRendTetelTetelSrsz: TIntegerField;
    tRendTetelCikkszam: TStringField;
    tRendTetelSpecifikacio: TStringField;
    tRendTetelAtmero: TFloatField;
    tRendTetelpsi: TFloatField;
    tRendTetelMPa: TFloatField;
    tRendTetelLang: TBooleanField;
    tRendTetelBg: TBooleanField;
    tRendTetelKg: TBooleanField;
    tRendTetelPa: TBooleanField;
    tRendTetelKv: TBooleanField;
    tRendTetelKgInter: TBooleanField;
    tRendTetelKvMua: TBooleanField;
    tRendTetelKvFedHelix: TBooleanField;
    tRendTetelKvNFedHelix: TBooleanField;
    tRendTetelTipus: TStringField;
    tRendTetelCsatl1: TStringField;
    tRendTetelCsatl1Rsz: TStringField;
    tRendTetelCsatl2: TStringField;
    tRendTetelCsatl2Rsz: TStringField;
    tRendTetelDarabSzam: TFloatField;
    tRendTetelHossz: TFloatField;
    tRendTetelHosszMe: TStringField;
    tRendTetelTErtek: TFloatField;
    tRendTetelTPenznem: TStringField;
    tRendTetelOsszeallRsz: TStringField;
    tRendTetelKonstrukcio: TStringField;
    tRendTetelKonstrukcio2: TStringField;
    tRendTetelTKonfekcio: TStringField;
    tRendTetelTKonfekDatum: TDateTimeField;
    tRendTetelNormaIdo: TFloatField;
    tRendTetelDbjDatum: TDateTimeField;
    tRendTetelMuvDatum: TDateTimeField;
    tRendTetelKonstrDatum: TDateTimeField;
    tRendTetelFszHatarido: TDateTimeField;
    tRendTetelFszBeerk: TDateTimeField;
    tRendTetelAnyag: TStringField;
    tRendTetelCsomagolas: TStringField;
    tRendTetelEgyeb: TStringField;
    tRendTetelTMegj: TStringField;
    tRendTetelTRogzit: TStringField;
    tRendTetelTRogzIdo: TDateTimeField;
    tRendTetelTModosit: TStringField;
    tRendTetelTModIdo: TDateTimeField;
    tRendTetelModMezok: TFloatField;
    tRendTetelTorolt: TBooleanField;
    tRendTetelBeszolg: TBooleanField;
    tRendTetelTModHatarido: TDateTimeField;
    tRendTetelBeszolgIdo: TDateTimeField;
    tRendTetelBeszolgDb: TFloatField;
    tRendTetelBeszolgHossz: TFloatField;
    tRendTetelTomeg: TFloatField;
    tRendTetelGyartasInd: TDateTimeField;
    tRendTetelBefejezoMuv: TDateTimeField;
    tRendTetelAccListExist: TBooleanField;
    tRendTetelAccListDate: TDateTimeField;
    tRendTetelAccCreator: TStringField;
    tRendTetelBelsoHuvely: TStringField;
    tRendTetelHuvely: TStringField;
    tRendTetelSpiralkup: TStringField;
    tRendTetelEmelobilincs: TStringField;
    tRendTetelBiztBilincs: TStringField;
    tRendTetelTomitoGyuru1: TStringField;
    tRendTetelTomitoGyuru2: TStringField;
    tRendTetelFeneklap1: TStringField;
    tRendTetelFeneklap2: TStringField;
    tRendTetelNyomPrBilincs1: TStringField;
    tRendTetelNyomPrBilincs2: TStringField;
    tRendTetelVedoHuvely: TStringField;
    tRendTetelOsztottHuvely: TStringField;
    tRendTetelEgyebek: TMemoField;
    tRendTetelAtveteliKesz: TBooleanField;
    tRendTetelAtveteliIdopont: TDateTimeField;
    tRendTetelAtvetelitKeszitette: TStringField;
    tRendTetelInspector: TStringField;
    tRendTetelStamp: TBytesField;
    mRendSorokTetelSrsz: TIntegerField;
    mRendSorokCikkszam: TStringField;
    mRendSorokSpecifikacio: TStringField;
    mRendSorokAtmero: TFloatField;
    mRendSorokpsi: TFloatField;
    mRendSorokMPa: TFloatField;
    mRendSorokLang: TBooleanField;
    mRendSorokBg: TBooleanField;
    mRendSorokKg: TBooleanField;
    mRendSorokPa: TBooleanField;
    mRendSorokKv: TBooleanField;
    mRendSorokKgInter: TBooleanField;
    mRendSorokKvMua: TBooleanField;
    mRendSorokKvFedHelix: TBooleanField;
    mRendSorokKvNFedHelix: TBooleanField;
    mRendSorokTipus: TStringField;
    mRendSorokCsatl1: TStringField;
    mRendSorokCsatl1Rsz: TStringField;
    mRendSorokCsatl2: TStringField;
    mRendSorokCsatl2Rsz: TStringField;
    mRendSorokDarabSzam: TFloatField;
    mRendSorokHossz: TFloatField;
    mRendSorokHosszMe: TStringField;
    mRendSorokTErtek: TFloatField;
    mRendSorokTPenznem: TStringField;
    mRendSorokOsszeallRsz: TStringField;
    mRendSorokKonstrukcio: TStringField;
    mRendSorokKonstrukcio2: TStringField;
    mRendSorokTKonfekcio: TStringField;
    mRendSorokTKonfekDatum: TDateTimeField;
    mRendSorokNormaIdo: TFloatField;
    mRendSorokDbjDatum: TDateTimeField;
    mRendSorokMuvDatum: TDateTimeField;
    mRendSorokKonstrDatum: TDateTimeField;
    mRendSorokFszHatarido: TDateTimeField;
    mRendSorokFszBeerk: TDateTimeField;
    mRendSorokAnyag: TStringField;
    mRendSorokCsomagolas: TStringField;
    mRendSorokEgyeb: TStringField;
    mRendSorokTMegj: TStringField;
    mRendSorokTRogzit: TStringField;
    mRendSorokTRogzIdo: TDateTimeField;
    mRendSorokTModosit: TStringField;
    mRendSorokTModIdo: TDateTimeField;
    mRendSorokModMezok: TFloatField;
    mRendSorokBeszolg: TBooleanField;
    mRendSorokTModHatarido: TDateTimeField;
    mRendSorokBeszolgIdo: TDateTimeField;
    mRendSorokBeszolgDb: TFloatField;
    mRendSorokBeszolgHossz: TFloatField;
    mRendSorokTomeg: TFloatField;
    mRendSorokGyartasInd: TDateTimeField;
    mRendSorokBefejezoMuv: TDateTimeField;
    mRendSorokAccListExist: TBooleanField;
    mRendSorokAccListDate: TDateTimeField;
    mRendSorokAccCreator: TStringField;
    mRendSorokBelsoHuvely: TStringField;
    mRendSorokHuvely: TStringField;
    mRendSorokSpiralkup: TStringField;
    mRendSorokEmelobilincs: TStringField;
    mRendSorokBiztBilincs: TStringField;
    mRendSorokTomitoGyuru1: TStringField;
    mRendSorokTomitoGyuru2: TStringField;
    mRendSorokFeneklap1: TStringField;
    mRendSorokFeneklap2: TStringField;
    mRendSorokNyomPrBilincs1: TStringField;
    mRendSorokNyomPrBilincs2: TStringField;
    mRendSorokVedoHuvely: TStringField;
    mRendSorokOsztottHuvely: TStringField;
    mRendSorokEgyebek: TMemoField;
    mRendSorokAtveteliKesz: TBooleanField;
    mRendSorokAtveteliIdopont: TDateTimeField;
    mRendSorokAtvetelitKeszitette: TStringField;
    mRendSorokInspector: TStringField;
    mRendSorokInspectorMegj: TMemoField;
    tRendTetelSapTypeOfCoupling1: TStringField;
    tRendTetelSapTypeOfCoupling2: TStringField;
    mRendSorokSapTypeOfCoupling1: TStringField;
    mRendSorokSapTypeOfCoupling2: TStringField;
    spCreateNewOrder: TStoredProc;
    spGetExtraKtg: TStoredProc;
    spDeleteVoidOrderItem: TStoredProc;
    tRendFejFAutoUpdate: TBooleanField;
    tRendTetelTAutoUpdate: TBooleanField;
    mRendSorokMarking: TStringField;
    mRendSorokStandard: TStringField;
    tRendTetelMarking: TStringField;
    tRendTetelStandard: TStringField;
    tRendTetelStandardText: TStringField;
    mRendSorokStandardText: TStringField;
    tRendTetelTypeOfPacking: TStringField;
    mRendSorokTypeOfPacking: TStringField;
    tRendTetelWorkingPressure: TFloatField;
    tRendTetelWorkingPressureUnit: TStringField;
    tRendTetelDesignPressure: TFloatField;
    tRendTetelDesignPressureUnit: TStringField;
    tRendTetelTestPressure: TFloatField;
    tRendTetelTestPressureUnit: TStringField;
    tRendTetelSafetyFactor: TFloatField;
    mRendSorokWorkingPressure: TFloatField;
    mRendSorokWorkingPressureUnit: TStringField;
    mRendSorokDesignPressure: TFloatField;
    mRendSorokDesignPressureUnit: TStringField;
    mRendSorokTestPressure: TFloatField;
    mRendSorokTestPressureUnit: TStringField;
    mRendSorokSafetyFactor: TFloatField;
    tRendTetelTypeOfLining: TStringField;
    tRendTetelMaxDesignTemperature: TFloatField;
    tRendTetelMinDesignTemperature: TFloatField;
    mRendSorokTypeOfLining: TStringField;
    mRendSorokMaxDesignTemperature: TFloatField;
    mRendSorokMinDesignTemperature: TFloatField;
    mRendSorokUpdatable: TBooleanField;
    mRendSorokCounter: TIntegerField;
    qMeo: TQuery;
    qMeoMeo_Az: TIntegerField;
    qMeoK_SZ: TIntegerField;
    qMeoRendsz: TStringField;
    qMeoMERET: TStringField;
    qMeoId: TFloatField;
    qMeoIdU: TSmallintField;
    qMeoEgyebAdat: TFloatField;
    qMeoEgyebAdatU: TSmallintField;
    qMeoUzemiNyomas: TFloatField;
    qMeoUzemiNyomasU: TSmallintField;
    qMeoNevlegesHossz: TFloatField;
    qMeoNevlegesHosszU: TSmallintField;
    qMeoTIPUS: TStringField;
    qMeoCSATL_TIP: TStringField;
    qMeoCSATL_SZ: TStringField;
    qMeoANYAGC: TStringField;
    qMeoSZUK_TIP: TStringField;
    qMeoSZUK_SZ: TStringField;
    qMeoANYAGS: TStringField;
    qMeoFEMSZ_TIP: TStringField;
    qMeoFEMSZ_SZ: TStringField;
    qMeoANYAGF: TStringField;
    qMeoSZEMREVET: TStringField;
    qMeoMERTH: TStringField;
    qMeoMertHossz: TFloatField;
    qMeoMertHosszU: TSmallintField;
    qMeoPROBANYOM: TStringField;
    qMeoVIZSGALO: TStringField;
    qMeoINSPEKT: TStringField;
    qMeoMINOS: TStringField;
    qMeoM_DAT: TStringField;
    qMeoDatum: TDateTimeField;
    qMeoMEGJEGYZES: TStringField;
    qMeoDOSZIE_SZ: TIntegerField;
    qMeoRogzitette: TStringField;
    qMeoRogzitesIdopontja: TDateTimeField;
    qMeoTorolt: TBooleanField;
    qMeoOrderModified: TBooleanField;
    qMeoOrderDeleted: TBooleanField;
    qMeopsi: TFloatField;
    qMeoStamp: TVarBytesField;
    qMeoRendelesAz: TIntegerField;
    qMeoTetelSrsz: TIntegerField;
    dsMeo: TDataSource;
    qMeoIdMe: TStringField;
    qMeoUzemiNyomasMe: TStringField;
    qMeoNevlegesHosszMe: TStringField;
    qMeoMertHosszMe: TStringField;
    qLengthUnits: TQuery;
    qLengthUnitsUnitCode: TSmallintField;
    qLengthUnitsUnitGroup: TSmallintField;
    qLengthUnitsUnitName: TStringField;
    qLengthUnitsUnitSign: TStringField;
    qLengthUnitsConversionFactor: TFloatField;
    qLengthUnitsConstans: TFloatField;
    qPressUnits: TQuery;
    uMeo: TUpdateSQL;
    qInspektors: TQuery;
    qInspektorsinspekt: TStringField;
    qHoseTypes: TQuery;
    qHoseTypestipus: TStringField;
    qMeoGY_SZ: TStringField;
    spGetUserProductListTermekKod: TSmallintField;
    spGetUserProductListTermekNev: TStringField;
    spGetUserProductListTomloTipNev: TStringField;
    qHoseUsers: TQuery;
    qHoseUsersFelhasznalo: TStringField;
    qHoseDealers: TQuery;
    qHoseDealersVevo: TStringField;
    qMeoChipId: TStringField;
    qMeoChipDataExportDate: TDateTimeField;
    dsChipData: TDataSource;
    qCheckNumber: TQuery;
    qCheckNumberMeo_Az: TIntegerField;
    qCheckNumberGY_SZ: TStringField;
    qCheckNumberK_SZ: TIntegerField;
    qCheckNumberRendsz: TStringField;
    qCheckNumberMERET: TStringField;
    qCheckNumberId: TFloatField;
    qCheckNumberIdU: TSmallintField;
    qCheckNumberEgyebAdat: TFloatField;
    qCheckNumberEgyebAdatU: TSmallintField;
    qCheckNumberUzemiNyomas: TFloatField;
    qCheckNumberUzemiNyomasU: TSmallintField;
    qCheckNumberNevlegesHossz: TFloatField;
    qCheckNumberNevlegesHosszU: TSmallintField;
    qCheckNumberTIPUS: TStringField;
    qCheckNumberCSATL_TIP: TStringField;
    qCheckNumberCSATL_SZ: TStringField;
    qCheckNumberANYAGC: TStringField;
    qCheckNumberSZUK_TIP: TStringField;
    qCheckNumberSZUK_SZ: TStringField;
    qCheckNumberANYAGS: TStringField;
    qCheckNumberFEMSZ_TIP: TStringField;
    qCheckNumberFEMSZ_SZ: TStringField;
    qCheckNumberANYAGF: TStringField;
    qCheckNumberSZEMREVET: TStringField;
    qCheckNumberMERTH: TStringField;
    qCheckNumberMertHossz: TFloatField;
    qCheckNumberMertHosszU: TSmallintField;
    qCheckNumberPROBANYOM: TStringField;
    qCheckNumberVIZSGALO: TStringField;
    qCheckNumberINSPEKT: TStringField;
    qCheckNumberMINOS: TStringField;
    qCheckNumberM_DAT: TStringField;
    qCheckNumberDatum: TDateTimeField;
    qCheckNumberMEGJEGYZES: TStringField;
    qCheckNumberDOSZIE_SZ: TIntegerField;
    qCheckNumberRogzitette: TStringField;
    qCheckNumberRogzitesIdopontja: TDateTimeField;
    qCheckNumberTorolt: TBooleanField;
    qCheckNumberOrderModified: TBooleanField;
    qCheckNumberOrderDeleted: TBooleanField;
    qCheckNumberpsi: TFloatField;
    qCheckNumberStamp: TVarBytesField;
    qCheckNumberRendelesAz: TIntegerField;
    qCheckNumberTetelSrsz: TIntegerField;
    qCheckNumberChipId: TStringField;
    qCheckNumberChipDataExportDate: TDateTimeField;
    qMeoTomeg: TFloatField;
    tRendCsomEszk: TTable;
    tRendCsomEszkPackageId: TIntegerField;
    tRendCsomEszkRendelesAz: TIntegerField;
    tRendCsomEszkTetelSrsz: TSmallintField;
    tRendCsomEszkPackDevTypeCode: TIntegerField;
    tRendCsomEszkPackDevTypeName: TStringField;
    tRendCsomEszkPackDevCode: TIntegerField;
    tRendCsomEszkPackDevName: TStringField;
    tRendCsomEszkPackDevNum: TIntegerField;
    tRendCsomEszkNote: TStringField;
    tRendCsomEszkRogzitette: TStringField;
    tRendCsomEszkRogzIdopont: TDateTimeField;
    tRendCsomEszkOrdered: TBooleanField;
    tRendCsomEszkOrderName: TStringField;
    tRendCsomEszkOrderDate: TDateTimeField;
    tRendCsomEszkDeleted: TBooleanField;
    dsRendCsomEszk: TDataSource;
    qRendCsomEszk: TQuery;
    qRendCsomEszkPackageId: TIntegerField;
    qRendCsomEszkRendelesAz: TIntegerField;
    qRendCsomEszkTetelSrsz: TSmallintField;
    qRendCsomEszkPackDevTypeCode: TIntegerField;
    qRendCsomEszkPackDevTypeName: TStringField;
    qRendCsomEszkPackDevCode: TIntegerField;
    qRendCsomEszkPackDevName: TStringField;
    qRendCsomEszkPackDevNum: TIntegerField;
    qRendCsomEszkNote: TStringField;
    qRendCsomEszkRogzitette: TStringField;
    qRendCsomEszkRogzIdopont: TDateTimeField;
    qRendCsomEszkOrdered: TBooleanField;
    qRendCsomEszkOrderName: TStringField;
    qRendCsomEszkOrderDate: TDateTimeField;
    qRendCsomEszkDeleted: TBooleanField;
    qRendCsomEszkDeviceId: TIntegerField;
    qRendCsomEszkListOrder: TIntegerField;
    qRendCsomEszkDeviceName: TStringField;
    qRendCsomEszkDeviceTypeCode: TIntegerField;
    qRendCsomEszkdim1: TFloatField;
    qRendCsomEszkdim2: TFloatField;
    qRendCsomEszkdim3: TFloatField;
    qRendCsomEszkdim4: TFloatField;
    qRendCsomEszkdim5: TFloatField;
    qRendCsomEszkdim6: TFloatField;
    qRendCsomEszkdim7: TFloatField;
    qRendCsomEszkdim8: TFloatField;
    qRendCsomEszkdim9: TFloatField;
    qRendCsomEszkdim10: TFloatField;
    qRendCsomEszkNote_1: TStringField;
    qRendCsomEszkPicture: TBlobField;
    qRendCsomEszkTorolt: TBooleanField;
    spRequiredPacks: TStoredProc;
    dsRequiredPacks: TDataSource;
    spRequiredPacksID_Num: TIntegerField;
    spRequiredPacksRendelesAz: TIntegerField;
    spRequiredPacksRendSz: TStringField;
    spRequiredPacksTetelSrsz: TIntegerField;
    spRequiredPacksTModHatarido: TDateTimeField;
    tRendTetelBhAnyag: TStringField;
    tRendTetelEbMeret: TFloatField;
    tRendTetelBbMeret: TFloatField;
    tRendTetelAccListMailDate: TDateTimeField;
    tRendTetelAccListMailSender: TStringField;
    tRendTetelAccListMailSent: TBooleanField;
    tRendTetelH2S: TSmallintField;
    mRendSorokH2S: TIntegerField;
    spNewSapOrdersH2S: TIntegerField;
    spGetErtTerulet: TStoredProc;
    spGetErtTeruletErtTerulet: TStringField;
    tInfoChipConversion: TTable;
    tInfoChipConversionId: TSmallintField;
    tInfoChipConversionExportName: TStringField;
    tInfoChipConversionHSName: TStringField;
    tInfoChipConversionDefValue: TStringField;
    mICData: TRxMemoryData;
    dsICData: TDataSource;
    mICDataMeo_Az: TIntegerField;
    mICDataRendSz: TStringField;
    mICDataTetelSrsz: TIntegerField;
    mICDataAssetNumber: TStringField;
    mICDataCategoryID: TStringField;
    mICDataItemDescription: TStringField;
    mICDataDistributorID: TStringField;
    mICDataClientID: TStringField;
    mICDataLocationID: TStringField;
    mICDataChipID: TStringField;
    mICDataCertificationStatus: TStringField;
    mICDataCertificationInterval: TStringField;
    mICDataBoreSize: TStringField;
    mICDataNominalLegth: TStringField;
    mICDataDesignPressure: TStringField;
    mICDataTestPressure: TStringField;
    mICDataInternalStripwoundTube: TStringField;
    mICDataEndCoupling1: TStringField;
    mICDataEndCoupling2: TStringField;
    mICDataMaxDesignTemp: TStringField;
    mICDataMinDesignTemp: TStringField;
    mICDataManufacturer: TStringField;
    mICDataHoseType: TStringField;
    mICDataHoseStandard: TStringField;
    mICDataHoseCover: TStringField;
    mICDataOutsideProtection: TStringField;
    mICDataOpDynamicMBR: TStringField;
    mICDataStorageMBR: TStringField;
    mICDataOpStaticMBR: TStringField;
    mICDataNotes: TStringField;
    spSetMeoExportDate: TStoredProc;
    spCreateChipData: TStoredProc;
    spCreateChipDataMeo_Az: TIntegerField;
    spCreateChipDataRendSz: TStringField;
    spCreateChipDataTetelSrsz: TIntegerField;
    spCreateChipDataAssetNumber: TStringField;
    spCreateChipDataCategoryID: TStringField;
    spCreateChipDataItemDescription: TStringField;
    spCreateChipDataDistributorID: TStringField;
    spCreateChipDataClientID: TStringField;
    spCreateChipDataLocationID: TStringField;
    spCreateChipDataChipID: TStringField;
    spCreateChipDataCertificationStatus: TStringField;
    spCreateChipDataCertificationInterval: TStringField;
    spCreateChipDataBoreSize: TStringField;
    spCreateChipDataNominalLegth: TStringField;
    spCreateChipDataDesignPressure: TStringField;
    spCreateChipDataTestPressure: TStringField;
    spCreateChipDataInternalStripwoundTube: TStringField;
    spCreateChipDataEndCoupling1: TStringField;
    spCreateChipDataEndCoupling2: TStringField;
    spCreateChipDataMaxDesignTemp: TStringField;
    spCreateChipDataMinDesignTemp: TStringField;
    spCreateChipDataManufacturer: TStringField;
    spCreateChipDataHoseType: TStringField;
    spCreateChipDataHoseStandard: TStringField;
    spCreateChipDataHoseCover: TStringField;
    spCreateChipDataOutsideProtection: TStringField;
    spCreateChipDataOpDynamicMBR: TStringField;
    spCreateChipDataStorageMBR: TStringField;
    spCreateChipDataOpStaticMBR: TStringField;
    spCreateChipDataNotes: TStringField;
    spCreateChipDataICExportDate: TDateTimeField;
    spCreateChipDataICExporter: TStringField;
    tRendTetelMarkingId: TIntegerField;
    vMarkingX: TTable;
    vMarkingXMarkId: TIntegerField;
    vMarkingXMarkTypeId: TIntegerField;
    vMarkingXMarkazasTipusa: TStringField;
    vMarkingXMegjegyzes1: TStringField;
    vMarkingXMegnevezes: TStringField;
    vMarkingXRajzszam: TStringField;
    vMarkingXMegjegyzes2: TStringField;
    dsMarking: TDataSource;
    vMarkingXDescription: TMemoField;
    qRendEgyebKiszallitando: TBooleanField;
    qRendEgyebAzonosito: TStringField;
    qTomloNevMegnevezesId: TIntegerField;
    qTomloNevMegnevezes: TStringField;
    qTomloNevTermekKod: TIntegerField;
    qTomloNevRogzitette: TStringField;
    qTomloNevRogzIdopont: TDateTimeField;
    qNewHoseTypeName: TQuery;
    spNewHoseName: TStoredProc;
    qRendelesNorma: TQuery;
    dsRendelesNorma: TDataSource;
    qRendelesNormaRendelesAz: TIntegerField;
    qRendelesNormaRendSz: TStringField;
    qRendelesNormaVevo: TStringField;
    qRendelesNormaFelhasznalo: TStringField;
    qRendelesNormaTetelSrsz: TIntegerField;
    qRendelesNormaCikkszam: TStringField;
    qRendelesNormaSpecifikacio: TStringField;
    qRendelesNormaAtmero: TStringField;
    qRendelesNormaAtmeroMe: TStringField;
    qRendelesNormaHossz: TFloatField;
    qRendelesNormaHosszMe: TStringField;
    qRendelesNormaDarabszam: TFloatField;
    qRendelesNormaTModHatarido: TDateTimeField;
    qRendelesNormaRendRogzDatum: TDateTimeField;
    qRendelesNormaAnormaId: TIntegerField;
    qRendelesNormaKonstrukcioKod: TStringField;
    qRendelesNormaAnormaKod: TStringField;
    qRendelesNormaAnormaNev: TStringField;
    qAnyagszTetel: TQuery;
    spAddAnyagszList: TStoredProc;
    dsAnyagszTetel: TDataSource;
    uAnyagszTetel: TUpdateSQL;
    qAnyagszTetelId: TIntegerField;
    qAnyagszTetelItemId: TIntegerField;
    qAnyagszTetelRendelesszam: TStringField;
    qAnyagszTetelTetelSrsz: TIntegerField;
    qAnyagszTetelCikkszam: TStringField;
    qAnyagszTetelKonstrukcio: TStringField;
    qAnyagszTetelAnormaId: TIntegerField;
    qAnyagszTetelHossz: TFloatField;
    qAnyagszTeteldb: TSmallintField;
    qAnyagszList: TQuery;
    dsAnyagszList: TDataSource;
    qAnyagszListId: TIntegerField;
    qAnyagszListRogzitette: TStringField;
    qAnyagszListRogzIdopont: TDateTimeField;
    spMRP: TStoredProc;
    dsMRP: TDataSource;
    spMRPRendelesszam: TStringField;
    spMRPTetelSrsz: TIntegerField;
    spMRPKeszCikkszam: TStringField;
    spMRPKonstrukcio: TStringField;
    spMRPAnormaTetelSzam: TSmallintField;
    spMRPTetelNev: TStringField;
    spMRPCikkszam: TStringField;
    spMRPAnyagnev: TStringField;
    spMRPBruttoUzme: TFloatField;
    spMRPUzme: TStringField;
    spMRPBruttoTomeg: TFloatField;
    spMRPMe: TStringField;
    spMRPx: TIntegerField;
    qCouplingMaterial: TQuery;
    qCouplingMaterialCouplingMaterial: TStringField;
    spJoinedMarkingList: TStoredProc;
    spJoinedMarkingListId: TIntegerField;
    spJoinedMarkingListFocsoportNev: TStringField;
    spJoinedMarkingListCsoportNev: TStringField;
    spJoinedMarkingListAlcsoportNev: TStringField;
    spJoinedMarkingListMegnevezes: TStringField;
    spJoinedMarkingListMegjegyzes: TStringField;
    spJoinedMarkingListRajzszam: TStringField;
    spJoinedMarkingListUtvonal: TStringField;
    dsJoinedMarkingList: TDataSource;
    spGetJoinedMarkingItem: TStoredProc;
    spJoinedMarkingListSharePointLink: TStringField;
    spJoinedMarkingListErvenyes: TBooleanField;
    qMeoSpecifikacio: TStringField;
    qRendEgyebFestes: TStringField;
    qRendEgyebTipus: TIntegerField;
    tRendTetelInspectorMegj: TStringField;
    qSerials: TQuery;
    qSerialsMeo_Az: TIntegerField;
    qSerialsGY_SZ: TStringField;
    qSerialsRendsz: TStringField;
    qSerialsRendelesAz: TIntegerField;
    qSerialsTetelSrsz: TIntegerField;
    dsSerials: TDataSource;
    GetOrderComment: TStoredProc;
    GetOrderCommentMellekletEng: TMemoField;
    GetOrderCommentMellekletHu: TMemoField;
    dsGetOrderComment: TDataSource;
    EbBbOhElorendeles: TStoredProc;
    EbBbOhElorendelesRendelesszam: TStringField;
    EbBbOhElorendelesdb: TFloatField;
    EbBbOhElorendelesMegnevezes: TStringField;
    EbBbOhElorendelesRajzszam: TStringField;
    EbBbOhElorendelesMeret: TStringField;
    EbBbOhElorendelesFestes: TMemoField;
    EbBbOhElorendelesEgyediAzonosito: TMemoField;
    EbBbOhElorendelesTipus: TIntegerField;
    EbBbOhElorendelesAr: TFloatField;
    EbBbOhElorendelesCikkszamVeg: TStringField;
    dsEbBbOhElorendeles: TDataSource;
    qImportOrderRev: TQuery;
    qImportOrderRevRendelesszam: TStringField;
    qImportOrderRevRevizio: TIntegerField;
    dsGetAllOrderComment: TDataSource;
    GetAllOrderComment: TStoredProc;
    GetAllOrderCommentRendelesszam: TStringField;
    GetAllOrderCommentRevizio: TIntegerField;
    GetAllOrderCommentPozicio: TIntegerField;
    GetAllOrderCommentMellekletEng: TMemoField;
    GetAllOrderCommentMellekletHu: TMemoField;
    procedure tRendFejAfterInsert(DataSet: TDataSet);
    procedure tRendFejBeforeDelete(DataSet: TDataSet);
    procedure tRendFejBeforeEdit(DataSet: TDataSet);
    procedure tRendFejNewRecord(DataSet: TDataSet);
    procedure tRendTetelBeforeDelete(DataSet: TDataSet);
    procedure tRendTetelBeforeInsert(DataSet: TDataSet);
    procedure tRendTetelBeforePost(DataSet: TDataSet);
    procedure tRendTetelNewRecord(DataSet: TDataSet);
    procedure tRendFejAfterEdit(DataSet: TDataSet);
    procedure tRendFejAfterPost(DataSet: TDataSet);
    procedure tRendTetelAfterPost(DataSet: TDataSet);
    procedure qMeoBeforePost(DataSet: TDataSet);
    procedure qMeoAfterPost(DataSet: TDataSet);
    procedure qMeoAfterDelete(DataSet: TDataSet);
    procedure tRendCsomEszkBeforePost(DataSet: TDataSet);
    procedure tRendCsomEszkNewRecord(DataSet: TDataSet);
    procedure tRendCsomEszkAfterPost(DataSet: TDataSet);
    procedure tRendFejToroltChange(Sender: TField);
    procedure mRendSorokNewRecord(DataSet: TDataSet);
    procedure qAnyagszTetelNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tRendTetelAfterScroll(DataSet: TDataSet);
    procedure tRendFejBeforePost(DataSet: TDataSet);
    procedure tRendFejSapRevizioChange(Sender: TField);
  private
    { Private declarations }
    AnyagszItemCounter: integer ;
    function GetMaxItem(DataSet: TDataSet; FieldName: string): integer ;
    function CheckNumber(Number: string; Azonosito: integer): Boolean ;
  public
    { Public declarations }
  end;

var
  OrderDm: TOrderDm;
  MaxItem: integer ;

implementation

uses HoseSlaveDmU, HoseSlaveU;

{$R *.DFM}

procedure TOrderDm.tRendFejAfterInsert(DataSet: TDataSet);
begin
(*
  MainForm.RendFejGrid.SetFocus ;
  MainForm.RendFejGrid.FocusedField := DataSet.FindField('RendSz') ;
  MainForm.RendFejGrid.ShowEditor ;
  *)
end;

procedure TOrderDm.tRendFejBeforeDelete(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    if OrderDm.tRendTetel.RecordCount>0 then begin
      ErrMsg('Rendelés nem törölhetõ amíg vannak tételei!') ;
      Abort ;
    end ;
    if MessageDlg('Biztosan törölni akarod a kiválasztott tételt?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes
    then begin
      Abort ;
    end ;
  end ;
end;

procedure TOrderDm.tRendFejBeforeEdit(DataSet: TDataSet);
var
  fn, msg, s: string ;
begin
  if not MainForm.Tervezo then begin
    Abort ;
  end
  else begin
    if not MainForm.AutoUpdate then begin
      fn := LowerCase(MainForm.RendFejGrid.FocusedField.FieldName) ;
      s := MainForm.RendFejGrid.FocusedField.FieldName ;
      msg := 'Biztosan meg akarod változtatni a mezõ (' + s + ') tartalmát?' ;
      if (fn = 'rendsz') or (fn = 'phxrendsz') or (fn = 'ajanlatszam') then begin
        if MessageDlg(msg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
          Abort ;
          Exit ;
        end ;
      end ;
    end ;
  end ;
end;

procedure TOrderDm.tRendFejNewRecord(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    DataSet.FieldByName('RRogzit').AsString := Mainform.CurrentUserName ;
    DataSet.FieldByName('RRogzIdo').AsDateTime := Now ;
    DataSet.FieldByName('Torolt').AsBoolean := False ;
    DataSet.FieldByName('Enged').AsBoolean := False ;
    DataSet.FieldByName('Vissza').AsBoolean := False ;
  end ;
end;

procedure TOrderDm.tRendTetelBeforeDelete(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    if MessageDlg('Biztosan törölni akarod a kiválasztott tételt?', mtConfirmation, [mbYes, mbNo], 0)<>mrYes
    then Abort ;
  end ;
end;

procedure TOrderDm.tRendTetelBeforeInsert(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    MaxItem := GetMaxItem(DataSet, 'TetelSrsz') ;
  end ;
end;

function TOrderDm.GetMaxItem(DataSet: TDataSet; FieldName: string): integer ;
var
  i: integer ;
  Bookmark: TBookmark ;
begin
  i := 0 ;
  Result := 0 ;
  Bookmark := Nil ;
  try
    try
      Bookmark := DataSet.GetBookmark ;
      DataSet.First ;
      while not DataSet.Eof do begin
        if DataSet.FindField(FieldName).AsInteger > i then i := DataSet.FindField(FieldName).AsInteger ;
        DataSet.Next ;
      end ;
    finally
      if Bookmark <> Nil then DataSet.GotoBookmark(Bookmark) ;
      Result := i ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TOrderDm.tRendTetelBeforePost(DataSet: TDataSet);
var
  Hossz: double ;
  kv, mua, fed, nfed, Torolt: Boolean ;
  Db, BeszolgDb, H2S: integer ;
begin
  Torolt := DataSet.FieldByName('Torolt').AsBoolean ;
  if not MainForm.AutoUpdate then begin
    if DataSet.FindField('Darabszam').AsInteger <= 0 then begin
      ErrMsg('Helytelenül megadott darabszám!') ;
      MainForm.dbEdit.SetFocus ;
      Abort ;
    end ;
    if MainForm.ActTermek = 1 then begin
      Hossz := DataSet.FindField('Hossz').AsFloat ;
      if (Hossz <= 0) or (Hossz > 200) then begin
        if MessageDlg(Msg3, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then begin
          MainForm.hosszEdit.SetFocus ;
          Abort ;
        end ;
      end ;
      kv := DataSet.FieldByName('kv').AsBoolean ;
      mua := DataSet.FieldByName('kvmua').AsBoolean ;
      fed := DataSet.FieldByName('kvfedhelix').AsBoolean ;
      nfed := DataSet.FieldByName('kvnfedhelix').AsBoolean ;
      if kv and not (mua or fed or nfed) then begin
        ErrMsg('Meg kell jelölni a védelem típusát!') ;
        Abort ;
      end ;
      if not kv and (mua or fed or nfed) then begin
        ErrMsg('Be kell jelölni a külsõ védelmet, ha a típus adott!') ;
        Abort ;
      end ;
    end
    else begin
      if DataSet.FieldByName('TAutoUpdate').AsBoolean then DataSet.FieldByName('AccListExist').AsBoolean := False ;
    end ;
    // Beszolgáltatás mennyiségének ellenõrzése
    Db := DataSet.FieldByName('Darabszam').AsInteger ;
    BeszolgDb := DataSet.FieldByName('BeszolgDb').AsInteger ;
    if Db < BeszolgDb then begin
      ErrMsg('A beszolgáltatott mennyiség nem haladhatja meg a tervezett darabszámot!') ;
      Abort ;
    end ;

    DataSet.FindField('Specifikacio').AsString := Trim(DataSet.FindField('Specifikacio').AsString) ;
    if DataSet.State = dsEdit then begin
      DataSet.FindField('TModosit').AsString := MainForm.CurrentUserName ;
      DataSet.FindField('TModIdo').AsDateTime := Now ;
    end ;

    if DataSet.FieldByName('H2S').IsNull then H2S := -1 else H2S := DataSet.FieldByName('H2S').AsInteger ;
    if MainForm.Tervezo then begin
      if (H2S = -1) and (not Torolt) then begin
        ErrMsg('El kell dönteni, hogy alkalmas-e H2S szervizre, vagy sem!') ;
        Abort ;
      end ;
    end ;

  end ;
end;

procedure TOrderDm.tRendTetelNewRecord(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    DataSet.FindField('TetelSrsz').AsInteger := MaxItem + 10 ;
    DataSet.FindField('Lang').AsBoolean := False ;
    DataSet.FindField('Bg').AsBoolean := False ;
    DataSet.FindField('Kg').AsBoolean := False ;
    DataSet.FindField('Pa').AsBoolean := False ;
    DataSet.FindField('Kv').AsBoolean := False ;
    DataSet.FindField('KgInter').AsBoolean := False ;
    DataSet.FindField('KvMua').AsBoolean := False ;
    DataSet.FindField('KvFedHelix').AsBoolean := False ;
    DataSet.FindField('KvNFedHelix').AsBoolean := False ;
    DataSet.FindField('TModHatarido').AsDateTime := OrderDm.tRendFejHatarido.AsDateTime ;
    DataSet.FindField('Beszolg').AsBoolean := False ;
    DataSet.FindField('Torolt').AsBoolean := False ;
    if MainForm.ActTermek = 1 then begin
      DataSet.FindField('HosszMe').AsString := 'm' ;
    end ;
    MainForm.ExtraCurrency := OrderDm.tRendFejExtrPenznem.AsString ;
    if MainForm.ExtraCurrency <> '' then OrderDm.tRendTetelTPenznem.AsString := MainForm.ExtraCurrency
    else OrderDm.tRendTetelTPenznem.AsString := MainForm.LastCurrency ;
    DataSet.FindField('TRogzit').AsString := MainForm.CurrentUserName ;
    DataSet.FindField('TRogzIdo').AsDateTime := Now ;
  end ;
end;

procedure TOrderDm.tRendFejAfterEdit(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    DataSet.FieldByName('FAutoUpdate').AsBoolean := False ;
  end ;
end;

procedure TOrderDm.tRendFejAfterPost(DataSet: TDataSet);
var
  RendSz : string ;
begin
  try
    RendSz := DataSet.FieldByName('RendSz').AsString ;
    DataSet.DisableControls ;
    DataSet.Refresh ;
    DataSet.Locate('RendSz', RendSz, [loCaseInsensitive]) ;
  finally
    DataSet.EnableControls ;
  end ;
end;

procedure TOrderDm.tRendTetelAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TOrderDm.qMeoBeforePost(DataSet: TDataSet);
var
  NevlegesHossz, MertHossz: double ;
  NevlegesHosszU, MertHosszU: integer ;
Const
  LengthMsg = 'A névleges hossz és a mért hossz több mint 10 % eltérést tartalmaz!' + #13 + 'Ennek ellenére folytatja?' ;
begin
  if not (DataSet.State in ([dsEdit])) then begin
    if CheckNumber(DataSet.FieldByName('GY_SZ').AsString, DataSet.FieldByName('Meo_Az').AsInteger) then Abort ;
  end ;
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzitesIdopontja').AsDateTime := Now ;
  if DataSet.FieldByName('OrderDeleted').IsNull then DataSet.FieldByName('OrderDeleted').AsBoolean := False ;
  if DataSet.FieldByName('OrderModified').IsNull then DataSet.FieldByName('OrderModified').AsBoolean := False ;
  if DataSet.FieldByName('Torolt').IsNull then DataSet.FieldByName('Torolt').AsBoolean := False ;
  NevlegesHosszU := DataSet.FieldByName('NevlegesHosszU').AsInteger ;
  MertHosszU := DataSet.FieldByName('MertHosszU').AsInteger ;
  if (NevlegesHosszU <> 0) and (MertHosszU <> 0) then begin
    NevlegesHossz := MainForm.UnitConv(NevlegesHosszU, 4, DataSet.FieldByName('NevlegesHossz').AsFloat) ;
    MertHossz := MainForm.UnitConv(MertHosszU, 4, DataSet.FieldByName('MertHossz').AsFloat) ;
    if (MertHossz > 0) and ((Abs(NevlegesHossz - MertHossz) / NevlegesHossz) > 0.1) then begin
      if MessageDlg(LengthMsg, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Abort ;
    end ;
  end ;
end;

procedure TOrderDm.qMeoAfterPost(DataSet: TDataSet);
begin
  inc(MainForm.MeoChangeNum) ;
end;

procedure TOrderDm.qMeoAfterDelete(DataSet: TDataSet);
begin
  inc(MainForm.MeoChangeNum) ;
end;

function TOrderDm.CheckNumber(Number: string; Azonosito: integer): Boolean ;
var
  s: string ;
begin
  Result := False ;
  try
    if OrderDm.qCheckNumber.Active then OrderDm.qCheckNumber.Active := False ;
    OrderDm.qCheckNumber.ParamByName('Number').AsString := Number ;
    OrderDm.qCheckNumber.ParamByName('Meo_Az').AsInteger := Azonosito ;
    OrderDm.qCheckNumber.Active := True ;
    if OrderDm.qCheckNumber.RecordCount <> 0 then begin
      s := #13 + 'Azonosító: ' + IntToStr(OrderDm.qCheckNumberMeo_Az.AsInteger) ;
      s := s + #13 + 'Rendelésszám: ' + OrderDm.qCheckNumberK_SZ.AsString ;
      ErrMsg('Már van ilyen gyártási szám a rendszerben!' + s) ;
    end
    else Result := True ;
    OrderDm.qCheckNumber.Active := False ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TOrderDm.tRendCsomEszkBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TOrderDm.tRendCsomEszkNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Deleted').AsBoolean := False ;
end;

procedure TOrderDm.tRendCsomEszkAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TOrderDm.tRendFejToroltChange(Sender: TField);
var
  bmk: TBookmark ;
begin
  bmk := Nil ;
  OrderDm.tRendTetel.CheckBrowseMode ;
  try
    try
      OrderDm.tRendTetel.DisableControls ;
      bmk := OrderDm.tRendTetel.GetBookmark ;
      OrderDm.tRendTetel.First ;
      while not OrderDm.tRendTetel.Eof do begin
        if Sender.AsBoolean <> OrderDm.tRendTetelTorolt.AsBoolean then begin
          OrderDm.tRendTetel.Edit ;
          OrderDm.tRendTetelTorolt.AsBoolean := Sender.AsBoolean ;
          OrderDm.tRendTetel.Post ;
        end ;
        OrderDm.tRendTetel.Next ;
      end ;
    finally
      if OrderDm.tRendTetel.BookmarkValid(bmk) then OrderDm.tRendTetel.GotoBookmark(bmk) ;
      OrderDm.tRendTetel.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TOrderDm.mRendSorokNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Updatable').AsBoolean := False ;
end;

procedure TOrderDm.qAnyagszTetelNewRecord(DataSet: TDataSet);
begin
  dec(AnyagszItemCounter) ;
  DataSet.FieldByName('Id').AsInteger := MainForm.ActAnyagszId ;
  DataSet.FieldByName('ItemId').AsInteger := AnyagszItemCounter ;
end;

procedure TOrderDm.DataModuleCreate(Sender: TObject);
begin
  AnyagszItemCounter := 0 ;
end;

procedure TOrderDm.tRendTetelAfterScroll(DataSet: TDataSet);
var
  s: string ;
begin
  if OrderDm.spJoinedMarkingList.Locate('Id', DataSet.FieldByName('MarkingId').AsInteger, [loCaseInsensitive]) then begin
    MainForm.MarkNumEdit.Text := OrderDm.spJoinedMarkingListRajzszam.AsString ;
    if Trim(OrderDm.spJoinedMarkingListAlcsoportNev.AsString) <> '' then begin
      s := OrderDm.spJoinedMarkingListAlcsoportNev.AsString +  ', ' + OrderDm.spJoinedMarkingListMegnevezes.AsString ;
    end
    else begin
      s := OrderDm.spJoinedMarkingListMegnevezes.AsString ;
    end ;
    MainForm.MarkMemo.Text := s ;
  end
  else begin
    MainForm.MarkNumEdit.Text := '' ;
    MainForm.MarkMemo.Text := '' ;
  end ;
  SetGridColWidth(MainForm.EgyebAlkatreszGrid) ;
end;

procedure TOrderDm.tRendFejBeforePost(DataSet: TDataSet);
begin
  if not MainForm.AutoUpdate then begin
    DataSet.FieldByName('RModIdo').AsDateTime := Now ;
    DataSet.FieldByName('RModosit').AsString := MainForm.CurrentUserName ;
  end ;
end;

procedure TOrderDm.tRendFejSapRevizioChange(Sender: TField);
var
  Rendsz: string ;
  SapRevizio: integer ;
begin
  try
    RendSz := tRendFejRendSz.AsString ;
    SapRevizio := tRendFejSapRevizio.AsInteger ;
    if not OrderDm.qImportOrderRev.Active then OrderDm.qImportOrderRev.Active := True ;
    if not OrderDm.qImportOrderRev.Locate('Rendelesszam;Revizio', VarArrayOf([Rendsz, SapRevizio]), [loCaseInsensitive]) then begin
      ErrMsg('A megadott revízió nem létezik a SAP import adatok közt!') ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

end.
