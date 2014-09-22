unit HoseSlaveDmU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, RxQuery, ShellApi, MyProcs, dxDBInRw, RxMemDS, StrUtils ;

const
  CouplingQryMsg    = 'A csatlakozók elhelyezése a hiányos adatok miatt nem meghatározható!' ;
  CouplingInvertMsg = 'A rendelkezésre álló adatok alapján a két csatlakozót fel kell cserélni!'
                    + #13 + '(Mindig az "A" végre kell kerülni a nagyobb átmérõnek.)'
                    + #13 + 'Elfogadod a javasolt elrendezést?' ;
  KarimaFurasMsg    = 'El ne felejtsd, hogy az egyik karimát utólag kell fúrni!' + #13 + 'Ezt bele is raktam a megfelelõ mezõbe!' ;
  KarimaFurasTxt    = 'Az egyik karimát utólag kell fúrni!' ;

type

  TTechlapRec = record
    L, L1, L2, L3, MaxOD: double ;
    VegzodesId: integer ;
    L1Caption: string ;
  end ;


  TDm = class(TDataModule)
    MainDb: TDatabase;
    GetCurrentUser: TStoredProc;
    GetCurrentUserUserName: TStringField;
    GetCurrentUserUserId: TSmallintField;
    PackHeadDs: TDataSource;
    RekordStatusz: TTable;
    RekordStatuszStatuszKod: TSmallintField;
    RekordStatuszStatuszNev: TStringField;
    PackItem: TTable;
    PackItemDs: TDataSource;
    PackDeviceDs: TDataSource;
    PackDevice: TTable;
    PackDeviceDeviceId: TIntegerField;
    PackDeviceDeviceName: TStringField;
    PackDeviceDeviceTypeCode: TIntegerField;
    PackDevicedim1: TFloatField;
    PackDevicedim2: TFloatField;
    PackDevicedim3: TFloatField;
    PackDevicedim4: TFloatField;
    PackDevicedim5: TFloatField;
    PackDevicedim6: TFloatField;
    PackDevicedim7: TFloatField;
    PackDevicedim8: TFloatField;
    PackDevicedim9: TFloatField;
    PackDevicedim10: TFloatField;
    PackDeviceType: TTable;
    PackDeviceTypeDeviceTypeCode: TIntegerField;
    PackDeviceTypeDimenzioNev1: TStringField;
    PackDeviceTypeDimenzioNev2: TStringField;
    PackDeviceTypeDimenzioNev3: TStringField;
    PackDeviceTypeDimenzioNev4: TStringField;
    PackDeviceTypeDimenzioNev5: TStringField;
    PackDeviceTypeDimenzioNev6: TStringField;
    PackDeviceTypeDimenzioNev7: TStringField;
    PackDeviceTypeDimenzioNev8: TStringField;
    PackDeviceTypeDimenzioNev9: TStringField;
    PackDeviceTypeDimenzioNev10: TStringField;
    PackDeviceTypeMegjegyzes: TStringField;
    PackDeviceTypePicture: TBlobField;
    PackDeviceTypeDs: TDataSource;
    PackDeviceTypeDeviceTypeName: TStringField;
    PackItemPackId: TIntegerField;
    PackItemDescription: TStringField;
    PackItemPieces: TSmallintField;
    PackItemBodyLength: TFloatField;
    PackItemBodyName: TStringField;
    PackItemBodyOd: TFloatField;
    PackItemMBRstorage: TFloatField;
    PackItemBodyWeight: TFloatField;
    PackItemInnerSteel: TBooleanField;
    PackItemFireResistant: TBooleanField;
    PackItemOuterSteel: TBooleanField;
    PackItemPa: TBooleanField;
    PackItemHelix: TBooleanField;
    PackItemHeatRaced: TBooleanField;
    PackItemDragChain: TBooleanField;
    PackItemLongHose: TBooleanField;
    PackItemCouplingName1: TStringField;
    PackItemCouplingWeight1: TFloatField;
    PackItemCouplingOd1: TFloatField;
    PackItemOdMax1: TFloatField;
    PackItemCouplingName2: TStringField;
    PackItemCouplingWeight2: TFloatField;
    PackItemCouplingOd2: TFloatField;
    PackItemOdMax2: TFloatField;
    PackItemLiftingCollarExists: TBooleanField;
    PackItemLiftingCollarName: TStringField;
    PackItemLiftingCollarWeight: TFloatField;
    PackItemLiftingCollarReinforced: TBooleanField;
    PackItemLiftingCollarPieces: TSmallintField;
    PackItemSafetyClampExists: TBooleanField;
    PackItemSafetyClampName: TStringField;
    PackItemSafetyClampWeight: TFloatField;
    PackItemSafetyClampPieces: TSmallintField;
    PackItemSafetyChainExists: TBooleanField;
    PackItemSafetyChainWeight: TFloatField;
    PackItemOtherAccExists: TBooleanField;
    PackItemOtherAccessories: TStringField;
    PackItemOtherAccWeight: TFloatField;
    PackItemCreatorName: TStringField;
    PackItemCreateDate: TDateTimeField;
    PackItemListQry: TQuery;
    PackItemListQryDs: TDataSource;
    GetPackMaxId: TStoredProc;
    GetPackMaxIdMaxId: TIntegerField;
    PackItemSumWeight: TFloatField;
    PackItemBodyCode: TStringField;
    KonstrJellQryDs: TDataSource;
    PackItemCouplingCode1: TStringField;
    PackItemCouplingCode2: TStringField;
    CouplingQry: TQuery;
    CouplingQryDs: TDataSource;
    CouplingQryCOLUMN1: TStringField;
    CouplingQrycouplingCounter: TIntegerField;
    CouplingQrycouplingANb: TStringField;
    CouplingQrycouplingDNb: TStringField;
    CouplingQrycouplingFileH: TStringField;
    CouplingQrycouplingFileE: TStringField;
    CouplingQrycouplingType: TIntegerField;
    CouplingQryendFittingType: TIntegerField;
    CouplingQryendFittingName: TStringField;
    CouplingQryendFittingDesc0: TStringField;
    CouplingQryendFittingDesc1: TStringField;
    CouplingQryendFittingDesc2: TStringField;
    CouplingQrydescription: TStringField;
    CouplingQrydescriptionH: TStringField;
    CouplingQrydescriptionE: TStringField;
    CouplingQrydate: TDateTimeField;
    CouplingQryweight: TFloatField;
    CouplingQrypriceSAP: TFloatField;
    CouplingQryprice: TFloatField;
    CouplingQrydatePrice: TDateTimeField;
    CouplingQrysteel: TIntegerField;
    CouplingQryfireResistant: TBooleanField;
    CouplingQrywelded: TBooleanField;
    CouplingQrybody: TIntegerField;
    CouplingQryIDrated: TFloatField;
    CouplingQryIDratedU: TIntegerField;
    CouplingQrydp: TFloatField;
    CouplingQrytp: TFloatField;
    CouplingQrypressureU: TIntegerField;
    CouplingQrye1ID: TFloatField;
    CouplingQrye1OD: TFloatField;
    CouplingQrye1L: TFloatField;
    CouplingQryewnID: TFloatField;
    CouplingQryewnOD: TFloatField;
    CouplingQrye2ID: TFloatField;
    CouplingQrye2OD: TFloatField;
    CouplingQrye2L: TFloatField;
    CouplingQryLt: TFloatField;
    CouplingQryd0: TFloatField;
    CouplingQrykd1: TFloatField;
    CouplingQrykd2: TFloatField;
    CouplingQrykd3: TFloatField;
    CouplingQrykd4: TFloatField;
    CouplingQrykd5: TFloatField;
    CouplingQryND1: TFloatField;
    CouplingQryND2: TFloatField;
    CouplingQryND3: TFloatField;
    CouplingQryND4: TFloatField;
    CouplingQryLB: TFloatField;
    CouplingQryLH: TFloatField;
    CouplingQryLF: TFloatField;
    CouplingQryL1: TFloatField;
    CouplingQryL2: TFloatField;
    CouplingQryL3: TFloatField;
    CouplingQryL4: TFloatField;
    CouplingQryL5: TFloatField;
    CouplingQryL6: TFloatField;
    CouplingQryL7: TFloatField;
    CouplingQryL8: TFloatField;
    CouplingQryL9: TFloatField;
    CouplingQryL10: TFloatField;
    CouplingQryL11: TFloatField;
    CouplingQryL12: TFloatField;
    CouplingQryL13: TFloatField;
    CouplingQryL14: TFloatField;
    CouplingQryL15: TFloatField;
    CouplingQryL16: TFloatField;
    CouplingQryM1: TFloatField;
    CouplingQryalfa1: TFloatField;
    CouplingQryalfa2: TFloatField;
    CouplingQryalfa3: TFloatField;
    CouplingQrystatus: TIntegerField;
    CouplingQrynote: TStringField;
    CouplingQryHMuser: TIntegerField;
    CouplingQryEndFittingShortNameH: TStringField;
    CouplingQryEndFittingNameH: TStringField;
    CouplingQryEndFittingNameE: TStringField;
    CouplingQryEndFittingShortNameE: TStringField;
    CouplingQrySteelDescription: TStringField;
    CouplingQryIdUnit: TStringField;
    CouplingQryPressureUnit: TStringField;
    GetDiameters: TStoredProc;
    GetDiametersKonstrukcioKod: TStringField;
    GetDiametersKompListKod: TStringField;
    GetDiametersMegnevezes: TStringField;
    GetDiametersTomlotest: TFloatField;
    GetDiametersCsatlakozotest: TFloatField;
    AccessoryQryDs: TDataSource;
    PackItemLiftingCollarCode: TStringField;
    PackItemLiftingCollarId: TFloatField;
    PackItemSafetyClampId: TFloatField;
    KonstrJellQry: TQuery;
    KonstrJellQryCOLUMN1: TStringField;
    KonstrJellQrybodyANb: TStringField;
    KonstrJellQrybodyDNb: TStringField;
    KonstrJellQrydescriptionH: TStringField;
    KonstrJellQrycharacteristics: TIntegerField;
    KonstrJellQryla: TBooleanField;
    KonstrJellQrykg: TBooleanField;
    KonstrJellQrybg: TBooleanField;
    KonstrJellQryhe: TBooleanField;
    KonstrJellQrypa: TBooleanField;
    KonstrJellQryfu: TBooleanField;
    KonstrJellQryga: TBooleanField;
    KonstrJellQryus: TBooleanField;
    KonstrJellQrydc: TBooleanField;
    KonstrJellQrynh: TBooleanField;
    KonstrJellQrywp: TFloatField;
    KonstrJellQrytp: TFloatField;
    KonstrJellQrydp: TFloatField;
    KonstrJellQryIDrated: TFloatField;
    KonstrJellQryOD: TFloatField;
    KonstrJellQryweight: TFloatField;
    KonstrJellQryMBRcalc: TFloatField;
    KonstrJellQryMBRstatic: TFloatField;
    KonstrJellQryMBRdynamic: TFloatField;
    KonstrJellQryMBRstorage: TFloatField;
    KonstrJellQrypreCureTemperature1: TFloatField;
    KonstrJellQrypreCureTime1: TFloatField;
    KonstrJellQrypreCureTemperature2: TFloatField;
    KonstrJellQrypreCureTime2: TFloatField;
    KonstrJellQrypreCureTemperature3: TFloatField;
    KonstrJellQrypreCureTime3: TFloatField;
    KonstrJellQrycureTemperature1: TFloatField;
    KonstrJellQrycureTime1: TFloatField;
    KonstrJellQrycureTemperature2: TFloatField;
    KonstrJellQrycureTime2: TFloatField;
    KonstrJellQrycureTemperature3: TFloatField;
    KonstrJellQrycureTime3: TFloatField;
    KonstrJellQrystatus: TIntegerField;
    KonstrJellQrytemperatureMin: TFloatField;
    KonstrJellQrytemperatureMax: TFloatField;
    KonstrJellQrynote: TStringField;
    KonstrJellQrylinerResistance: TIntegerField;
    KonstrJellQryOlaj: TBooleanField;
    KonstrJellQryGazEdes: TBooleanField;
    KonstrJellQryGazSav: TBooleanField;
    KonstrJellQryViz: TBooleanField;
    KonstrJellQryFoszfat: TBooleanField;
    KonstrJellQrysafetyFactor: TFloatField;
    PackItemLiftingCollarOd: TFloatField;
    PackItemSafetyClampOd: TFloatField;
    PackItemSafetyClampCode: TStringField;
    PackDevAssignDs: TDataSource;
    PackDevAssign: TTable;
    PackItemPackItemId: TSmallintField;
    CreatePackHead: TStoredProc;
    PackItemListQryCOLUMN1: TStringField;
    PackItemListQryPackId: TIntegerField;
    PackItemListQryPackNum: TIntegerField;
    PackItemListQryPackRevision: TSmallintField;
    PackItemListQryPackVersion: TSmallintField;
    PackItemListQryIdent1: TStringField;
    PackItemListQryIdent2: TStringField;
    PackItemListQryName: TStringField;
    PackItemListQryOfferPerson: TStringField;
    PackItemListQryNote: TStringField;
    PackItemListQryStatuszNev: TStringField;
    PackItemListQryCreatorName: TStringField;
    PackItemListQryCreateDate: TDateTimeField;
    PackItemListQryPackItemId: TSmallintField;
    PackItemListQryDescription: TStringField;
    PackItemListQryPieces: TSmallintField;
    PackItemListQryBodyLength: TFloatField;
    PackItemListQryBodyCode: TStringField;
    PackItemListQryBodyName: TStringField;
    PackItemListQryBodyOd: TFloatField;
    PackItemListQryMBRstorage: TFloatField;
    PackItemListQryBodyWeight: TFloatField;
    PackItemListQryInnerSteel: TBooleanField;
    PackItemListQryFireResistant: TBooleanField;
    PackItemListQryOuterSteel: TBooleanField;
    PackItemListQryPa: TBooleanField;
    PackItemListQryHelix: TBooleanField;
    PackItemListQryHeatRaced: TBooleanField;
    PackItemListQryDragChain: TBooleanField;
    PackItemListQryLongHose: TBooleanField;
    PackItemListQryCouplingCode1: TStringField;
    PackItemListQryCouplingName1: TStringField;
    PackItemListQryCouplingWeight1: TFloatField;
    PackItemListQryCouplingOd1: TFloatField;
    PackItemListQryOdMax1: TFloatField;
    PackItemListQryCouplingCode2: TStringField;
    PackItemListQryCouplingName2: TStringField;
    PackItemListQryCouplingWeight2: TFloatField;
    PackItemListQryCouplingOd2: TFloatField;
    PackItemListQryOdMax2: TFloatField;
    PackItemListQryLiftingCollarExists: TBooleanField;
    PackItemListQryLiftingCollarName: TStringField;
    PackItemListQryLiftingCollarCode: TStringField;
    PackItemListQryLiftingCollarId: TFloatField;
    PackItemListQryLiftingCollarOd: TFloatField;
    PackItemListQryLiftingCollarWeight: TFloatField;
    PackItemListQryLiftingCollarReinforced: TBooleanField;
    PackItemListQryLiftingCollarPieces: TSmallintField;
    PackItemListQrySafetyClampExists: TBooleanField;
    PackItemListQrySafetyClampName: TStringField;
    PackItemListQrySafetyClampCode: TStringField;
    PackItemListQrySafetyClampId: TFloatField;
    PackItemListQrySafetyClampOd: TFloatField;
    PackItemListQrySafetyClampWeight: TFloatField;
    PackItemListQrySafetyClampPieces: TSmallintField;
    PackItemListQrySafetyChainExists: TBooleanField;
    PackItemListQrySafetyChainWeight: TFloatField;
    PackItemListQryOtherAccExists: TBooleanField;
    PackItemListQryOtherAccessories: TStringField;
    PackItemListQryOtherAccWeight: TFloatField;
    PackItemListQrySumWeight: TFloatField;
    PackDevAssignPackageId: TIntegerField;
    Packages: TTable;
    PackagesDs: TDataSource;
    PackagesPackageId: TIntegerField;
    PackagesPackId: TIntegerField;
    PackagesPackDevTypeCode: TIntegerField;
    PackagesPackDevTypeName: TStringField;
    PackagesPackDevCode: TIntegerField;
    PackagesPackDevName: TStringField;
    PackagesDim1: TFloatField;
    PackagesDim2: TFloatField;
    PackagesDim3: TFloatField;
    PackagesWeight: TFloatField;
    PackagesNote: TStringField;
    PackagesCreatorName: TStringField;
    PackagesCreateDate: TDateTimeField;
    PackagesPackDevNum: TSmallintField;
    PackagesSumWeight: TFloatField;
    PackagesPrice: TFloatField;
    PackagesSumPrice: TFloatField;
    PackDevAssignDescription: TStringField;
    PackDevAssignWeight: TFloatField;
    PackDevAssignPieces: TSmallintField;
    CreatePackRev: TStoredProc;
    CreatePackHeadCOLUMN1: TFloatField;
    CreatePackRevCOLUMN1: TIntegerField;
    CreatePackVer: TStoredProc;
    CreatePackVerCOLUMN1: TIntegerField;
    PackItemsumma: TFloatField;
    PackagessWeight: TFloatField;
    PackagessPrice: TFloatField;
    PackRepQry: TQuery;
    PackRepQryPackId: TIntegerField;
    PackRepQryPackNum: TIntegerField;
    PackRepQryPackRevision: TSmallintField;
    PackRepQryPackVersion: TSmallintField;
    PackRepQryIdent1: TStringField;
    PackRepQryIdent2: TStringField;
    PackRepQryName: TStringField;
    PackRepQryOfferPerson: TStringField;
    PackRepQryNote: TStringField;
    PackRepQryStatus: TSmallintField;
    PackRepQryCreatorName: TStringField;
    PackRepQryCreateDate: TDateTimeField;
    PackRepQryPackageId: TIntegerField;
    PackRepQryPackId_1: TIntegerField;
    PackRepQryPackDevTypeCode: TIntegerField;
    PackRepQryPackDevTypeName: TStringField;
    PackRepQryPackDevCode: TIntegerField;
    PackRepQryPackDevName: TStringField;
    PackRepQryPackDevNum: TSmallintField;
    PackRepQryDim1: TFloatField;
    PackRepQryDim2: TFloatField;
    PackRepQryDim3: TFloatField;
    PackRepQryWeight: TFloatField;
    PackRepQrySumWeight: TFloatField;
    PackRepQryPrice: TFloatField;
    PackRepQrySumPrice: TFloatField;
    PackRepQryNote_1: TStringField;
    PackRepQryCreatorName_1: TStringField;
    PackRepQryCreateDate_1: TDateTimeField;
    PackRepQryPackId_2: TIntegerField;
    PackRepQryPackItemId: TSmallintField;
    PackRepQryPackageId_1: TIntegerField;
    PackRepQryPieces: TSmallintField;
    PackRepQryWeight_1: TFloatField;
    PackRepQryPackId_3: TIntegerField;
    PackRepQryPackItemId_1: TSmallintField;
    PackRepQryDescription: TStringField;
    PackRepQryPieces_1: TSmallintField;
    PackRepQryBodyLength: TFloatField;
    PackRepQryBodyCode: TStringField;
    PackRepQryBodyName: TStringField;
    PackRepQryBodyOd: TFloatField;
    PackRepQryMBRstorage: TFloatField;
    PackRepQryBodyWeight: TFloatField;
    PackRepQryInnerSteel: TBooleanField;
    PackRepQryFireResistant: TBooleanField;
    PackRepQryOuterSteel: TBooleanField;
    PackRepQryPa: TBooleanField;
    PackRepQryHelix: TBooleanField;
    PackRepQryHeatRaced: TBooleanField;
    PackRepQryDragChain: TBooleanField;
    PackRepQryLongHose: TBooleanField;
    PackRepQryCouplingCode1: TStringField;
    PackRepQryCouplingName1: TStringField;
    PackRepQryCouplingWeight1: TFloatField;
    PackRepQryCouplingOd1: TFloatField;
    PackRepQryOdMax1: TFloatField;
    PackRepQryCouplingCode2: TStringField;
    PackRepQryCouplingName2: TStringField;
    PackRepQryCouplingWeight2: TFloatField;
    PackRepQryCouplingOd2: TFloatField;
    PackRepQryOdMax2: TFloatField;
    PackRepQryLiftingCollarExists: TBooleanField;
    PackRepQryLiftingCollarName: TStringField;
    PackRepQryLiftingCollarCode: TStringField;
    PackRepQryLiftingCollarId: TFloatField;
    PackRepQryLiftingCollarOd: TFloatField;
    PackRepQryLiftingCollarWeight: TFloatField;
    PackRepQryLiftingCollarReinforced: TBooleanField;
    PackRepQryLiftingCollarPieces: TSmallintField;
    PackRepQrySafetyClampExists: TBooleanField;
    PackRepQrySafetyClampName: TStringField;
    PackRepQrySafetyClampCode: TStringField;
    PackRepQrySafetyClampId: TFloatField;
    PackRepQrySafetyClampOd: TFloatField;
    PackRepQrySafetyClampWeight: TFloatField;
    PackRepQrySafetyClampPieces: TSmallintField;
    PackRepQrySafetyChainExists: TBooleanField;
    PackRepQrySafetyChainWeight: TFloatField;
    PackRepQryOtherAccExists: TBooleanField;
    PackRepQryOtherAccessories: TStringField;
    PackRepQryOtherAccWeight: TFloatField;
    PackRepQrySumWeight_1: TFloatField;
    PackRepQryCreatorName_2: TStringField;
    PackRepQryCreateDate_2: TDateTimeField;
    GetPackItemQry: TQuery;
    GetPackItemQryPieces: TSmallintField;
    GetPackItemQryBodyLength: TFloatField;
    GetPackItemQryBodyCode: TStringField;
    GetPackItemQryBodyName: TStringField;
    GetPackItemQryBodyOd: TFloatField;
    GetPackItemQryMBRstorage: TFloatField;
    GetPackItemQryBodyWeight: TFloatField;
    GetPackItemQryInnerSteel: TBooleanField;
    GetPackItemQryFireResistant: TBooleanField;
    GetPackItemQryOuterSteel: TBooleanField;
    GetPackItemQryPa: TBooleanField;
    GetPackItemQryHelix: TBooleanField;
    GetPackItemQryHeatRaced: TBooleanField;
    GetPackItemQryDragChain: TBooleanField;
    GetPackItemQryLongHose: TBooleanField;
    GetPackItemQryCouplingCode1: TStringField;
    GetPackItemQryCouplingName1: TStringField;
    GetPackItemQryCouplingWeight1: TFloatField;
    GetPackItemQryCouplingOd1: TFloatField;
    GetPackItemQryOdMax1: TFloatField;
    GetPackItemQryCouplingCode2: TStringField;
    GetPackItemQryCouplingName2: TStringField;
    GetPackItemQryCouplingWeight2: TFloatField;
    GetPackItemQryCouplingOd2: TFloatField;
    GetPackItemQryOdMax2: TFloatField;
    GetPackItemQryLiftingCollarExists: TBooleanField;
    GetPackItemQryLiftingCollarName: TStringField;
    GetPackItemQryLiftingCollarCode: TStringField;
    GetPackItemQryLiftingCollarId: TFloatField;
    GetPackItemQryLiftingCollarOd: TFloatField;
    GetPackItemQryLiftingCollarWeight: TFloatField;
    GetPackItemQryLiftingCollarReinforced: TBooleanField;
    GetPackItemQryLiftingCollarPieces: TSmallintField;
    GetPackItemQrySafetyClampExists: TBooleanField;
    GetPackItemQrySafetyClampName: TStringField;
    GetPackItemQrySafetyClampCode: TStringField;
    GetPackItemQrySafetyClampId: TFloatField;
    GetPackItemQrySafetyClampOd: TFloatField;
    GetPackItemQrySafetyClampWeight: TFloatField;
    GetPackItemQrySafetyClampPieces: TSmallintField;
    GetPackItemQrySafetyChainExists: TBooleanField;
    GetPackItemQrySafetyChainWeight: TFloatField;
    GetPackItemQryOtherAccExists: TBooleanField;
    GetPackItemQryOtherAccessories: TStringField;
    GetPackItemQryOtherAccWeight: TFloatField;
    GetPackItemQrySumWeight: TFloatField;
    GetPackItemQryCreatorName: TStringField;
    GetPackItemQryCreateDate: TDateTimeField;
    PackItemSleeveExists: TBooleanField;
    PackItemListQrySleeveExists: TBooleanField;
    PackItemListQryItemCreatorName: TStringField;
    PackItemListQryItemCreateDate: TDateTimeField;
    GetPackItemQrySleeveExists: TBooleanField;
    Penznem: TTable;
    PenznemDevizaId: TIntegerField;
    PenznemShortName: TStringField;
    PenznemFullName: TStringField;
    PackagesCurrencyCode: TSmallintField;
    PackagesCurrencyName: TStringField;
    PackRepQryShortName: TStringField;
    GetPackItemQryDescription: TStringField;
    PackRepQryStatusName: TStringField;
    PackItemBodyId: TFloatField;
    PackItemListQryBodyId: TFloatField;
    GetPackItemQryBodyId: TFloatField;
    PackItemCouplingExists: TBooleanField;
    PackItemListQryCouplingExists: TBooleanField;
    GetUserRights: TStoredProc;
    GetUserRightsUid: TIntegerField;
    GetUserRightsProgCode: TIntegerField;
    GetUserRightsTag: TIntegerField;
    MfCikkszamJelzesek: TTable;
    MfCikkszamokDs: TDataSource;
    JelzesQry: TQuery;
    Units: TTable;
    UnitsUnitCode: TSmallintField;
    UnitsUnitGroup: TSmallintField;
    UnitsUnitName: TStringField;
    UnitsUnitSign: TStringField;
    UnitsConversionFactor: TFloatField;
    UnitsConstans: TFloatField;
    UnitGroups: TTable;
    UnitGroupsUnitGroup: TSmallintField;
    UnitGroupsUnitGroupName: TStringField;
    UnitsDs: TDataSource;
    UnitGroupsDs: TDataSource;
    ConvertUnit: TStoredProc;
    Konstrukciok: TTable;
    KonstrukciokDs: TDataSource;
    KonstrukciokKonstrLsz: TStringField;
    KonstrukciokID: TFloatField;
    Konstrukciokpsi: TFloatField;
    Konstrukciokmpa: TFloatField;
    KonstrukciokElovulk: TBooleanField;
    KonstrukciokLa: TBooleanField;
    KonstrukciokBg: TBooleanField;
    KonstrukciokKg: TBooleanField;
    KonstrukciokPa: TBooleanField;
    KonstrukciokNorm: TBooleanField;
    KonstrukciokDragChain: TBooleanField;
    KonstrukciokLelek: TStringField;
    KonstrukciokSodrony: TStringField;
    KonstrukciokGegecsoProfil: TStringField;
    KonstrukciokSuly: TFloatField;
    KonstrukciokOD: TFloatField;
    KonstrukciokKeszitette: TStringField;
    KonstrukciokKeszitesIdeje: TDateTimeField;
    KonstrukciokModositotta: TStringField;
    KonstrukciokModositasIdeje: TDateTimeField;
    KonstrukciokMegjegyzes: TStringField;
    LelekQry: TQuery;
    LelekQryLelek: TStringField;
    LelekQryDs: TDataSource;
    SodronyQryDs: TDataSource;
    SodronyQry: TQuery;
    SodronyQrySodrony: TStringField;
    ErvtKonstrukciok: TTable;
    ErvtKonstrukciokDs: TDataSource;
    ErvtKonstrukciokKonstrLsz: TStringField;
    ErvtKonstrukciokErvenytelenit: TStringField;
    Adatlap: TTable;
    AdatlapAdatlapId: TIntegerField;
    AdatlapValtozat: TSmallintField;
    AdatlapCegNev: TStringField;
    AdatlapOsztalyNev: TStringField;
    AdatlapMegnevezes: TStringField;
    AdatlapAltalanosNev: TStringField;
    AdatlapSzabvany: TStringField;
    AdatlapKeszitette: TStringField;
    AdatlapId: TFloatField;
    AdatlapNyomas: TFloatField;
    AdatlapKeszitesDatuma: TDateTimeField;
    AdatlapEllenorizte: TStringField;
    AdatlapEllenorzesDatuma: TDateTimeField;
    AdatlapEgyedi: TBooleanField;
    AdatlapKiadva: TBooleanField;
    AdatlapErvenyes: TBooleanField;
    AdatlapDs: TDataSource;
    AdatlapKonf: TTable;
    AdatlapKonfAdatlapId: TIntegerField;
    AdatlapKonfTetelszam: TSmallintField;
    AdatlapKonfRajzszam: TStringField;
    AdatlapKonfTomloKulatm: TFloatField;
    AdatlapKonfCsatlKulatm: TFloatField;
    AdatlapKonfTomeg: TFloatField;
    AdatlapKonfMinHajlitas: TFloatField;
    AdatlapKonfAnyagnormaSzam: TStringField;
    AdatlapKonfMegjegyzes: TStringField;
    AdatlapKonfAktiv: TBooleanField;
    AdatlapKonfDs: TDataSource;
    AdatlapCsom: TTable;
    AdatlapCsomAdatlapId: TIntegerField;
    AdatlapCsomTetelSzam: TSmallintField;
    AdatlapCsomRekeszMeret: TStringField;
    AdatlapCsomMegjegyzes: TStringField;
    AdatlapCsomAktiv: TBooleanField;
    AdatlapCsomDs: TDataSource;
    GetAllDiameters: TStoredProc;
    GetAllDiametersKonstrukcioKod: TStringField;
    GetAllDiametersKompListKod: TStringField;
    GetAllDiametersMegnevezes: TStringField;
    GetAllDiametersTomlotest: TFloatField;
    GetAllDiametersCsatlakozotest: TFloatField;
    GetAllDiametersDs: TDataSource;
    AllandoAlk: TTable;
    AllandoAlkAdatlapId: TIntegerField;
    AllandoAlkTetelSzam: TSmallintField;
    AllandoAlkMegnevezes: TStringField;
    AllandoAlkRajzszam: TStringField;
    AllandoAlkTomeg: TFloatField;
    AllandoAlkMegjegyzes: TStringField;
    AllandoAlkAktiv: TBooleanField;
    AllandoAlkDs: TDataSource;
    Query1: TQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    AnormaQry: TQuery;
    AnormaQryAnormaKod: TStringField;
    AccessoriesQry: TQuery;
    AccessoriesQryAccessoryTypeName: TStringField;
    AccessoriesQryaccessoryANb: TStringField;
    AccessoriesQryaccessoryDNb: TStringField;
    AccessoriesQryaccessoryFileH: TStringField;
    AccessoriesQryaccessoryFileE: TStringField;
    AccessoriesQrydescription: TStringField;
    AccessoriesQrydescriptionH: TStringField;
    AccessoriesQrydescriptionE: TStringField;
    AccessoriesQrydate: TDateTimeField;
    AccessoriesQryweight: TFloatField;
    AccessoriesQrypriceSAP: TFloatField;
    AccessoriesQryprice: TFloatField;
    AccessoriesQrydatePrice: TDateTimeField;
    AccessoriesQrymaterial: TStringField;
    AccessoriesQrysteel: TIntegerField;
    AccessoriesQryID: TFloatField;
    AccessoriesQryOD: TFloatField;
    AccessoriesQryL: TFloatField;
    AccessoriesQryM1: TFloatField;
    AccessoriesQrynote: TStringField;
    AccessoriesQryDs: TDataSource;
    ValtozoAlk: TTable;
    ValtozoAlkAdatlapId: TIntegerField;
    ValtozoAlkTetelSzam: TSmallintField;
    ValtozoAlkMegnevezes: TStringField;
    ValtozoAlkRajzszam: TStringField;
    ValtozoAlkTomeg: TFloatField;
    ValtozoAlkMegjegyzes: TStringField;
    ValtozoAlkAktiv: TBooleanField;
    ValtozoAlkDs: TDataSource;
    AdatlapCsatl: TTable;
    AdatlapCsatlAdatlapId: TIntegerField;
    AdatlapCsatlTetelSzam: TSmallintField;
    AdatlapCsatlVegzodes: TStringField;
    AdatlapCsatlCsatlakozoRsz: TStringField;
    AdatlapCsatlMegnevezes: TStringField;
    AdatlapCsatlOsszeallitasiRsz: TStringField;
    AdatlapCsatlCsatlakozoSuly: TFloatField;
    AdatlapCsatlMegjegyzes: TStringField;
    AdatlapCsatlAktiv: TBooleanField;
    AdatlapCsatlDs: TDataSource;
    CouplingsQry: TQuery;
    CouplingsQrycouplingDNb: TStringField;
    CouplingsQryendFittingName: TStringField;
    CouplingsQryendFittingDesc: TStringField;
    CouplingsQrydescription: TStringField;
    CouplingsQrydescriptionH: TStringField;
    CouplingsQrydescriptionE: TStringField;
    CouplingsQrydate: TDateTimeField;
    CouplingsQryweight: TFloatField;
    CouplingsQrysteel: TStringField;
    CouplingsQryfireResistant: TBooleanField;
    CouplingsQrywelded: TBooleanField;
    CouplingsQrybody: TStringField;
    CouplingsQryIDrated: TFloatField;
    CouplingsQryIdUnit: TStringField;
    CouplingsQrydp: TFloatField;
    CouplingsQrytp: TFloatField;
    CouplingsQryPressUnit: TStringField;
    CouplingsQryLt: TFloatField;
    CouplingsQryEndFittingShortNameH: TStringField;
    CouplingsQryEndFittingNameH: TStringField;
    CouplingsQryEndFittingNameE: TStringField;
    CouplingsQryEndFittingShortNameE: TStringField;
    CouplingsQrystatus: TIntegerField;
    CouplingsQryDs: TDataSource;
    StandardQry: TQuery;
    StandardQrystandardCounter: TIntegerField;
    StandardQrydescription: TStringField;
    StandardQryDs: TDataSource;
    GetPackRevs: TQuery;
    GetPackRevsDs: TDataSource;
    GetPackRevsPackNum: TIntegerField;
    GetPackRevsPackRevision: TSmallintField;
    GetPackRevsPackVersion: TSmallintField;
    GetPackRevsIdent1: TStringField;
    GetPackRevsIdent2: TStringField;
    GetPackRevsName: TStringField;
    GetPackRevsOfferPerson: TStringField;
    GetPackRevsNote: TStringField;
    GetPackRevsStatus: TSmallintField;
    GetPackRevsCreatorName: TStringField;
    GetPackRevsCreateDate: TDateTimeField;
    AdatlapKonfMegnevezes: TStringField;
    AdatlapKiadasIdopontja: TDateTimeField;
    AdatlapErvenyesitesIdopontja: TDateTimeField;
    AdatlapKiadta: TStringField;
    AdatlapErvenyesitette: TStringField;
    AdatlapEllenorizve: TBooleanField;
    AccessoryQry: TRxQuery;
    AccessoryQryCOLUMN1: TStringField;
    AccessoryQryaccessoryCounter: TIntegerField;
    AccessoryQryaccessoryANb: TStringField;
    AccessoryQryaccessoryDNb: TStringField;
    AccessoryQryAccDescriptionH: TStringField;
    AccessoryQrydescription: TStringField;
    AccessoryQrydescriptionH: TStringField;
    AccessoryQrydate: TDateTimeField;
    AccessoryQryweight: TFloatField;
    AccessoryQrypriceSAP: TFloatField;
    AccessoryQryprice: TFloatField;
    AccessoryQrydatePrice: TDateTimeField;
    AccessoryQrymaterial: TStringField;
    AccessoryQrySteel: TStringField;
    AccessoryQryID: TFloatField;
    AccessoryQryOD: TFloatField;
    AccessoryQryL: TFloatField;
    AccessoryQryM1: TFloatField;
    AccessoryQrystatus: TIntegerField;
    AccessoryQrynote: TStringField;
    AccessoryQryaccessoryType: TIntegerField;
    RendelesTetel: TTable;
    RendFejQryDs: TDataSource;
    RendelesTetelDs: TDataSource;
    RendelesTetelRendelesAz: TIntegerField;
    RendelesTetelTetelSrsz: TIntegerField;
    RendelesTetelCikkszam: TStringField;
    RendelesTetelSpecifikacio: TStringField;
    RendelesTetelAtmero: TFloatField;
    RendelesTetelpsi: TFloatField;
    RendelesTetelMPa: TFloatField;
    RendelesTetelLang: TBooleanField;
    RendelesTetelBg: TBooleanField;
    RendelesTetelKg: TBooleanField;
    RendelesTetelPa: TBooleanField;
    RendelesTetelTipus: TStringField;
    RendelesTetelCsatl1: TStringField;
    RendelesTetelCsatl1Rsz: TStringField;
    RendelesTetelCsatl2: TStringField;
    RendelesTetelCsatl2Rsz: TStringField;
    RendelesTetelDarabSzam: TFloatField;
    RendelesTetelHossz: TFloatField;
    RendelesTetelHosszMe: TStringField;
    RendelesTetelTErtek: TFloatField;
    RendelesTetelTPenznem: TStringField;
    RendelesTetelOsszeallRsz: TStringField;
    RendelesTetelKonstrukcio: TStringField;
    RendelesTetelKonstrukcio2: TStringField;
    RendelesTetelTKonfekcio: TStringField;
    RendelesTetelTKonfekDatum: TDateTimeField;
    RendelesTetelNormaIdo: TFloatField;
    RendelesTetelDbjDatum: TDateTimeField;
    RendelesTetelMuvDatum: TDateTimeField;
    RendelesTetelKonstrDatum: TDateTimeField;
    RendelesTetelFszHatarido: TDateTimeField;
    RendelesTetelFszBeerk: TDateTimeField;
    RendelesTetelAnyag: TStringField;
    RendelesTetelCsomagolas: TStringField;
    RendelesTetelEgyeb: TStringField;
    RendelesTetelTMegj: TStringField;
    RendelesTetelTRogzit: TStringField;
    RendelesTetelTRogzIdo: TDateTimeField;
    RendelesTetelTModosit: TStringField;
    RendelesTetelTModIdo: TDateTimeField;
    RendelesTetelModMezok: TFloatField;
    RendelesTetelTorolt: TBooleanField;
    RendelesTetelBeszolg: TBooleanField;
    RendelesTetelTModHatarido: TDateTimeField;
    RendelesTetelBeszolgIdo: TDateTimeField;
    RendelesTetelBeszolgDb: TFloatField;
    RendelesTetelBeszolgHossz: TFloatField;
    RendelesTetelTomeg: TFloatField;
    RendelesTetelGyartasInd: TDateTimeField;
    RendelesTetelBefejezoMuv: TDateTimeField;
    RendelesTetelAccListExist: TBooleanField;
    RendelesTetelAccListDate: TDateTimeField;
    RendelesTetelAccCreator: TStringField;
    RendelesTetelBelsoHuvely: TStringField;
    RendelesTetelHuvely: TStringField;
    RendelesTetelSpiralkup: TStringField;
    RendelesTetelEmelobilincs: TStringField;
    RendelesTetelVedoHuvely: TStringField;
    RendelesTetelOsztottHuvely: TStringField;
    RendelesTetelBiztBilincs: TStringField;
    RendelesTetelAtveteliKesz: TBooleanField;
    RendelesTetelAtveteliIdopont: TDateTimeField;
    RendelesTetelAtvetelitKeszitette: TStringField;
    Csatlakozok: TTable;
    CsatlakozokSrsz: TIntegerField;
    Csatlakozokinch: TFloatField;
    Csatlakozokpsi: TFloatField;
    CsatlakozokMPa: TFloatField;
    CsatlakozokRendSz: TStringField;
    CsatlakozokCsatlRsz: TStringField;
    CsatlakozokTechLap: TStringField;
    CsatlakozokBg: TBooleanField;
    CsatlakozokKg: TBooleanField;
    CsatlakozokLa: TBooleanField;
    CsatlakozokCsLang: TBooleanField;
    CsatlakozokHe: TBooleanField;
    CsatlakozokPA: TBooleanField;
    CsatlakozokElov: TBooleanField;
    CsatlakozokDrag: TBooleanField;
    CsatlakozokNagyh: TBooleanField;
    CsatlakozokFuth: TBooleanField;
    CsatlakozokSigno: TStringField;
    CsatlakozokDs: TDataSource;
    CsatlakozokMegj: TStringField;
    CsatlakozokDatum: TDateTimeField;
    CsatlakozokVegzodes: TStringField;
    CsatlakozokOsszRsz: TStringField;
    CsatlakozokKonfekcio: TStringField;
    CsatlakozokTipus: TStringField;
    AdatlapAdatlapSzam: TStringField;
    AccessoryQryaccessoryTypeCounter: TIntegerField;
    AllandoAlkaccessoryType: TSmallintField;
    ValtozoAlkaccessoryType: TSmallintField;
    AccessoryTypeDs: TDataSource;
    PackDevAssignPackId: TIntegerField;
    PackDevAssignPackItemId: TSmallintField;
    RendelesTetelTomitoGyuru1: TStringField;
    RendelesTetelTomitoGyuru2: TStringField;
    RendelesTetelFeneklap1: TStringField;
    RendelesTetelFeneklap2: TStringField;
    RendelesTetelNyomPrBilincs1: TStringField;
    RendelesTetelNyomPrBilincs2: TStringField;
    RendEgyeb: TTable;
    RendEgyebDs: TDataSource;
    RendEgyebRendelesAz: TIntegerField;
    RendEgyebTetelSrsz: TIntegerField;
    RendEgyebSorszam: TIntegerField;
    RendEgyebMegnevezes: TStringField;
    RendEgyebRajzszam: TStringField;
    RendEgyebMegjegyzes: TStringField;
    CsatlakozokCsatlErv: TBooleanField;
    CsatlakozokOsszeallErv: TBooleanField;
    RendEgyebCreatorName: TStringField;
    RendEgyebCreateDate: TDateTimeField;
    RendEgyebActive: TBooleanField;
    RendMod: TStoredProc;
    RendModDs: TDataSource;
    RendModRendelesszam: TStringField;
    RendModTetelSorszam: TIntegerField;
    RendModSorszam: TIntegerField;
    RendModFieldName: TStringField;
    RendModOldValue: TStringField;
    RendModNewValue: TStringField;
    RendModModifierName: TStringField;
    RendModModifyDate: TDateTimeField;
    RendMin: TTable;
    RendMinDs: TDataSource;
    RendMinRendelesAz: TIntegerField;
    RendMinTetelSrsz: TIntegerField;
    RendMinMinId: TIntegerField;
    RendMinTipusnev: TStringField;
    RendMinMegnevezes: TStringField;
    RendMinRajzszam: TStringField;
    RendMinCikkszam: TStringField;
    RendMinDarabszam: TSmallintField;
    GetMaterialNum: TStoredProc;
    RendSarzs: TTable;
    RendSarzsDs: TDataSource;
    RendSarzsMinId: TIntegerField;
    RendSarzsMinItemId: TSmallintField;
    RendSarzsSarzsszam: TStringField;
    RendSarzsMegjegyzes: TStringField;
    dsAnyagKi: TDataSource;
    tAnyagKi: TTable;
    tAnyagKiRendelesAz: TIntegerField;
    tAnyagKiMinId: TIntegerField;
    tAnyagKiBizonylatszam: TIntegerField;
    tAnyagKiKiadottDarab: TIntegerField;
    tAnyagKiTipusNev: TStringField;
    tAnyagKiMegnevezes: TStringField;
    tAnyagKiRajzszam: TStringField;
    tAnyagKiDarabszam: TIntegerField;
    RendMinKiadottDarab: TSmallintField;
    RendMinEgyenleg: TIntegerField;
    qRendMin: TQuery;
    qRendMinRendelesAz: TIntegerField;
    qRendMinRendSz: TStringField;
    qRendMinErtTerulet: TStringField;
    qRendMinTetelSrsz: TIntegerField;
    qRendMinSpecifikacio: TStringField;
    qRendMinMinId: TIntegerField;
    qRendMinTipusnev: TStringField;
    qRendMinMegnevezes: TStringField;
    qRendMinRajzszam: TStringField;
    qRendMinCikkszam: TStringField;
    qRendMinDarabszam: TSmallintField;
    qRendMinKiadottDarab: TSmallintField;
    qRendMinMinItemId: TSmallintField;
    qRendMinSarzsszam: TStringField;
    qRendMinMegjegyzes: TStringField;
    qRendMinMod: TQuery;
    qRendMinModRendSz: TStringField;
    qRendMinModRendelesAz: TIntegerField;
    qRendMinModTetelSrsz: TIntegerField;
    qRendMinModMinId: TIntegerField;
    qRendMinModMinItemId: TSmallintField;
    qRendMinModFieldName: TStringField;
    qRendMinModOldValue: TStringField;
    qRendMinModNewValue: TStringField;
    qRendMinModModifierName: TStringField;
    qRendMinModModifyDate: TDateTimeField;
    qKiadatlan: TQuery;
    qKiadatlanRendsz: TStringField;
    qKiadatlanRendelesAz: TIntegerField;
    qKiadatlanTetelSrsz: TIntegerField;
    qKiadatlanMinId: TIntegerField;
    qKiadatlanTipusnev: TStringField;
    qKiadatlanMegnevezes: TStringField;
    qKiadatlanRajzszam: TStringField;
    qKiadatlanCikkszam: TStringField;
    qKiadatlanDarabszam: TSmallintField;
    qKiadatlanKiadottDarab: TSmallintField;
    dsKiadatlan: TDataSource;
    qKiadatlanKiadando: TSmallintField;
    qRendMinModMinTypeName: TStringField;
    spGeneral: TStoredProc;
    qRendRaktar: TQuery;
    dsRendRaktar: TDataSource;
    qRendRaktarRendelesAz: TIntegerField;
    qRendRaktarRendSz: TStringField;
    qRendRaktarPhxRendSz: TStringField;
    qRendRaktarVevoRendSz: TStringField;
    qRendRaktarVevo: TStringField;
    qRendRaktarFelhasznalo: TStringField;
    qRendRaktarErtTerulet: TStringField;
    qRendRaktarRMegj: TStringField;
    Query2: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    RendMinBizonylatszam: TStringField;
    spConstrSearch: TStoredProc;
    spConstrSearchRendsz: TStringField;
    spConstrSearchPhxRendsz: TStringField;
    spConstrSearchTetelSrsz: TIntegerField;
    spConstrSearchKonstrukcio: TStringField;
    spConstrSearchKonstrukcio2: TStringField;
    dsConstrSearch: TDataSource;
    RendelesTetelKv: TBooleanField;
    RendelesTetelInspector: TStringField;
    tInspektorok: TTable;
    dsInspektorok: TDataSource;
    tInspektorokInspectorId: TIntegerField;
    tInspektorokInspectorName: TStringField;
    spMatNumSearch: TStoredProc;
    dsMatNumSearch: TDataSource;
    spMatNumSearchRendsz: TStringField;
    spMatNumSearchPhxRendsz: TStringField;
    spMatNumSearchTetelSrsz: TIntegerField;
    spMatNumSearchCikkszam: TStringField;
    spMatNumSearchSpecifikacio: TStringField;
    KonstrukciokKv: TBooleanField;
    KonstrukciokBDEDesigner17K: TBooleanField;
    updPackHead: TUpdateSQL;
    qPackHead: TQuery;
    qPackHeadPackId: TIntegerField;
    qPackHeadPackNum: TIntegerField;
    qPackHeadPackRevision: TSmallintField;
    qPackHeadPackVersion: TSmallintField;
    qPackHeadIdent1: TStringField;
    qPackHeadIdent2: TStringField;
    qPackHeadName: TStringField;
    qPackHeadOfferPerson: TStringField;
    qPackHeadNote: TStringField;
    qPackHeadStatus: TSmallintField;
    qPackHeadCreatorName: TStringField;
    qPackHeadCreateDate: TDateTimeField;
    qPackHeadStatusName: TStringField;
    RendelesTetelKgInter: TBooleanField;
    RendelesTetelKvMua: TBooleanField;
    RendelesTetelKvFedHelix: TBooleanField;
    RendelesTetelKvNFedHelix: TBooleanField;
    RendelesTetelStamp: TBytesField;
    spLogOut: TStoredProc;
    RendelesTetelSapTypeOfCoupling1: TStringField;
    RendelesTetelSapTypeOfCoupling2: TStringField;
    spGetMaterialName: TStoredProc;
    RendelesTetelTAutoUpdate: TBooleanField;
    RendelesTetelMarking: TStringField;
    RendelesTetelStandard: TStringField;
    RendelesTetelStandardText: TStringField;
    RendelesTetelTypeOfPacking: TStringField;
    RendelesTetelWorkingPressure: TFloatField;
    RendelesTetelWorkingPressureUnit: TStringField;
    RendelesTetelDesignPressure: TFloatField;
    RendelesTetelDesignPressureUnit: TStringField;
    RendelesTetelTestPressure: TFloatField;
    RendelesTetelTestPressureUnit: TStringField;
    RendelesTetelSafetyFactor: TFloatField;
    RendelesTetelTypeOfLining: TStringField;
    RendelesTetelMaxDesignTemperature: TFloatField;
    RendelesTetelMinDesignTemperature: TFloatField;
    StoredProc1: TStoredProc;
    spNamedUnitConversion: TStoredProc;
    RendelesTetelAccListMailDate: TDateTimeField;
    RendelesTetelAccListMailSender: TStringField;
    RendelesTetelAccListMailSent: TBooleanField;
    tBiztSzerelvenyek: TTable;
    dsBiztSzerelvenyek: TDataSource;
    tBiztSzerelvenyekId: TIntegerField;
    tBiztSzerelvenyekEszkozFajta: TStringField;
    tBiztSzerelvenyekBeszerzes: TStringField;
    tBiztSzerelvenyekAzonosito: TStringField;
    tBiztSzerelvenyekRendSz: TStringField;
    tBiztSzerelvenyekRendelesAz: TIntegerField;
    tBiztSzerelvenyekTetelSrsz: TSmallintField;
    tBiztSzerelvenyekRogzitette: TStringField;
    tBiztSzerelvenyekRogzIdopont: TDateTimeField;
    qSafetyItems: TQuery;
    qSafetyItemsId: TIntegerField;
    qSafetyItemsEszkozFajta: TStringField;
    qSafetyItemsBeszerzes: TStringField;
    qSafetyItemsAzonosito: TStringField;
    qSafetyItemsRendsz: TStringField;
    qSafetyItemsRendelesAz: TIntegerField;
    qSafetyItemsTetelSrsz: TSmallintField;
    qSafetyItemsRogzitette: TStringField;
    qSafetyItemsRogzIdopont: TDateTimeField;
    spAddSafetyItem: TStoredProc;
    MfCikkszamJelzesekJelzoString: TStringField;
    MfCikkszamJelzesekJelzoszin: TIntegerField;
    MfCikkszamJelzesekJelzesKod: TSmallintField;
    PackDeviceListOrder: TIntegerField;
    PackDeviceNote: TStringField;
    PackDeviceTorolt: TBooleanField;
    PackDeviceRogzitette: TStringField;
    PackDeviceRogzIdopont: TDateTimeField;
    RendEgyebKiszallitando: TBooleanField;
    RendelesTetelBhAnyag: TStringField;
    RendelesTetelEbMeret: TFloatField;
    RendelesTetelBbMeret: TFloatField;
    AccessoryType: TTable;
    AccessoryTypeaccessoryTypeCounter: TIntegerField;
    AccessoryTypedescriptionH: TStringField;
    AccessoryTypedescriptionE: TStringField;
    AccessoryTypeshortDescriptionH: TStringField;
    AccessoryTypeshortDescriptionE: TStringField;
    AccessoryTypearticleNbMin: TStringField;
    AccessoryTypearticleNbMax: TStringField;
    spUserRoleMembers: TStoredProc;
    spUserRoleMembersDbRole: TStringField;
    spUserRoleMembersMemberName: TStringField;
    spUserRoleMembersMemberSID: TVarBytesField;
    PackDeviceTypeDimenzioNev11: TStringField;
    PackDeviceTypeDimenzioNev12: TStringField;
    PackDeviceTypeDimenzioNev13: TStringField;
    PackDevicedim11: TFloatField;
    PackDevicedim12: TFloatField;
    PackDevicedim13: TFloatField;
    PackDevicePicture: TBlobField;
    RendelesTetelH2S: TSmallintField;
    qMfCikkszamok: TQuery;
    qMfCikkszamokItemId: TIntegerField;
    qMfCikkszamokPrDatum: TDateTimeField;
    qMfCikkszamokMtKeszDatum: TDateTimeField;
    qMfCikkszamokRegiCksz: TStringField;
    qMfCikkszamokSAPCksz: TStringField;
    qMfCikkszamokMtFelkeszDatum: TDateTimeField;
    qMfCikkszamokNev: TStringField;
    qMfCikkszamokHossz: TFloatField;
    qMfCikkszamokVulk: TStringField;
    qMfCikkszamokTomloveg: TStringField;
    qMfCikkszamokMuszJell: TStringField;
    qMfCikkszamokKonstr: TStringField;
    qMfCikkszamokMtfKesz: TStringField;
    qMfCikkszamokMegjegyzes: TStringField;
    qMfCikkszamokMtfFelkesz: TStringField;
    qMfCikkszamokKeszitette: TStringField;
    qMfCikkszamokKeszitesDatuma: TDateTimeField;
    qMfCikkszamokModositotta: TStringField;
    qMfCikkszamokModositasDatuma: TDateTimeField;
    qMfCikkszamokJelzesKod: TSmallintField;
    qMfCikkszamokJelzesNev: TStringField;
    qMfCikkszamokSzin: TIntegerField;
    uMfCikkszamok: TUpdateSQL;
    Query3: TQuery;
    Query3Meo_Az: TIntegerField;
    Query3RendSz: TStringField;
    Query3TetelSrsz: TIntegerField;
    Query3ASSETNUMBER: TStringField;
    Query3CATEGORYID: TStringField;
    Query3ITEMDESCRIPTION: TStringField;
    Query3DISTRIBUTORID: TStringField;
    Query3CLIENTID: TStringField;
    Query3LOCATIONID: TStringField;
    Query3CHIPID: TStringField;
    Query3CERTIFICATIONSTATUS: TStringField;
    Query3CERTIFICATIONINTERVAL: TStringField;
    Query3BoreSize: TStringField;
    Query3NominalLegth: TStringField;
    Query3DesignPressure: TStringField;
    Query3TestPressure: TStringField;
    Query3Internalstripwoundtube: TStringField;
    Query3Endcoupling1: TStringField;
    Query3Endcoupling2: TStringField;
    Query3Maxdesigntemp: TStringField;
    Query3Mindesigntemp: TStringField;
    Query3Manufacturer: TStringField;
    Query3HoseType: TStringField;
    Query3HoseStandard: TStringField;
    Query3HoseCover: TStringField;
    Query3OutsideProtection: TStringField;
    Query3OpDynamicMBR: TStringField;
    Query3StorageMBR: TFloatField;
    Query3OpStaticMBR: TFloatField;
    Query3Notes: TStringField;
    qPackTypes: TQuery;
    qPackTypesDeviceTypeCode: TIntegerField;
    qPackTypesDeviceTypeName: TStringField;
    qPackTypesDeviceId: TIntegerField;
    qPackTypesDeviceName: TStringField;
    RendelesTetelMarkingId: TIntegerField;
    CsatlakozokMaxOD: TFloatField;
    spGetDiameterIncrease: TStoredProc;
    spGetCouplingBodyOD: TStoredProc;
    spGetCouplingMaxOD: TStoredProc;
    RendEgyebDarabszam: TSmallintField;
    qMfCikkszamokFelkesz5: TStringField;
    qMfCikkszamokFelkesz9: TStringField;
    qMfCikkszamokVulk9: TStringField;
    qMfCikkszamokTomloveg9: TStringField;
    RendEgyebDbFuggo: TBooleanField;
    RendEgyebOsszDb: TIntegerField;
    RendelesTetelCsatl1MaxAtmero: TFloatField;
    RendelesTetelCsatl1MaxAtmeroMe: TIntegerField;
    RendelesTetelCsatl2MaxAtmero: TFloatField;
    RendelesTetelCsatl2MaxAtmeroMe: TIntegerField;
    RendelesTetelKonstrukcioMaxAtmero: TFloatField;
    RendelesTetelKonstrukcioMaxAtmeroMe: TIntegerField;
    spGetRendEgyebMaxId: TStoredProc;
    RendModId: TIntegerField;
    qBilincs: TQuery;
    qBilincsRendelesAz: TIntegerField;
    qBilincsTetelSrsz: TIntegerField;
    qBilincsTipus: TSmallintField;
    qBilincsTomloSorszam: TSmallintField;
    qBilincsAzonosito: TStringField;
    qBilincsFestes: TStringField;
    qBilincsRogzitette: TStringField;
    qBilincsRogzIdopont: TDateTimeField;
    dsBilincs: TDataSource;
    uBilincs: TUpdateSQL;
    spGetBilincsStatusz: TStoredProc;
    spGetBilincsStatuszEB: TIntegerField;
    spGetBilincsStatuszBB: TIntegerField;
    qBilincsCounter: TSmallintField;
    spGetBilincsList: TStoredProc;
    spGetBilincsListRendelesAz: TIntegerField;
    spGetBilincsListTetelSrsz: TIntegerField;
    spGetBilincsListTipus: TSmallintField;
    spGetBilincsListTomloSorszam: TSmallintField;
    spGetBilincsListCounter: TSmallintField;
    spGetBilincsListAzonosito: TStringField;
    spGetBilincsListFestes: TStringField;
    spGetBilincsListRogzitette: TStringField;
    spGetBilincsListRogzIdopont: TDateTimeField;
    spGetRsReportParams: TStoredProc;
    dsVegzodesTipusok: TDataSource;
    tVegzodesTipusok: TTable;
    tVegzodesTipusokVegzodesId: TIntegerField;
    tVegzodesTipusokMegnevezes: TStringField;
    tVegzodesTipusokPicture: TBlobField;
    tVegzodesTipusokRogzitette: TStringField;
    tVegzodesTipusokRogzIdopont: TDateTimeField;
    tTechlap: TTable;
    dsTechlap: TDataSource;
    tTechlapSrsz: TIntegerField;
    tTechlapL: TFloatField;
    tTechlapL1: TFloatField;
    tTechlapL2: TFloatField;
    tTechlapL3: TFloatField;
    tTechlapMaxOD: TFloatField;
    tTechlapVegzodesId: TIntegerField;
    tTechlapL1Caption: TStringField;
    tTechlapRogzitette: TStringField;
    tTechlapRogzIdopont: TDateTimeField;
    tCsatlRajzTart: TTable;
    dsCsatlRajzTart: TDataSource;
    tCsatlRajzTartSrsz: TIntegerField;
    tCsatlRajzTartTartozekId: TIntegerField;
    tCsatlRajzTartMegnevezes: TStringField;
    tCsatlRajzTartRajzszam: TStringField;
    tCsatlRajzTartDarabszam: TIntegerField;
    tCsatlRajzTartMegjegyzes: TStringField;
    tCsatlRajzTartRogzitette: TStringField;
    tCsatlRajzTartRogzIdopont: TDateTimeField;
    RendEgyebTartozekId: TIntegerField;
    RendEgyebTomloVegId: TSmallintField;
    qCsatlTartList: TQuery;
    qCsatlTartListSrsz: TIntegerField;
    qCsatlTartListTartozekId: TIntegerField;
    qCsatlTartListMegnevezes: TStringField;
    qCsatlTartListRajzszam: TStringField;
    qCsatlTartListDarabszam: TIntegerField;
    qCsatlTartListMegjegyzes: TStringField;
    qCsatlTartListRogzitette: TStringField;
    qCsatlTartListRogzIdopont: TDateTimeField;
    tTechlapEllenorizte: TStringField;
    tTechlapEllenorzesIdopontja: TDateTimeField;
    qCsatlTartListEllenorizte: TStringField;
    qPackItem: TQuery;
    qPackItemPackId: TIntegerField;
    qPackItemPackItemId: TSmallintField;
    qPackItemDescription: TStringField;
    dsqPackItem: TDataSource;
    spGetBaseParamStr: TStoredProc;
    spGetAtveteliStrMap: TStoredProc;
    DataSheetBmkData: TRxMemoryData;
    DataSheetBmkDataRendsz: TStringField;
    DataSheetBmkDataTetelSrsz: TIntegerField;
    dsDataSheetBmkData: TDataSource;
    PackBmkData: TRxMemoryData;
    dsPackBmkData: TDataSource;
    PackBmkDataCsomSz: TIntegerField;
    PackBmkDataRevizio: TSmallintField;
    PackBmkDataVerzio: TSmallintField;
    PackBmkDataSrsz: TSmallintField;
    qMfCikkszamokFelkesz6: TStringField;
    qMfCikkszamokVulk6: TStringField;
    qMfCikkszamokTomloveg6: TStringField;
    qMfCikkszamokFelkesz7: TStringField;
    qMfCikkszamokVulk7: TStringField;
    qMfCikkszamokTomloveg7: TStringField;
    CsatlakozokMP: TBooleanField;
    spConstrSearchCsatl1Rsz: TStringField;
    spConstrSearchCsatl2Rsz: TStringField;
    CsatlakozokSSRC: TBooleanField;
    qMfCikkszamokNorma: TBooleanField;
    qMfCikkszamokSAP: TBooleanField;
    qMfCikkszamokTBP: TBooleanField;
    qMfCikkszamokGraf: TBooleanField;
    qMfCikkszamokTorzslap: TBooleanField;
    CopyCouplingData: TStoredProc;
    qBilincsMegjegyzes: TStringField;
    spGetBilincsListMegjegyzes: TStringField;
    DataSheetBmkDataComment: TStringField;
    CsatlakozokPSL_szint: TStringField;
    qBilincsPaintId: TQuery;
    qBilincsPaintIdRendelesAz: TIntegerField;
    qBilincsPaintIdTetelSrsz: TIntegerField;
    qBilincsPaintIdEBAzonosito: TMemoField;
    qBilincsPaintIdEBFestes: TMemoField;
    qBilincsPaintIdBBAzonosito: TMemoField;
    qBilincsPaintIdBBFestes: TMemoField;
    spGetBilincsStatuszOH: TIntegerField;
    RendelesTetelEgyebek: TMemoField;
    RendelesTetelInspectorMegj: TStringField;
    mInspekcio: TRxMemoryData;
    mInspekcioInspekcio: TStringField;
    dsInspekcio: TDataSource;
    DeleteCsatlDependencies: TStoredProc;
    qMfCikkszamokKsz: TStringField;
    qMfCikkszamokAsz: TStringField;
    spConstrSearchHossz: TFloatField;
    spConstrSearchHosszMe: TStringField;
    spConstrSearchPackStr: TStringField;
    qMfCikkszamokDarabjegyzek: TBooleanField;
    spConstrSearchNumber: TFloatField;
    GetTableFieldCaption: TStoredProc;
    GetTableFieldCaptionFieldName: TStringField;
    GetTableFieldCaptionCaption: TStringField;
    AddProgEvent: TStoredProc;
    HSOrderHeadList: TStoredProc;
    HSOrderHeadListRendelesAz: TIntegerField;
    HSOrderHeadListRendSz: TStringField;
    HSOrderHeadListSapRevizio: TSmallintField;
    HSOrderHeadListAjanlatszam: TStringField;
    HSOrderHeadListPhxRendSz: TStringField;
    HSOrderHeadListVevoRendSz: TStringField;
    HSOrderHeadListVevo: TStringField;
    HSOrderHeadListFelhasznalo: TStringField;
    HSOrderHeadListErtTerulet: TStringField;
    HSOrderHeadListRMegj: TStringField;
    HSOrderHeadListTorolt: TBooleanField;
    HSOrderHeadListFAutoUpdate: TBooleanField;
    HSOrderHeadListRevExist: TBooleanField;
    procedure PackHeadNewRecord(DataSet: TDataSet);
    procedure PackItemNewRecord(DataSet: TDataSet);
    procedure PackItemCalcFields(DataSet: TDataSet);
    procedure PackagesCalcFields(DataSet: TDataSet);
    procedure PackagesBeforePost(DataSet: TDataSet);
    procedure PackagesAfterPost(DataSet: TDataSet);
    procedure PackItemBeforePost(DataSet: TDataSet);
    procedure PackItemBeforeInsert(DataSet: TDataSet);
    procedure PackDeviceAfterPost(DataSet: TDataSet);
    procedure PackHeadAfterScroll(DataSet: TDataSet);
    procedure MfCikkszamokXxxBeforePost(DataSet: TDataSet);
    procedure MfCikkszamokXxxNewRecord(DataSet: TDataSet);
    procedure CsatiHosszXBeforePost(DataSet: TDataSet);
    procedure AdatlapKonfNewRecord(DataSet: TDataSet);
    procedure AdatlapKonfBeforeInsert(DataSet: TDataSet);
    procedure AdatlapCsomBeforeInsert(DataSet: TDataSet);
    procedure AdatlapCsomNewRecord(DataSet: TDataSet);
    procedure AdatlapKonfAfterPost(DataSet: TDataSet);
    procedure AdatlapEllenorizveChange(Sender: TField);
    procedure AllandoAlkBeforeInsert(DataSet: TDataSet);
    procedure AllandoAlkNewRecord(DataSet: TDataSet);
    procedure AdatlapKiadvaChange(Sender: TField);
    procedure AdatlapErvenyesChange(Sender: TField);
    procedure AdatlapCsomAfterPost(DataSet: TDataSet);
    procedure AllandoAlkAfterPost(DataSet: TDataSet);
    procedure ValtozoAlkAfterPost(DataSet: TDataSet);
    procedure AdatlapCsatlAfterPost(DataSet: TDataSet);
    procedure ValtozoAlkBeforeInsert(DataSet: TDataSet);
    procedure ValtozoAlkNewRecord(DataSet: TDataSet);
    procedure AdatlapCsatlNewRecord(DataSet: TDataSet);
    procedure AdatlapCsatlBeforeInsert(DataSet: TDataSet);
    procedure RendelesTetelAccListExistChange(Sender: TField);
    procedure CsatlakozokBeforePost(DataSet: TDataSet);
    procedure RendelesTetelBeforePost(DataSet: TDataSet);
    procedure RendelesTetelAtveteliKeszChange(Sender: TField);
    procedure AdatlapNewRecord(DataSet: TDataSet);
    procedure KonstrukciokNewRecord(DataSet: TDataSet);
    procedure KonstrukciokAfterEdit(DataSet: TDataSet);
    procedure AllandoAlkBeforePost(DataSet: TDataSet);
    procedure AllandoAlkAfterEdit(DataSet: TDataSet);
    procedure ValtozoAlkBeforePost(DataSet: TDataSet);
    procedure ValtozoAlkAfterEdit(DataSet: TDataSet);
    procedure RendEgyebBeforePost(DataSet: TDataSet);
    procedure RendEgyebAfterPost(DataSet: TDataSet);
    procedure RendEgyebNewRecord(DataSet: TDataSet);
    procedure RendSarzsAfterPost(DataSet: TDataSet);
    procedure tAnyagKiAfterPost(DataSet: TDataSet);
    procedure RendMinCalcFields(DataSet: TDataSet);
    procedure RendMinBeforePost(DataSet: TDataSet);
    procedure AdatlapKonfBeforeEdit(DataSet: TDataSet);
    procedure AdatlapCsomBeforeEdit(DataSet: TDataSet);
    procedure AllandoAlkBeforeEdit(DataSet: TDataSet);
    procedure ValtozoAlkBeforeEdit(DataSet: TDataSet);
    procedure AdatlapCsatlBeforeEdit(DataSet: TDataSet);
    procedure AdatlapBeforeDelete(DataSet: TDataSet);
    procedure AdatlapBeforePost(DataSet: TDataSet);
    procedure AdatlapAdatlapSzamChange(Sender: TField);
    procedure AdatlapValtozatChange(Sender: TField);
    procedure AdatlapCegNevChange(Sender: TField);
    procedure AdatlapOsztalyNevChange(Sender: TField);
    procedure AdatlapMegnevezesChange(Sender: TField);
    procedure AdatlapAltalanosNevChange(Sender: TField);
    procedure AdatlapSzabvanyChange(Sender: TField);
    procedure AdatlapIdChange(Sender: TField);
    procedure AdatlapNyomasChange(Sender: TField);
    procedure AdatlapAfterPost(DataSet: TDataSet);
    procedure qPackHeadBeforePost(DataSet: TDataSet);
    procedure qPackHeadAfterPost(DataSet: TDataSet);
    procedure qPackHeadAfterDelete(DataSet: TDataSet);
    procedure qPackHeadBeforeDelete(DataSet: TDataSet);
    procedure KonstrukciokBeforePost(DataSet: TDataSet);
    procedure AccListItemChanged(Sender: TField);
    procedure tBiztSzerelvenyekBeforePost(DataSet: TDataSet);
    procedure tBiztSzerelvenyekAfterPost(DataSet: TDataSet);
    procedure PackDeviceNewRecord(DataSet: TDataSet);
    procedure PackDeviceBeforePost(DataSet: TDataSet);
    procedure qMfCikkszamokAfterDelete(DataSet: TDataSet);
    procedure qMfCikkszamokAfterPost(DataSet: TDataSet);
    procedure qMfCikkszamokNewRecord(DataSet: TDataSet);
    procedure qMfCikkszamokAfterEdit(DataSet: TDataSet);
    procedure qMfCikkszamokBeforePost(DataSet: TDataSet);
    procedure RendEgyebCalcFields(DataSet: TDataSet);
    procedure qBilincsBeforePost(DataSet: TDataSet);
    procedure RendelesTetelAfterScroll(DataSet: TDataSet);
    procedure qBilincsAfterPost(DataSet: TDataSet);
    procedure qBilincsAfterDelete(DataSet: TDataSet);
    procedure qBilincsNewRecord(DataSet: TDataSet);
    procedure tTechlapBeforePost(DataSet: TDataSet);
    procedure tTechlapAfterScroll(DataSet: TDataSet);
    procedure tCsatlRajzTartBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tCsatlRajzTartAfterPost(DataSet: TDataSet);
    procedure CheckDesigner(DataSet: TDataSet);
    procedure qCsatlTartListAfterPost(DataSet: TDataSet);
    procedure qCsatlTartListBeforePost(DataSet: TDataSet);
    procedure tCsatlRajzTartAfterDelete(DataSet: TDataSet);
    procedure tTechlapSrszChange(Sender: TField);
    procedure PackItemAfterPost(DataSet: TDataSet);
    procedure CsatlakozokNewRecord(DataSet: TDataSet);
    procedure PackItemBeforeCancel(DataSet: TDataSet);
    procedure tTechlapBeforeEdit(DataSet: TDataSet);
    procedure tTechlapAfterPost(DataSet: TDataSet);
    procedure CheckDependencies(CsatlSrsz: integer) ;
    procedure CsatlakozokBeforeDelete(DataSet: TDataSet);
    procedure PackagesNewRecord(DataSet: TDataSet);
  private
    Counter, ActItemId, IdMax: integer ;
    NewDataSheet: Boolean ;
    procedure UpdateHead ;
    procedure ChangeCreator ;
    procedure ClearControls ;
    procedure NewDataSheetVersion ;
  public
    function CheckFieldValues: Boolean ;
    function GetMaxItemCount: integer ;
    procedure GetIdMax(DataSet: TDataSet) ;
    function GetAccType: integer ;
    procedure DataSheetCheckBrowse ;
    function SetCouplings(DataSet: TDataSet):Boolean ;
    procedure InvertCoupling(DataSet: TDataSet) ;
    procedure RefreshBilincsStatusz ;
    function CheckFixFlange(CsatlStr: string): Boolean ;
    procedure PackItemRefresh ;
  end;

