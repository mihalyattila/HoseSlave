object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 363
  Top = 120
  Height = 934
  Width = 1288
  object MainDb: TDatabase
    AliasName = 'HoseMaster'
    Connected = True
    DatabaseName = 'MainDb'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 16
    Top = 8
  end
  object GetCurrentUser: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetCurrentUser'
    Left = 64
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgramName'
        ParamType = ptInput
      end>
    object GetCurrentUserUserName: TStringField
      FieldName = 'UserName'
      Size = 50
    end
    object GetCurrentUserUserId: TSmallintField
      FieldName = 'UserId'
    end
  end
  object PackHeadDs: TDataSource
    DataSet = qPackHead
    Left = 112
    Top = 176
  end
  object RekordStatusz: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.RekordStatusz'
    Left = 448
    Top = 32
    object RekordStatuszStatuszKod: TSmallintField
      FieldName = 'StatuszKod'
      Required = True
    end
    object RekordStatuszStatuszNev: TStringField
      FieldName = 'StatuszNev'
      Required = True
      FixedChar = True
    end
  end
  object PackItem: TTable
    BeforeInsert = PackItemBeforeInsert
    BeforePost = PackItemBeforePost
    AfterPost = PackItemAfterPost
    BeforeCancel = PackItemBeforeCancel
    OnCalcFields = PackItemCalcFields
    OnNewRecord = PackItemNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'PackId'
    MasterFields = 'PackId'
    MasterSource = PackHeadDs
    TableName = 'dbo.PackItem'
    Left = 48
    Top = 208
    object PackItemPackId: TIntegerField
      FieldName = 'PackId'
      Required = True
    end
    object PackItemPackItemId: TSmallintField
      FieldName = 'PackItemId'
      Required = True
    end
    object PackItemDescription: TStringField
      FieldName = 'Description'
      Size = 250
    end
    object PackItemPieces: TSmallintField
      FieldName = 'Pieces'
    end
    object PackItemBodyId: TFloatField
      FieldName = 'BodyId'
    end
    object PackItemBodyLength: TFloatField
      FieldName = 'BodyLength'
      DisplayFormat = ',0.###'
    end
    object PackItemBodyCode: TStringField
      FieldName = 'BodyCode'
    end
    object PackItemBodyName: TStringField
      FieldName = 'BodyName'
      Size = 50
    end
    object PackItemBodyOd: TFloatField
      FieldName = 'BodyOd'
      DisplayFormat = ',0.##'
    end
    object PackItemMBRstorage: TFloatField
      FieldName = 'MBRstorage'
      DisplayFormat = ',0.##'
    end
    object PackItemBodyWeight: TFloatField
      FieldName = 'BodyWeight'
      DisplayFormat = ',0.##'
    end
    object PackItemInnerSteel: TBooleanField
      FieldName = 'InnerSteel'
    end
    object PackItemFireResistant: TBooleanField
      FieldName = 'FireResistant'
    end
    object PackItemOuterSteel: TBooleanField
      FieldName = 'OuterSteel'
    end
    object PackItemPa: TBooleanField
      FieldName = 'Pa'
    end
    object PackItemHelix: TBooleanField
      FieldName = 'Helix'
    end
    object PackItemHeatRaced: TBooleanField
      FieldName = 'HeatRaced'
    end
    object PackItemDragChain: TBooleanField
      FieldName = 'DragChain'
    end
    object PackItemLongHose: TBooleanField
      FieldName = 'LongHose'
    end
    object PackItemCouplingExists: TBooleanField
      FieldName = 'CouplingExists'
    end
    object PackItemCouplingCode1: TStringField
      FieldName = 'CouplingCode1'
    end
    object PackItemCouplingName1: TStringField
      FieldName = 'CouplingName1'
      Size = 50
    end
    object PackItemCouplingWeight1: TFloatField
      FieldName = 'CouplingWeight1'
      DisplayFormat = ',0.##'
    end
    object PackItemCouplingOd1: TFloatField
      FieldName = 'CouplingOd1'
      DisplayFormat = ',0.##'
    end
    object PackItemOdMax1: TFloatField
      FieldName = 'OdMax1'
      DisplayFormat = ',0.##'
    end
    object PackItemCouplingCode2: TStringField
      FieldName = 'CouplingCode2'
    end
    object PackItemCouplingName2: TStringField
      FieldName = 'CouplingName2'
      Size = 50
    end
    object PackItemCouplingWeight2: TFloatField
      FieldName = 'CouplingWeight2'
      DisplayFormat = ',0.##'
    end
    object PackItemCouplingOd2: TFloatField
      FieldName = 'CouplingOd2'
      DisplayFormat = ',0.##'
    end
    object PackItemOdMax2: TFloatField
      FieldName = 'OdMax2'
      DisplayFormat = ',0.##'
    end
    object PackItemLiftingCollarExists: TBooleanField
      FieldName = 'LiftingCollarExists'
    end
    object PackItemLiftingCollarName: TStringField
      FieldName = 'LiftingCollarName'
      Size = 50
    end
    object PackItemLiftingCollarCode: TStringField
      FieldName = 'LiftingCollarCode'
    end
    object PackItemLiftingCollarId: TFloatField
      FieldName = 'LiftingCollarId'
      DisplayFormat = ',0.##'
    end
    object PackItemLiftingCollarOd: TFloatField
      FieldName = 'LiftingCollarOd'
      DisplayFormat = ',0.##'
    end
    object PackItemLiftingCollarWeight: TFloatField
      FieldName = 'LiftingCollarWeight'
      DisplayFormat = ',0.##'
    end
    object PackItemLiftingCollarReinforced: TBooleanField
      FieldName = 'LiftingCollarReinforced'
    end
    object PackItemLiftingCollarPieces: TSmallintField
      FieldName = 'LiftingCollarPieces'
    end
    object PackItemSafetyClampExists: TBooleanField
      FieldName = 'SafetyClampExists'
    end
    object PackItemSafetyClampName: TStringField
      FieldName = 'SafetyClampName'
      Size = 50
    end
    object PackItemSafetyClampCode: TStringField
      FieldName = 'SafetyClampCode'
    end
    object PackItemSafetyClampId: TFloatField
      FieldName = 'SafetyClampId'
      DisplayFormat = ',0.##'
    end
    object PackItemSafetyClampOd: TFloatField
      FieldName = 'SafetyClampOd'
      DisplayFormat = ',0.##'
    end
    object PackItemSafetyClampWeight: TFloatField
      FieldName = 'SafetyClampWeight'
      DisplayFormat = ',0.##'
    end
    object PackItemSafetyClampPieces: TSmallintField
      FieldName = 'SafetyClampPieces'
    end
    object PackItemSafetyChainExists: TBooleanField
      FieldName = 'SafetyChainExists'
    end
    object PackItemSafetyChainWeight: TFloatField
      FieldName = 'SafetyChainWeight'
      DisplayFormat = ',0.##'
    end
    object PackItemOtherAccExists: TBooleanField
      FieldName = 'OtherAccExists'
    end
    object PackItemOtherAccessories: TStringField
      FieldName = 'OtherAccessories'
      Size = 50
    end
    object PackItemOtherAccWeight: TFloatField
      FieldName = 'OtherAccWeight'
      DisplayFormat = ',0.##'
    end
    object PackItemSleeveExists: TBooleanField
      FieldName = 'SleeveExists'
    end
    object PackItemSumWeight: TFloatField
      FieldName = 'SumWeight'
      DisplayFormat = ',0.##'
    end
    object PackItemCreatorName: TStringField
      FieldName = 'CreatorName'
      Size = 50
    end
    object PackItemCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Required = True
    end
    object PackItemsumma: TFloatField
      FieldKind = fkCalculated
      FieldName = 'summa'
      DisplayFormat = '0.##,'
      Calculated = True
    end
  end
  object PackItemDs: TDataSource
    DataSet = PackItem
    Left = 112
    Top = 224
  end
  object PackDeviceDs: TDataSource
    DataSet = PackDevice
    Left = 112
    Top = 416
  end
  object PackDevice: TTable
    BeforePost = PackDeviceBeforePost
    AfterPost = PackDeviceAfterPost
    OnNewRecord = PackDeviceNewRecord
    AutoRefresh = True
    DatabaseName = 'MainDb'
    IndexFieldNames = 'DeviceTypeCode'
    MasterFields = 'DeviceTypeCode'
    MasterSource = PackDeviceTypeDs
    TableName = 'dbo.PackDevice'
    Left = 48
    Top = 400
    object PackDeviceDeviceId: TIntegerField
      FieldName = 'DeviceId'
    end
    object PackDeviceDeviceName: TStringField
      FieldName = 'DeviceName'
      Required = True
      FixedChar = True
      Size = 25
    end
    object PackDeviceDeviceTypeCode: TIntegerField
      FieldName = 'DeviceTypeCode'
      Required = True
    end
    object PackDevicedim1: TFloatField
      FieldName = 'dim1'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim2: TFloatField
      FieldName = 'dim2'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim3: TFloatField
      FieldName = 'dim3'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim4: TFloatField
      FieldName = 'dim4'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim5: TFloatField
      FieldName = 'dim5'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim6: TFloatField
      FieldName = 'dim6'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim7: TFloatField
      FieldName = 'dim7'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim8: TFloatField
      FieldName = 'dim8'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim9: TFloatField
      FieldName = 'dim9'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim10: TFloatField
      FieldName = 'dim10'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim11: TFloatField
      FieldName = 'dim11'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim12: TFloatField
      FieldName = 'dim12'
      DisplayFormat = ',0.##'
    end
    object PackDevicedim13: TFloatField
      FieldName = 'dim13'
      DisplayFormat = ',0.##'
    end
    object PackDeviceListOrder: TIntegerField
      FieldName = 'ListOrder'
    end
    object PackDeviceNote: TStringField
      FieldName = 'Note'
      Size = 250
    end
    object PackDeviceTorolt: TBooleanField
      FieldName = 'Torolt'
      Required = True
    end
    object PackDevicePicture: TBlobField
      FieldName = 'Picture'
      BlobType = ftBlob
      Size = 1
    end
    object PackDeviceRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object PackDeviceRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object PackDeviceType: TTable
    DatabaseName = 'MainDb'
    ReadOnly = True
    TableName = 'dbo.PackDeviceType'
    Left = 48
    Top = 352
    object PackDeviceTypeDeviceTypeCode: TIntegerField
      FieldName = 'DeviceTypeCode'
      Required = True
    end
    object PackDeviceTypeDeviceTypeName: TStringField
      FieldName = 'DeviceTypeName'
      Required = True
      Size = 50
    end
    object PackDeviceTypeDimenzioNev1: TStringField
      FieldName = 'DimenzioNev1'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev2: TStringField
      FieldName = 'DimenzioNev2'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev3: TStringField
      FieldName = 'DimenzioNev3'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev4: TStringField
      FieldName = 'DimenzioNev4'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev5: TStringField
      FieldName = 'DimenzioNev5'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev6: TStringField
      FieldName = 'DimenzioNev6'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev7: TStringField
      FieldName = 'DimenzioNev7'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev8: TStringField
      FieldName = 'DimenzioNev8'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev9: TStringField
      FieldName = 'DimenzioNev9'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev10: TStringField
      FieldName = 'DimenzioNev10'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev11: TStringField
      FieldName = 'DimenzioNev11'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev12: TStringField
      FieldName = 'DimenzioNev12'
      Size = 50
    end
    object PackDeviceTypeDimenzioNev13: TStringField
      FieldName = 'DimenzioNev13'
      Size = 50
    end
    object PackDeviceTypeMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object PackDeviceTypePicture: TBlobField
      FieldName = 'Picture'
      BlobType = ftBlob
      Size = 1
    end
  end
  object PackDeviceTypeDs: TDataSource
    DataSet = PackDeviceType
    Left = 112
    Top = 368
  end
  object PackItemListQry: TQuery
    DatabaseName = 'MainDb'
    FilterOptions = [foCaseInsensitive]
    SQL.Strings = (
      'select cast(NewId() as char(50)), *'
      'from'
      #9'PackItemList'
      'Order by        '
      #9'PackNum, PackRevision, PackVersion, PackItemId')
    Left = 48
    Top = 448
    object PackItemListQryCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 50
    end
    object PackItemListQryPackId: TIntegerField
      FieldName = 'PackId'
    end
    object PackItemListQryPackNum: TIntegerField
      FieldName = 'PackNum'
    end
    object PackItemListQryPackRevision: TSmallintField
      FieldName = 'PackRevision'
    end
    object PackItemListQryPackVersion: TSmallintField
      FieldName = 'PackVersion'
    end
    object PackItemListQryIdent1: TStringField
      FieldName = 'Ident1'
    end
    object PackItemListQryIdent2: TStringField
      FieldName = 'Ident2'
    end
    object PackItemListQryName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object PackItemListQryOfferPerson: TStringField
      FieldName = 'OfferPerson'
      Size = 50
    end
    object PackItemListQryNote: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object PackItemListQryStatuszNev: TStringField
      FieldName = 'StatuszNev'
      FixedChar = True
    end
    object PackItemListQryCreatorName: TStringField
      FieldName = 'CreatorName'
      Size = 50
    end
    object PackItemListQryCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object PackItemListQryPackItemId: TSmallintField
      FieldName = 'PackItemId'
    end
    object PackItemListQryDescription: TStringField
      FieldName = 'Description'
      Size = 250
    end
    object PackItemListQryPieces: TSmallintField
      FieldName = 'Pieces'
    end
    object PackItemListQryBodyId: TFloatField
      FieldName = 'BodyId'
    end
    object PackItemListQryBodyLength: TFloatField
      FieldName = 'BodyLength'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryBodyCode: TStringField
      FieldName = 'BodyCode'
    end
    object PackItemListQryBodyName: TStringField
      FieldName = 'BodyName'
      Size = 50
    end
    object PackItemListQryBodyOd: TFloatField
      FieldName = 'BodyOd'
    end
    object PackItemListQryMBRstorage: TFloatField
      FieldName = 'MBRstorage'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryBodyWeight: TFloatField
      FieldName = 'BodyWeight'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryInnerSteel: TBooleanField
      FieldName = 'InnerSteel'
    end
    object PackItemListQryFireResistant: TBooleanField
      FieldName = 'FireResistant'
    end
    object PackItemListQryOuterSteel: TBooleanField
      FieldName = 'OuterSteel'
    end
    object PackItemListQryPa: TBooleanField
      FieldName = 'Pa'
    end
    object PackItemListQryHelix: TBooleanField
      FieldName = 'Helix'
    end
    object PackItemListQryHeatRaced: TBooleanField
      FieldName = 'HeatRaced'
    end
    object PackItemListQryDragChain: TBooleanField
      FieldName = 'DragChain'
    end
    object PackItemListQryLongHose: TBooleanField
      FieldName = 'LongHose'
    end
    object PackItemListQryCouplingExists: TBooleanField
      FieldName = 'CouplingExists'
    end
    object PackItemListQryCouplingCode1: TStringField
      FieldName = 'CouplingCode1'
    end
    object PackItemListQryCouplingName1: TStringField
      FieldName = 'CouplingName1'
      Size = 50
    end
    object PackItemListQryCouplingWeight1: TFloatField
      FieldName = 'CouplingWeight1'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryCouplingOd1: TFloatField
      FieldName = 'CouplingOd1'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryOdMax1: TFloatField
      FieldName = 'OdMax1'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryCouplingCode2: TStringField
      FieldName = 'CouplingCode2'
    end
    object PackItemListQryCouplingName2: TStringField
      FieldName = 'CouplingName2'
      Size = 50
    end
    object PackItemListQryCouplingWeight2: TFloatField
      FieldName = 'CouplingWeight2'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryCouplingOd2: TFloatField
      FieldName = 'CouplingOd2'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryOdMax2: TFloatField
      FieldName = 'OdMax2'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryLiftingCollarExists: TBooleanField
      FieldName = 'LiftingCollarExists'
    end
    object PackItemListQryLiftingCollarName: TStringField
      FieldName = 'LiftingCollarName'
      Size = 50
    end
    object PackItemListQryLiftingCollarCode: TStringField
      FieldName = 'LiftingCollarCode'
    end
    object PackItemListQryLiftingCollarId: TFloatField
      FieldName = 'LiftingCollarId'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryLiftingCollarOd: TFloatField
      FieldName = 'LiftingCollarOd'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryLiftingCollarWeight: TFloatField
      FieldName = 'LiftingCollarWeight'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryLiftingCollarReinforced: TBooleanField
      FieldName = 'LiftingCollarReinforced'
    end
    object PackItemListQryLiftingCollarPieces: TSmallintField
      FieldName = 'LiftingCollarPieces'
    end
    object PackItemListQrySafetyClampExists: TBooleanField
      FieldName = 'SafetyClampExists'
    end
    object PackItemListQrySafetyClampName: TStringField
      FieldName = 'SafetyClampName'
      Size = 50
    end
    object PackItemListQrySafetyClampCode: TStringField
      FieldName = 'SafetyClampCode'
    end
    object PackItemListQrySafetyClampId: TFloatField
      FieldName = 'SafetyClampId'
      DisplayFormat = '.0.##'
    end
    object PackItemListQrySafetyClampOd: TFloatField
      FieldName = 'SafetyClampOd'
      DisplayFormat = '.0.##'
    end
    object PackItemListQrySafetyClampWeight: TFloatField
      FieldName = 'SafetyClampWeight'
      DisplayFormat = '.0.##'
    end
    object PackItemListQrySafetyClampPieces: TSmallintField
      FieldName = 'SafetyClampPieces'
    end
    object PackItemListQrySafetyChainExists: TBooleanField
      FieldName = 'SafetyChainExists'
    end
    object PackItemListQrySafetyChainWeight: TFloatField
      FieldName = 'SafetyChainWeight'
    end
    object PackItemListQryOtherAccExists: TBooleanField
      FieldName = 'OtherAccExists'
    end
    object PackItemListQryOtherAccessories: TStringField
      FieldName = 'OtherAccessories'
      Size = 50
    end
    object PackItemListQryOtherAccWeight: TFloatField
      FieldName = 'OtherAccWeight'
      DisplayFormat = '.0.##'
    end
    object PackItemListQrySleeveExists: TBooleanField
      FieldName = 'SleeveExists'
    end
    object PackItemListQrySumWeight: TFloatField
      FieldName = 'SumWeight'
      DisplayFormat = '.0.##'
    end
    object PackItemListQryItemCreatorName: TStringField
      FieldName = 'ItemCreatorName'
      Size = 50
    end
    object PackItemListQryItemCreateDate: TDateTimeField
      FieldName = 'ItemCreateDate'
    end
  end
  object PackItemListQryDs: TDataSource
    DataSet = PackItemListQry
    Left = 112
    Top = 464
  end
  object GetPackMaxId: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetPackMaxId'
    Left = 120
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end>
    object GetPackMaxIdMaxId: TIntegerField
      FieldName = 'MaxId'
    end
  end
  object KonstrJellQryDs: TDataSource
    DataSet = KonstrJellQry
    Left = 280
    Top = 144
  end
  object CouplingQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select cast(NewId() as char(50)),*'
      'from'
      '    Couplings'
      'where'
      '     Status = 0')
    Left = 216
    Top = 176
    object CouplingQryCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 50
    end
    object CouplingQrycouplingCounter: TIntegerField
      FieldName = 'couplingCounter'
    end
    object CouplingQrycouplingANb: TStringField
      FieldName = 'couplingANb'
      Size = 10
    end
    object CouplingQrycouplingDNb: TStringField
      FieldName = 'couplingDNb'
    end
    object CouplingQrycouplingFileH: TStringField
      FieldName = 'couplingFileH'
    end
    object CouplingQrycouplingFileE: TStringField
      FieldName = 'couplingFileE'
    end
    object CouplingQrycouplingType: TIntegerField
      FieldName = 'couplingType'
    end
    object CouplingQryendFittingType: TIntegerField
      FieldName = 'endFittingType'
    end
    object CouplingQryendFittingName: TStringField
      FieldName = 'endFittingName'
      Size = 60
    end
    object CouplingQryendFittingDesc0: TStringField
      FieldName = 'endFittingDesc0'
      Size = 30
    end
    object CouplingQryendFittingDesc1: TStringField
      FieldName = 'endFittingDesc1'
      Size = 30
    end
    object CouplingQryendFittingDesc2: TStringField
      FieldName = 'endFittingDesc2'
      Size = 30
    end
    object CouplingQrydescription: TStringField
      FieldName = 'description'
      Size = 40
    end
    object CouplingQrydescriptionH: TStringField
      FieldName = 'descriptionH'
      Size = 60
    end
    object CouplingQrydescriptionE: TStringField
      FieldName = 'descriptionE'
      Size = 60
    end
    object CouplingQrydate: TDateTimeField
      FieldName = 'date'
    end
    object CouplingQryweight: TFloatField
      FieldName = 'weight'
      DisplayFormat = ',0.##'
    end
    object CouplingQrypriceSAP: TFloatField
      FieldName = 'priceSAP'
      DisplayFormat = ',0.##'
    end
    object CouplingQryprice: TFloatField
      FieldName = 'price'
      DisplayFormat = ',0.##'
    end
    object CouplingQrydatePrice: TDateTimeField
      FieldName = 'datePrice'
    end
    object CouplingQrysteel: TIntegerField
      FieldName = 'steel'
    end
    object CouplingQrySteelDescription: TStringField
      FieldName = 'SteelDescription'
      Size = 35
    end
    object CouplingQryfireResistant: TBooleanField
      FieldName = 'fireResistant'
    end
    object CouplingQrywelded: TBooleanField
      FieldName = 'welded'
    end
    object CouplingQrybody: TIntegerField
      FieldName = 'body'
    end
    object CouplingQryIDrated: TFloatField
      FieldName = 'IDrated'
      DisplayFormat = ',0.##'
    end
    object CouplingQryIDratedU: TIntegerField
      FieldName = 'IDratedU'
    end
    object CouplingQryIdUnit: TStringField
      FieldName = 'IdUnit'
      Size = 8
    end
    object CouplingQrydp: TFloatField
      FieldName = 'dp'
      DisplayFormat = ',0.##'
    end
    object CouplingQrytp: TFloatField
      FieldName = 'tp'
      DisplayFormat = ',0.##'
    end
    object CouplingQrypressureU: TIntegerField
      FieldName = 'pressureU'
    end
    object CouplingQryPressureUnit: TStringField
      FieldName = 'PressureUnit'
      Size = 8
    end
    object CouplingQrye1ID: TFloatField
      FieldName = 'e1ID'
      DisplayFormat = ',0.##'
    end
    object CouplingQrye1OD: TFloatField
      FieldName = 'e1OD'
      DisplayFormat = ',0.##'
    end
    object CouplingQrye1L: TFloatField
      FieldName = 'e1L'
      DisplayFormat = ',0.##'
    end
    object CouplingQryewnID: TFloatField
      FieldName = 'ewnID'
      DisplayFormat = ',0.##'
    end
    object CouplingQryewnOD: TFloatField
      FieldName = 'ewnOD'
      DisplayFormat = ',0.##'
    end
    object CouplingQrye2ID: TFloatField
      FieldName = 'e2ID'
      DisplayFormat = ',0.##'
    end
    object CouplingQrye2OD: TFloatField
      FieldName = 'e2OD'
      DisplayFormat = ',0.##'
    end
    object CouplingQrye2L: TFloatField
      FieldName = 'e2L'
      DisplayFormat = ',0.##'
    end
    object CouplingQryLt: TFloatField
      FieldName = 'Lt'
      DisplayFormat = ',0.##'
    end
    object CouplingQryd0: TFloatField
      FieldName = 'd0'
      DisplayFormat = ',0.##'
    end
    object CouplingQrykd1: TFloatField
      FieldName = 'kd1'
      DisplayFormat = ',0.##'
    end
    object CouplingQrykd2: TFloatField
      FieldName = 'kd2'
      DisplayFormat = ',0.##'
    end
    object CouplingQrykd3: TFloatField
      FieldName = 'kd3'
      DisplayFormat = ',0.##'
    end
    object CouplingQrykd4: TFloatField
      FieldName = 'kd4'
      DisplayFormat = ',0.##'
    end
    object CouplingQrykd5: TFloatField
      FieldName = 'kd5'
      DisplayFormat = ',0.##'
    end
    object CouplingQryND1: TFloatField
      FieldName = 'ND1'
      DisplayFormat = ',0.##'
    end
    object CouplingQryND2: TFloatField
      FieldName = 'ND2'
      DisplayFormat = ',0.##'
    end
    object CouplingQryND3: TFloatField
      FieldName = 'ND3'
      DisplayFormat = ',0.##'
    end
    object CouplingQryND4: TFloatField
      FieldName = 'ND4'
      DisplayFormat = ',0.##'
    end
    object CouplingQryLB: TFloatField
      FieldName = 'LB'
      DisplayFormat = ',0.##'
    end
    object CouplingQryLH: TFloatField
      FieldName = 'LH'
      DisplayFormat = ',0.##'
    end
    object CouplingQryLF: TFloatField
      FieldName = 'LF'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL1: TFloatField
      FieldName = 'L1'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL2: TFloatField
      FieldName = 'L2'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL3: TFloatField
      FieldName = 'L3'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL4: TFloatField
      FieldName = 'L4'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL5: TFloatField
      FieldName = 'L5'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL6: TFloatField
      FieldName = 'L6'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL7: TFloatField
      FieldName = 'L7'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL8: TFloatField
      FieldName = 'L8'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL9: TFloatField
      FieldName = 'L9'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL10: TFloatField
      FieldName = 'L10'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL11: TFloatField
      FieldName = 'L11'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL12: TFloatField
      FieldName = 'L12'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL13: TFloatField
      FieldName = 'L13'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL14: TFloatField
      FieldName = 'L14'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL15: TFloatField
      FieldName = 'L15'
      DisplayFormat = ',0.##'
    end
    object CouplingQryL16: TFloatField
      FieldName = 'L16'
      DisplayFormat = ',0.##'
    end
    object CouplingQryM1: TFloatField
      FieldName = 'M1'
      DisplayFormat = ',0.##'
    end
    object CouplingQryalfa1: TFloatField
      FieldName = 'alfa1'
      DisplayFormat = ',0.##'
    end
    object CouplingQryalfa2: TFloatField
      FieldName = 'alfa2'
      DisplayFormat = ',0.##'
    end
    object CouplingQryalfa3: TFloatField
      FieldName = 'alfa3'
      DisplayFormat = ',0.##'
    end
    object CouplingQrystatus: TIntegerField
      FieldName = 'status'
    end
    object CouplingQrynote: TStringField
      FieldName = 'note'
      Size = 40
    end
    object CouplingQryHMuser: TIntegerField
      FieldName = 'HMuser'
    end
    object CouplingQryEndFittingShortNameH: TStringField
      FieldName = 'EndFittingShortNameH'
      Size = 10
    end
    object CouplingQryEndFittingNameH: TStringField
      FieldName = 'EndFittingNameH'
      Size = 30
    end
    object CouplingQryEndFittingNameE: TStringField
      FieldName = 'EndFittingNameE'
      Size = 30
    end
    object CouplingQryEndFittingShortNameE: TStringField
      FieldName = 'EndFittingShortNameE'
      Size = 10
    end
  end
  object CouplingQryDs: TDataSource
    DataSet = CouplingQry
    Left = 280
    Top = 192
  end
  object GetDiameters: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetDiameters;1'
    Left = 344
    Top = 216
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@KonstrukcioKod'
        ParamType = ptInput
        Value = #39'MT 1779-1000'#39
      end>
    object GetDiametersKonstrukcioKod: TStringField
      FieldName = 'KonstrukcioKod'
      FixedChar = True
      Size = 30
    end
    object GetDiametersKompListKod: TStringField
      FieldName = 'KompListKod'
      FixedChar = True
      Size = 30
    end
    object GetDiametersMegnevezes: TStringField
      FieldName = 'Megnevezes'
      FixedChar = True
      Size = 40
    end
    object GetDiametersTomlotest: TFloatField
      FieldName = 'Tomlotest'
    end
    object GetDiametersCsatlakozotest: TFloatField
      FieldName = 'Csatlakozotest'
    end
  end
  object AccessoryQryDs: TDataSource
    DataSet = AccessoryQry
    Left = 280
    Top = 240
  end
  object KonstrJellQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select cast(NewId() as char(50)),*'
      'from'
      '        KonstrJellemzok'
      'where'
      '        Status = 0'
      'order by'
      '        IDRated, bg, la, kg'
      ' '
      ' ')
    Left = 216
    Top = 128
    object KonstrJellQryCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 50
    end
    object KonstrJellQrybodyANb: TStringField
      FieldName = 'bodyANb'
      Size = 10
    end
    object KonstrJellQrybodyDNb: TStringField
      FieldName = 'bodyDNb'
    end
    object KonstrJellQrydescriptionH: TStringField
      FieldName = 'descriptionH'
      Size = 40
    end
    object KonstrJellQrycharacteristics: TIntegerField
      FieldName = 'characteristics'
    end
    object KonstrJellQryla: TBooleanField
      FieldName = 'la'
    end
    object KonstrJellQrykg: TBooleanField
      FieldName = 'kg'
    end
    object KonstrJellQrybg: TBooleanField
      FieldName = 'bg'
    end
    object KonstrJellQryhe: TBooleanField
      FieldName = 'he'
    end
    object KonstrJellQrypa: TBooleanField
      FieldName = 'pa'
    end
    object KonstrJellQryfu: TBooleanField
      FieldName = 'fu'
    end
    object KonstrJellQryga: TBooleanField
      FieldName = 'ga'
    end
    object KonstrJellQryus: TBooleanField
      FieldName = 'us'
    end
    object KonstrJellQrydc: TBooleanField
      FieldName = 'dc'
    end
    object KonstrJellQrynh: TBooleanField
      FieldName = 'nh'
    end
    object KonstrJellQrywp: TFloatField
      FieldName = 'wp'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrytp: TFloatField
      FieldName = 'tp'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrydp: TFloatField
      FieldName = 'dp'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryIDrated: TFloatField
      FieldName = 'IDrated'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryOD: TFloatField
      FieldName = 'OD'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryweight: TFloatField
      FieldName = 'weight'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryMBRcalc: TFloatField
      FieldName = 'MBRcalc'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryMBRstatic: TFloatField
      FieldName = 'MBRstatic'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryMBRdynamic: TFloatField
      FieldName = 'MBRdynamic'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQryMBRstorage: TFloatField
      FieldName = 'MBRstorage'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrypreCureTemperature1: TFloatField
      FieldName = 'preCureTemperature1'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrypreCureTime1: TFloatField
      FieldName = 'preCureTime1'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrypreCureTemperature2: TFloatField
      FieldName = 'preCureTemperature2'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrypreCureTime2: TFloatField
      FieldName = 'preCureTime2'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrypreCureTemperature3: TFloatField
      FieldName = 'preCureTemperature3'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrypreCureTime3: TFloatField
      FieldName = 'preCureTime3'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrycureTemperature1: TFloatField
      FieldName = 'cureTemperature1'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrycureTime1: TFloatField
      FieldName = 'cureTime1'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrycureTemperature2: TFloatField
      FieldName = 'cureTemperature2'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrycureTime2: TFloatField
      FieldName = 'cureTime2'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrycureTemperature3: TFloatField
      FieldName = 'cureTemperature3'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrycureTime3: TFloatField
      FieldName = 'cureTime3'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrystatus: TIntegerField
      FieldName = 'status'
    end
    object KonstrJellQrytemperatureMin: TFloatField
      FieldName = 'temperatureMin'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrytemperatureMax: TFloatField
      FieldName = 'temperatureMax'
      DisplayFormat = ',0.###'
    end
    object KonstrJellQrynote: TStringField
      FieldName = 'note'
      Size = 40
    end
    object KonstrJellQrylinerResistance: TIntegerField
      FieldName = 'linerResistance'
    end
    object KonstrJellQryOlaj: TBooleanField
      FieldName = 'Olaj'
    end
    object KonstrJellQryGazEdes: TBooleanField
      FieldName = 'GazEdes'
    end
    object KonstrJellQryGazSav: TBooleanField
      FieldName = 'GazSav'
    end
    object KonstrJellQryViz: TBooleanField
      FieldName = 'Viz'
    end
    object KonstrJellQryFoszfat: TBooleanField
      FieldName = 'Foszfat'
    end
    object KonstrJellQrysafetyFactor: TFloatField
      FieldName = 'safetyFactor'
      DisplayFormat = ',0.###'
    end
  end
  object PackDevAssignDs: TDataSource
    DataSet = PackDevAssign
    Left = 112
    Top = 320
  end
  object PackDevAssign: TTable
    AutoRefresh = True
    DatabaseName = 'MainDb'
    IndexFieldNames = 'PackId;PackageId'
    MasterFields = 'PackId;PackageId'
    MasterSource = PackagesDs
    TableName = 'dbo.PackDeviceAssign'
    Left = 48
    Top = 304
    object PackDevAssignPackId: TIntegerField
      FieldName = 'PackId'
      Required = True
    end
    object PackDevAssignPackItemId: TSmallintField
      FieldName = 'PackItemId'
      Required = True
    end
    object PackDevAssignPackageId: TIntegerField
      FieldName = 'PackageId'
      Required = True
    end
    object PackDevAssignDescription: TStringField
      FieldKind = fkLookup
      FieldName = 'Description'
      LookupDataSet = qPackItem
      LookupKeyFields = 'PackId;PackItemId'
      LookupResultField = 'Description'
      KeyFields = 'PackId;PackItemId'
      Size = 250
      Lookup = True
    end
    object PackDevAssignPieces: TSmallintField
      FieldName = 'Pieces'
    end
    object PackDevAssignWeight: TFloatField
      FieldName = 'Weight'
      DisplayFormat = '0.##,'
    end
  end
  object CreatePackHead: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_CreatePackHead'
    Left = 216
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@CreatorName'
        ParamType = ptInput
      end>
    object CreatePackHeadCOLUMN1: TFloatField
      FieldName = 'COLUMN1'
    end
  end
  object Packages: TTable
    BeforePost = PackagesBeforePost
    AfterPost = PackagesAfterPost
    OnCalcFields = PackagesCalcFields
    OnNewRecord = PackagesNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'PackId'
    MasterFields = 'PackId'
    MasterSource = PackHeadDs
    TableName = 'dbo.Packages'
    Left = 48
    Top = 256
    object PackagesPackageId: TIntegerField
      FieldName = 'PackageId'
    end
    object PackagesPackId: TIntegerField
      FieldName = 'PackId'
      Required = True
    end
    object PackagesPackDevTypeCode: TIntegerField
      FieldName = 'PackDevTypeCode'
    end
    object PackagesPackDevTypeName: TStringField
      FieldName = 'PackDevTypeName'
      Size = 50
    end
    object PackagesPackDevCode: TIntegerField
      FieldName = 'PackDevCode'
    end
    object PackagesPackDevName: TStringField
      FieldName = 'PackDevName'
      Size = 50
    end
    object PackagesPackDevNum: TSmallintField
      FieldName = 'PackDevNum'
    end
    object PackagesDim1: TFloatField
      FieldName = 'Dim1'
      DisplayFormat = '0.##,'
    end
    object PackagesDim2: TFloatField
      FieldName = 'Dim2'
      DisplayFormat = '0.##,'
    end
    object PackagesDim3: TFloatField
      FieldName = 'Dim3'
      DisplayFormat = '0.##,'
    end
    object PackagesWeight: TFloatField
      FieldName = 'Weight'
      DisplayFormat = '0.##,'
      EditFormat = '0.##,'
    end
    object PackagesSumWeight: TFloatField
      FieldName = 'SumWeight'
      DisplayFormat = '0.##,'
      EditFormat = '0.##,'
    end
    object PackagesPrice: TFloatField
      FieldName = 'Price'
      DisplayFormat = '0.##,'
    end
    object PackagesSumPrice: TFloatField
      FieldName = 'SumPrice'
      DisplayFormat = '0.##,'
    end
    object PackagesNote: TStringField
      FieldName = 'Note'
      Size = 250
    end
    object PackagesCreatorName: TStringField
      FieldName = 'CreatorName'
      Size = 50
    end
    object PackagesCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object PackagessWeight: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sWeight'
      Calculated = True
    end
    object PackagessPrice: TFloatField
      FieldKind = fkCalculated
      FieldName = 'sPrice'
      DisplayFormat = '0.##,'
      Calculated = True
    end
    object PackagesCurrencyCode: TSmallintField
      FieldName = 'CurrencyCode'
    end
    object PackagesCurrencyName: TStringField
      FieldKind = fkLookup
      FieldName = 'CurrencyName'
      LookupDataSet = Penznem
      LookupKeyFields = 'DevizaId'
      LookupResultField = 'ShortName'
      KeyFields = 'CurrencyCode'
      Size = 10
      Lookup = True
    end
  end
  object PackagesDs: TDataSource
    DataSet = Packages
    Left = 112
    Top = 272
  end
  object CreatePackRev: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_CreatePackRevision'
    Left = 280
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@PackId'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CreatorName'
        ParamType = ptInput
      end>
    object CreatePackRevCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
    end
  end
  object CreatePackVer: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_CreatePackVersion;1'
    Left = 344
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@PackId'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CreatorName'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = '@PackRev'
        ParamType = ptInput
      end>
    object CreatePackVerCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
    end
  end
  object PackRepQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'PackHead ph, Packages pk'
      #9'Left Outer Join Penznem'#9'pn On (pn.DevizaId = pk.CurrencyCode)'
      
        #9'Left Outer Join PackDeviceAssign pa On (pk.PackageId = pa.Packa' +
        'geId)'
      
        #9'Left Outer Join PackItem p On (pa.PackId = p.PackId and pa.Pack' +
        'ItemId = p.PackItemId)'
      'where'
      #9'ph.PackId = :PackId and'
      #9'ph.PackId = pk.PackId'
      'order by'
      '        pk.PackageId'
      '')
    Left = 216
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PackId'
        ParamType = ptUnknown
      end>
    object PackRepQryPackId: TIntegerField
      FieldName = 'PackId'
      Origin = 'MAINDB.PackHead.PackId'
    end
    object PackRepQryPackNum: TIntegerField
      FieldName = 'PackNum'
      Origin = 'MAINDB.PackHead.PackNum'
    end
    object PackRepQryPackRevision: TSmallintField
      FieldName = 'PackRevision'
      Origin = 'MAINDB.PackHead.PackRevision'
    end
    object PackRepQryPackVersion: TSmallintField
      FieldName = 'PackVersion'
      Origin = 'MAINDB.PackHead.PackVersion'
    end
    object PackRepQryIdent1: TStringField
      FieldName = 'Ident1'
      Origin = 'MAINDB.PackHead.Ident1'
    end
    object PackRepQryIdent2: TStringField
      FieldName = 'Ident2'
      Origin = 'MAINDB.PackHead.Ident2'
    end
    object PackRepQryName: TStringField
      FieldName = 'Name'
      Origin = 'MAINDB.PackHead.Name'
      Size = 50
    end
    object PackRepQryOfferPerson: TStringField
      FieldName = 'OfferPerson'
      Origin = 'MAINDB.PackHead.OfferPerson'
      Size = 50
    end
    object PackRepQryNote: TStringField
      FieldName = 'Note'
      Origin = 'MAINDB.PackHead.Note'
      Size = 50
    end
    object PackRepQryStatus: TSmallintField
      FieldName = 'Status'
      Origin = 'MAINDB.PackHead.Status'
    end
    object PackRepQryCreatorName: TStringField
      FieldName = 'CreatorName'
      Origin = 'MAINDB.PackHead.CreatorName'
      Size = 50
    end
    object PackRepQryCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackageId: TIntegerField
      FieldName = 'PackageId'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackId_1: TIntegerField
      FieldName = 'PackId_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackDevTypeCode: TIntegerField
      FieldName = 'PackDevTypeCode'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackDevTypeName: TStringField
      FieldName = 'PackDevTypeName'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryPackDevCode: TIntegerField
      FieldName = 'PackDevCode'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackDevName: TStringField
      FieldName = 'PackDevName'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryPackDevNum: TSmallintField
      FieldName = 'PackDevNum'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryDim1: TFloatField
      FieldName = 'Dim1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryDim2: TFloatField
      FieldName = 'Dim2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryDim3: TFloatField
      FieldName = 'Dim3'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryWeight: TFloatField
      FieldName = 'Weight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySumWeight: TFloatField
      FieldName = 'SumWeight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPrice: TFloatField
      FieldName = 'Price'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySumPrice: TFloatField
      FieldName = 'SumPrice'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryNote_1: TStringField
      FieldName = 'Note_1'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 250
    end
    object PackRepQryCreatorName_1: TStringField
      FieldName = 'CreatorName_1'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryCreateDate_1: TDateTimeField
      FieldName = 'CreateDate_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackId_2: TIntegerField
      FieldName = 'PackId_2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackItemId: TSmallintField
      FieldName = 'PackItemId'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackageId_1: TIntegerField
      FieldName = 'PackageId_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPieces: TSmallintField
      FieldName = 'Pieces'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryWeight_1: TFloatField
      FieldName = 'Weight_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackId_3: TIntegerField
      FieldName = 'PackId_3'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPackItemId_1: TSmallintField
      FieldName = 'PackItemId_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryDescription: TStringField
      FieldName = 'Description'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 250
    end
    object PackRepQryPieces_1: TSmallintField
      FieldName = 'Pieces_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryBodyLength: TFloatField
      FieldName = 'BodyLength'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryBodyCode: TStringField
      FieldName = 'BodyCode'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryBodyName: TStringField
      FieldName = 'BodyName'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryBodyOd: TFloatField
      FieldName = 'BodyOd'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryMBRstorage: TFloatField
      FieldName = 'MBRstorage'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryBodyWeight: TFloatField
      FieldName = 'BodyWeight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryInnerSteel: TBooleanField
      FieldName = 'InnerSteel'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryFireResistant: TBooleanField
      FieldName = 'FireResistant'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryOuterSteel: TBooleanField
      FieldName = 'OuterSteel'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryPa: TBooleanField
      FieldName = 'Pa'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryHelix: TBooleanField
      FieldName = 'Helix'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryHeatRaced: TBooleanField
      FieldName = 'HeatRaced'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryDragChain: TBooleanField
      FieldName = 'DragChain'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLongHose: TBooleanField
      FieldName = 'LongHose'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCouplingCode1: TStringField
      FieldName = 'CouplingCode1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCouplingName1: TStringField
      FieldName = 'CouplingName1'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryCouplingWeight1: TFloatField
      FieldName = 'CouplingWeight1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCouplingOd1: TFloatField
      FieldName = 'CouplingOd1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryOdMax1: TFloatField
      FieldName = 'OdMax1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCouplingCode2: TStringField
      FieldName = 'CouplingCode2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCouplingName2: TStringField
      FieldName = 'CouplingName2'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryCouplingWeight2: TFloatField
      FieldName = 'CouplingWeight2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCouplingOd2: TFloatField
      FieldName = 'CouplingOd2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryOdMax2: TFloatField
      FieldName = 'OdMax2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarExists: TBooleanField
      FieldName = 'LiftingCollarExists'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarName: TStringField
      FieldName = 'LiftingCollarName'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryLiftingCollarCode: TStringField
      FieldName = 'LiftingCollarCode'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarId: TFloatField
      FieldName = 'LiftingCollarId'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarOd: TFloatField
      FieldName = 'LiftingCollarOd'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarWeight: TFloatField
      FieldName = 'LiftingCollarWeight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarReinforced: TBooleanField
      FieldName = 'LiftingCollarReinforced'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryLiftingCollarPieces: TSmallintField
      FieldName = 'LiftingCollarPieces'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyClampExists: TBooleanField
      FieldName = 'SafetyClampExists'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyClampName: TStringField
      FieldName = 'SafetyClampName'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQrySafetyClampCode: TStringField
      FieldName = 'SafetyClampCode'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyClampId: TFloatField
      FieldName = 'SafetyClampId'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyClampOd: TFloatField
      FieldName = 'SafetyClampOd'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyClampWeight: TFloatField
      FieldName = 'SafetyClampWeight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyClampPieces: TSmallintField
      FieldName = 'SafetyClampPieces'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyChainExists: TBooleanField
      FieldName = 'SafetyChainExists'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySafetyChainWeight: TFloatField
      FieldName = 'SafetyChainWeight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryOtherAccExists: TBooleanField
      FieldName = 'OtherAccExists'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryOtherAccessories: TStringField
      FieldName = 'OtherAccessories'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryOtherAccWeight: TFloatField
      FieldName = 'OtherAccWeight'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQrySumWeight_1: TFloatField
      FieldName = 'SumWeight_1'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryCreatorName_2: TStringField
      FieldName = 'CreatorName_2'
      Origin = 'MAINDB.PackHead.CreateDate'
      Size = 50
    end
    object PackRepQryCreateDate_2: TDateTimeField
      FieldName = 'CreateDate_2'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object PackRepQryShortName: TStringField
      FieldName = 'ShortName'
      Origin = 'MAINDB.Packages.PackageId'
      Size = 10
    end
    object PackRepQryStatusName: TStringField
      FieldKind = fkLookup
      FieldName = 'StatusName'
      LookupDataSet = RekordStatusz
      LookupKeyFields = 'StatuszKod'
      LookupResultField = 'StatuszNev'
      KeyFields = 'Status'
      Lookup = True
    end
  end
  object GetPackItemQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      '    PackItem'
      'where'
      '    PackId=:PackId and PackItemId=:PackItemId'
      ' ')
    Left = 216
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PackId'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PackItemId'
        ParamType = ptUnknown
      end>
    object GetPackItemQryDescription: TStringField
      FieldName = 'Description'
      Origin = 'MAINDB.PackItem.Description'
      Size = 250
    end
    object GetPackItemQryPieces: TSmallintField
      FieldName = 'Pieces'
      Origin = 'MAINDB.PackItem.Pieces'
    end
    object GetPackItemQryBodyId: TFloatField
      FieldName = 'BodyId'
      Origin = 'MAINDB.PackItem.BodyId'
    end
    object GetPackItemQryBodyLength: TFloatField
      FieldName = 'BodyLength'
      Origin = 'MAINDB.PackItem.BodyLength'
    end
    object GetPackItemQryBodyCode: TStringField
      FieldName = 'BodyCode'
      Origin = 'MAINDB.PackItem.BodyCode'
    end
    object GetPackItemQryBodyName: TStringField
      FieldName = 'BodyName'
      Origin = 'MAINDB.PackItem.BodyName'
      Size = 50
    end
    object GetPackItemQryBodyOd: TFloatField
      FieldName = 'BodyOd'
      Origin = 'MAINDB.PackItem.BodyOd'
    end
    object GetPackItemQryMBRstorage: TFloatField
      FieldName = 'MBRstorage'
      Origin = 'MAINDB.PackItem.MBRstorage'
    end
    object GetPackItemQryBodyWeight: TFloatField
      FieldName = 'BodyWeight'
      Origin = 'MAINDB.PackItem.BodyWeight'
    end
    object GetPackItemQryInnerSteel: TBooleanField
      FieldName = 'InnerSteel'
      Origin = 'MAINDB.PackItem.InnerSteel'
    end
    object GetPackItemQryFireResistant: TBooleanField
      FieldName = 'FireResistant'
      Origin = 'MAINDB.PackItem.FireResistant'
    end
    object GetPackItemQryOuterSteel: TBooleanField
      FieldName = 'OuterSteel'
      Origin = 'MAINDB.PackItem.OuterSteel'
    end
    object GetPackItemQryPa: TBooleanField
      FieldName = 'Pa'
      Origin = 'MAINDB.PackItem.Pa'
    end
    object GetPackItemQryHelix: TBooleanField
      FieldName = 'Helix'
      Origin = 'MAINDB.PackItem.Helix'
    end
    object GetPackItemQryHeatRaced: TBooleanField
      FieldName = 'HeatRaced'
      Origin = 'MAINDB.PackItem.HeatRaced'
    end
    object GetPackItemQryDragChain: TBooleanField
      FieldName = 'DragChain'
      Origin = 'MAINDB.PackItem.DragChain'
    end
    object GetPackItemQryLongHose: TBooleanField
      FieldName = 'LongHose'
      Origin = 'MAINDB.PackItem.LongHose'
    end
    object GetPackItemQryCouplingCode1: TStringField
      FieldName = 'CouplingCode1'
      Origin = 'MAINDB.PackItem.CouplingCode1'
    end
    object GetPackItemQryCouplingName1: TStringField
      FieldName = 'CouplingName1'
      Origin = 'MAINDB.PackItem.CouplingName1'
      Size = 50
    end
    object GetPackItemQryCouplingWeight1: TFloatField
      FieldName = 'CouplingWeight1'
      Origin = 'MAINDB.PackItem.CouplingWeight1'
    end
    object GetPackItemQryCouplingOd1: TFloatField
      FieldName = 'CouplingOd1'
      Origin = 'MAINDB.PackItem.CouplingOd1'
    end
    object GetPackItemQryOdMax1: TFloatField
      FieldName = 'OdMax1'
      Origin = 'MAINDB.PackItem.OdMax1'
    end
    object GetPackItemQryCouplingCode2: TStringField
      FieldName = 'CouplingCode2'
      Origin = 'MAINDB.PackItem.CouplingCode2'
    end
    object GetPackItemQryCouplingName2: TStringField
      FieldName = 'CouplingName2'
      Origin = 'MAINDB.PackItem.CouplingName2'
      Size = 50
    end
    object GetPackItemQryCouplingWeight2: TFloatField
      FieldName = 'CouplingWeight2'
      Origin = 'MAINDB.PackItem.CouplingWeight2'
    end
    object GetPackItemQryCouplingOd2: TFloatField
      FieldName = 'CouplingOd2'
      Origin = 'MAINDB.PackItem.CouplingOd2'
    end
    object GetPackItemQryOdMax2: TFloatField
      FieldName = 'OdMax2'
      Origin = 'MAINDB.PackItem.OdMax2'
    end
    object GetPackItemQryLiftingCollarExists: TBooleanField
      FieldName = 'LiftingCollarExists'
      Origin = 'MAINDB.PackItem.LiftingCollarExists'
    end
    object GetPackItemQryLiftingCollarName: TStringField
      FieldName = 'LiftingCollarName'
      Origin = 'MAINDB.PackItem.LiftingCollarName'
      Size = 50
    end
    object GetPackItemQryLiftingCollarCode: TStringField
      FieldName = 'LiftingCollarCode'
      Origin = 'MAINDB.PackItem.LiftingCollarCode'
    end
    object GetPackItemQryLiftingCollarId: TFloatField
      FieldName = 'LiftingCollarId'
      Origin = 'MAINDB.PackItem.LiftingCollarId'
    end
    object GetPackItemQryLiftingCollarOd: TFloatField
      FieldName = 'LiftingCollarOd'
      Origin = 'MAINDB.PackItem.LiftingCollarOd'
    end
    object GetPackItemQryLiftingCollarWeight: TFloatField
      FieldName = 'LiftingCollarWeight'
      Origin = 'MAINDB.PackItem.LiftingCollarWeight'
    end
    object GetPackItemQryLiftingCollarReinforced: TBooleanField
      FieldName = 'LiftingCollarReinforced'
      Origin = 'MAINDB.PackItem.LiftingCollarReinforced'
    end
    object GetPackItemQryLiftingCollarPieces: TSmallintField
      FieldName = 'LiftingCollarPieces'
      Origin = 'MAINDB.PackItem.LiftingCollarPieces'
    end
    object GetPackItemQrySafetyClampExists: TBooleanField
      FieldName = 'SafetyClampExists'
      Origin = 'MAINDB.PackItem.SafetyClampExists'
    end
    object GetPackItemQrySafetyClampName: TStringField
      FieldName = 'SafetyClampName'
      Origin = 'MAINDB.PackItem.SafetyClampName'
      Size = 50
    end
    object GetPackItemQrySafetyClampCode: TStringField
      FieldName = 'SafetyClampCode'
      Origin = 'MAINDB.PackItem.SafetyClampCode'
    end
    object GetPackItemQrySafetyClampId: TFloatField
      FieldName = 'SafetyClampId'
      Origin = 'MAINDB.PackItem.SafetyClampId'
    end
    object GetPackItemQrySafetyClampOd: TFloatField
      FieldName = 'SafetyClampOd'
      Origin = 'MAINDB.PackItem.SafetyClampOd'
    end
    object GetPackItemQrySafetyClampWeight: TFloatField
      FieldName = 'SafetyClampWeight'
      Origin = 'MAINDB.PackItem.SafetyClampWeight'
    end
    object GetPackItemQrySafetyClampPieces: TSmallintField
      FieldName = 'SafetyClampPieces'
      Origin = 'MAINDB.PackItem.SafetyClampPieces'
    end
    object GetPackItemQrySafetyChainExists: TBooleanField
      FieldName = 'SafetyChainExists'
      Origin = 'MAINDB.PackItem.SafetyChainExists'
    end
    object GetPackItemQrySafetyChainWeight: TFloatField
      FieldName = 'SafetyChainWeight'
      Origin = 'MAINDB.PackItem.SafetyChainWeight'
    end
    object GetPackItemQryOtherAccExists: TBooleanField
      FieldName = 'OtherAccExists'
      Origin = 'MAINDB.PackItem.OtherAccExists'
    end
    object GetPackItemQryOtherAccessories: TStringField
      FieldName = 'OtherAccessories'
      Origin = 'MAINDB.PackItem.OtherAccessories'
      Size = 50
    end
    object GetPackItemQryOtherAccWeight: TFloatField
      FieldName = 'OtherAccWeight'
      Origin = 'MAINDB.PackItem.OtherAccWeight'
    end
    object GetPackItemQrySleeveExists: TBooleanField
      FieldName = 'SleeveExists'
      Origin = 'MAINDB.PackItem.SleeveExists'
    end
    object GetPackItemQrySumWeight: TFloatField
      FieldName = 'SumWeight'
      Origin = 'MAINDB.PackItem.SumWeight'
    end
    object GetPackItemQryCreatorName: TStringField
      FieldName = 'CreatorName'
      Origin = 'MAINDB.PackItem.CreatorName'
      Size = 50
    end
    object GetPackItemQryCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Origin = 'MAINDB.PackItem.CreateDate'
    end
  end
  object Penznem: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.Penznem'
    Left = 280
    Top = 336
    object PenznemDevizaId: TIntegerField
      FieldName = 'DevizaId'
      Required = True
    end
    object PenznemShortName: TStringField
      FieldName = 'ShortName'
      Size = 10
    end
    object PenznemFullName: TStringField
      FieldName = 'FullName'
      Size = 50
    end
  end
  object GetUserRights: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetUserRights'
    Left = 176
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@UID'
        ParamType = ptInput
      end>
    object GetUserRightsUid: TIntegerField
      FieldName = 'Uid'
    end
    object GetUserRightsProgCode: TIntegerField
      FieldName = 'ProgCode'
    end
    object GetUserRightsTag: TIntegerField
      FieldName = 'Tag'
    end
  end
  object MfCikkszamJelzesek: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.MfCikkszamJelzesek'
    Left = 216
    Top = 464
    object MfCikkszamJelzesekJelzoString: TStringField
      FieldName = 'JelzoString'
      Required = True
    end
    object MfCikkszamJelzesekJelzoszin: TIntegerField
      FieldName = 'Jelzoszin'
      Required = True
    end
    object MfCikkszamJelzesekJelzesKod: TSmallintField
      FieldName = 'JelzesKod'
      Required = True
    end
  end
  object MfCikkszamokDs: TDataSource
    DataSet = qMfCikkszamok
    Left = 280
    Top = 432
  end
  object JelzesQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * '
      'from MfCikkszamJelzesek'
      'order by JelzoString')
    Left = 280
    Top = 384
  end
  object Units: TTable
    DatabaseName = 'MainDb'
    IndexFieldNames = 'UnitGroup'
    MasterFields = 'UnitGroup'
    MasterSource = UnitGroupsDs
    TableName = 'dbo.Units'
    Left = 216
    Top = 560
    object UnitsUnitCode: TSmallintField
      FieldName = 'UnitCode'
      Required = True
    end
    object UnitsUnitGroup: TSmallintField
      FieldName = 'UnitGroup'
    end
    object UnitsUnitName: TStringField
      FieldName = 'UnitName'
    end
    object UnitsUnitSign: TStringField
      FieldName = 'UnitSign'
      Size = 10
    end
    object UnitsConversionFactor: TFloatField
      FieldName = 'ConversionFactor'
    end
    object UnitsConstans: TFloatField
      FieldName = 'Constans'
    end
  end
  object UnitGroups: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.UnitGroups'
    Left = 216
    Top = 512
    object UnitGroupsUnitGroup: TSmallintField
      FieldName = 'UnitGroup'
      Required = True
    end
    object UnitGroupsUnitGroupName: TStringField
      FieldName = 'UnitGroupName'
      Required = True
      Size = 50
    end
  end
  object UnitsDs: TDataSource
    DataSet = Units
    Left = 280
    Top = 576
  end
  object UnitGroupsDs: TDataSource
    DataSet = UnitGroups
    Left = 280
    Top = 528
  end
  object ConvertUnit: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_ConvertUnit'
    Left = 280
    Top = 480
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@InCode'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Outcode'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Value'
        ParamType = ptInput
      end>
  end
  object Konstrukciok: TTable
    AfterEdit = KonstrukciokAfterEdit
    BeforePost = KonstrukciokBeforePost
    OnNewRecord = KonstrukciokNewRecord
    DatabaseName = 'MainDb'
    TableName = 'dbo.Konstrukciok'
    Left = 408
    Top = 104
    object KonstrukciokKonstrLsz: TStringField
      FieldName = 'KonstrLsz'
      Required = True
      FixedChar = True
    end
    object KonstrukciokID: TFloatField
      FieldName = 'ID'
    end
    object Konstrukciokpsi: TFloatField
      FieldName = 'psi'
      DisplayFormat = ',0.##'
    end
    object Konstrukciokmpa: TFloatField
      FieldName = 'mpa'
      DisplayFormat = ',0.##'
    end
    object KonstrukciokElovulk: TBooleanField
      FieldName = 'Elovulk'
    end
    object KonstrukciokLa: TBooleanField
      FieldName = 'La'
    end
    object KonstrukciokBg: TBooleanField
      FieldName = 'Bg'
    end
    object KonstrukciokKg: TBooleanField
      FieldName = 'Kg'
    end
    object KonstrukciokPa: TBooleanField
      FieldName = 'Pa'
    end
    object KonstrukciokNorm: TBooleanField
      FieldName = 'Norm'
    end
    object KonstrukciokDragChain: TBooleanField
      FieldName = 'DragChain'
    end
    object KonstrukciokKv: TBooleanField
      FieldName = 'Kv'
    end
    object KonstrukciokBDEDesigner17K: TBooleanField
      FieldName = '17K'
    end
    object KonstrukciokLelek: TStringField
      FieldName = 'Lelek'
      Size = 50
    end
    object KonstrukciokSodrony: TStringField
      FieldName = 'Sodrony'
      Size = 50
    end
    object KonstrukciokGegecsoProfil: TStringField
      FieldName = 'GegecsoProfil'
      FixedChar = True
      Size = 10
    end
    object KonstrukciokSuly: TFloatField
      FieldName = 'Suly'
      DisplayFormat = ',0.##'
    end
    object KonstrukciokOD: TFloatField
      FieldName = 'OD'
      DisplayFormat = ',0.##'
    end
    object KonstrukciokKeszitette: TStringField
      FieldName = 'Keszitette'
      Size = 50
    end
    object KonstrukciokKeszitesIdeje: TDateTimeField
      FieldName = 'KeszitesIdeje'
    end
    object KonstrukciokModositotta: TStringField
      FieldName = 'Modositotta'
      Size = 50
    end
    object KonstrukciokModositasIdeje: TDateTimeField
      FieldName = 'ModositasIdeje'
    end
    object KonstrukciokMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
  end
  object KonstrukciokDs: TDataSource
    DataSet = Konstrukciok
    Left = 472
    Top = 120
  end
  object LelekQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct Lelek from konstrukciok order by Lelek')
    Left = 408
    Top = 248
    object LelekQryLelek: TStringField
      FieldName = 'Lelek'
      Origin = 'MAINDB.konstrukciok.Lelek'
      Size = 50
    end
  end
  object LelekQryDs: TDataSource
    DataSet = LelekQry
    Left = 472
    Top = 264
  end
  object SodronyQryDs: TDataSource
    DataSet = SodronyQry
    Left = 472
    Top = 216
  end
  object SodronyQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select distinct Sodrony from konstrukciok order by Sodrony')
    Left = 408
    Top = 200
    object SodronyQrySodrony: TStringField
      FieldName = 'Sodrony'
      Origin = 'MAINDB.konstrukciok.Sodrony'
      Size = 50
    end
  end
  object ErvtKonstrukciok: TTable
    DatabaseName = 'MainDb'
    IndexFieldNames = 'KonstrLsz'
    MasterFields = 'KonstrLsz'
    MasterSource = KonstrukciokDs
    TableName = 'dbo.ErvtKonstrukciok'
    Left = 408
    Top = 152
    object ErvtKonstrukciokKonstrLsz: TStringField
      FieldName = 'KonstrLsz'
      FixedChar = True
    end
    object ErvtKonstrukciokErvenytelenit: TStringField
      FieldName = 'Ervenytelenit'
      FixedChar = True
    end
  end
  object ErvtKonstrukciokDs: TDataSource
    DataSet = ErvtKonstrukciok
    Left = 472
    Top = 168
  end
  object Adatlap: TTable
    BeforePost = AdatlapBeforePost
    AfterPost = AdatlapAfterPost
    BeforeDelete = AdatlapBeforeDelete
    OnNewRecord = AdatlapNewRecord
    DatabaseName = 'MainDb'
    IndexName = 'PK_Adatlap'
    TableName = 'dbo.Adatlap'
    Left = 408
    Top = 296
    object AdatlapAdatlapId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'AdatlapId'
    end
    object AdatlapAdatlapSzam: TStringField
      FieldName = 'AdatlapSzam'
      OnChange = AdatlapAdatlapSzamChange
      FixedChar = True
    end
    object AdatlapValtozat: TSmallintField
      FieldName = 'Valtozat'
      OnChange = AdatlapValtozatChange
    end
    object AdatlapCegNev: TStringField
      FieldName = 'CegNev'
      OnChange = AdatlapCegNevChange
      Size = 50
    end
    object AdatlapOsztalyNev: TStringField
      FieldName = 'OsztalyNev'
      OnChange = AdatlapOsztalyNevChange
      Size = 50
    end
    object AdatlapMegnevezes: TStringField
      FieldName = 'Megnevezes'
      OnChange = AdatlapMegnevezesChange
      Size = 50
    end
    object AdatlapAltalanosNev: TStringField
      FieldName = 'AltalanosNev'
      OnChange = AdatlapAltalanosNevChange
      Size = 50
    end
    object AdatlapSzabvany: TStringField
      FieldName = 'Szabvany'
      OnChange = AdatlapSzabvanyChange
      Size = 50
    end
    object AdatlapKeszitette: TStringField
      FieldName = 'Keszitette'
      Size = 50
    end
    object AdatlapId: TFloatField
      FieldName = 'Id'
      OnChange = AdatlapIdChange
      DisplayFormat = ',0.##'
    end
    object AdatlapNyomas: TFloatField
      FieldName = 'Nyomas'
      OnChange = AdatlapNyomasChange
      DisplayFormat = ',0.##'
    end
    object AdatlapKeszitesDatuma: TDateTimeField
      FieldName = 'KeszitesDatuma'
    end
    object AdatlapEllenorizve: TBooleanField
      FieldName = 'Ellenorizve'
      OnChange = AdatlapEllenorizveChange
    end
    object AdatlapEllenorizte: TStringField
      FieldName = 'Ellenorizte'
      Size = 50
    end
    object AdatlapEllenorzesDatuma: TDateTimeField
      FieldName = 'EllenorzesDatuma'
    end
    object AdatlapEgyedi: TBooleanField
      FieldName = 'Egyedi'
    end
    object AdatlapKiadva: TBooleanField
      FieldName = 'Kiadva'
      OnChange = AdatlapKiadvaChange
    end
    object AdatlapKiadasIdopontja: TDateTimeField
      FieldName = 'KiadasIdopontja'
    end
    object AdatlapKiadta: TStringField
      FieldName = 'Kiadta'
      Size = 50
    end
    object AdatlapErvenyes: TBooleanField
      FieldName = 'Ervenyes'
      OnChange = AdatlapErvenyesChange
    end
    object AdatlapErvenyesitesIdopontja: TDateTimeField
      FieldName = 'ErvenyesitesIdopontja'
    end
    object AdatlapErvenyesitette: TStringField
      FieldName = 'Ervenyesitette'
      Size = 50
    end
  end
  object AdatlapDs: TDataSource
    DataSet = Adatlap
    Left = 472
    Top = 312
  end
  object AdatlapKonf: TTable
    BeforeInsert = AdatlapKonfBeforeInsert
    BeforeEdit = AdatlapKonfBeforeEdit
    AfterPost = AdatlapKonfAfterPost
    OnNewRecord = AdatlapKonfNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'AdatlapId'
    MasterFields = 'AdatlapId'
    MasterSource = AdatlapDs
    TableName = 'dbo.AdatlapKonf'
    Left = 408
    Top = 344
    object AdatlapKonfAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
    end
    object AdatlapKonfTetelszam: TSmallintField
      FieldName = 'Tetelszam'
      Required = True
    end
    object AdatlapKonfRajzszam: TStringField
      FieldName = 'Rajzszam'
    end
    object AdatlapKonfMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object AdatlapKonfTomloKulatm: TFloatField
      FieldName = 'TomloKulatm'
      DisplayFormat = ',0.##'
    end
    object AdatlapKonfCsatlKulatm: TFloatField
      FieldName = 'CsatlKulatm'
      DisplayFormat = ',0.##'
    end
    object AdatlapKonfTomeg: TFloatField
      FieldName = 'Tomeg'
      DisplayFormat = ',0.##'
    end
    object AdatlapKonfMinHajlitas: TFloatField
      FieldName = 'MinHajlitas'
      DisplayFormat = ',0.##'
    end
    object AdatlapKonfAnyagnormaSzam: TStringField
      FieldName = 'AnyagnormaSzam'
    end
    object AdatlapKonfMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object AdatlapKonfAktiv: TBooleanField
      FieldName = 'Aktiv'
    end
  end
  object AdatlapKonfDs: TDataSource
    DataSet = AdatlapKonf
    Left = 472
    Top = 360
  end
  object AdatlapCsom: TTable
    BeforeInsert = AdatlapCsomBeforeInsert
    BeforeEdit = AdatlapCsomBeforeEdit
    AfterPost = AdatlapCsomAfterPost
    OnNewRecord = AdatlapCsomNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'AdatlapId'
    MasterFields = 'AdatlapId'
    MasterSource = AdatlapDs
    TableName = 'dbo.AdatlapCsom'
    Left = 408
    Top = 392
    object AdatlapCsomAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
    end
    object AdatlapCsomTetelSzam: TSmallintField
      FieldName = 'TetelSzam'
      Required = True
    end
    object AdatlapCsomRekeszMeret: TStringField
      FieldName = 'RekeszMeret'
      Size = 50
    end
    object AdatlapCsomMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 200
    end
    object AdatlapCsomAktiv: TBooleanField
      FieldName = 'Aktiv'
    end
  end
  object AdatlapCsomDs: TDataSource
    DataSet = AdatlapCsom
    Left = 472
    Top = 408
  end
  object GetAllDiameters: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetAllDiameters'
    Left = 544
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end>
    object GetAllDiametersKonstrukcioKod: TStringField
      FieldName = 'KonstrukcioKod'
      Size = 30
    end
    object GetAllDiametersKompListKod: TStringField
      FieldName = 'KompListKod'
      Size = 30
    end
    object GetAllDiametersMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 40
    end
    object GetAllDiametersTomlotest: TFloatField
      FieldName = 'Tomlotest'
      DisplayFormat = ',#.##'
    end
    object GetAllDiametersCsatlakozotest: TFloatField
      FieldName = 'Csatlakozotest'
      DisplayFormat = ',#.##'
    end
  end
  object GetAllDiametersDs: TDataSource
    DataSet = GetAllDiameters
    Left = 600
    Top = 104
  end
  object AllandoAlk: TTable
    BeforeInsert = AllandoAlkBeforeInsert
    BeforeEdit = AllandoAlkBeforeEdit
    AfterEdit = AllandoAlkAfterEdit
    BeforePost = AllandoAlkBeforePost
    AfterPost = AllandoAlkAfterPost
    OnNewRecord = AllandoAlkNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'AdatlapId'
    MasterFields = 'AdatlapId'
    MasterSource = AdatlapDs
    TableName = 'dbo.AdatlapAllandoAlk'
    Left = 408
    Top = 440
    object AllandoAlkAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
      Required = True
    end
    object AllandoAlkTetelSzam: TSmallintField
      FieldName = 'TetelSzam'
      Required = True
    end
    object AllandoAlkMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object AllandoAlkRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object AllandoAlkTomeg: TFloatField
      FieldName = 'Tomeg'
      DisplayFormat = ',0.##'
    end
    object AllandoAlkMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object AllandoAlkAktiv: TBooleanField
      FieldName = 'Aktiv'
    end
    object AllandoAlkaccessoryType: TSmallintField
      FieldName = 'accessoryType'
    end
  end
  object AllandoAlkDs: TDataSource
    DataSet = AllandoAlk
    Left = 472
    Top = 456
  end
  object Query1: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from KonstrJellemzok'
      'where bodyDNb = :bodyDNb')
    Left = 544
    Top = 136
    ParamData = <
      item
        DataType = ftString
        Name = 'bodyDNb'
        ParamType = ptUnknown
      end>
    object FloatField1: TFloatField
      FieldName = 'weight'
      Origin = 'KonstrJellemzok.weight'
    end
    object FloatField2: TFloatField
      FieldName = 'MBRstorage'
      Origin = 'KonstrJellemzok.MBRstorage'
    end
  end
  object AnormaQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select AnormaKod'
      'from anyagnormafej'
      'where'
      #9'termekkod = 1 and statusz = 0'
      #9'and KonstrukcioKod = :KonstrukcioKod'
      '        and Left(AnormaKod, 1) <> '#39'x'#39
      ''
      ' '
      ' '
      ' ')
    Left = 600
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'KonstrukcioKod'
        ParamType = ptUnknown
      end>
    object AnormaQryAnormaKod: TStringField
      FieldName = 'AnormaKod'
      Origin = 'anyagnormafej.AnormaKod'
      Size = 30
    end
  end
  object AccessoriesQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select '
      
        #9'AccessoryTypeName, accessoryANb, accessoryDNb, accessoryFileH, ' +
        'accessoryFileE, '
      
        #9'description, descriptionH, descriptionE, [date], weight, priceS' +
        'AP,'
      #9'price, datePrice, material, steel, [ID], OD, L, M1, note'
      'from accessories '
      'order by'
      #9'accessoryType, accessoryDNb '
      ' ')
    Left = 544
    Top = 184
    object AccessoriesQryAccessoryTypeName: TStringField
      FieldName = 'AccessoryTypeName'
    end
    object AccessoriesQryaccessoryANb: TStringField
      FieldName = 'accessoryANb'
      Size = 10
    end
    object AccessoriesQryaccessoryDNb: TStringField
      FieldName = 'accessoryDNb'
    end
    object AccessoriesQryaccessoryFileH: TStringField
      FieldName = 'accessoryFileH'
    end
    object AccessoriesQryaccessoryFileE: TStringField
      FieldName = 'accessoryFileE'
    end
    object AccessoriesQrydescription: TStringField
      FieldName = 'description'
      Size = 40
    end
    object AccessoriesQrydescriptionH: TStringField
      FieldName = 'descriptionH'
      Size = 60
    end
    object AccessoriesQrydescriptionE: TStringField
      FieldName = 'descriptionE'
      Size = 60
    end
    object AccessoriesQrydate: TDateTimeField
      FieldName = 'date'
    end
    object AccessoriesQryweight: TFloatField
      FieldName = 'weight'
    end
    object AccessoriesQrypriceSAP: TFloatField
      FieldName = 'priceSAP'
    end
    object AccessoriesQryprice: TFloatField
      FieldName = 'price'
    end
    object AccessoriesQrydatePrice: TDateTimeField
      FieldName = 'datePrice'
    end
    object AccessoriesQrymaterial: TStringField
      FieldName = 'material'
      Size = 35
    end
    object AccessoriesQrysteel: TIntegerField
      FieldName = 'steel'
    end
    object AccessoriesQryID: TFloatField
      FieldName = 'ID'
    end
    object AccessoriesQryOD: TFloatField
      FieldName = 'OD'
    end
    object AccessoriesQryL: TFloatField
      FieldName = 'L'
    end
    object AccessoriesQryM1: TFloatField
      FieldName = 'M1'
    end
    object AccessoriesQrynote: TStringField
      FieldName = 'note'
      Size = 40
    end
  end
  object AccessoriesQryDs: TDataSource
    DataSet = AccessoriesQry
    Left = 600
    Top = 200
  end
  object ValtozoAlk: TTable
    BeforeInsert = ValtozoAlkBeforeInsert
    BeforeEdit = ValtozoAlkBeforeEdit
    AfterEdit = ValtozoAlkAfterEdit
    BeforePost = ValtozoAlkBeforePost
    AfterPost = ValtozoAlkAfterPost
    OnNewRecord = ValtozoAlkNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'AdatlapId'
    MasterFields = 'AdatlapId'
    MasterSource = AdatlapDs
    TableName = 'dbo.AdatlapValtozoAlk'
    Left = 408
    Top = 488
    object ValtozoAlkAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
      Required = True
    end
    object ValtozoAlkTetelSzam: TSmallintField
      FieldName = 'TetelSzam'
      Required = True
    end
    object ValtozoAlkMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object ValtozoAlkRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object ValtozoAlkTomeg: TFloatField
      FieldName = 'Tomeg'
      DisplayFormat = ',0.##'
    end
    object ValtozoAlkMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object ValtozoAlkAktiv: TBooleanField
      FieldName = 'Aktiv'
    end
    object ValtozoAlkaccessoryType: TSmallintField
      FieldName = 'accessoryType'
    end
  end
  object ValtozoAlkDs: TDataSource
    DataSet = ValtozoAlk
    Left = 472
    Top = 504
  end
  object AdatlapCsatl: TTable
    BeforeInsert = AdatlapCsatlBeforeInsert
    BeforeEdit = AdatlapCsatlBeforeEdit
    AfterPost = AdatlapCsatlAfterPost
    OnNewRecord = AdatlapCsatlNewRecord
    DatabaseName = 'MainDb'
    IndexFieldNames = 'AdatlapId'
    MasterFields = 'AdatlapId'
    MasterSource = AdatlapDs
    TableName = 'dbo.AdatlapCsatl'
    Left = 408
    Top = 536
    object AdatlapCsatlAdatlapId: TIntegerField
      FieldName = 'AdatlapId'
      Required = True
    end
    object AdatlapCsatlTetelSzam: TSmallintField
      FieldName = 'TetelSzam'
      Required = True
    end
    object AdatlapCsatlVegzodes: TStringField
      FieldName = 'Vegzodes'
      Size = 50
    end
    object AdatlapCsatlCsatlakozoRsz: TStringField
      FieldName = 'CsatlakozoRsz'
      Size = 50
    end
    object AdatlapCsatlMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object AdatlapCsatlOsszeallitasiRsz: TStringField
      FieldName = 'OsszeallitasiRsz'
      Size = 50
    end
    object AdatlapCsatlCsatlakozoSuly: TFloatField
      FieldName = 'CsatlakozoSuly'
    end
    object AdatlapCsatlMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object AdatlapCsatlAktiv: TBooleanField
      FieldName = 'Aktiv'
    end
  end
  object AdatlapCsatlDs: TDataSource
    DataSet = AdatlapCsatl
    Left = 472
    Top = 552
  end
  object CouplingsQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'CouplingAttrib'
      'where'
      #9'Status = 0'
      'order by'
      #9'couplingDNb'
      ' ')
    Left = 544
    Top = 232
    object CouplingsQrycouplingDNb: TStringField
      FieldName = 'couplingDNb'
      Origin = 'CouplingAttrib.couplingDNb'
    end
    object CouplingsQryendFittingName: TStringField
      FieldName = 'endFittingName'
      Origin = 'CouplingAttrib.endFittingName'
      Size = 60
    end
    object CouplingsQryendFittingDesc: TStringField
      FieldName = 'endFittingDesc'
      Origin = 'CouplingAttrib.endFittingDesc'
      Size = 90
    end
    object CouplingsQrydescription: TStringField
      FieldName = 'description'
      Origin = 'CouplingAttrib.description'
      Size = 40
    end
    object CouplingsQrydescriptionH: TStringField
      FieldName = 'descriptionH'
      Origin = 'CouplingAttrib.descriptionH'
      Size = 60
    end
    object CouplingsQrydescriptionE: TStringField
      FieldName = 'descriptionE'
      Origin = 'CouplingAttrib.descriptionE'
      Size = 60
    end
    object CouplingsQrydate: TDateTimeField
      FieldName = 'date'
      Origin = 'CouplingAttrib.date'
    end
    object CouplingsQryweight: TFloatField
      FieldName = 'weight'
      Origin = 'CouplingAttrib.weight'
      DisplayFormat = ',0.##'
    end
    object CouplingsQrysteel: TStringField
      FieldName = 'steel'
      Origin = 'CouplingAttrib.steel'
      Size = 35
    end
    object CouplingsQryfireResistant: TBooleanField
      FieldName = 'fireResistant'
      Origin = 'CouplingAttrib.fireResistant'
    end
    object CouplingsQrywelded: TBooleanField
      FieldName = 'welded'
      Origin = 'CouplingAttrib.welded'
    end
    object CouplingsQrybody: TStringField
      FieldName = 'body'
      Origin = 'CouplingAttrib.body'
    end
    object CouplingsQryIDrated: TFloatField
      FieldName = 'IDrated'
      Origin = 'CouplingAttrib.IDrated'
      DisplayFormat = ',0.##'
    end
    object CouplingsQryIdUnit: TStringField
      FieldName = 'IdUnit'
      Origin = 'CouplingAttrib.IdUnit'
      Size = 8
    end
    object CouplingsQrydp: TFloatField
      FieldName = 'dp'
      Origin = 'CouplingAttrib.dp'
      DisplayFormat = ',0.##'
    end
    object CouplingsQrytp: TFloatField
      FieldName = 'tp'
      Origin = 'CouplingAttrib.tp'
      DisplayFormat = ',0.##'
    end
    object CouplingsQryPressUnit: TStringField
      FieldName = 'PressUnit'
      Origin = 'CouplingAttrib.PressUnit'
      Size = 8
    end
    object CouplingsQryLt: TFloatField
      FieldName = 'Lt'
      Origin = 'CouplingAttrib.Lt'
      DisplayFormat = ',0.##'
    end
    object CouplingsQryEndFittingShortNameH: TStringField
      FieldName = 'EndFittingShortNameH'
      Origin = 'CouplingAttrib.EndFittingShortNameH'
      Size = 10
    end
    object CouplingsQryEndFittingNameH: TStringField
      FieldName = 'EndFittingNameH'
      Origin = 'CouplingAttrib.EndFittingNameH'
      Size = 30
    end
    object CouplingsQryEndFittingNameE: TStringField
      FieldName = 'EndFittingNameE'
      Origin = 'CouplingAttrib.EndFittingNameE'
      Size = 30
    end
    object CouplingsQryEndFittingShortNameE: TStringField
      FieldName = 'EndFittingShortNameE'
      Origin = 'CouplingAttrib.EndFittingShortNameE'
      Size = 10
    end
    object CouplingsQrystatus: TIntegerField
      FieldName = 'status'
      Origin = 'CouplingAttrib.status'
    end
  end
  object CouplingsQryDs: TDataSource
    DataSet = CouplingsQry
    Left = 600
    Top = 248
  end
  object StandardQry: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * '
      'from Standard'
      'order by standardCounter')
    Left = 544
    Top = 280
    object StandardQrystandardCounter: TIntegerField
      FieldName = 'standardCounter'
      Origin = 'Standard.standardCounter'
    end
    object StandardQrydescription: TStringField
      FieldName = 'description'
      Origin = 'Standard.description'
      Size = 40
    end
  end
  object StandardQryDs: TDataSource
    DataSet = StandardQry
    Left = 600
    Top = 296
  end
  object GetPackRevs: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select '
      #9'PackNum, PackRevision, PackVersion, Ident1, Ident2, [Name], '
      #9'OfferPerson, Note, Status, CreatorName, CreateDate'
      'from PackHead '
      'where PackNum = :PackNum'
      ' ')
    Left = 328
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PackNum'
        ParamType = ptUnknown
      end>
    object GetPackRevsPackNum: TIntegerField
      FieldName = 'PackNum'
    end
    object GetPackRevsPackRevision: TSmallintField
      FieldName = 'PackRevision'
    end
    object GetPackRevsPackVersion: TSmallintField
      FieldName = 'PackVersion'
    end
    object GetPackRevsIdent1: TStringField
      FieldName = 'Ident1'
    end
    object GetPackRevsIdent2: TStringField
      FieldName = 'Ident2'
    end
    object GetPackRevsName: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object GetPackRevsOfferPerson: TStringField
      FieldName = 'OfferPerson'
      Size = 50
    end
    object GetPackRevsNote: TStringField
      FieldName = 'Note'
      Size = 50
    end
    object GetPackRevsStatus: TSmallintField
      FieldName = 'Status'
    end
    object GetPackRevsCreatorName: TStringField
      FieldName = 'CreatorName'
      Size = 50
    end
    object GetPackRevsCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
  end
  object GetPackRevsDs: TDataSource
    DataSet = GetPackRevs
    Left = 392
    Top = 8
  end
  object AccessoryQry: TRxQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select cast(NewId() as char(50)),*'
      'from'
      '        AccessoryList'
      '%Filter')
    Macros = <
      item
        DataType = ftString
        Name = 'Filter'
        ParamType = ptInput
      end>
    Left = 216
    Top = 224
    object AccessoryQryCOLUMN1: TStringField
      FieldName = 'COLUMN1'
      FixedChar = True
      Size = 50
    end
    object AccessoryQryaccessoryCounter: TIntegerField
      FieldName = 'accessoryCounter'
    end
    object AccessoryQryaccessoryANb: TStringField
      FieldName = 'accessoryANb'
      Size = 10
    end
    object AccessoryQryaccessoryDNb: TStringField
      FieldName = 'accessoryDNb'
    end
    object AccessoryQryAccDescriptionH: TStringField
      FieldName = 'AccDescriptionH'
    end
    object AccessoryQrydescription: TStringField
      FieldName = 'description'
      Size = 40
    end
    object AccessoryQrydescriptionH: TStringField
      FieldName = 'descriptionH'
      Size = 60
    end
    object AccessoryQrydate: TDateTimeField
      FieldName = 'date'
    end
    object AccessoryQryweight: TFloatField
      FieldName = 'weight'
      DisplayFormat = '0.00,'
    end
    object AccessoryQrypriceSAP: TFloatField
      FieldName = 'priceSAP'
      DisplayFormat = '0,'
    end
    object AccessoryQryprice: TFloatField
      FieldName = 'price'
      DisplayFormat = '0,'
    end
    object AccessoryQrydatePrice: TDateTimeField
      FieldName = 'datePrice'
    end
    object AccessoryQrymaterial: TStringField
      FieldName = 'material'
      Size = 35
    end
    object AccessoryQrySteel: TStringField
      FieldName = 'Steel'
      Size = 35
    end
    object AccessoryQryID: TFloatField
      FieldName = 'ID'
      DisplayFormat = '0.00,'
    end
    object AccessoryQryOD: TFloatField
      FieldName = 'OD'
      DisplayFormat = '0.00,'
    end
    object AccessoryQryL: TFloatField
      FieldName = 'L'
      DisplayFormat = '0.00,'
    end
    object AccessoryQryM1: TFloatField
      FieldName = 'M1'
      DisplayFormat = '0.00,'
    end
    object AccessoryQrystatus: TIntegerField
      FieldName = 'status'
    end
    object AccessoryQrynote: TStringField
      FieldName = 'note'
      Size = 40
    end
    object AccessoryQryaccessoryType: TIntegerField
      FieldName = 'accessoryType'
    end
    object AccessoryQryaccessoryTypeCounter: TIntegerField
      FieldName = 'accessoryTypeCounter'
    end
  end
  object RendelesTetel: TTable
    BeforePost = RendelesTetelBeforePost
    AfterScroll = RendelesTetelAfterScroll
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = RendFejQryDs
    TableName = 'dbo.RendelesTetel'
    UpdateMode = upWhereKeyOnly
    Left = 544
    Top = 472
    object RendelesTetelRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object RendelesTetelTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Required = True
    end
    object RendelesTetelCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object RendelesTetelSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Size = 50
    end
    object RendelesTetelAtmero: TFloatField
      FieldName = 'Atmero'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelpsi: TFloatField
      FieldName = 'psi'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelMPa: TFloatField
      FieldName = 'MPa'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelLang: TBooleanField
      FieldName = 'Lang'
      Required = True
    end
    object RendelesTetelBg: TBooleanField
      FieldName = 'Bg'
      Required = True
    end
    object RendelesTetelKg: TBooleanField
      FieldName = 'Kg'
      Required = True
    end
    object RendelesTetelPa: TBooleanField
      FieldName = 'Pa'
      Required = True
    end
    object RendelesTetelKv: TBooleanField
      FieldName = 'Kv'
      Required = True
    end
    object RendelesTetelKgInter: TBooleanField
      FieldName = 'KgInter'
      Required = True
    end
    object RendelesTetelKvMua: TBooleanField
      FieldName = 'KvMua'
      Required = True
    end
    object RendelesTetelKvFedHelix: TBooleanField
      FieldName = 'KvFedHelix'
      Required = True
    end
    object RendelesTetelKvNFedHelix: TBooleanField
      FieldName = 'KvNFedHelix'
      Required = True
    end
    object RendelesTetelH2S: TSmallintField
      FieldName = 'H2S'
    end
    object RendelesTetelTipus: TStringField
      FieldName = 'Tipus'
      Size = 50
    end
    object RendelesTetelCsatl1: TStringField
      FieldName = 'Csatl1'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelCsatl1Rsz: TStringField
      FieldName = 'Csatl1Rsz'
      OnChange = AccListItemChanged
    end
    object RendelesTetelCsatl2: TStringField
      FieldName = 'Csatl2'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
      OnChange = AccListItemChanged
    end
    object RendelesTetelDarabSzam: TFloatField
      FieldName = 'DarabSzam'
    end
    object RendelesTetelHossz: TFloatField
      FieldName = 'Hossz'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
    object RendelesTetelTErtek: TFloatField
      FieldName = 'TErtek'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelTPenznem: TStringField
      FieldName = 'TPenznem'
      Size = 50
    end
    object RendelesTetelOsszeallRsz: TStringField
      FieldName = 'OsszeallRsz'
      OnChange = AccListItemChanged
    end
    object RendelesTetelKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelKonstrukcio2: TStringField
      FieldName = 'Konstrukcio2'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelMarkingId: TIntegerField
      FieldName = 'MarkingId'
    end
    object RendelesTetelTKonfekcio: TStringField
      FieldName = 'TKonfekcio'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelTKonfekDatum: TDateTimeField
      FieldName = 'TKonfekDatum'
    end
    object RendelesTetelNormaIdo: TFloatField
      FieldName = 'NormaIdo'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelDbjDatum: TDateTimeField
      FieldName = 'DbjDatum'
    end
    object RendelesTetelMuvDatum: TDateTimeField
      FieldName = 'MuvDatum'
    end
    object RendelesTetelKonstrDatum: TDateTimeField
      FieldName = 'KonstrDatum'
    end
    object RendelesTetelFszHatarido: TDateTimeField
      FieldName = 'FszHatarido'
    end
    object RendelesTetelFszBeerk: TDateTimeField
      FieldName = 'FszBeerk'
    end
    object RendelesTetelAnyag: TStringField
      FieldName = 'Anyag'
      Size = 50
    end
    object RendelesTetelCsomagolas: TStringField
      FieldName = 'Csomagolas'
      Size = 50
    end
    object RendelesTetelEgyeb: TStringField
      FieldName = 'Egyeb'
      Size = 50
    end
    object RendelesTetelTMegj: TStringField
      FieldName = 'TMegj'
      Size = 50
    end
    object RendelesTetelTRogzit: TStringField
      FieldName = 'TRogzit'
      Size = 50
    end
    object RendelesTetelTRogzIdo: TDateTimeField
      FieldName = 'TRogzIdo'
    end
    object RendelesTetelTModosit: TStringField
      FieldName = 'TModosit'
      Size = 50
    end
    object RendelesTetelTModIdo: TDateTimeField
      FieldName = 'TModIdo'
    end
    object RendelesTetelModMezok: TFloatField
      FieldName = 'ModMezok'
    end
    object RendelesTetelTorolt: TBooleanField
      FieldName = 'Torolt'
      Required = True
    end
    object RendelesTetelBeszolg: TBooleanField
      FieldName = 'Beszolg'
      Required = True
    end
    object RendelesTetelTModHatarido: TDateTimeField
      FieldName = 'TModHatarido'
    end
    object RendelesTetelBeszolgIdo: TDateTimeField
      FieldName = 'BeszolgIdo'
    end
    object RendelesTetelBeszolgDb: TFloatField
      FieldName = 'BeszolgDb'
    end
    object RendelesTetelBeszolgHossz: TFloatField
      FieldName = 'BeszolgHossz'
    end
    object RendelesTetelTomeg: TFloatField
      FieldName = 'Tomeg'
      DisplayFormat = ',0.###'
    end
    object RendelesTetelGyartasInd: TDateTimeField
      FieldName = 'GyartasInd'
    end
    object RendelesTetelBefejezoMuv: TDateTimeField
      FieldName = 'BefejezoMuv'
    end
    object RendelesTetelAccListExist: TBooleanField
      FieldName = 'AccListExist'
      OnChange = RendelesTetelAccListExistChange
    end
    object RendelesTetelAccListDate: TDateTimeField
      FieldName = 'AccListDate'
    end
    object RendelesTetelAccCreator: TStringField
      FieldName = 'AccCreator'
      Size = 50
    end
    object RendelesTetelBelsoHuvely: TStringField
      FieldName = 'BelsoHuvely'
      OnChange = AccListItemChanged
    end
    object RendelesTetelBhAnyag: TStringField
      FieldName = 'BhAnyag'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelHuvely: TStringField
      FieldName = 'Huvely'
      OnChange = AccListItemChanged
    end
    object RendelesTetelSpiralkup: TStringField
      FieldName = 'Spiralkup'
      OnChange = AccListItemChanged
    end
    object RendelesTetelEmelobilincs: TStringField
      FieldName = 'Emelobilincs'
      OnChange = AccListItemChanged
    end
    object RendelesTetelEbMeret: TFloatField
      FieldName = 'EbMeret'
      OnChange = AccListItemChanged
      DisplayFormat = '0.##'
    end
    object RendelesTetelVedoHuvely: TStringField
      FieldName = 'VedoHuvely'
      OnChange = AccListItemChanged
    end
    object RendelesTetelOsztottHuvely: TStringField
      FieldName = 'OsztottHuvely'
      OnChange = AccListItemChanged
    end
    object RendelesTetelBiztBilincs: TStringField
      FieldName = 'BiztBilincs'
      OnChange = AccListItemChanged
    end
    object RendelesTetelBbMeret: TFloatField
      FieldName = 'BbMeret'
      OnChange = AccListItemChanged
      DisplayFormat = '0.##'
    end
    object RendelesTetelAtveteliKesz: TBooleanField
      FieldName = 'AtveteliKesz'
      OnChange = RendelesTetelAtveteliKeszChange
    end
    object RendelesTetelAtveteliIdopont: TDateTimeField
      FieldName = 'AtveteliIdopont'
    end
    object RendelesTetelAtvetelitKeszitette: TStringField
      FieldName = 'AtvetelitKeszitette'
      Size = 50
    end
    object RendelesTetelTomitoGyuru1: TStringField
      FieldName = 'TomitoGyuru1'
    end
    object RendelesTetelTomitoGyuru2: TStringField
      FieldName = 'TomitoGyuru2'
    end
    object RendelesTetelFeneklap1: TStringField
      FieldName = 'Feneklap1'
    end
    object RendelesTetelFeneklap2: TStringField
      FieldName = 'Feneklap2'
    end
    object RendelesTetelNyomPrBilincs1: TStringField
      FieldName = 'NyomPrBilincs1'
    end
    object RendelesTetelNyomPrBilincs2: TStringField
      FieldName = 'NyomPrBilincs2'
    end
    object RendelesTetelInspector: TStringField
      FieldName = 'Inspector'
      OnChange = AccListItemChanged
      Size = 50
    end
    object RendelesTetelInspectorMegj: TStringField
      FieldName = 'InspectorMegj'
      Size = 200
    end
    object RendelesTetelStamp: TBytesField
      FieldName = 'Stamp'
      Required = True
      Size = 8
    end
    object RendelesTetelSapTypeOfCoupling1: TStringField
      FieldName = 'SapTypeOfCoupling1'
      Size = 250
    end
    object RendelesTetelSapTypeOfCoupling2: TStringField
      FieldName = 'SapTypeOfCoupling2'
      Size = 250
    end
    object RendelesTetelTAutoUpdate: TBooleanField
      FieldName = 'TAutoUpdate'
      Required = True
      Visible = False
    end
    object RendelesTetelMarking: TStringField
      FieldName = 'Marking'
      Size = 50
    end
    object RendelesTetelStandard: TStringField
      FieldName = 'Standard'
      Size = 50
    end
    object RendelesTetelStandardText: TStringField
      FieldName = 'StandardText'
      Size = 50
    end
    object RendelesTetelTypeOfPacking: TStringField
      FieldName = 'TypeOfPacking'
      Size = 50
    end
    object RendelesTetelWorkingPressure: TFloatField
      FieldName = 'WorkingPressure'
      DisplayFormat = ',0.##'
    end
    object RendelesTetelWorkingPressureUnit: TStringField
      FieldName = 'WorkingPressureUnit'
      FixedChar = True
      Size = 10
    end
    object RendelesTetelDesignPressure: TFloatField
      FieldName = 'DesignPressure'
      DisplayFormat = ',0.##'
    end
    object RendelesTetelDesignPressureUnit: TStringField
      FieldName = 'DesignPressureUnit'
      FixedChar = True
      Size = 10
    end
    object RendelesTetelTestPressure: TFloatField
      FieldName = 'TestPressure'
      DisplayFormat = ',0.##'
    end
    object RendelesTetelTestPressureUnit: TStringField
      FieldName = 'TestPressureUnit'
      FixedChar = True
      Size = 10
    end
    object RendelesTetelSafetyFactor: TFloatField
      FieldName = 'SafetyFactor'
      DisplayFormat = ',0.##'
    end
    object RendelesTetelTypeOfLining: TStringField
      FieldName = 'TypeOfLining'
      Size = 50
    end
    object RendelesTetelMaxDesignTemperature: TFloatField
      FieldName = 'MaxDesignTemperature'
    end
    object RendelesTetelMinDesignTemperature: TFloatField
      FieldName = 'MinDesignTemperature'
    end
    object RendelesTetelAccListMailDate: TDateTimeField
      FieldName = 'AccListMailDate'
    end
    object RendelesTetelAccListMailSender: TStringField
      FieldName = 'AccListMailSender'
      Size = 50
    end
    object RendelesTetelAccListMailSent: TBooleanField
      FieldName = 'AccListMailSent'
    end
    object RendelesTetelCsatl1MaxAtmero: TFloatField
      FieldName = 'Csatl1MaxAtmero'
      DisplayFormat = ',0.#'
    end
    object RendelesTetelCsatl1MaxAtmeroMe: TIntegerField
      FieldName = 'Csatl1MaxAtmeroMe'
    end
    object RendelesTetelCsatl2MaxAtmero: TFloatField
      FieldName = 'Csatl2MaxAtmero'
      DisplayFormat = ',0.#'
    end
    object RendelesTetelCsatl2MaxAtmeroMe: TIntegerField
      FieldName = 'Csatl2MaxAtmeroMe'
    end
    object RendelesTetelKonstrukcioMaxAtmero: TFloatField
      FieldName = 'KonstrukcioMaxAtmero'
    end
    object RendelesTetelKonstrukcioMaxAtmeroMe: TIntegerField
      FieldName = 'KonstrukcioMaxAtmeroMe'
    end
    object RendelesTetelEgyebek: TMemoField
      FieldName = 'Egyebek'
      LookupCache = True
      BlobType = ftMemo
      Size = 1
    end
  end
  object RendFejQryDs: TDataSource
    DataSet = HSOrderHeadList
    Left = 600
    Top = 344
  end
  object RendelesTetelDs: TDataSource
    DataSet = RendelesTetel
    Left = 600
    Top = 488
  end
  object Csatlakozok: TTable
    BeforeInsert = CheckDesigner
    BeforeEdit = CheckDesigner
    BeforePost = CsatlakozokBeforePost
    BeforeDelete = CsatlakozokBeforeDelete
    OnNewRecord = CsatlakozokNewRecord
    DatabaseName = 'MainDb'
    FilterOptions = [foCaseInsensitive]
    TableName = 'dbo.CsatlakozoRajzok'
    Left = 544
    Top = 40
    object CsatlakozokSrsz: TIntegerField
      FieldName = 'Srsz'
      ReadOnly = True
    end
    object Csatlakozokinch: TFloatField
      FieldName = 'inch'
    end
    object Csatlakozokpsi: TFloatField
      FieldName = 'psi'
      DisplayFormat = ',0.##'
    end
    object CsatlakozokMPa: TFloatField
      FieldName = 'MPa'
      DisplayFormat = ',0.##'
    end
    object CsatlakozokRendSz: TStringField
      FieldName = 'RendSz'
      Size = 10
    end
    object CsatlakozokCsatlRsz: TStringField
      FieldName = 'CsatlRsz'
      Size = 25
    end
    object CsatlakozokTechLap: TStringField
      FieldName = 'TechLap'
      Size = 25
    end
    object CsatlakozokVegzodes: TStringField
      FieldName = 'Vegzodes'
      Size = 50
    end
    object CsatlakozokOsszRsz: TStringField
      FieldName = 'OsszRsz'
      Size = 50
    end
    object CsatlakozokKonfekcio: TStringField
      FieldName = 'Konfekcio'
      Size = 50
    end
    object CsatlakozokTipus: TStringField
      FieldName = 'Tipus'
      Size = 50
    end
    object CsatlakozokBg: TBooleanField
      FieldName = 'Bg'
    end
    object CsatlakozokKg: TBooleanField
      FieldName = 'Kg'
    end
    object CsatlakozokLa: TBooleanField
      FieldName = 'La'
    end
    object CsatlakozokCsLang: TBooleanField
      FieldName = 'CsLang'
    end
    object CsatlakozokHe: TBooleanField
      FieldName = 'He'
    end
    object CsatlakozokPA: TBooleanField
      FieldName = 'PA'
    end
    object CsatlakozokElov: TBooleanField
      FieldName = 'Elov'
    end
    object CsatlakozokDrag: TBooleanField
      FieldName = 'Drag'
    end
    object CsatlakozokNagyh: TBooleanField
      FieldName = 'Nagyh'
    end
    object CsatlakozokFuth: TBooleanField
      FieldName = 'Futh'
    end
    object CsatlakozokSSRC: TBooleanField
      FieldName = 'SSRC'
      Required = True
    end
    object CsatlakozokMP: TBooleanField
      FieldName = 'MP'
      Required = True
    end
    object CsatlakozokDatum: TDateTimeField
      FieldName = 'Datum'
    end
    object CsatlakozokSigno: TStringField
      FieldName = 'Signo'
      Size = 30
    end
    object CsatlakozokMaxOD: TFloatField
      FieldName = 'MaxOD'
    end
    object CsatlakozokMegj: TStringField
      FieldName = 'Megj'
      Size = 200
    end
    object CsatlakozokCsatlErv: TBooleanField
      FieldName = 'CsatlErv'
      Required = True
    end
    object CsatlakozokOsszeallErv: TBooleanField
      FieldName = 'OsszeallErv'
      Required = True
    end
    object CsatlakozokPSL_szint: TStringField
      FieldName = 'PSL_szint'
      Size = 50
    end
  end
  object CsatlakozokDs: TDataSource
    DataSet = Csatlakozok
    Left = 600
    Top = 56
  end
  object AccessoryTypeDs: TDataSource
    DataSet = AccessoryType
    Left = 472
    Top = 600
  end
  object RendEgyeb: TTable
    BeforePost = RendEgyebBeforePost
    AfterPost = RendEgyebAfterPost
    OnCalcFields = RendEgyebCalcFields
    OnNewRecord = RendEgyebNewRecord
    AutoRefresh = True
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz;TetelSrsz'
    MasterFields = 'RendelesAz;TetelSrsz'
    MasterSource = RendelesTetelDs
    TableName = 'dbo.RendelesTetelEgyebek'
    Left = 544
    Top = 376
    object RendEgyebRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object RendEgyebTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Required = True
    end
    object RendEgyebSorszam: TIntegerField
      FieldName = 'Sorszam'
      KeyFields = 'Sorszam'
      ReadOnly = True
    end
    object RendEgyebMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object RendEgyebDarabszam: TSmallintField
      FieldName = 'Darabszam'
    end
    object RendEgyebDbFuggo: TBooleanField
      FieldName = 'DbFuggo'
    end
    object RendEgyebRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object RendEgyebMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object RendEgyebActive: TBooleanField
      FieldName = 'Active'
    end
    object RendEgyebKiszallitando: TBooleanField
      FieldName = 'Kiszallitando'
    end
    object RendEgyebCreatorName: TStringField
      FieldName = 'CreatorName'
      Size = 50
    end
    object RendEgyebCreateDate: TDateTimeField
      FieldName = 'CreateDate'
    end
    object RendEgyebOsszDb: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'OsszDb'
      Calculated = True
    end
    object RendEgyebTartozekId: TIntegerField
      FieldName = 'TartozekId'
    end
    object RendEgyebTomloVegId: TSmallintField
      FieldName = 'TomloVegId'
    end
  end
  object RendEgyebDs: TDataSource
    DataSet = RendEgyeb
    Left = 600
    Top = 392
  end
  object RendMod: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_RendelesModositasok'
    Left = 544
    Top = 520
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Rendelesszam'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TetelSorszam'
        ParamType = ptInput
      end>
    object RendModRendelesszam: TStringField
      FieldName = 'Rendelesszam'
      Size = 50
    end
    object RendModTetelSorszam: TIntegerField
      FieldName = 'TetelSorszam'
    end
    object RendModSorszam: TIntegerField
      FieldName = 'Sorszam'
    end
    object RendModFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object RendModOldValue: TStringField
      FieldName = 'OldValue'
      Size = 50
    end
    object RendModNewValue: TStringField
      FieldName = 'NewValue'
      Size = 50
    end
    object RendModModifierName: TStringField
      FieldName = 'ModifierName'
      Size = 50
    end
    object RendModModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
    end
    object RendModId: TIntegerField
      FieldName = 'Id'
    end
  end
  object RendModDs: TDataSource
    DataSet = RendMod
    Left = 600
    Top = 536
  end
  object RendMin: TTable
    BeforePost = RendMinBeforePost
    OnCalcFields = RendMinCalcFields
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = dsRendRaktar
    TableName = 'dbo.RendelesTetelMinosites'
    Left = 544
    Top = 576
    object RendMinRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object RendMinTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object RendMinMinId: TIntegerField
      FieldName = 'MinId'
    end
    object RendMinTipusnev: TStringField
      FieldName = 'Tipusnev'
      Size = 30
    end
    object RendMinMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object RendMinRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object RendMinCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object RendMinDarabszam: TSmallintField
      FieldName = 'Darabszam'
    end
    object RendMinKiadottDarab: TSmallintField
      FieldName = 'KiadottDarab'
    end
    object RendMinEgyenleg: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Egyenleg'
      Calculated = True
    end
    object RendMinBizonylatszam: TStringField
      FieldName = 'Bizonylatszam'
      Size = 50
    end
  end
  object RendMinDs: TDataSource
    DataSet = RendMin
    Left = 600
    Top = 584
  end
  object GetMaterialNum: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetMaterialNum'
    Left = 544
    Top = 632
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@pattern'
        ParamType = ptInput
      end>
  end
  object RendSarzs: TTable
    AfterPost = RendSarzsAfterPost
    DatabaseName = 'MainDb'
    IndexFieldNames = 'MinId'
    MasterFields = 'MinId'
    MasterSource = RendMinDs
    TableName = 'dbo.RendelesTetelSarzs'
    Left = 664
    Top = 16
    object RendSarzsMinId: TIntegerField
      FieldName = 'MinId'
    end
    object RendSarzsMinItemId: TSmallintField
      FieldName = 'MinItemId'
    end
    object RendSarzsSarzsszam: TStringField
      FieldName = 'Sarzsszam'
      Size = 50
    end
    object RendSarzsMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
  end
  object RendSarzsDs: TDataSource
    DataSet = RendSarzs
    Left = 744
    Top = 40
  end
  object dsAnyagKi: TDataSource
    DataSet = tAnyagKi
    Left = 744
    Top = 88
  end
  object tAnyagKi: TTable
    AfterPost = tAnyagKiAfterPost
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz'
    MasterFields = 'RendelesAz'
    MasterSource = RendFejQryDs
    TableName = 'dbo.AnyagKiadas'
    Left = 664
    Top = 64
    object tAnyagKiRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Required = True
    end
    object tAnyagKiMinId: TIntegerField
      FieldName = 'MinId'
      Required = True
    end
    object tAnyagKiBizonylatszam: TIntegerField
      FieldName = 'Bizonylatszam'
      Required = True
    end
    object tAnyagKiTipusNev: TStringField
      FieldKind = fkLookup
      FieldName = 'TipusNev'
      LookupDataSet = RendMin
      LookupKeyFields = 'MinId'
      LookupResultField = 'Tipusnev'
      KeyFields = 'MinId'
      Size = 30
      Lookup = True
    end
    object tAnyagKiMegnevezes: TStringField
      FieldKind = fkLookup
      FieldName = 'Megnevezes'
      LookupDataSet = RendMin
      LookupKeyFields = 'MinId'
      LookupResultField = 'Megnevezes'
      KeyFields = 'MinId'
      Size = 30
      Lookup = True
    end
    object tAnyagKiRajzszam: TStringField
      FieldKind = fkLookup
      FieldName = 'Rajzszam'
      LookupDataSet = RendMin
      LookupKeyFields = 'MinId'
      LookupResultField = 'Rajzszam'
      KeyFields = 'MinId'
      Size = 50
      Lookup = True
    end
    object tAnyagKiKiadottDarab: TIntegerField
      FieldName = 'KiadottDarab'
    end
    object tAnyagKiDarabszam: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Darabszam'
      LookupDataSet = RendMin
      LookupKeyFields = 'MinId'
      LookupResultField = 'Darabszam'
      KeyFields = 'MinId'
      Lookup = True
    end
  end
  object qRendMin: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'rf.RendelesAz, rf.RendSz, rf.ErtTerulet,'
      #9'rt.TetelSrsz, rt.Specifikacio,'
      #9'rm.*, rs.*'
      'from'
      #9'RendelesFej rf, RendelesTetel rt, RendelesTetelMinosites rm'
      #9'Left Outer Join RendelesTetelSarzs rs On (rm.MinId = rs.MinId)'
      'Where'
      #9'rm.RendelesAz = :RendelesAz'
      #9'and rf.RendelesAz = rm.RendelesAz'
      #9'and rf.RendelesAz = rt.RendelesAz'
      #9'and rt.TetelSrsz = rm.TetelSrsz'
      'Order by'
      #9'rt.TetelSrsz, rm.MinId, rs.MinItemId')
    Left = 672
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end>
    object qRendMinRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesTetelMinosites.RendelesAz'
    end
    object qRendMinRendSz: TStringField
      FieldName = 'RendSz'
      Origin = 'MAINDB.RendelesTetelMinosites.TetelSrsz'
    end
    object qRendMinTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.RendelesTetelMinosites.Tipusnev'
    end
    object qRendMinErtTerulet: TStringField
      FieldName = 'ErtTerulet'
      Origin = 'MAINDB.RendelesTetelMinosites.MinId'
    end
    object qRendMinSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Origin = 'MAINDB.RendelesTetelMinosites.Megnevezes'
      Size = 50
    end
    object qRendMinMinId: TIntegerField
      FieldName = 'MinId'
      Origin = 'MAINDB.RendelesTetelMinosites.Darabszam'
    end
    object qRendMinTipusnev: TStringField
      FieldName = 'Tipusnev'
      Origin = 'MAINDB.RendelesTetelMinosites.KiadottDarab'
      Size = 30
    end
    object qRendMinMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Origin = 'MAINDB.RendelesTetelSarzs.MinId'
      Size = 50
    end
    object qRendMinRajzszam: TStringField
      FieldName = 'Rajzszam'
      Origin = 'MAINDB.RendelesTetelSarzs.MinItemId'
      Size = 50
    end
    object qRendMinCikkszam: TStringField
      FieldName = 'Cikkszam'
      Origin = 'MAINDB.RendelesTetelSarzs.Sarzsszam'
    end
    object qRendMinDarabszam: TSmallintField
      FieldName = 'Darabszam'
      Origin = 'MAINDB.RendelesTetelSarzs.Megjegyzes'
    end
    object qRendMinKiadottDarab: TSmallintField
      FieldName = 'KiadottDarab'
      Origin = 'MAINDB.RendelesFej.RendelesAz'
    end
    object qRendMinMinItemId: TSmallintField
      FieldName = 'MinItemId'
      Origin = 'MAINDB.RendelesFej.ErtTerulet'
    end
    object qRendMinSarzsszam: TStringField
      FieldName = 'Sarzsszam'
      Origin = 'MAINDB.RendelesTetel.TetelSrsz'
      Size = 50
    end
    object qRendMinMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.RendelesTetel.Specifikacio'
      Size = 50
    end
  end
  object qRendMinMod: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select rf.RendSz, rmm.*'
      'from'
      #9'RendelesFej rf, RendelesMinMod rmm'
      'where'
      #9'rf.RendelesAz = :RendelesAz and '
      #9'rf.RendelesAz = rmm.RendelesAz'
      'order by rmm.TetelSrsz, rmm.MinId, rmm.MinItemId, rmm.ModifyDate'
      '')
    Left = 672
    Top = 168
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end>
    object qRendMinModRendSz: TStringField
      FieldName = 'RendSz'
      Origin = 'MAINDB.RendelesMinMod.RendelesAz'
    end
    object qRendMinModRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesMinMod.TetelSrsz'
    end
    object qRendMinModTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.RendelesMinMod.MinId'
    end
    object qRendMinModMinId: TIntegerField
      FieldName = 'MinId'
      Origin = 'MAINDB.RendelesMinMod.MinItemId'
    end
    object qRendMinModMinItemId: TSmallintField
      FieldName = 'MinItemId'
      Origin = 'MAINDB.RendelesMinMod.FieldName'
    end
    object qRendMinModFieldName: TStringField
      FieldName = 'FieldName'
      Origin = 'MAINDB.RendelesMinMod.OldValue'
      Size = 50
    end
    object qRendMinModOldValue: TStringField
      FieldName = 'OldValue'
      Origin = 'MAINDB.RendelesMinMod.NewValue'
      Size = 50
    end
    object qRendMinModNewValue: TStringField
      FieldName = 'NewValue'
      Origin = 'MAINDB.RendelesMinMod.ModifierName'
      Size = 50
    end
    object qRendMinModModifierName: TStringField
      FieldName = 'ModifierName'
      Origin = 'MAINDB.RendelesMinMod.ModifyDate'
      Size = 50
    end
    object qRendMinModModifyDate: TDateTimeField
      FieldName = 'ModifyDate'
      Origin = 'MAINDB.RendelesFej.RendSz'
    end
    object qRendMinModMinTypeName: TStringField
      FieldKind = fkLookup
      FieldName = 'MinTypeName'
      LookupDataSet = RendMin
      LookupKeyFields = 'MinId'
      LookupResultField = 'Tipusnev'
      KeyFields = 'MinId'
      Size = 30
      Lookup = True
    end
  end
  object qKiadatlan: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select '
      #9'rf.Rendsz, rm.*, '
      #9'Kiadando = IsNull(rm.Darabszam, 0) - IsNull(rm.KiadottDarab, 0)'
      'from RendelesFej rf, RendelesTetelMinosites rm'
      'where'
      #9'rf.RendelesAz = rm.RendelesAz '
      #9'and IsNull(rm.KiadottDarab, 0) < IsNull(rm.Darabszam, 0)'
      'order by'
      #9'rf.RendelesAz')
    Left = 672
    Top = 216
    object qKiadatlanRendsz: TStringField
      FieldName = 'Rendsz'
    end
    object qKiadatlanRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object qKiadatlanTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object qKiadatlanMinId: TIntegerField
      FieldName = 'MinId'
    end
    object qKiadatlanTipusnev: TStringField
      FieldName = 'Tipusnev'
      Size = 30
    end
    object qKiadatlanMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object qKiadatlanRajzszam: TStringField
      FieldName = 'Rajzszam'
      Size = 50
    end
    object qKiadatlanCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object qKiadatlanDarabszam: TSmallintField
      FieldName = 'Darabszam'
    end
    object qKiadatlanKiadottDarab: TSmallintField
      FieldName = 'KiadottDarab'
    end
    object qKiadatlanKiadando: TSmallintField
      FieldName = 'Kiadando'
    end
  end
  object dsKiadatlan: TDataSource
    DataSet = qKiadatlan
    Left = 736
    Top = 232
  end
  object spGeneral: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_CopyDataSheet'
    Left = 48
    Top = 544
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@SourceId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@DestId'
        ParamType = ptInput
      end>
  end
  object qRendRaktar: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select '
      
        #9'distinct rf.RendelesAz, rf.RendSz, rf.PhxRendSz, rf.VevoRendSz,' +
        ' rf.Vevo, rf.Felhasznalo, rf.ErtTerulet, rf.RMegj'
      'from '
      #9'RendelesFej rf, RendelesTetel rt'
      'where'
      '     '#9'rf.termekkod = 1 and rf.torolt = 0'
      #9'and rt.RendelesAz = rf.RendelesAz'
      #9'and rt.Torolt = 0'
      #9'and AccListExist = 1 '
      'order by'
      #9'RendSz desc '
      ' ')
    Left = 672
    Top = 264
    object qRendRaktarRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesFej.RendelesAz'
    end
    object qRendRaktarRendSz: TStringField
      FieldName = 'RendSz'
      Origin = 'MAINDB.RendelesFej.RendSz'
    end
    object qRendRaktarPhxRendSz: TStringField
      FieldName = 'PhxRendSz'
      Origin = 'MAINDB.RendelesFej.PhxRendSz'
    end
    object qRendRaktarVevoRendSz: TStringField
      FieldName = 'VevoRendSz'
      Origin = 'MAINDB.RendelesFej.VevoRendSz'
    end
    object qRendRaktarVevo: TStringField
      FieldName = 'Vevo'
      Origin = 'MAINDB.RendelesFej.Vevo'
      Size = 50
    end
    object qRendRaktarFelhasznalo: TStringField
      FieldName = 'Felhasznalo'
      Origin = 'MAINDB.RendelesFej.Felhasznalo'
      Size = 50
    end
    object qRendRaktarErtTerulet: TStringField
      FieldName = 'ErtTerulet'
      Origin = 'MAINDB.RendelesFej.ErtTerulet'
    end
    object qRendRaktarRMegj: TStringField
      FieldName = 'RMegj'
      Origin = 'MAINDB.RendelesFej.RMegj'
      Size = 50
    end
  end
  object dsRendRaktar: TDataSource
    DataSet = qRendRaktar
    Left = 736
    Top = 280
  end
  object Query2: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select '
      
        #9'distinct rf.RendelesAz, rf.RendSz, rf.PhxRendSz, rf.VevoRendSz,' +
        ' rf.Vevo, rf.Felhasznalo, rf.ErtTerulet, rf.RMegj'
      'from '
      #9'RendelesFej rf, RendelesTetel rt'
      'where'
      '     '#9'rf.termekkod = 1 and rf.torolt = 0'
      #9'and rt.RendelesAz = rf.RendelesAz'
      #9'and rt.Torolt = 0'
      #9'and AccListExist = 1 '
      'order by'
      #9'RendSz desc '
      ' ')
    Left = 672
    Top = 312
    object IntegerField1: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.RendelesFej.RendelesAz'
    end
    object StringField1: TStringField
      FieldName = 'RendSz'
      Origin = 'MAINDB.RendelesFej.RendSz'
    end
    object StringField2: TStringField
      FieldName = 'PhxRendSz'
      Origin = 'MAINDB.RendelesFej.PhxRendSz'
    end
    object StringField3: TStringField
      FieldName = 'VevoRendSz'
      Origin = 'MAINDB.RendelesFej.VevoRendSz'
    end
    object StringField4: TStringField
      FieldName = 'Vevo'
      Origin = 'MAINDB.RendelesFej.Vevo'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'Felhasznalo'
      Origin = 'MAINDB.RendelesFej.Felhasznalo'
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'ErtTerulet'
      Origin = 'MAINDB.RendelesFej.ErtTerulet'
    end
    object StringField7: TStringField
      FieldName = 'RMegj'
      Origin = 'MAINDB.RendelesFej.RMegj'
      Size = 50
    end
  end
  object spConstrSearch: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_ConstrSearch'
    Left = 48
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@Constr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@CsatRsz'
        ParamType = ptInput
      end>
    object spConstrSearchNumber: TFloatField
      FieldName = 'Number'
    end
    object spConstrSearchRendsz: TStringField
      FieldName = 'Rendsz'
    end
    object spConstrSearchPhxRendsz: TStringField
      FieldName = 'PhxRendsz'
    end
    object spConstrSearchTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object spConstrSearchKonstrukcio: TStringField
      FieldName = 'Konstrukcio'
      Size = 50
    end
    object spConstrSearchKonstrukcio2: TStringField
      FieldName = 'Konstrukcio2'
      Size = 50
    end
    object spConstrSearchCsatl1Rsz: TStringField
      FieldName = 'Csatl1Rsz'
    end
    object spConstrSearchCsatl2Rsz: TStringField
      FieldName = 'Csatl2Rsz'
    end
    object spConstrSearchHossz: TFloatField
      FieldName = 'Hossz'
    end
    object spConstrSearchHosszMe: TStringField
      FieldName = 'HosszMe'
      Size = 10
    end
    object spConstrSearchPackStr: TStringField
      FieldName = 'PackStr'
      Size = 250
    end
  end
  object dsConstrSearch: TDataSource
    DataSet = spConstrSearch
    Left = 112
    Top = 512
  end
  object tInspektorok: TTable
    DatabaseName = 'MainDb'
    TableName = 'dbo.Inspektorok'
    Left = 672
    Top = 360
    object tInspektorokInspectorId: TIntegerField
      FieldName = 'InspectorId'
      Required = True
    end
    object tInspektorokInspectorName: TStringField
      FieldName = 'InspectorName'
      Size = 50
    end
  end
  object dsInspektorok: TDataSource
    DataSet = tInspektorok
    Left = 736
    Top = 376
  end
  object spMatNumSearch: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_MatNumSearch'
    Left = 48
    Top = 592
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Cikkszam'
        ParamType = ptInput
      end>
    object spMatNumSearchRendsz: TStringField
      FieldName = 'Rendsz'
    end
    object spMatNumSearchPhxRendsz: TStringField
      FieldName = 'PhxRendsz'
    end
    object spMatNumSearchTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object spMatNumSearchCikkszam: TStringField
      FieldName = 'Cikkszam'
    end
    object spMatNumSearchSpecifikacio: TStringField
      FieldName = 'Specifikacio'
      Size = 100
    end
  end
  object dsMatNumSearch: TDataSource
    DataSet = spMatNumSearch
    Left = 112
    Top = 608
  end
  object updPackHead: TUpdateSQL
    ModifySQL.Strings = (
      'update PackHead'
      'set'
      '  PackNum = :PackNum,'
      '  PackRevision = :PackRevision,'
      '  PackVersion = :PackVersion,'
      '  Ident1 = :Ident1,'
      '  Ident2 = :Ident2,'
      '  Name = :Name,'
      '  OfferPerson = :OfferPerson,'
      '  Note = :Note,'
      '  Status = :Status,'
      '  CreatorName = :CreatorName,'
      '  CreateDate = :CreateDate'
      'where'
      '  PackId = :OLD_PackId')
    InsertSQL.Strings = (
      'insert into PackHead'
      
        '  (PackNum, PackRevision, PackVersion, Ident1, Ident2, Name, Off' +
        'erPerson, '
      '   Note, Status, CreatorName, CreateDate)'
      'values'
      
        '  (:PackNum, :PackRevision, :PackVersion, :Ident1, :Ident2, :Nam' +
        'e, :OfferPerson, '
      '   :Note, :Status, :CreatorName, :CreateDate)')
    DeleteSQL.Strings = (
      'delete from PackHead'
      'where'
      '  PackId = :OLD_PackId')
    Left = 112
    Top = 128
  end
  object qPackHead: TQuery
    CachedUpdates = True
    BeforePost = qPackHeadBeforePost
    AfterPost = qPackHeadAfterPost
    BeforeDelete = qPackHeadBeforeDelete
    AfterDelete = qPackHeadAfterDelete
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select * from PackHead order by PackId')
    UpdateObject = updPackHead
    Left = 48
    Top = 120
    object qPackHeadPackId: TIntegerField
      FieldName = 'PackId'
      Origin = 'MAINDB.PackHead.PackId'
    end
    object qPackHeadPackNum: TIntegerField
      FieldName = 'PackNum'
      Origin = 'MAINDB.PackHead.PackNum'
    end
    object qPackHeadPackRevision: TSmallintField
      FieldName = 'PackRevision'
      Origin = 'MAINDB.PackHead.PackRevision'
    end
    object qPackHeadPackVersion: TSmallintField
      FieldName = 'PackVersion'
      Origin = 'MAINDB.PackHead.PackVersion'
    end
    object qPackHeadIdent1: TStringField
      FieldName = 'Ident1'
      Origin = 'MAINDB.PackHead.Ident1'
    end
    object qPackHeadIdent2: TStringField
      FieldName = 'Ident2'
      Origin = 'MAINDB.PackHead.Ident2'
    end
    object qPackHeadName: TStringField
      FieldName = 'Name'
      Origin = 'MAINDB.PackHead.Name'
      Size = 50
    end
    object qPackHeadOfferPerson: TStringField
      FieldName = 'OfferPerson'
      Origin = 'MAINDB.PackHead.OfferPerson'
      Size = 50
    end
    object qPackHeadNote: TStringField
      FieldName = 'Note'
      Origin = 'MAINDB.PackHead.Note'
      Size = 50
    end
    object qPackHeadStatus: TSmallintField
      FieldName = 'Status'
      Origin = 'MAINDB.PackHead.Status'
    end
    object qPackHeadCreatorName: TStringField
      FieldName = 'CreatorName'
      Origin = 'MAINDB.PackHead.CreatorName'
      Size = 50
    end
    object qPackHeadCreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Origin = 'MAINDB.PackHead.CreateDate'
    end
    object qPackHeadStatusName: TStringField
      FieldKind = fkLookup
      FieldName = 'StatusName'
      LookupDataSet = RekordStatusz
      LookupKeyFields = 'StatuszKod'
      LookupResultField = 'StatuszNev'
      KeyFields = 'Status'
      Lookup = True
    end
  end
  object spLogOut: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_LogOut'
    Left = 272
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgramName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@UID'
        ParamType = ptInput
      end>
  end
  object spGetMaterialName: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetMaterialName'
    Left = 48
    Top = 640
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Cikkszam'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Megnevezes'
        ParamType = ptInputOutput
      end>
  end
  object StoredProc1: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'spGetDafaultVaue'
    Left = 48
    Top = 688
  end
  object spNamedUnitConversion: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_NamedUnitConversion'
    Left = 48
    Top = 736
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@InUnitStr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@OutUnitStr'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Value'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@ResValue'
        ParamType = ptInputOutput
      end>
  end
  object tBiztSzerelvenyek: TTable
    BeforePost = tBiztSzerelvenyekBeforePost
    AfterPost = tBiztSzerelvenyekAfterPost
    DatabaseName = 'MainDb'
    IndexFieldNames = 'RendelesAz;TetelSrsz'
    MasterFields = 'RendelesAz;TetelSrsz'
    MasterSource = RendelesTetelDs
    TableName = 'dbo.BiztonsagiSzerelvenyek'
    Left = 544
    Top = 424
    object tBiztSzerelvenyekId: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object tBiztSzerelvenyekEszkozFajta: TStringField
      FieldName = 'EszkozFajta'
    end
    object tBiztSzerelvenyekBeszerzes: TStringField
      FieldName = 'Beszerzes'
    end
    object tBiztSzerelvenyekAzonosito: TStringField
      FieldName = 'Azonosito'
    end
    object tBiztSzerelvenyekRendSz: TStringField
      FieldName = 'RendSz'
    end
    object tBiztSzerelvenyekRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object tBiztSzerelvenyekTetelSrsz: TSmallintField
      FieldName = 'TetelSrsz'
    end
    object tBiztSzerelvenyekRogzitette: TStringField
      FieldName = 'Rogzitette'
      Required = True
      Size = 50
    end
    object tBiztSzerelvenyekRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Required = True
    end
  end
  object dsBiztSzerelvenyek: TDataSource
    DataSet = tBiztSzerelvenyek
    Left = 600
    Top = 440
  end
  object qSafetyItems: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from BiztonsagiSzerelvenyek'
      'where'
      #9'EszkozFajta = :Eszkoz'
      '        and Beszerzes like :Beszerzes'
      '        and RendelesAz is null'
      'order by'
      '        Id'
      ' ')
    Left = 408
    Top = 632
    ParamData = <
      item
        DataType = ftString
        Name = 'Eszkoz'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'Beszerzes'
        ParamType = ptUnknown
      end>
    object qSafetyItemsId: TIntegerField
      FieldName = 'Id'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.Id'
    end
    object qSafetyItemsEszkozFajta: TStringField
      FieldName = 'EszkozFajta'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.EszkozFajta'
    end
    object qSafetyItemsBeszerzes: TStringField
      FieldName = 'Beszerzes'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.Beszerzes'
    end
    object qSafetyItemsAzonosito: TStringField
      FieldName = 'Azonosito'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.Azonosito'
    end
    object qSafetyItemsRendsz: TStringField
      FieldName = 'Rendsz'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.Rendsz'
    end
    object qSafetyItemsRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.RendelesAz'
    end
    object qSafetyItemsTetelSrsz: TSmallintField
      FieldName = 'TetelSrsz'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.TetelSrsz'
    end
    object qSafetyItemsRogzitette: TStringField
      FieldName = 'Rogzitette'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.Rogzitette'
      Size = 50
    end
    object qSafetyItemsRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Origin = 'MAINDB.BiztonsagiSzerelvenyek.RogzIdopont'
    end
  end
  object spAddSafetyItem: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_AddSafetyItem'
    Left = 408
    Top = 680
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@RendelesAz'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = '@TetelSrsz'
        ParamType = ptInput
      end>
  end
  object AccessoryType: TTable
    BeforeInsert = AdatlapCsatlBeforeInsert
    AfterPost = AdatlapCsatlAfterPost
    OnNewRecord = AdatlapCsatlNewRecord
    DatabaseName = 'MainDb'
    TableName = 'dbo.AccessoryType'
    Left = 408
    Top = 584
    object AccessoryTypeaccessoryTypeCounter: TIntegerField
      FieldName = 'accessoryTypeCounter'
      Required = True
    end
    object AccessoryTypedescriptionH: TStringField
      FieldName = 'descriptionH'
    end
    object AccessoryTypedescriptionE: TStringField
      FieldName = 'descriptionE'
    end
    object AccessoryTypeshortDescriptionH: TStringField
      FieldName = 'shortDescriptionH'
      Size = 10
    end
    object AccessoryTypeshortDescriptionE: TStringField
      FieldName = 'shortDescriptionE'
      Size = 10
    end
    object AccessoryTypearticleNbMin: TStringField
      FieldName = 'articleNbMin'
      Size = 10
    end
    object AccessoryTypearticleNbMax: TStringField
      FieldName = 'articleNbMax'
    end
  end
  object spUserRoleMembers: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_UserRoleMembers'
    Left = 408
    Top = 728
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@UserName'
        ParamType = ptInput
      end>
    object spUserRoleMembersDbRole: TStringField
      FieldName = 'DbRole'
      Size = 50
    end
    object spUserRoleMembersMemberName: TStringField
      FieldName = 'MemberName'
      Size = 50
    end
    object spUserRoleMembersMemberSID: TVarBytesField
      FieldName = 'MemberSID'
      Size = 85
    end
  end
  object qMfCikkszamok: TQuery
    CachedUpdates = True
    AfterEdit = qMfCikkszamokAfterEdit
    BeforePost = qMfCikkszamokBeforePost
    AfterPost = qMfCikkszamokAfterPost
    AfterDelete = qMfCikkszamokAfterDelete
    OnNewRecord = qMfCikkszamokNewRecord
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      '    MfCikkszamok ')
    UpdateObject = uMfCikkszamok
    Left = 216
    Top = 416
    object qMfCikkszamokItemId: TIntegerField
      FieldName = 'ItemId'
      Origin = 'MAINDB.MfCikkszamok.ItemId'
    end
    object qMfCikkszamokPrDatum: TDateTimeField
      FieldName = 'PrDatum'
      Origin = 'MAINDB.MfCikkszamok.PrDatum'
    end
    object qMfCikkszamokMtKeszDatum: TDateTimeField
      FieldName = 'MtKeszDatum'
      Origin = 'MAINDB.MfCikkszamok.MtKeszDatum'
    end
    object qMfCikkszamokRegiCksz: TStringField
      FieldName = 'RegiCksz'
      Origin = 'MAINDB.MfCikkszamok.RegiCksz'
    end
    object qMfCikkszamokSAPCksz: TStringField
      FieldName = 'SAPCksz'
      Origin = 'MAINDB.MfCikkszamok.SAPCksz'
    end
    object qMfCikkszamokMtFelkeszDatum: TDateTimeField
      FieldName = 'MtFelkeszDatum'
      Origin = 'MAINDB.MfCikkszamok.MtFelkeszDatum'
    end
    object qMfCikkszamokNev: TStringField
      FieldName = 'Nev'
      Origin = 'MAINDB.MfCikkszamok.Nev'
      Size = 80
    end
    object qMfCikkszamokHossz: TFloatField
      FieldName = 'Hossz'
      Origin = 'MAINDB.MfCikkszamok.Hossz'
    end
    object qMfCikkszamokFelkesz5: TStringField
      FieldName = 'Felkesz5'
      Origin = 'MAINDB.MfCikkszamok.Felkesz5'
    end
    object qMfCikkszamokVulk: TStringField
      FieldName = 'Vulk5'
      Origin = 'MAINDB.MfCikkszamok.Vulk'
    end
    object qMfCikkszamokTomloveg: TStringField
      FieldName = 'Tomloveg5'
      Origin = 'MAINDB.MfCikkszamok.Tomloveg'
    end
    object qMfCikkszamokFelkesz6: TStringField
      FieldName = 'Felkesz6'
      Origin = 'MAINDB.MfCikkszamok.Felkesz6'
    end
    object qMfCikkszamokVulk6: TStringField
      FieldName = 'Vulk6'
      Origin = 'MAINDB.MfCikkszamok.Vulk6'
    end
    object qMfCikkszamokTomloveg6: TStringField
      FieldName = 'Tomloveg6'
      Origin = 'MAINDB.MfCikkszamok.Tomloveg6'
    end
    object qMfCikkszamokFelkesz7: TStringField
      FieldName = 'Felkesz7'
      Origin = 'MAINDB.MfCikkszamok.Felkesz7'
    end
    object qMfCikkszamokVulk7: TStringField
      FieldName = 'Vulk7'
      Origin = 'MAINDB.MfCikkszamok.Vulk7'
    end
    object qMfCikkszamokTomloveg7: TStringField
      FieldName = 'Tomloveg7'
      Origin = 'MAINDB.MfCikkszamok.Tomloveg7'
    end
    object qMfCikkszamokFelkesz9: TStringField
      FieldName = 'Felkesz9'
      Origin = 'MAINDB.MfCikkszamok.Felkesz9'
    end
    object qMfCikkszamokVulk9: TStringField
      FieldName = 'Vulk9'
      Origin = 'MAINDB.MfCikkszamok.Vulk9'
    end
    object qMfCikkszamokTomloveg9: TStringField
      FieldName = 'Tomloveg9'
      Origin = 'MAINDB.MfCikkszamok.Tomloveg9'
    end
    object qMfCikkszamokMuszJell: TStringField
      FieldName = 'MuszJell'
      Origin = 'MAINDB.MfCikkszamok.MuszJell'
      Size = 50
    end
    object qMfCikkszamokKonstr: TStringField
      FieldName = 'Konstr'
      Origin = 'MAINDB.MfCikkszamok.Konstr'
      Size = 50
    end
    object qMfCikkszamokMtfKesz: TStringField
      FieldName = 'MtfKesz'
      Origin = 'MAINDB.MfCikkszamok.MtfKesz'
      Size = 50
    end
    object qMfCikkszamokMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.MfCikkszamok.Megjegyzes'
      Size = 50
    end
    object qMfCikkszamokMtfFelkesz: TStringField
      FieldName = 'MtfFelkesz'
      Origin = 'MAINDB.MfCikkszamok.MtfFelkesz'
      Size = 50
    end
    object qMfCikkszamokKeszitette: TStringField
      FieldName = 'Keszitette'
      Origin = 'MAINDB.MfCikkszamok.Keszitette'
      Size = 50
    end
    object qMfCikkszamokKeszitesDatuma: TDateTimeField
      FieldName = 'KeszitesDatuma'
      Origin = 'MAINDB.MfCikkszamok.KeszitesDatuma'
    end
    object qMfCikkszamokModositotta: TStringField
      FieldName = 'Modositotta'
      Origin = 'MAINDB.MfCikkszamok.Modositotta'
      Size = 50
    end
    object qMfCikkszamokModositasDatuma: TDateTimeField
      FieldName = 'ModositasDatuma'
      Origin = 'MAINDB.MfCikkszamok.ModositasDatuma'
    end
    object qMfCikkszamokJelzesKod: TSmallintField
      FieldName = 'JelzesKod'
      Origin = 'MAINDB.MfCikkszamok.JelzesKod'
    end
    object qMfCikkszamokJelzesNev: TStringField
      FieldKind = fkLookup
      FieldName = 'JelzesNev'
      LookupDataSet = MfCikkszamJelzesek
      LookupKeyFields = 'JelzesKod'
      LookupResultField = 'JelzoString'
      KeyFields = 'JelzesKod'
      Lookup = True
    end
    object qMfCikkszamokSzin: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Szin'
      LookupDataSet = MfCikkszamJelzesek
      LookupKeyFields = 'JelzesKod'
      LookupResultField = 'Jelzoszin'
      KeyFields = 'JelzesKod'
      Lookup = True
    end
    object qMfCikkszamokNorma: TBooleanField
      FieldName = 'Norma'
      Origin = 'MAINDB.MfCikkszamok.Norma'
    end
    object qMfCikkszamokSAP: TBooleanField
      FieldName = 'SAP'
      Origin = 'MAINDB.MfCikkszamok.SAP'
    end
    object qMfCikkszamokTBP: TBooleanField
      FieldName = 'TBP'
      Origin = 'MAINDB.MfCikkszamok.TBP'
    end
    object qMfCikkszamokGraf: TBooleanField
      FieldName = 'Graf'
      Origin = 'MAINDB.MfCikkszamok.Graf'
    end
    object qMfCikkszamokTorzslap: TBooleanField
      FieldName = 'Torzslap'
      Origin = 'MAINDB.MfCikkszamok.Torzslap'
    end
    object qMfCikkszamokDarabjegyzek: TBooleanField
      FieldName = 'Darabjegyzek'
      Origin = 'MAINDB."dbo.MfCikkszamok".Darabjegyzek'
    end
    object qMfCikkszamokKsz: TStringField
      FieldName = 'Ksz'
      Origin = 'MAINDB."dbo.MfCikkszamok".Ksz'
    end
    object qMfCikkszamokAsz: TStringField
      FieldName = 'Asz'
      Origin = 'MAINDB."dbo.MfCikkszamok".Asz'
    end
  end
  object uMfCikkszamok: TUpdateSQL
    ModifySQL.Strings = (
      'update MfCikkszamok'
      'set'
      '  PrDatum = :PrDatum,'
      '  MtKeszDatum = :MtKeszDatum,'
      '  RegiCksz = :RegiCksz,'
      '  SAPCksz = :SAPCksz,'
      '  MtFelkeszDatum = :MtFelkeszDatum,'
      '  Nev = :Nev,'
      '  Hossz = :Hossz,'
      '  Felkesz5 = :Felkesz5,'
      '  Vulk5 = :Vulk5,'
      '  Tomloveg5 = :Tomloveg5,'
      '  Felkesz6 = :Felkesz6,'
      '  Vulk6 = :Vulk6,'
      '  Tomloveg6 = :Tomloveg6,'
      '  Felkesz7 = :Felkesz7,'
      '  Vulk7 = :Vulk7,'
      '  Tomloveg7 = :Tomloveg7,'
      '  Felkesz9 = :Felkesz9,'
      '  Vulk9 = :Vulk9,'
      '  Tomloveg9 = :Tomloveg9,'
      '  MuszJell = :MuszJell,'
      '  Konstr = :Konstr,'
      '  Ksz = :Ksz,'
      '  Asz = :Asz,'
      '  MtfKesz = :MtfKesz,'
      '  Megjegyzes = :Megjegyzes,'
      '  MtfFelkesz = :MtfFelkesz,'
      '  Keszitette = :Keszitette,'
      '  KeszitesDatuma = :KeszitesDatuma,'
      '  Modositotta = :Modositotta,'
      '  ModositasDatuma = :ModositasDatuma,'
      '  JelzesKod = :JelzesKod,'
      '  Norma = :Norma,'
      '  SAP = :SAP,'
      '  TBP = :TBP,'
      '  Graf = :Graf,'
      '  Torzslap = :Torzslap,'
      '  Darabjegyzek = :Darabjegyzek'
      'where'
      '  ItemId = :OLD_ItemId')
    InsertSQL.Strings = (
      'insert into MfCikkszamok'
      
        '  (PrDatum, MtKeszDatum, RegiCksz, SAPCksz, MtFelkeszDatum, Nev,' +
        ' Hossz, '
      
        '   Felkesz5, Vulk5, Tomloveg5, Felkesz6, Vulk6, Tomloveg6, Felke' +
        'sz7, Vulk7, '
      
        '   Tomloveg7, Felkesz9, Vulk9, Tomloveg9, MuszJell, Konstr, Ksz,' +
        ' Asz, MtfKesz, '
      
        '   Megjegyzes, MtfFelkesz, Keszitette, KeszitesDatuma, Modositot' +
        'ta, '
      'ModositasDatuma, '
      '   JelzesKod, Norma, SAP, TBP, Graf, Torzslap, Darabjegyzek)'
      'values'
      
        '  (:PrDatum, :MtKeszDatum, :RegiCksz, :SAPCksz, :MtFelkeszDatum,' +
        ' :Nev, '
      
        '   :Hossz, :Felkesz5, :Vulk5, :Tomloveg5, :Felkesz6, :Vulk6, :To' +
        'mloveg6, '
      
        '   :Felkesz7, :Vulk7, :Tomloveg7, :Felkesz9, :Vulk9, :Tomloveg9,' +
        ' :MuszJell, '
      
        '   :Konstr, :Ksz, :Asz, :MtfKesz, :Megjegyzes, :MtfFelkesz, :Kes' +
        'zitette, '
      
        '   :KeszitesDatuma, :Modositotta, :ModositasDatuma, :JelzesKod, ' +
        ':Norma, '
      '   :SAP, :TBP, :Graf, :Torzslap, :Darabjegyzek)')
    DeleteSQL.Strings = (
      'delete from MfCikkszamok'
      'where'
      '  ItemId = :OLD_ItemId')
    Left = 344
    Top = 416
  end
  object Query3: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @Date1 datetime, @Date2 datetime'
      'select @Date1 = :Date1'
      'select @Date2 = :Date2'
      'select'
      #9'top 10'
      #9'm.Meo_Az, m.RendSz, m.TetelSrsz,'
      #9'[ASSETNUMBER] = '#39'AN-CRI-'#39' + m.GY_SZ,'
      #9'[CATEGORYID] = '#39'1149'#39','
      
        #9'[ITEMDESCRIPTION] = RTrim(cast(m.ID as char)) + '#39'" '#39' + m.Tipus ' +
        '+ '#39' '#39' +'
      #9#9'RTrim(Cast(m.UzemiNyomas as char)) + '#39' '#39' +'
      #9#9'(Select UnitSign from Units where UnitCode = m.UzemiNyomasU),'
      #9'[DISTRIBUTORID] = '#39'???'#39','
      #9'[CLIENTID] = '#39'???'#39','
      #9'[LOCATIONID] = '#39'1310'#39','
      #9'[CHIPID] = ChipId,'
      #9'[CERTIFICATIONSTATUS] = '#39'Not Required'#39','
      #9'[CERTIFICATION INTERVAL] = '#39'0 Years'#39','
      #9'[Bore Size] = RTrim(cast(m.ID as char)) + '#39' in'#39','
      #9'[Nominal Legth] = RTrim(Cast(NevlegesHossz as Char)) + '#39' '#39' +'
      #9#9'(select UnitSign from Units where Unitcode = NevlegesHosszU),'
      
        #9'[Design Pressure] = RTrim(Cast(rs.DesignPressure as Char)) + '#39' ' +
        #39' + DesignPressureUnit,'
      
        #9'[Test Pressure] = RTrim(Cast(rs.TestPressure as Char)) + '#39' '#39' + ' +
        'TestPressureUnit,'
      #9'[Internal stripwound tube] = rs.InternalStripwoundTube,'
      #9'[End coupling 1] = rs.TypeOfCoupling1,'
      #9'[End coupling 2] = rs.TypeOfCoupling2,'
      
        #9'[Max design temp] = RTrim(Cast(rs.MaxDesignTemperature as Char)' +
        '),'
      
        #9'[Min design temp] = RTrim(Cast(Case when not rs.MinDesignTemper' +
        'ature is null'
      #9#9'then -1 * rs.MinDesignTemperature else Null end as Char)),'
      #9'[Manufacturer] = '#39'ContiTech Rubber Ind.'#39','
      #9'[Hose Type] = '#39'???'#39', -- Honnan???'
      #9'[Hose Standard] = Standard,'
      #9'[Hose Cover] = Cover,'
      #9'[Outside Protection] = OutsideProtection,'
      #9'[Op./Dynamic MBR] = '#39'???'#39','
      #9'[Storage MBR] = MBRstorage,'
      #9'[Op.Static MBR] = MBRstatic,'
      #9'[Notes]'
      'from'
      #9'Meo m'
      #9'Left Outer Join'
      #9'(select rs.*'
      #9'from'
      #9#9'(select RendelesSzam, MaxRev = Max(Revizio)'
      #9#9'from RendelesSap Group by RendelesSzam)'#9'rm,'
      #9#9'RendelesSap rs'
      #9#9'where'
      #9#9'rs.RendelesSzam = rm.RendelesSzam'
      #9#9'and rs.Revizio = rm.MaxRev)'
      #9'rs On (rs.RendelesSzam = m.RendSz and rs.Pozicio = m.TetelSrsz)'
      #9'Left Outer Join'
      #9'(select RendSz, TetelSrsz, Konstrukcio'
      #9'from'
      #9#9'rendelesfej rf,'
      #9#9'rendelestetel rt'
      #9'where'
      #9#9'rf.RendelesAz = rt.rendelesAz) x'
      #9'On (x.RendSz = m.RendSz and x.TetelSrsz = m.TetelSrsz)'
      #9'Left Outer Join hose.dbo.bodyHeader bh'
      #9'On (bh.bodyDNb = x.Konstrukcio)'
      'where'
      #9'not m.RendelesAz is null'
      #9'and not GY_SZ is null'
      #9'and Datum between @Date1 and @Date2'
      'order by'
      '        m.RendSz, m.TetelSrsz'
      ''
      ' '
      ' ')
    Left = 600
    Top = 728
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'Date1'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Date2'
        ParamType = ptUnknown
      end>
    object Query3Meo_Az: TIntegerField
      FieldName = 'Meo_Az'
    end
    object Query3RendSz: TStringField
      FieldName = 'RendSz'
    end
    object Query3TetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object Query3ASSETNUMBER: TStringField
      FieldName = 'ASSETNUMBER'
      Size = 27
    end
    object Query3CATEGORYID: TStringField
      FieldName = 'CATEGORYID'
      Size = 4
    end
    object Query3ITEMDESCRIPTION: TStringField
      FieldName = 'ITEMDESCRIPTION'
      Size = 104
    end
    object Query3DISTRIBUTORID: TStringField
      FieldName = 'DISTRIBUTORID'
      Size = 3
    end
    object Query3CLIENTID: TStringField
      FieldName = 'CLIENTID'
      Size = 3
    end
    object Query3LOCATIONID: TStringField
      FieldName = 'LOCATIONID'
      Size = 4
    end
    object Query3CHIPID: TStringField
      FieldName = 'CHIPID'
      Size = 50
    end
    object Query3CERTIFICATIONSTATUS: TStringField
      FieldName = 'CERTIFICATIONSTATUS'
      Size = 12
    end
    object Query3CERTIFICATIONINTERVAL: TStringField
      FieldName = 'CERTIFICATION INTERVAL'
      Size = 7
    end
    object Query3BoreSize: TStringField
      FieldName = 'Bore Size'
      Size = 33
    end
    object Query3NominalLegth: TStringField
      FieldName = 'Nominal Legth'
      Size = 41
    end
    object Query3DesignPressure: TStringField
      FieldName = 'Design Pressure'
      Size = 41
    end
    object Query3TestPressure: TStringField
      FieldName = 'Test Pressure'
      Size = 41
    end
    object Query3Internalstripwoundtube: TStringField
      FieldName = 'Internal stripwound tube'
      Size = 50
    end
    object Query3Endcoupling1: TStringField
      FieldName = 'End coupling 1'
      Size = 50
    end
    object Query3Endcoupling2: TStringField
      FieldName = 'End coupling 2'
      Size = 50
    end
    object Query3Maxdesigntemp: TStringField
      FieldName = 'Max design temp'
      Size = 30
    end
    object Query3Mindesigntemp: TStringField
      FieldName = 'Min design temp'
      Size = 30
    end
    object Query3Manufacturer: TStringField
      FieldName = 'Manufacturer'
      Size = 21
    end
    object Query3HoseType: TStringField
      FieldName = 'Hose Type'
      Size = 3
    end
    object Query3HoseStandard: TStringField
      FieldName = 'Hose Standard'
      Size = 50
    end
    object Query3HoseCover: TStringField
      FieldName = 'Hose Cover'
      Size = 50
    end
    object Query3OutsideProtection: TStringField
      FieldName = 'Outside Protection'
      Size = 50
    end
    object Query3OpDynamicMBR: TStringField
      FieldName = 'Op./Dynamic MBR'
      Size = 3
    end
    object Query3StorageMBR: TFloatField
      FieldName = 'Storage MBR'
    end
    object Query3OpStaticMBR: TFloatField
      FieldName = 'Op.Static MBR'
    end
    object Query3Notes: TStringField
      FieldName = 'Notes'
      Size = 128
    end
  end
  object qPackTypes: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'pt.DeviceTypeCode, DeviceTypeName = RTrim(DeviceTypeName), '
      #9'DeviceId, DeviceName = RTrim(DeviceName)'
      'from'
      #9'PackDeviceType pt'
      #9'left outer join PackDevice pd'
      #9'On (pt.DeviceTypeCode = pd.DeviceTypeCode)'
      ' ')
    Left = 216
    Top = 608
    object qPackTypesDeviceTypeCode: TIntegerField
      FieldName = 'DeviceTypeCode'
    end
    object qPackTypesDeviceTypeName: TStringField
      FieldName = 'DeviceTypeName'
      Size = 50
    end
    object qPackTypesDeviceId: TIntegerField
      FieldName = 'DeviceId'
    end
    object qPackTypesDeviceName: TStringField
      FieldName = 'DeviceName'
      Size = 25
    end
  end
  object spGetDiameterIncrease: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetDiameterIncrease'
    Left = 880
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@Konstr'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Increase'
        ParamType = ptInputOutput
      end>
  end
  object spGetCouplingBodyOD: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetCouplingBodyOD'
    Left = 880
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@CsatlRsz'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@CouplingBodyOD'
        ParamType = ptInputOutput
      end>
  end
  object spGetCouplingMaxOD: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetCouplingMaxOD'
    Left = 792
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@CsatlRsz'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@MaxOd'
        ParamType = ptInputOutput
      end>
  end
  object spGetRendEgyebMaxId: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetRendEgyebMaxId'
    Left = 544
    Top = 680
  end
  object qBilincs: TQuery
    CachedUpdates = True
    BeforePost = qBilincsBeforePost
    AfterPost = qBilincsAfterPost
    AfterDelete = qBilincsAfterDelete
    OnNewRecord = qBilincsNewRecord
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select *'
      'from'
      #9'RendelesTetelBilincs'
      'where'
      #9'RendelesAz = :RendelesAz'
      #9'and TetelSrsz = :TetelSrsz'
      #9'and Tipus = :Tipus'
      'order by'
      '        RendelesAz, TetelSrsz, TomloSorszam'
      ' ')
    UpdateObject = uBilincs
    Left = 672
    Top = 408
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TetelSrsz'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Tipus'
        ParamType = ptUnknown
      end>
    object qBilincsRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object qBilincsTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object qBilincsTipus: TSmallintField
      FieldName = 'Tipus'
    end
    object qBilincsTomloSorszam: TSmallintField
      FieldName = 'TomloSorszam'
    end
    object qBilincsCounter: TSmallintField
      FieldName = 'Counter'
      Origin = 'MAINDB.RendelesTetelBilincs.Counter'
    end
    object qBilincsAzonosito: TStringField
      FieldName = 'Azonosito'
      Size = 50
    end
    object qBilincsFestes: TStringField
      FieldName = 'Festes'
      Size = 50
    end
    object qBilincsMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Origin = 'MAINDB.RendelesTetelBilincs.Megjegyzes'
      Size = 200
    end
    object qBilincsRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object qBilincsRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsBilincs: TDataSource
    DataSet = qBilincs
    Left = 736
    Top = 424
  end
  object uBilincs: TUpdateSQL
    ModifySQL.Strings = (
      'update RendelesTetelBilincs'
      'set'
      '  RendelesAz = :RendelesAz,'
      '  TetelSrsz = :TetelSrsz,'
      '  Tipus = :Tipus,'
      '  TomloSorszam = :TomloSorszam,'
      '  Counter = :Counter,'
      '  Azonosito = :Azonosito,'
      '  Festes = :Festes,'
      '  Megjegyzes = :Megjegyzes,'
      '  Rogzitette = :Rogzitette,'
      '  RogzIdopont = :RogzIdopont'
      'where'
      '  RendelesAz = :OLD_RendelesAz and'
      '  TetelSrsz = :OLD_TetelSrsz and'
      '  Tipus = :OLD_Tipus and'
      '  TomloSorszam = :OLD_TomloSorszam and'
      '  Counter = :OLD_Counter')
    InsertSQL.Strings = (
      'insert into RendelesTetelBilincs'
      
        '  (RendelesAz, TetelSrsz, Tipus, TomloSorszam, Counter, Azonosit' +
        'o, Festes, '
      '   Megjegyzes, Rogzitette, RogzIdopont)'
      'values'
      
        '  (:RendelesAz, :TetelSrsz, :Tipus, :TomloSorszam, :Counter, :Az' +
        'onosito, '
      '   :Festes, :Megjegyzes, :Rogzitette, :RogzIdopont)')
    DeleteSQL.Strings = (
      'delete from RendelesTetelBilincs'
      'where'
      '  RendelesAz = :OLD_RendelesAz and'
      '  TetelSrsz = :OLD_TetelSrsz and'
      '  Tipus = :OLD_Tipus and'
      '  TomloSorszam = :OLD_TomloSorszam and'
      '  Counter = :OLD_Counter')
    Left = 792
    Top = 408
  end
  object spGetBilincsStatusz: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetBilincsStatusz'
    Left = 672
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 256
      end
      item
        DataType = ftInteger
        Name = '@RendelesAz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TetelSrsz'
        ParamType = ptInput
      end>
    object spGetBilincsStatuszEB: TIntegerField
      FieldName = 'EB'
    end
    object spGetBilincsStatuszBB: TIntegerField
      FieldName = 'BB'
    end
    object spGetBilincsStatuszOH: TIntegerField
      FieldName = 'OH'
    end
  end
  object spGetBilincsList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetBilincsList'
    Left = 672
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@RendelesAz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TetelSrsz'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@TipusKod'
        ParamType = ptInput
      end>
    object spGetBilincsListRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object spGetBilincsListTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object spGetBilincsListTipus: TSmallintField
      FieldName = 'Tipus'
    end
    object spGetBilincsListTomloSorszam: TSmallintField
      FieldName = 'TomloSorszam'
    end
    object spGetBilincsListCounter: TSmallintField
      FieldName = 'Counter'
    end
    object spGetBilincsListAzonosito: TStringField
      FieldName = 'Azonosito'
      Size = 50
    end
    object spGetBilincsListFestes: TStringField
      FieldName = 'Festes'
      Size = 50
    end
    object spGetBilincsListMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 200
    end
    object spGetBilincsListRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object spGetBilincsListRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object spGetRsReportParams: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetRsReportParams'
    Left = 672
    Top = 552
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ReportName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ReportPath'
        ParamType = ptInputOutput
      end
      item
        DataType = ftString
        Name = '@ServerPath'
        ParamType = ptInputOutput
      end>
  end
  object dsVegzodesTipusok: TDataSource
    DataSet = tVegzodesTipusok
    Left = 280
    Top = 672
  end
  object tVegzodesTipusok: TTable
    DatabaseName = 'MainDb'
    IndexFieldNames = 'VegzodesId'
    TableName = 'dbo.VegzodesTipusok'
    Left = 216
    Top = 656
    object tVegzodesTipusokVegzodesId: TIntegerField
      FieldName = 'VegzodesId'
      Required = True
    end
    object tVegzodesTipusokMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 200
    end
    object tVegzodesTipusokPicture: TBlobField
      FieldName = 'Picture'
      BlobType = ftBlob
      Size = 1
    end
    object tVegzodesTipusokRogzitette: TStringField
      FieldName = 'Rogzitette'
      Required = True
      Size = 50
    end
    object tVegzodesTipusokRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
      Required = True
    end
  end
  object tTechlap: TTable
    BeforeInsert = CheckDesigner
    BeforeEdit = tTechlapBeforeEdit
    BeforePost = tTechlapBeforePost
    AfterPost = tTechlapAfterPost
    BeforeDelete = CheckDesigner
    AfterScroll = tTechlapAfterScroll
    DatabaseName = 'MainDb'
    IndexFieldNames = 'Srsz'
    MasterFields = 'Srsz'
    MasterSource = CsatlakozokDs
    TableName = 'dbo.Techlap'
    Left = 216
    Top = 704
    object tTechlapSrsz: TIntegerField
      FieldName = 'Srsz'
      Required = True
      OnChange = tTechlapSrszChange
    end
    object tTechlapL: TFloatField
      FieldName = 'L'
      OnChange = tTechlapSrszChange
    end
    object tTechlapL1: TFloatField
      FieldName = 'L1'
      OnChange = tTechlapSrszChange
    end
    object tTechlapL2: TFloatField
      FieldName = 'L2'
      OnChange = tTechlapSrszChange
    end
    object tTechlapL3: TFloatField
      FieldName = 'L3'
      OnChange = tTechlapSrszChange
    end
    object tTechlapMaxOD: TFloatField
      FieldName = 'MaxOD'
      OnChange = tTechlapSrszChange
    end
    object tTechlapVegzodesId: TIntegerField
      FieldName = 'VegzodesId'
      OnChange = tTechlapSrszChange
    end
    object tTechlapL1Caption: TStringField
      FieldName = 'L1Caption'
      OnChange = tTechlapSrszChange
      Size = 50
    end
    object tTechlapRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tTechlapRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
    object tTechlapEllenorizte: TStringField
      FieldName = 'Ellenorizte'
      Size = 50
    end
    object tTechlapEllenorzesIdopontja: TDateTimeField
      FieldName = 'EllenorzesIdopontja'
    end
  end
  object dsTechlap: TDataSource
    DataSet = tTechlap
    Left = 280
    Top = 720
  end
  object tCsatlRajzTart: TTable
    BeforeInsert = CheckDesigner
    BeforeEdit = CheckDesigner
    BeforePost = tCsatlRajzTartBeforePost
    AfterPost = tCsatlRajzTartAfterPost
    BeforeDelete = CheckDesigner
    AfterDelete = tCsatlRajzTartAfterDelete
    AutoRefresh = True
    DatabaseName = 'MainDb'
    IndexFieldNames = 'Srsz'
    MasterFields = 'Srsz'
    MasterSource = CsatlakozokDs
    TableName = 'dbo.CsatlakozoRajzTartozekok'
    Left = 216
    Top = 752
    object tCsatlRajzTartSrsz: TIntegerField
      FieldName = 'Srsz'
    end
    object tCsatlRajzTartTartozekId: TIntegerField
      FieldName = 'TartozekId'
    end
    object tCsatlRajzTartMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object tCsatlRajzTartRajzszam: TStringField
      FieldName = 'Rajzszam'
    end
    object tCsatlRajzTartDarabszam: TIntegerField
      FieldName = 'Darabszam'
    end
    object tCsatlRajzTartMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object tCsatlRajzTartRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object tCsatlRajzTartRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
  end
  object dsCsatlRajzTart: TDataSource
    DataSet = tCsatlRajzTart
    Left = 280
    Top = 768
  end
  object qCsatlTartList: TQuery
    BeforePost = qCsatlTartListBeforePost
    AfterPost = qCsatlTartListAfterPost
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'declare @CsatlRsz varchar(25)'
      'set @CsatlRsz = :CsatlRsz'
      ''
      'select'
      #9't.*, tl.Ellenorizte'
      'from'
      #9'CsatlakozoRajzok csr'
      #9'Left Outer Join TechLap tl On (tl.Srsz = csr.Srsz),'
      #9'CsatlakozoRajzTartozekok t'
      'where'
      #9'CsatlRsz = @CsatlRsz'
      #9'and csr.Srsz = t.srsz'
      ' '
      ' ')
    Left = 280
    Top = 816
    ParamData = <
      item
        DataType = ftString
        Name = 'CsatlRsz'
        ParamType = ptUnknown
      end>
    object qCsatlTartListSrsz: TIntegerField
      FieldName = 'Srsz'
    end
    object qCsatlTartListTartozekId: TIntegerField
      FieldName = 'TartozekId'
    end
    object qCsatlTartListMegnevezes: TStringField
      FieldName = 'Megnevezes'
      Size = 50
    end
    object qCsatlTartListRajzszam: TStringField
      FieldName = 'Rajzszam'
    end
    object qCsatlTartListDarabszam: TIntegerField
      FieldName = 'Darabszam'
    end
    object qCsatlTartListMegjegyzes: TStringField
      FieldName = 'Megjegyzes'
      Size = 50
    end
    object qCsatlTartListRogzitette: TStringField
      FieldName = 'Rogzitette'
      Size = 50
    end
    object qCsatlTartListRogzIdopont: TDateTimeField
      FieldName = 'RogzIdopont'
    end
    object qCsatlTartListEllenorizte: TStringField
      FieldName = 'Ellenorizte'
      Size = 50
    end
  end
  object qPackItem: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select PackId, PackItemId, Description from PackItem')
    Left = 752
    Top = 656
    object qPackItemPackId: TIntegerField
      FieldName = 'PackId'
      Origin = 'MAINDB.PackItem.PackId'
    end
    object qPackItemPackItemId: TSmallintField
      FieldName = 'PackItemId'
      Origin = 'MAINDB.PackItem.PackItemId'
    end
    object qPackItemDescription: TStringField
      FieldName = 'Description'
      Origin = 'MAINDB.PackItem.Description'
      Size = 250
    end
  end
  object dsqPackItem: TDataSource
    DataSet = qPackItem
    Left = 696
    Top = 640
  end
  object spGetBaseParamStr: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetBaseParamStr'
    Left = 48
    Top = 784
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@ProductCode'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ParamName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ParamStr'
        ParamType = ptInputOutput
      end>
  end
  object spGetAtveteliStrMap: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_GetAtveteliStrMap'
    Left = 120
    Top = 800
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@AtveteliStr'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Map'
        ParamType = ptInputOutput
      end>
  end
  object DataSheetBmkData: TRxMemoryData
    FieldDefs = <>
    Left = 408
    Top = 776
    object DataSheetBmkDataRendsz: TStringField
      FieldName = 'Rendsz'
    end
    object DataSheetBmkDataTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object DataSheetBmkDataComment: TStringField
      FieldName = 'Comment'
      Size = 200
    end
  end
  object dsDataSheetBmkData: TDataSource
    DataSet = DataSheetBmkData
    Left = 472
    Top = 792
  end
  object PackBmkData: TRxMemoryData
    FieldDefs = <>
    Left = 544
    Top = 776
    object PackBmkDataCsomSz: TIntegerField
      FieldName = 'CsomSz'
    end
    object PackBmkDataRevizio: TSmallintField
      FieldName = 'Revizio'
    end
    object PackBmkDataVerzio: TSmallintField
      FieldName = 'Verzio'
    end
    object PackBmkDataSrsz: TSmallintField
      FieldName = 'Srsz'
    end
  end
  object dsPackBmkData: TDataSource
    DataSet = PackBmkData
    Left = 600
    Top = 792
  end
  object CopyCouplingData: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'CopyCouplingData'
    Left = 680
    Top = 776
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@SrcId'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@DestId'
        ParamType = ptInputOutput
      end>
  end
  object qBilincsPaintId: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select'
      #9'RendelesAz, TetelSrsz,'
      #9'EBAzonosito = dbo.OrderLcScIdToStr(RendelesAz, TetelSrsz, 1), '
      #9'EBFestes = dbo.OrderPaintToStr(RendelesAz, TetelSrsz, 1),'
      #9'BBAzonosito = dbo.OrderLcScIdToStr(RendelesAz, TetelSrsz, 2), '
      #9'BBFestes = dbo.OrderPaintToStr(RendelesAz, TetelSrsz, 2)'
      'from'
      #9'RendelesTetel'
      'where'
      #9'RendelesAz = :RendelesAz'
      #9'and TetelSrsz = :TetelSrsz')
    Left = 880
    Top = 160
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RendelesAz'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'TetelSrsz'
        ParamType = ptUnknown
      end>
    object qBilincsPaintIdRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object qBilincsPaintIdTetelSrsz: TIntegerField
      FieldName = 'TetelSrsz'
    end
    object qBilincsPaintIdEBAzonosito: TMemoField
      FieldName = 'EBAzonosito'
      BlobType = ftMemo
      Size = 1
    end
    object qBilincsPaintIdEBFestes: TMemoField
      FieldName = 'EBFestes'
      BlobType = ftMemo
      Size = 1
    end
    object qBilincsPaintIdBBAzonosito: TMemoField
      FieldName = 'BBAzonosito'
      BlobType = ftMemo
      Size = 1
    end
    object qBilincsPaintIdBBFestes: TMemoField
      FieldName = 'BBFestes'
      BlobType = ftMemo
      Size = 1
    end
  end
  object mInspekcio: TRxMemoryData
    FieldDefs = <>
    Left = 880
    Top = 528
    object mInspekcioInspekcio: TStringField
      FieldName = 'Inspekcio'
    end
  end
  object dsInspekcio: TDataSource
    DataSet = mInspekcio
    Left = 880
    Top = 576
  end
  object DeleteCsatlDependencies: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'DeleteCsatlDependencies;1'
    Left = 880
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@Srsz'
        ParamType = ptInput
      end>
  end
  object GetTableFieldCaption: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'GetTableFieldCaption;1'
    Left = 880
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = '@TableName'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@Language'
        ParamType = ptInput
      end>
    object GetTableFieldCaptionFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object GetTableFieldCaptionCaption: TStringField
      FieldName = 'Caption'
      Size = 50
    end
  end
  object AddProgEvent: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'sp_AddProgEvent;1'
    Left = 880
    Top = 304
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = '@ProgEvent'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@ProgName'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Note'
        ParamType = ptInput
      end>
  end
  object HSOrderHeadList: TStoredProc
    DatabaseName = 'MainDb'
    StoredProcName = 'HSOrderHeadList;1'
    Left = 544
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = '@RETURN_VALUE'
        ParamType = ptResult
        Value = 1302492604
      end
      item
        DataType = ftInteger
        Name = '@TermekKod'
        ParamType = ptInput
      end>
    object HSOrderHeadListRendelesAz: TIntegerField
      FieldName = 'RendelesAz'
    end
    object HSOrderHeadListRendSz: TStringField
      FieldName = 'RendSz'
    end
    object HSOrderHeadListSapRevizio: TSmallintField
      FieldName = 'SapRevizio'
    end
    object HSOrderHeadListAjanlatszam: TStringField
      FieldName = 'Ajanlatszam'
    end
    object HSOrderHeadListPhxRendSz: TStringField
      FieldName = 'PhxRendSz'
    end
    object HSOrderHeadListVevoRendSz: TStringField
      FieldName = 'VevoRendSz'
    end
    object HSOrderHeadListVevo: TStringField
      FieldName = 'Vevo'
      Size = 50
    end
    object HSOrderHeadListFelhasznalo: TStringField
      FieldName = 'Felhasznalo'
      Size = 50
    end
    object HSOrderHeadListErtTerulet: TStringField
      FieldName = 'ErtTerulet'
    end
    object HSOrderHeadListRMegj: TStringField
      FieldName = 'RMegj'
      Size = 50
    end
    object HSOrderHeadListTorolt: TBooleanField
      FieldName = 'Torolt'
    end
    object HSOrderHeadListFAutoUpdate: TBooleanField
      FieldName = 'FAutoUpdate'
    end
    object HSOrderHeadListRevExist: TBooleanField
      FieldName = 'RevExist'
    end
  end
end
