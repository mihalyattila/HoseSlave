object Dm: TDm
  OldCreateOrder = False
  Left = 301
  Top = 231
  Height = 640
  Width = 870
  object MainDb: TDatabase
    AliasName = 'AnormaTest'
    Connected = True
    DatabaseName = 'MainDb'
    Params.Strings = (
      'USER NAME=sa')
    SessionName = 'Default'
    Left = 40
    Top = 24
  end
  object qRendeles: TQuery
    DatabaseName = 'MainDb'
    SQL.Strings = (
      'select ID = Cast(NEWID() as char(50)), *'
      'from'
      #9'(select *'
      #9'from'
      #9#9'RendelesSap'
      #9'where'
      #9#9'Rendelesszam in (select distinct Rendelesszam '
      #9#9'from '
      #9#9'RendelesSap'
      #9#9'where'
      #9#9'Left(Cikkszam, 4) in ('#39'4256'#39','#39'4257'#39'))) x'
      'where'
      
        #9'not Rendelesszam in (select rendsz from rendelesfej where terme' +
        'kkod = 1)'
      '        and Rendelesszam > 300000'
      'order by'
      #9'Rendelesszam desc')
    Left = 40
    Top = 88
    object qRendelesID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 50
    end
    object qRendelesRendelesszam: TStringField
      FieldName = 'Rendelesszam'
    end
    object qRendelesRevizio: TIntegerField
      FieldName = 'Revizio'
    end
    object qRendelesPozicio: TIntegerField
      FieldName = 'Pozicio'
    end
    object qRendelesUzlKotCsop: TStringField
      FieldName = 'UzlKotCsop'
      Size = 10
    end
    object qRendelesOrszag: TStringField
      FieldName = 'Orszag'
      Size = 50
    end
    object qRendelesMegrendelo: TStringField
      FieldName = 'Megrendelo'
      Size = 255
    end
    object qRendelesVevoRefSz: TStringField
      FieldName = 'VevoRefSz'
      Size = 255
    end
    object qRendelesKontakt: TStringField
      FieldName = 'Kontakt'
      Size = 255
    end
    object qRendelesArufogado: TStringField
      FieldName = 'Arufogado'
      Size = 255
    end
    object qRendelesMegrendDatuma: TDateTimeField
      FieldName = 'MegrendDatuma'
    end
    object qRendelesSzallHatarido: TDateTimeField
      FieldName = 'SzallHatarido'
    end
    object qRendelesRefBiz: TStringField
      FieldName = 'RefBiz'
      Size = 50
    end
    object qRendelesHozzSzam: TStringField
      FieldName = 'HozzSzam'
      Size = 50
    end
    object qRendelesFizetesiMod: TStringField
      FieldName = 'FizetesiMod'
      Size = 255
    end
    object qRendelesIncoterms1: TStringField
      FieldName = 'Incoterms1'
    end
    object qRendelesIncoterms2: TStringField
      FieldName = 'Incoterms2'
      Size = 255
    end
    object qRendelesPenznem: TStringField
      FieldName = 'Penznem'
    end
    object qRendelesArfolyam: TFloatField
      FieldName = 'Arfolyam'
    end
    object qRendelesSzallitas: TIntegerField
      FieldName = 'Szallitas'
    end
    object qRendelesCsomagolas: TIntegerField
      FieldName = 'Csomagolas'
    end
    object qRendelesSzerzPot: TFloatField
      FieldName = 'SzerzPot%'
    end
    object qRendelesSzerzRab: TFloatField
      FieldName = 'SzerzRab'
    end
    object qRendelesSpecKtg1: TFloatField
      FieldName = 'SpecKtg1'
    end
    object qRendelesSzerszamKtg: TFloatField
      FieldName = 'SzerszamKtg'
    end
    object qRendelesCikkszam: TStringField
      FieldName = 'Cikkszam'
      Size = 50
    end
    object qRendelesMennyiseg: TFloatField
      FieldName = 'Mennyiseg'
    end
    object qRendelesMe: TStringField
      FieldName = 'Me'
      Size = 10
    end
    object qRendelesNettoAr: TFloatField
      FieldName = 'NettoAr'
    end
    object qRendelesHataratert: TFloatField
      FieldName = 'Hataratert'
    end
    object qRendelesMennyCsok: TFloatField
      FieldName = 'MennyCsok'
    end
    object qRendelesRabat: TFloatField
      FieldName = 'Rabat%'
    end
    object qRendelesSpecKtg2: TFloatField
      FieldName = 'SpecKtg2'
    end
    object qRendelesSpecCsom: TFloatField
      FieldName = 'SpecCsom'
    end
    object qRendelesUgynJut: TFloatField
      FieldName = 'UgynJut%'
    end
    object qRendelesUgynJut2: TFloatField
      FieldName = 'UgynJut'
    end
    object qRendelesPotlek: TFloatField
      FieldName = 'Potlek%'
    end
    object qRendelesKikonyvDat: TDateTimeField
      FieldName = 'KikonyvDat'
    end
    object qRendelesSzamlaDat: TDateTimeField
      FieldName = 'SzamlaDat'
    end
    object qRendelesKalkulalt: TFloatField
      FieldName = 'Kalkulalt'
    end
    object qRendelesStndErtek: TFloatField
      FieldName = 'StndErtek'
    end
    object qRendelesNettoArbHuf: TFloatField
      FieldName = 'NettoArbHuf'
    end
    object qRendelesAnyagNeve: TStringField
      FieldName = 'AnyagNeve'
      Size = 50
    end
    object qRendelesMarking: TStringField
      FieldName = 'Marking'
      Size = 50
    end
    object qRendelesStandard: TStringField
      FieldName = 'Standard'
      Size = 50
    end
    object qRendelesStandardText: TStringField
      FieldName = 'StandardText'
      Size = 50
    end
    object qRendelesTypeOfPacking: TStringField
      FieldName = 'TypeOfPacking'
      Size = 50
    end
    object qRendelesInsideDia: TFloatField
      FieldName = 'InsideDia'
    end
    object qRendelesLength: TFloatField
      FieldName = 'Length'
    end
    object qRendelesLengthUnit: TStringField
      FieldName = 'LengthUnit'
      Size = 10
    end
    object qRendelesLength2: TFloatField
      FieldName = 'Length2'
    end
    object qRendelesTypeOfCoupling1: TStringField
      FieldName = 'TypeOfCoupling1'
      Size = 50
    end
    object qRendelesTypeOfCoupling1Text: TStringField
      FieldName = 'TypeOfCoupling1Text'
      Size = 255
    end
    object qRendelesTypeOfCoupling2: TStringField
      FieldName = 'TypeOfCoupling2'
      Size = 50
    end
    object qRendelesTypeOfCoupling2Text: TStringField
      FieldName = 'TypeOfCoupling2Text'
      Size = 255
    end
    object qRendelesSpecialImportOrder: TStringField
      FieldName = 'SpecialImportOrder'
      Size = 50
    end
    object qRendelesPressureCategory: TStringField
      FieldName = 'PressureCategory'
      Size = 10
    end
    object qRendelesWorkingPressure: TFloatField
      FieldName = 'WorkingPressure'
    end
    object qRendelesWorkingPressureUnit: TStringField
      FieldName = 'WorkingPressureUnit'
    end
    object qRendelesDesignPressure: TFloatField
      FieldName = 'DesignPressure'
    end
    object qRendelesDesignPressureUnit: TStringField
      FieldName = 'DesignPressureUnit'
      Size = 10
    end
    object qRendelesTestPressure: TFloatField
      FieldName = 'TestPressure'
    end
    object qRendelesTestPressureUnit: TStringField
      FieldName = 'TestPressureUnit'
      Size = 10
    end
    object qRendelesSafetyFactor: TFloatField
      FieldName = 'SafetyFactor'
    end
    object qRendelesCover: TStringField
      FieldName = 'Cover'
      Size = 50
    end
    object qRendelesOutsideProtection: TStringField
      FieldName = 'OutsideProtection'
      Size = 50
    end
    object qRendelesInternalStripwoundTube: TStringField
      FieldName = 'InternalStripwoundTube'
      Size = 50
    end
    object qRendelesTypeOfLining: TStringField
      FieldName = 'TypeOfLining'
      Size = 50
    end
    object qRendelesSafetyClamp: TStringField
      FieldName = 'SafetyClamp'
      Size = 50
    end
    object qRendelesLiftingCollar: TStringField
      FieldName = 'LiftingCollar'
      Size = 50
    end
    object qRendelesElementC: TStringField
      FieldName = 'ElementC'
      Size = 50
    end
    object qRendelesMaxDesignTemperature: TIntegerField
      FieldName = 'MaxDesignTemperature'
    end
    object qRendelesMinDesignTemperature: TIntegerField
      FieldName = 'MinDesignTemperature'
    end
    object qRendelesPBLCollarChain: TStringField
      FieldName = 'PBLCollarChain'
      Size = 50
    end
    object qRendelesText1: TStringField
      FieldName = 'Text1'
      Size = 50
    end
    object qRendelesText2: TStringField
      FieldName = 'Text2'
      Size = 50
    end
    object qRendelesText3: TStringField
      FieldName = 'Text3'
      Size = 50
    end
    object qRendelesLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object qRendelesOsszetettKulcs: TStringField
      FieldName = 'OsszetettKulcs'
      Size = 27
    end
  end
  object dsRendeles: TDataSource
    DataSet = qRendeles
    Left = 96
    Top = 104
  end
end