var
  Dm: TDm;
  ActPackId: integer ;
  TechlapRec: TTechlapRec ;

implementation

uses HoseSlaveU, AccTypeSelectFormU, ToolsDmU, BilincsFormU,
  CouplingDependFormU;

{$R *.DFM}

procedure TDm.PackHeadNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CreatorName').AsString:=MainForm.CurrentUserName ;
  DataSet.FieldByName('CReateDate').AsDateTime:=Now ;
end;

procedure TDm.PackItemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CreatorName').AsString:=MainForm.CurrentUserName ;
  DataSet.FieldByName('CReateDate').AsDateTime:=Now ;
  DataSet.FieldByName('PackItemId').AsInteger:=ActItemId ;
end;

procedure TDm.PackItemCalcFields(DataSet: TDataSet);
var
  Pieces: integer ;
  BodyLength, BodyWeight, CouplingWeight1, CouplingWeight2, LiftingCollarWeight,
  LiftingCollarPieces, SafetyClampWeight, SafetyClampPieces, SafetyChainWeight,
  OtherAccWeight, SumWeight: double ;
begin
  Pieces:=DataSet.FindField('Pieces').AsInteger ;

  BodyLength:=DataSet.FindField('BodyLength').AsFloat ;
  BodyWeight:=DataSet.FindField('BodyWeight').AsFloat ;

  CouplingWeight1:=DataSet.FindField('CouplingWeight1').AsFloat ;
  CouplingWeight2:=DataSet.FindField('CouplingWeight2').AsFloat ;

  LiftingCollarWeight:=DataSet.FindField('LiftingCollarWeight').AsFloat ;
  LiftingCollarPieces:=DataSet.FindField('LiftingCollarPieces').AsInteger ;

  SafetyClampWeight:=DataSet.FindField('SafetyClampWeight').AsFloat ;
  SafetyClampPieces:=DataSet.FindField('SafetyClampPieces').AsInteger ;

  SafetyChainWeight:=DataSet.FindField('SafetyChainWeight').AsFloat ;
  OtherAccWeight:=DataSet.FindField('OtherAccWeight').AsFloat ;

  SumWeight := Pieces * (BodyLength * BodyWeight + CouplingWeight1 + CouplingWeight2
    + LiftingCollarWeight * LiftingCollarPieces + SafetyClampWeight * SafetyClampPieces)
    + SafetyChainWeight + OtherAccWeight ;
  //DataSet.FindField('SumWeight').AsFloat:=SumWeight ;
  DataSet.FindField('summa').AsFloat:=SumWeight ;
end;

procedure TDm.PackagesCalcFields(DataSet: TDataSet);
var
  SumPrice, SumWeight: double ;
begin
  SumWeight:=DataSet.FindField('PackDevNum').AsInteger*DataSet.FindField('Weight').AsFloat ;
  SumPrice:=DataSet.FindField('PackDevNum').AsInteger*DataSet.FindField('Price').AsFloat ;
  DataSet.FindField('sWeight').AsFloat:=SumWeight ;
  DataSet.FindField('sPrice').AsFloat:=SumPrice ;
end;

procedure TDm.PackagesBeforePost(DataSet: TDataSet);
begin
  if DataSet.FindField('PackDevNum').AsInteger < 1 then begin
    ErrMsg('Nincs megadva a csomagolóeszköz darabszáma!') ;
    MainForm.dxDBGrid3.FocusedField := DataSet.FieldByName('PackDevNum') ;
    Abort ;
    //Exit ;
  end ;
  DataSet.FindField('CreatorName').AsString:=Mainform.CurrentUserName ;
  DataSet.FindField('CreateDate').AsDateTime:=Now ;
  DataSet.FindField('SumWeight').AsFloat:=DataSet.FindField('sWeight').AsFloat ;
  DataSet.FindField('SumPrice').AsFloat:=DataSet.FindField('sPrice').AsFloat ;
end;

procedure TDm.PackagesAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
  Mainform.PackLastCurrencyCode := DataSet.FieldByName('CurrencyCode').AsInteger ;
end;

procedure TDm.PackItemBeforePost(DataSet: TDataSet);
begin
  if not CheckFieldValues then Abort ;
  DataSet.FindField('CreateDate').AsDateTime:=Now ;
  DataSet.FindField('CreatorName').AsString:=Mainform.CurrentUserName ;
  DataSet.FindField('SumWeight').AsFloat:=DataSet.FindField('summa').AsFloat ;
end;

function TDm.CheckFieldValues: Boolean ;
var
  i, ErrNum, Pieces, LiftingCollarPieces, SafetyClampPieces: integer ;
  BodyLength, BodyId, BodyOd, MBRstorage, BodyWeight,
  CouplingWeight1, CouplingOd1, OdMax1,
  CouplingWeight2, CouplingOd2, OdMax2,
  LiftingCollarId, LiftingCollarOd, LiftingCollarWeight: double ;
  SafetyClampId, SafetyClampOd, SafetyClampWeight, SafetyChainWeight,
  OtherAccWeight, SumWeight: double ;
  LiftingCollarExists, LiftingCollarReinforced, SafetyClampExists,
  CouplingExists, SafetyChainExists, OtherAccExists, Valuable: Boolean ;
  FieldSet, FilterSet: set of byte ;
  CouplingCode1, CouplingCode2, CouplingName1, CouplingName2: string ;
  Field: TField ;
begin
  Result:=False ;
  ErrNum:=0 ;
  try
    Pieces:=Dm.PackItemPieces.AsInteger ;
    BodyLength:=Dm.PackItemBodyLength.AsFloat ;
    BodyId:=Dm.PackItemBodyId.AsFloat ;
    BodyOd:=Dm.PackItemBodyOd.AsFloat ;
    MBRstorage:=Dm.PackItemMBRstorage.AsFloat ;
    BodyWeight:=Dm.PackItemBodyWeight.AsFloat ;
    CouplingCode1:=Dm.PackItemCouplingCode1.AsString ;
    CouplingCode2:=Dm.PackItemCouplingCode2.AsString ;
    CouplingName1:=Dm.PackItemCouplingName1.AsString ;
    CouplingName2:=Dm.PackItemCouplingName2.AsString ;
    CouplingWeight1:=Dm.PackItemCouplingWeight1.AsFloat ;
    CouplingOd1:=Dm.PackItemCouplingOd1.AsFloat ;
    OdMax1:=Dm.PackItemOdMax1.AsFloat ;
    CouplingWeight2:=Dm.PackItemCouplingWeight2.AsFloat ;
    CouplingOd2:=Dm.PackItemCouplingOd2.AsFloat ;
    OdMax2:=Dm.PackItemOdMax2.AsFloat ;
    LiftingCollarExists:=Dm.PackItemLiftingCollarExists.AsBoolean ;
    LiftingCollarId:=Dm.PackItemLiftingCollarId.AsFloat ;
    LiftingCollarOd:=Dm.PackItemLiftingCollarOd.AsFloat ;
    LiftingCollarWeight:=Dm.PackItemLiftingCollarWeight.AsFloat ;
    LiftingCollarReinforced:=Dm.PackItemLiftingCollarReinforced.AsBoolean ;
    LiftingCollarPieces:=Dm.PackItemLiftingCollarPieces.AsInteger ;
    SafetyClampExists:=Dm.PackItemSafetyClampExists.AsBoolean ;
    SafetyClampId:=Dm.PackItemSafetyClampId.AsFloat ;
    SafetyClampOd:=Dm.PackItemSafetyClampOd.AsFloat ;
    SafetyClampWeight:=Dm.PackItemSafetyClampWeight.AsFloat ;
    SafetyClampPieces:=Dm.PackItemSafetyClampPieces.AsInteger ;
    SafetyChainExists:=Dm.PackItemSafetyChainExists.AsBoolean ;
    SafetyChainWeight:=Dm.PackItemSafetyChainWeight.AsFloat ;
    OtherAccExists:=Dm.PackItemOtherAccExists.AsBoolean ;
    OtherAccWeight:=Dm.PackItemOtherAccWeight.AsFloat ;
    SumWeight:=Dm.PackItemSumWeight.AsFloat ;
    CouplingExists:=Dm.PackItemCouplingExists.AsBoolean ;
  except
    On E: exception do begin
      ErrMsg(E.Message) ;
      Exit ;
    end ;
  end ;
  // Ha csak tartozék, akkor mehet tovább
  FieldSet:=[] ;
  for i:=3 to Dm.PackItem.Fields.Count-5 do begin
    Valuable:=False ;
    Field:=Dm.PackItem.Fields[i] ;
    if Field.DataType=ftBoolean then Valuable:=Field.AsBoolean ;
    if Field.DataType=ftString then Valuable:=Field.AsString<>'' ;
    if not (Field.DataType in [ftBoolean, ftString, ftDateTime]) then Valuable:=Field.AsFloat<>0 ;
    if Valuable then FieldSet:=FieldSet+[i] ;
  end ;

  FilterSet:=[45,46,47] ;
  if FieldSet = FilterSet then begin
    Result:=True ;
    Exit ;
  end ;

  if (ErrNum=0) and (Pieces=0) then begin
    ErrMsg('A tömlõ darabszámot meg kell adni!') ;
    inc(ErrNum) ;
  end ;
  if (ErrNum=0) and (BodyId=0) then begin
    ErrMsg('A tömlõ belsõ átmérõjét meg kell adni!') ;
    inc(ErrNum) ;
  end ;
  if (ErrNum=0) and (BodyLength=0) then begin
    ErrMsg('A tömlõ hosszát meg kell adni!') ;
    inc(ErrNum) ;
  end ;
  if (ErrNum=0) and (BodyOd=0) then begin
    ErrMsg('A tömlõ külátmérõjét meg kell adni!') ;
    inc(ErrNum) ;
  end ;
  if (ErrNum=0) and (MBRstorage=0) then begin
    ErrMsg('A tömlõ hajlítási sugarát meg kell adni!') ;
    inc(ErrNum) ;
  end ;
  if (ErrNum=0) and (BodyWeight=0) then begin
    ErrMsg('A tömlõ métersúlyát meg kell adni!') ;
    inc(ErrNum) ;
  end ;

  if (ErrNum=0) and CouplingExists then begin
    if (Trim(CouplingCode1)='') or (Trim(CouplingName1)='') or (CouplingWeight1=0)
    or (CouplingOd1=0) or (OdMax1=0) or (Trim(CouplingCode2)='')
    or (Trim(CouplingName2)='') or (CouplingWeight2=0) or (CouplingOd2=0) or (OdMax2=0)
    then begin
      ErrMsg('Hiányosak a csatlakozóra vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and (not CouplingExists) then begin
    if (Trim(CouplingCode1)<>'') or (Trim(CouplingName1)<>'') or (CouplingWeight1<>0)
    or (CouplingOd1<>0) or (OdMax1<>0) or (Trim(CouplingCode2)<>'')
    or (Trim(CouplingName2)<>'') or (CouplingWeight2<>0) or (CouplingOd2<>0) or (OdMax2<>0)
    then begin
      ErrMsg('Nem következetesek a csatlakozóra vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;

  if (ErrNum=0) and LiftingCollarExists then begin
    if (LiftingCollarId=0) or (LiftingCollarOd=0) or (LiftingCollarWeight=0) or (LiftingCollarPieces=0) then begin
      ErrMsg('Hiányosak az emelõbilincsre vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and (not LiftingCollarExists) then begin
    if (LiftingCollarId<>0) or (LiftingCollarOd<>0) or (LiftingCollarWeight<>0) or (LiftingCollarPieces<>0)
    or LiftingCollarReinforced then begin
      ErrMsg('Nem következetesek az emelõbilincsre vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and SafetyClampExists then begin
    if (SafetyClampId=0) or (SafetyClampOd=0) or (SafetyClampWeight=0) or (SafetyClampPieces=0) then begin
      ErrMsg('Hiányosak a biztonságibilincsre vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and (not SafetyClampExists) then begin
    if (SafetyClampId<>0) or (SafetyClampOd<>0) or (SafetyClampWeight<>0) or (SafetyClampPieces<>0) then begin
      ErrMsg('Nem következetesek az biztonságibilincsre vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and SafetyChainExists then begin
    if SafetyChainWeight=0 then begin
      ErrMsg('Hiányosak a biztonságiláncra vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and (not SafetyChainExists) then begin
    if SafetyChainWeight<>0 then begin
      ErrMsg('Nem következetesek a biztonságiláncra vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  if (ErrNum=0) and OtherAccExists then begin
    if OtherAccWeight=0 then begin
      ErrMsg('Hiányosak az egyéb szerelvényekre vonatkozó adatok!') ;
      inc(ErrNum) ;
    end ;
  end ;
  Result:=ErrNum=0 ;
end ;

function TDm.GetMaxItemCount: integer ;
var
  Bookmark: TBookmark ;
  i, Count: integer ;
begin
  Result:=-1 ;
  Bookmark:=Dm.PackItem.GetBookmark ;
  Count:=0 ;
  try
    try
      Dm.PackItem.DisableControls ;
      Dm.PackItem.First ;
      while not Dm.PackItem.Eof do begin
        i:=Dm.PackItemPackItemId.AsInteger ;
        if i>Count then Count:=i ;
        Dm.PackItem.Next ;
      end ;
    finally
      Dm.PackItem.GotoBookmark(Bookmark) ;
      Dm.PackItem.EnableControls ;
      Result:=Count ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.PackItemBeforeInsert(DataSet: TDataSet);
begin
  ActItemId:=GetMaxItemCount+1 ;
end;

procedure TDm.PackDeviceAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TDm.PackHeadAfterScroll(DataSet: TDataSet);
begin
  if Dm.PackDevAssign.Active then Dm.PackDevAssign.Refresh ;
end;

procedure TDm.MfCikkszamokXxxBeforePost(DataSet: TDataSet);
begin
  if DataSet.State <> (dsInsert) then begin
    DataSet.FindField('Modositotta').AsString:=MainForm.CurrentUserName ;
    DataSet.FindField('ModositasDatuma').AsDateTime:=Now ;
  end ;
end;

procedure TDm.MfCikkszamokXxxNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Keszitette').AsString:=MainForm.CurrentUserName ;
  DataSet.FindField('KeszitesDatuma').AsDateTime:=Now ;
end;

procedure TDm.CsatiHosszXBeforePost(DataSet: TDataSet);
begin
  DataSet.FindField('CreatorName').AsString:=MainForm.CurrentUserName ;
  DataSet.FindField('CreateDate').AsDateTime:=Now ;
end;

procedure TDm.AdatlapKonfNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Aktiv').AsBoolean:=True ;
  DataSet.FindField('Tetelszam').AsInteger:=IdMax+1 ;
end;

procedure TDm.AdatlapKonfBeforeInsert(DataSet: TDataSet);
begin
  GetIdMax(DataSet) ;
  DataSheetCheckBrowse ;
end;

procedure TDm.GetIdMax(DataSet: TDataSet) ;
begin
  try
    try
      DataSet.DisableControls ;
      DataSet.First ;
      IdMax:=0 ;
      while not DataSet.Eof do begin
        if DataSet.FindField('Tetelszam').AsInteger>IdMax then IdMax:=DataSet.FindField('Tetelszam').AsInteger ;
        DataSet.Next ;
      end ;
    finally
      DataSet.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.AdatlapCsomBeforeInsert(DataSet: TDataSet);
begin
  GetIdMax(DataSet) ;
  DataSheetCheckBrowse ;
end;

procedure TDm.AdatlapCsomNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Aktiv').AsBoolean:=True ;
  DataSet.FindField('Tetelszam').AsInteger:=IdMax+1 ;
end;

procedure TDm.AdatlapKonfAfterPost(DataSet: TDataSet);
begin
  UpdateHead ;
end;

procedure TDm.UpdateHead ;
begin
  try
    try
      Dm.Adatlap.CheckBrowseMode ;
      Dm.Adatlap.Edit ;
      ChangeCreator ;
      NewDataSheetVersion ;
      Dm.Adatlap.Post ;
    finally

    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.AdatlapEllenorizveChange(Sender: TField);
begin
  Dm.AdatlapEllenorizte.AsString:=MainForm.CurrentUserName ;
  Dm.AdatlapEllenorzesDatuma.AsDateTime:=Now ;
end;

procedure TDm.AllandoAlkBeforeInsert(DataSet: TDataSet);
begin
  GetIdMax(DataSet) ;
  DataSheetCheckBrowse ;
end;

procedure TDm.AllandoAlkNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Aktiv').AsBoolean:=True ;
  DataSet.FindField('Tetelszam').AsInteger:=IdMax+1 ;
end;

procedure TDm.AdatlapKiadvaChange(Sender: TField);
begin
  Dm.AdatlapKiadta.AsString:=MainForm.CurrentUserName ;
  Dm.AdatlapKiadasIdopontja.AsDateTime:=Now ;
end;

procedure TDm.AdatlapErvenyesChange(Sender: TField);
begin
  Dm.AdatlapErvenyesitette.AsString:=MainForm.CurrentUserName ;
  Dm.AdatlapErvenyesitesIdopontja.AsDateTime:=Now ;
end;

procedure TDm.AdatlapCsomAfterPost(DataSet: TDataSet);
begin
  UpdateHead ;
end;

procedure TDm.AllandoAlkAfterPost(DataSet: TDataSet);
begin
  UpdateHead ;
end;

procedure TDm.ValtozoAlkAfterPost(DataSet: TDataSet);
begin
  UpdateHead ;
end;

procedure TDm.AdatlapCsatlAfterPost(DataSet: TDataSet);
begin
  UpdateHead ;
end;

procedure TDm.ValtozoAlkBeforeInsert(DataSet: TDataSet);
begin
  GetIdMax(DataSet) ;
  DataSheetCheckBrowse ;
end;

procedure TDm.ValtozoAlkNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Aktiv').AsBoolean:=True ;
  DataSet.FindField('Tetelszam').AsInteger:=IdMax+1 ;
end;

procedure TDm.AdatlapCsatlBeforeInsert(DataSet: TDataSet);
begin
  GetIdMax(DataSet) ;
  DataSheetCheckBrowse ;
end;

procedure TDm.AdatlapCsatlNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Aktiv').AsBoolean:=True ;
  DataSet.FindField('Tetelszam').AsInteger:=IdMax+1 ;
end;

procedure TDm.RendelesTetelAccListExistChange(Sender: TField);
begin
  Dm.RendelesTetelAccListDate.AsDateTime := Now ;
  Dm.RendelesTetelAccCreator.AsString := MainForm.CurrentUserName ;
  if Dm.RendelesTetelAccListExist.AsBoolean then begin
    Dm.RendelesTetelTAutoUpdate.AsBoolean := False ;
  end ;
  Dm.RendelesTetelAccListDate.AsDateTime := Now ;
  Dm.RendelesTetelAccCreator.AsString := MainForm.CurrentUserName ;
end;

procedure TDm.CsatlakozokBeforePost(DataSet: TDataSet);
begin
  DataSet.FindField('Datum').AsDateTime := Now ;
  DataSet.FindField('Signo').AsString := Mainform.CurrentUserName ;
end;

procedure TDm.RendelesTetelBeforePost(DataSet: TDataSet);
var
  Kv, Mua, FedHelix, NFedHelix, Kg, Inter, Torolt: Boolean ;
  x, H2S: integer ;
  Cs1Rsz, Cs2Rsz, Konstr, Csatl1, Csatl2, s: string ;
  KonstrOD, Hossz: double ;
  p: integer ;
begin
  Torolt := DataSet.FieldByName('Torolt').AsBoolean ;
  Kv := DataSet.FieldByName('Kv').AsBoolean ;
  Mua := DataSet.FieldByName('KvMua').AsBoolean ;
  FedHelix := DataSet.FieldByName('KvFedHelix').AsBoolean ;
  NFedHelix := DataSet.FieldByName('KvNFedHelix').AsBoolean ;

  // Külsõ védelem ellenõrzése
  x := Integer(Mua) + Integer(FedHelix) shl 1 + Integer(NFedHelix) shl 2 ;
  if Kv and (x = 0) then begin
    ErrMsg('A külsõ védelem meg van adva, ezért annak típusát is ki kell választani!') ;
    Abort ;
  end ;

  if (not Kv) and (x <> 0) then begin
    ErrMsg('Nincs megadva külsõ védelem, ezért annak típusát nem lehet értelmezni!') ;
    Abort ;
  end ;

  if FedHelix and NFedHelix then begin
    ErrMsg('Fedett és nem fedett hélix nem állítható be egyidejûleg!') ;
    Abort ;
  end ;

  if Mua and (FedHelix or NFedHelix) then begin
    if MessageDlg('Biztos vagy benne, hogy mindkét védelemre szükség van?', mtconfirmation, [mbYes, mbNo], 0) <> mrYes then Abort ;
  end ;
  (*
  if Kv and (not ((x = 1) or (x = 2) or (x = 4))) then begin
    ErrMsg('Csak egyféle külsõ védelem típus megengedett!') ;
    Abort ;
  end ;
  *)
  // Külsõ gégecsõ ellenõrzése
  Kg := DataSet.FieldByName('Kg').AsBoolean ;
  Inter := DataSet.FieldByName('KgInter').AsBoolean ;
  if Kg then begin
    // Erre nem kell szabály, mert csak egy típusa van!
  end
  else begin
    if Inter then begin
      ErrMsg('Nincs megadva külsõ gégecsõ, ezért annak típusa nem értelmezhetõ!') ;
      Abort ;
    end ;
  end ;

  // H2S service és a nagyobb átmérõjû csatlakozó mindig az egyik végre
  if DataSet.FieldByName('H2S').IsNull then H2S := -1 else H2S := DataSet.FieldByName('H2S').AsInteger ;
  Cs1Rsz := Trim(DataSet.FieldByName('Csatl1Rsz').AsString) ;
  Cs2Rsz := Trim(DataSet.FieldByName('Csatl2Rsz').AsString) ;
  Konstr := Trim(DataSet.FieldByName('Konstrukcio').AsString) ;

  if MainForm.TestRun then MainForm.Tervezo := True ;

  if MainForm.Tervezo then begin
    if (H2S = -1) and (not Torolt) then begin
      ErrMsg('El kell dönteni, hogy alkalmas-e H2S szervizre, vagy sem!') ;
      Abort ;
    end ;

    if (Cs1Rsz = '') and (Cs2Rsz <> '') then begin
      ErrMsg('A "B" csatlakozó egyedüli megadása nem megengedett!') ;
      Abort ;
    end ;

    if (Cs1Rsz <> '') and (Konstr = '') then begin
      ErrMsg('Csatlakozós tömlõ esetén a konstrukció megadása kötelezõ!') ;
      Abort ;
    end ;

    KonstrOD := DataSet.FieldByName('KonstrukcioMaxAtmero').AsFloat ;
    if (Konstr <> '') and (KonstrOD = 0) then begin
      ErrMsg('A tömlõtest átmérõjét meg kell adni!') ;
      Abort ;
    end ;

    if (Trim(Cs1Rsz) <> '') or (Trim(Cs2Rsz) <> '') then begin
      if not SetCouplings(DataSet) then begin
        ErrMsg(CouplingQryMsg) ;
        Abort ;
      end ;
    end ;

    // Az átmérõkhöz tartozó default mértékegységkód beállítása (1 = mm)
    DataSet.FieldByName('KonstrukcioMaxAtmeroMe').AsInteger := 1 ;
    DataSet.FieldByName('Csatl1MaxAtmeroMe').AsInteger := 1 ;
    DataSet.FieldByName('Csatl2MaxAtmeroMe').AsInteger := 1 ;

    // 6 m vagy az alatti tömlõk
    Hossz := DataSet.FieldByName('Hossz').AsFloat ;
    if Hossz > 6 then Exit ;
    Csatl1 := Trim(DataSet.FieldByName('Csatl1').AsString) ;
    Csatl2 := Trim(DataSet.FieldByName('Csatl2').AsString) ;
    (* Ez nem került bevezetésre, mert nem minden esetben kötelezõ a karima utólagos fúrása (pl.fejlesztés)
    if (Csatl1 <> '') and (Csatl2 = '') then begin
      if CheckFixFlange(Csatl1) then begin
        s := DataSet.FieldByName('Egyebek').AsString ;
        if Trim(s) <> '' then begin
          p := Pos(KarimaFurasTxt, s) ;
          if Pos(KarimaFurasTxt, s) = 0 then begin
            s := s + #13 + KarimaFurasTxt ;
            DataSet.FieldByName('Egyebek').AsString := s ;
            ErrMsg(KarimaFurasMsg) ;
          end ;
        end
        else begin
          s := KarimaFurasTxt ;
          DataSet.FieldByName('Egyebek').AsString := s ;
          ErrMsg(KarimaFurasMsg) ;
        end ;
      end ;
    end
    else begin
      if CheckFixFlange(Csatl1) and CheckFixFlange(Csatl2) then begin
        ErrMsg(KarimaFurasMsg) ;
      end ;
    end ;
    *)
    if (Csatl1 <> '') and (Csatl2 = '') then begin
      if CheckFixFlange(Csatl1) then ErrMsg(KarimaFurasMsg) ;
    end
    else begin
      if CheckFixFlange(Csatl1) and CheckFixFlange(Csatl2) then begin
        ErrMsg(KarimaFurasMsg) ;
      end ;
    end ;
  end ;
end;

procedure TDm.RendelesTetelAtveteliKeszChange(Sender: TField);
begin
  Dm.RendelesTetelAtveteliIdopont.AsDateTime := Now ;
  if Sender.AsBoolean then begin
    if not Dm.RendelesTetelAccListExist.AsBoolean then begin
      ErrMsg('Nincs kész az alkatrész lista!') ;
    end ;
  end ;
  Dm.RendelesTetelAtvetelitKeszitette.AsString := MainForm.CurrentUserName ;
end;

procedure TDm.AdatlapNewRecord(DataSet: TDataSet);
begin
  Dm.AdatlapCegNev.AsString:='PHOENIX Rubber Gumiipari Kft.' ;
  Dm.AdatlapOsztalyNev.AsString:='Tömlõ Mûszaki Osztály' ;
  Dm.AdatlapKeszitette.AsString:=MainForm.CurrentUserName ;
  Dm.AdatlapKeszitesDatuma.AsDateTime:=Now ;
  Dm.AdatlapValtozat.AsInteger:=0 ;
  Dm.AdatlapAdatlapSzam.AsString:='' ;
  Mainform.dxDBInspector2.FocusedField:=Mainform.dxDBInspector2.DataSource.DataSet.FieldByName('AdatlapSzam') ;
  Mainform.dxDBInspector2.ShowEditor ;
  NewDataSheet:=True ;
end;

procedure TDm.KonstrukciokNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Elovulk').AsBoolean := False ;
  DataSet.FieldByName('La').AsBoolean := False ;
  DataSet.FieldByName('Bg').AsBoolean := False ;
  DataSet.FieldByName('Kg').AsBoolean := False ;
  DataSet.FieldByName('Pa').AsBoolean := False ;
  DataSet.FieldByName('Norm').AsBoolean := False ;
  DataSet.FieldByName('DragChain').AsBoolean := False ;
  DataSet.FieldByName('Kv').AsBoolean := False ;
  DataSet.FieldByName('17K').AsBoolean := False ;
end;

procedure TDm.KonstrukciokAfterEdit(DataSet: TDataSet);
begin
  DataSet.FindField('Modositotta').AsString:=MainForm.CurrentUserName ;
  DataSet.FindField('ModositasIdeje').AsDateTime:=Now ;
end;

procedure TDm.AllandoAlkBeforePost(DataSet: TDataSet);
var
  AccType: integer ;
begin
  if DataSet.FindField('accessoryType').IsNull
  then begin
    AccType:=GetAccType ;
    if AccType=-1 then Abort
    else DataSet.FindField('accessoryType').AsInteger:=AccType ;
  end ;
end;

procedure TDm.ValtozoAlkBeforePost(DataSet: TDataSet);
var
  AccType: integer ;
begin
  if DataSet.FindField('accessoryType').IsNull
  then begin
    AccType:=GetAccType ;
    if AccType=-1 then Abort
    else DataSet.FindField('accessoryType').AsInteger:=AccType ;
  end ;
end;

procedure TDm.AllandoAlkAfterEdit(DataSet: TDataSet);
begin
  DataSet.FindField('accessoryType').Clear ;
end;

procedure TDm.ValtozoAlkAfterEdit(DataSet: TDataSet);
begin
  DataSet.FindField('accessoryType').Clear ;
end;

function TDm.GetAccType: integer ;
begin
  Result:=-1 ;
  try
    try
      AccTypeSelectForm.AccType.Active:=True ;
      if AccTypeSelectForm.ShowModal=mrOk then
        Result:=AccTypeSelectForm.AccTypeaccessoryTypeCounter.AsInteger ;
    finally
      AccTypeSelectForm.AccType.Active:=False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.RendEgyebBeforePost(DataSet: TDataSet);
begin
  DataSet.FindField('CreatorName').AsString := MainForm.CurrentUserName ;
  DataSet.FindField('CreateDate').AsDatetime := Now ;
end;

procedure TDm.RendEgyebAfterPost(DataSet: TDataSet);
begin
  //Dm.RendelesTetel.CheckBrowseMode ;
  if not (Dm.RendelesTetel.State in [dsInsert, dsEdit]) then Dm.RendelesTetel.Edit ;
  Dm.RendelesTetelAccListExist.AsBoolean := False ;
  Dm.RendelesTetelAccListDate.AsDateTime := Now ;
  Dm.RendelesTetelAccCreator.AsString := MainForm.CurrentUserName ;
  //Dm.RendelesTetel.Post ;
  DataSet.Refresh ;
end;

procedure TDm.RendEgyebNewRecord(DataSet: TDataSet);
begin
  DataSet.FindField('Active').AsBoolean := True ;
  DataSet.FindField('DbFuggo').AsBoolean := True ;
end;

procedure TDm.RendSarzsAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TDm.tAnyagKiAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TDm.RendMinCalcFields(DataSet: TDataSet);
var
  Darabszam, KiadottDarab, Egyenleg: integer ;
begin
  Darabszam := DataSet.FindField('Darabszam').AsInteger ;
  KiadottDarab := DataSet.FindField('KiadottDarab').AsInteger ;
  Egyenleg := KiadottDarab - Darabszam ;
  DataSet.FindField('Egyenleg').AsInteger := Egyenleg ;
end;

procedure TDm.RendMinBeforePost(DataSet: TDataSet);
var
  db, kiadott: integer ;
  Msg: string ;
begin
  db:=DataSet.FindField('Darabszam').AsInteger ;
  kiadott:=DataSet.FindField('KiadottDarab').AsInteger ;
  if kiadott > db then begin
    Msg := 'A kiadott darabszám nem lehet nagyobb az igényeltnél!' + #13 +
      'Nyomj "ESC"-t a visszavonáshoz!' ;
    ErrMsg(Msg) ;
    Abort ;
  end ;
end;
procedure TDm.AdatlapKonfBeforeEdit(DataSet: TDataSet);
begin
  DataSheetCheckBrowse ;
end;

procedure TDm.DataSheetCheckBrowse ;
begin
  Dm.Adatlap.CheckBrowseMode ;
end ;

procedure TDm.AdatlapCsomBeforeEdit(DataSet: TDataSet);
begin
  DataSheetCheckBrowse ;
end;

procedure TDm.AllandoAlkBeforeEdit(DataSet: TDataSet);
begin
  DataSheetCheckBrowse ;
end;

procedure TDm.ValtozoAlkBeforeEdit(DataSet: TDataSet);
begin
  DataSheetCheckBrowse ;
end;

procedure TDm.AdatlapCsatlBeforeEdit(DataSet: TDataSet);
begin
  DataSheetCheckBrowse ;
end;

procedure TDm.AdatlapBeforeDelete(DataSet: TDataSet);
var
  i: integer ;
begin
  i:=Dm.AdatlapKonf.RecordCount+Dm.AdatlapCsom.RecordCount+Dm.AllandoAlk.RecordCount+
    Dm.ValtozoAlk.RecordCount+Dm.AdatlapCsatl.RecordCount ;
  if i>0 then begin
    ErrMsg('Adatlap addig nem törölhetõ amíg tartalmaz összetevõket!') ;
    Abort ;
  end ;
end;

procedure TDm.AdatlapBeforePost(DataSet: TDataSet);
begin
  if Trim(DataSet.FindField('Adatlapszam').AsString)='' then begin
    ErrMsg('Az adatlap számát meg kell adni!') ;
    Abort ;
  end ;
end;

procedure TDm.AdatlapAdatlapSzamChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapValtozatChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapCegNevChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapOsztalyNevChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapMegnevezesChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapAltalanosNevChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapSzabvanyChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapIdChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.AdatlapNyomasChange(Sender: TField);
begin
  ChangeCreator ;
  NewDataSheetVersion ;
end;

procedure TDm.ChangeCreator ;
begin
  Dm.AdatlapKeszitette.AsString:=MainForm.CurrentUserName ;
  Dm.AdatlapKeszitesDatuma.AsDateTime:=Now ;
end ;

procedure TDm.ClearControls ;
begin
  Dm.AdatlapEllenorizve.AsBoolean:=False ;
  Dm.AdatlapEllenorizte.Clear ;
  Dm.AdatlapEllenorzesDatuma.AsDateTime:=Now ;

  Dm.AdatlapErvenyes.AsBoolean:=False ;
  Dm.AdatlapErvenyesitette.Clear ;
  Dm.AdatlapErvenyesitesIdopontja.AsDateTime:=Now ;
end ;

procedure TDm.NewDataSheetVersion ;
begin
  try
    try
      if Dm.AdatlapEllenorizve.AsBoolean or Dm.AdatlapErvenyes.AsBoolean then begin
        Dm.AdatlapValtozat.OnChange:=Nil ;
        if Dm.AdatlapValtozat.IsNull then Dm.AdatlapValtozat.AsInteger:=0
        else Dm.AdatlapValtozat.AsInteger:=Dm.AdatlapValtozat.AsInteger+1 ;
        ClearControls ;
      end ;
    finally
      Dm.AdatlapValtozat.OnChange:=AdatlapValtozatChange ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.AdatlapAfterPost(DataSet: TDataSet);
begin
  if NewDataSheet then begin
    Dm.Adatlap.Prior ;
    Dm.Adatlap.Last ;
    NewDataSheet:=False ;
  end ;
end;

procedure TDm.qPackHeadBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('CreatorName').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('CreateDate').AsDatetime := Now ;
end;

procedure TDm.qPackHeadAfterPost(DataSet: TDataSet);
begin
  with qPackHead do
  begin
  MainDb.StartTransaction;
    try
      ApplyUpdates; {try to write the updates to the database};
      MainDb.Commit; {on success, commit the changes};
    except
      MainDb.Rollback; {on failure, undo the changes};
    raise; {raise the exception to prevent a call to CommitUpdates!}
    end;
  CommitUpdates; {on success, clear the cache}
  end;
end;

procedure TDm.qPackHeadAfterDelete(DataSet: TDataSet);
begin
  with qPackHead do
  begin
  MainDb.StartTransaction;
    try
      ApplyUpdates; {try to write the updates to the database};
      MainDb.Commit; {on success, commit the changes};
    except
      MainDb.Rollback; {on failure, undo the changes};
      Dm.qPackHead.Active := False ;
      Dm.qPackHead.Active := True ;
      Dm.qPackHead.Locate('PackId', ActPackId, [loCaseInsensitive]) ;
    raise; {raise the exception to prevent a call to CommitUpdates!}
    end;
  CommitUpdates; {on success, clear the cache}
  end;
end;

procedure TDm.qPackHeadBeforeDelete(DataSet: TDataSet);
begin
  ActPackId := DataSet.FieldByName('PackId').AsInteger ;
end;

procedure TDm.KonstrukciokBeforePost(DataSet: TDataSet);
begin
  DataSet.FindField('Keszitette').AsString:=MainForm.CurrentUserName ;
  DataSet.FindField('KeszitesIdeje').AsDateTime:=Now ;
end;

procedure TDm.AccListItemChanged(Sender: TField);
begin
  Dm.RendelesTetelAccListExist.AsBoolean := False ;
  Dm.RendelesTetelAccListDate.AsDateTime := Now ;
  Dm.RendelesTetelAccListMailSent.AsBoolean := False ;
  if not ((Sender.FieldName = 'Csatl1Rsz') or (Sender.FieldName = 'Csatl2Rsz')) then Exit ;
  if Sender.FieldName = 'Csatl1Rsz' then
    if Trim(Dm.RendelesTetelCsatl1Rsz.AsString) <> '' then MainForm.SetCouplingAccessory(Dm.RendelesTetelCsatl1Rsz.AsString, 1) ;
  if Sender.FieldName = 'Csatl2Rsz' then
    if Trim(Dm.RendelesTetelCsatl2Rsz.AsString) <> '' then MainForm.SetCouplingAccessory(Dm.RendelesTetelCsatl2Rsz.AsString, 2) ;
end ;

procedure TDm.tBiztSzerelvenyekBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TDm.tBiztSzerelvenyekAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
end;

procedure TDm.PackDeviceNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Torolt').AsBoolean := False ;
end;

procedure TDm.PackDeviceBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := Mainform.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TDm.qMfCikkszamokAfterDelete(DataSet: TDataSet);
begin
  inc(MainForm.MfCkszChangeNum) ;
end;

procedure TDm.qMfCikkszamokAfterPost(DataSet: TDataSet);
begin
  inc(MainForm.MfCkszChangeNum) ;
end;

procedure TDm.qMfCikkszamokNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Keszitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('KeszitesDatuma').AsDatetime := Now ;
end;

procedure TDm.qMfCikkszamokAfterEdit(DataSet: TDataSet);
begin
  DataSet.FieldByName('Modositotta').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('ModositasDatuma').AsDatetime := Now ;
end;

procedure TDm.qMfCikkszamokBeforePost(DataSet: TDataSet);
var
  i: integer ;
begin
  if DataSet.FieldByName('JelzesKod').isnull then DataSet.FieldByName('JelzesKod').AsInteger := 0 ;
  for i := 0 to DataSet.FieldCount - 1 do begin
    if DataSet.Fields[i].DataType = ftBoolean then begin
      if DataSet.Fields[i].IsNull then DataSet.Fields[i].AsBoolean := False ;
    end ;
  end ;
end;

function TDm.SetCouplings(DataSet: TDataSet): Boolean ;
var
  Cs1Rsz, Cs2Rsz: string ;
  MaxOD1, MaxOD2//, KonstrD
  : double ;
begin
  Result := False ;
  try
    Cs1Rsz := Trim(DataSet.FieldByName('Csatl1Rsz').AsString) ;
    Cs2Rsz := Trim(DataSet.FieldByName('Csatl2Rsz').AsString) ;

    MaxOD1 := DataSet.FieldByName('Csatl1MaxAtmero').AsFloat ;
    MaxOD2 := DataSet.FieldByName('Csatl2MaxAtmero').AsFloat ;
    //KonstrD := DataSet.FieldByName('KonstrukcioMaxAtmero').AsFloat ;

    // Amennyiben mindkét végen azonos a csatlakozó
    if (Cs1Rsz <> '') and (Cs2Rsz = '') then begin
      if MaxOD1 <> 0 then Result := True ;
      Exit ;
    end ;

    // Ha nincs megadva átmérõ, akkor kilépés.
    if (MaxOD1 = 0) or (MaxOD2 = 0) then Exit ;

    // Kisebb az "A" vég átmérõ esetén csere.
    if MaxOD1 < MaxOD2 then
      if MessageDlg(CouplingInvertMsg, mtconfirmation, [mbYes, mbNo], 0) = mrYes then begin
        MainForm.Refresh ;
        InvertCoupling(DataSet) ;
      end ;
    Result := True ;

  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDM.InvertCoupling(DataSet: TDataSet) ;
var
  Megnevezes, Rajzszam: string ;
  OD: double ;
  bmk: TBookmark ;
begin
  bmk := Nil ;
  try
    try
      Rajzszam := DataSet.FieldByName('Csatl1Rsz').AsString ;
      Megnevezes := DataSet.FieldByName('Csatl1').AsString ;
      OD := DataSet.FieldByName('Csatl1MaxAtmero').AsFloat ;

      DataSet.FieldByName('Csatl1Rsz').AsString := DataSet.FieldByName('Csatl2Rsz').AsString ;
      DataSet.FieldByName('Csatl1').AsString := DataSet.FieldByName('Csatl2').AsString ;
      DataSet.FieldByName('Csatl1MaxAtmero').AsFloat := DataSet.FieldByName('Csatl2MaxAtmero').AsFloat ;

      DataSet.FieldByName('Csatl2Rsz').AsString := Rajzszam ;
      DataSet.FieldByName('Csatl2').AsString := Megnevezes ;
      DataSet.FieldByName('Csatl2MaxAtmero').AsFloat := OD ;

      // Csatlakozó tartozékok felcserélése
      bmk := Dm.RendEgyeb.GetBookmark ;
      Dm.RendEgyeb.CheckBrowseMode ;
      Dm.RendEgyeb.DisableControls ;
      Dm.RendEgyeb.First ;
      if Dm.RendEgyebTomloVegId.AsInteger = 1 then begin
        Dm.RendEgyeb.Edit ;
        Dm.RendEgyebTomloVegId.AsInteger := 2 ;
        Dm.RendEgyeb.Post ;
      end ;
      if Dm.RendEgyebTomloVegId.AsInteger = 2 then begin
        Dm.RendEgyeb.Edit ;
        Dm.RendEgyebTomloVegId.AsInteger := 1 ;
        Dm.RendEgyeb.Post ;
      end ;

      finally
        Dm.RendEgyeb.EnableControls ;
        if (Bmk <> nil) and (Dm.RendEgyeb.BookmarkValid(bmk)) then Dm.RendEgyeb.GotoBookmark(bmk) ;
      end ;
  except
    On e: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.RendEgyebCalcFields(DataSet: TDataSet);
var
  TomloDb, EgyebDb, OsszDb: integer ;
  DbFuggo: Boolean ;
begin
  TomloDb := Dm.RendelesTetelDarabSzam.AsInteger ;
  EgyebDb := DataSet.FieldByName('Darabszam').AsInteger ;
  DbFuggo := DataSet.FieldByName('DbFuggo').AsBoolean ;
  if DbFuggo then OsszDb := TomloDb * EgyebDb else OsszDb := EgyebDb ;
  DataSet.FieldByName('OsszDb').AsInteger := OsszDb ;
end;

procedure TDm.qBilincsBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TDm.RendelesTetelAfterScroll(DataSet: TDataSet);
begin
  RefreshBilincsStatusz ;
end;

procedure TDm.RefreshBilincsStatusz ;
var
  RendelesAz, TetelSrsz: integer ;
begin
  try
    try
      if spGetBilincsStatusz.Active then spGetBilincsStatusz.Active := False ;
      RendelesAz := RendelesTetel.FieldByName('RendelesAz').AsInteger ;
      TetelSrsz := RendelesTetel.FieldByName('TetelSrsz').AsInteger ;
      spGetBilincsStatusz.ParamByName('@RendelesAz').AsInteger := RendelesAz ;
      spGetBilincsStatusz.ParamByName('@TetelSrsz').AsInteger := TetelSrsz ;
      spGetBilincsStatusz.Active := True ;
      if spGetBilincsStatuszEB.AsInteger <> 0 then MainForm.AdatlapInspectorEbExt.ImageIndex := 1
      else MainForm.AdatlapInspectorEbExt.ImageIndex := -1 ;
      if spGetBilincsStatuszBB.AsInteger <> 0 then MainForm.AdatlapInspectorBbExt.ImageIndex := 1
      else MainForm.AdatlapInspectorBbExt.ImageIndex := -1 ;
      if spGetBilincsStatuszOH.AsInteger <> 0 then MainForm.AdatlapInspectorOhExt.ImageIndex := 1
      else MainForm.AdatlapInspectorOhExt.ImageIndex := -1 ;
    finally
      if spGetBilincsStatusz.Active then spGetBilincsStatusz.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.qBilincsAfterPost(DataSet: TDataSet);
begin
  inc(MainForm.BilincsChangeNum) ;
end;

procedure TDm.qBilincsAfterDelete(DataSet: TDataSet);
begin
  inc(MainForm.BilincsChangeNum) ;
end;

procedure TDm.qBilincsNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('RendelesAz').AsInteger := BilincsForm.RendelesAz ;
  DataSet.FieldByName('TetelSrsz').AsInteger := BilincsForm.TetelSrsz ;
  DataSet.FieldByName('Tipus').AsInteger := BilincsForm.TipusKod ;
end;

function TDm.CheckFixFlange(CsatlStr: string): Boolean ;
var
  p: integer ;
  s: string ;
begin
  Result := False ;
  s := LowerCase(CsatlStr) ;
  p := Pos('flange', s) ;
  if p = 0 then Exit ;
  if ((Pos('17sv', s) = 0) and (Pos('lapped', s) = 0) and (Pos('iso', s) = 0)) then Result := True ; 
end ;

procedure TDm.tTechlapBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName('Ellenorizte').IsNull then begin
    DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
    DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
  end ;
end;

procedure TDm.tTechlapAfterScroll(DataSet: TDataSet);
var
  VegzodesId: integer ;
begin
  VegzodesId := DataSet.FieldByName('VegzodesId').AsInteger ;
  Dm.tVegzodesTipusok.Locate('VegzodesId', VegzodesId, [loCaseInsensitive]) ;
end ;

procedure TDm.tCsatlRajzTartBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
begin
  Counter := 0 ;
  TechlapRec.L := 0 ;
  TechlapRec.L1 := 0 ;
  TechlapRec.L2 := 0 ;
  TechlapRec.L3 := 0 ;
  TechlapRec.MaxOD := 0 ;
  TechlapRec.VegzodesId := 0 ;
  TechlapRec.L1Caption := '' ;
end;

procedure TDm.tCsatlRajzTartAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh ;
  if not (Dm.tTechlap.State in [dsEdit, dsInsert]) then Dm.tTechlap.Edit ;
  Dm.tTechlapRogzitette.AsString := MainForm.CurrentUserName ;
  Dm.tTechlapRogzIdopont.AsDateTime := Now ;
  Dm.tTechlapEllenorizte.Clear ;
  Dm.tTechlapEllenorzesIdopontja.Clear ;
  Dm.tTechlap.Post ;
end;

procedure TDm.CsatlakozokBeforeDelete(DataSet: TDataSet);
var
  CsatlRsz: string ;
begin
  CheckDesigner(DataSet) ;
  try
    CsatlRsz := DataSet.FieldByName('CsatlRsz').AsString ;
    if MessageDlg('Minden összetevõjével együtt törölhetem?' + #13 + CsatlRsz, mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Abort ;
    Dm.DeleteCsatlDependencies.ParamByName('@Srsz').AsInteger := DataSet.FieldByName('Srsz').AsInteger ;
    Dm.DeleteCsatlDependencies.ExecProc ;
    DataSet.Refresh ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TDm.CheckDesigner(DataSet: TDataSet);
begin
  if not MainForm.Tervezo then begin
    ErrMsg('Nincs jogosultságod hozzá!') ;
    Abort ;
  end ;
end;

procedure TDm.qCsatlTartListAfterPost(DataSet: TDataSet);
begin
  Dm.tTechlapEllenorizte.Clear ;
  Dm.tTechlapEllenorzesIdopontja.Clear ;
end;

procedure TDm.qCsatlTartListBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := MainForm.CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TDm.tCsatlRajzTartAfterDelete(DataSet: TDataSet);
begin
  if not (Dm.tTechlap.State in [dsEdit, dsInsert]) then Dm.tTechlap.Edit ;
  Dm.tTechlapRogzitette.AsString := MainForm.CurrentUserName ;
  Dm.tTechlapRogzIdopont.AsDateTime := Now ;
  Dm.tTechlapEllenorizte.Clear ;
  Dm.tTechlapEllenorzesIdopontja.Clear ;
  Dm.tTechlap.Post ;
end;

procedure TDm.tTechlapSrszChange(Sender: TField);
begin
  Dm.tTechlapEllenorizte.Clear ;
  Dm.tTechlapEllenorzesIdopontja.Clear ;
end;

procedure TDm.PackItemAfterPost(DataSet: TDataSet);
begin
  PackItemRefresh ;
end;

procedure TDm.PackItemRefresh ;
begin
  try
    Dm.qPackItem.Active := False ;
    Dm.qPackItem.Active := True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.CsatlakozokNewRecord(DataSet: TDataSet);
var
  i: integer ;
  f: TField ;
begin
  for i := 0 to DataSet.FieldCount - 1 do begin
    f := DataSet.Fields[i] ;
    if f.DataType = ftBoolean then if f.IsNull then f.AsBoolean := False ;
  end ;
end;

procedure TDm.PackItemBeforeCancel(DataSet: TDataSet);
begin
  if MessageDlg('Biztosan el akarod vetni az eddig felvitt rekodot?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Abort ;
end;

procedure TDm.tTechlapBeforeEdit(DataSet: TDataSet);
begin
  CheckDesigner(DataSet) ;
  TechlapRec.L := DataSet.FieldByName('L').AsFloat ;
  TechlapRec.L1 := DataSet.FieldByName('L1').AsFloat ;
  TechlapRec.L2 := DataSet.FieldByName('L2').AsFloat ;
  TechlapRec.L3 := DataSet.FieldByName('L3').AsFloat ;
  TechlapRec.MaxOD := DataSet.FieldByName('MaxOD').AsFloat ;
  TechlapRec.VegzodesId := DataSet.FieldByName('VegzodesId').AsInteger ;
  TechlapRec.L1Caption := DataSet.FieldByName('L1Caption').AsString ;
end;

procedure TDm.tTechlapAfterPost(DataSet: TDataSet);
var
  Modified: Boolean ;
begin
  try
    Modified := false ;
    if DataSet.FieldByName('L').Value <> TechlapRec.L then Modified := True ;
    if DataSet.FieldByName('L1').Value <> TechlapRec.L1 then Modified := True ;
    if DataSet.FieldByName('L2').Value <> TechlapRec.L2 then Modified := True ;
    if DataSet.FieldByName('L3').Value <> TechlapRec.L3 then Modified := True ;
    if DataSet.FieldByName('MaxOD').Value <> TechlapRec.MaxOD then Modified := True ;
    if DataSet.FieldByName('VegzodesId').Value <> TechlapRec.VegzodesId then Modified := True ;
    if DataSet.FieldByName('L1Caption').Value <> TechlapRec.L1Caption then Modified := True ;
    if Modified then begin
      CheckDependencies(DataSet.FieldByName('Srsz').AsInteger) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TDm.CheckDependencies(CsatlSrsz: integer) ;
begin
  try
    try
      if CsatlSrsz <> 0 then begin
        if CouplingDependForm = nil then CouplingDependForm := TCouplingDependForm.Create(Application) ;
        if CouplingDependForm.GetCouplingDependencies.Active then CouplingDependForm.GetCouplingDependencies.Active := False ;
        CouplingDependForm.GetCouplingDependencies.ParamByName('@Srsz').AsInteger := CsatlSrsz ;
        CouplingDependForm.GetCouplingDependencies.Active := True ;
        if CouplingDependForm.GetCouplingDependencies.RecordCount > 0 then begin
          CouplingDependForm.ShowModal ;
        end
        else begin
          MessageDlg('Nincsenek aktív függõségei ezeknek az adatoknak!', mtInformation, [mbOk], 0) ;
        end ;
      end ;
    finally
      CouplingDependForm.GetCouplingDependencies.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

procedure TDm.PackagesNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('CurrencyCode').AsInteger := Mainform.PackLastCurrencyCode ;
end;

end.
