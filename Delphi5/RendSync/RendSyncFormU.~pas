unit RendSyncFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxCntner, StdCtrls, Buttons, Placemnt, Menus;

type
  TRendSyncForm = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    dxDBGrid1: TdxDBGrid;
    BitBtn1: TBitBtn;
    FormStorage1: TFormStorage;
    dxDBGrid1ID: TdxDBGridMaskColumn;
    dxDBGrid1Rendelesszam: TdxDBGridMaskColumn;
    dxDBGrid1Revizio: TdxDBGridMaskColumn;
    dxDBGrid1Pozicio: TdxDBGridMaskColumn;
    dxDBGrid1UzlKotCsop: TdxDBGridMaskColumn;
    dxDBGrid1Orszag: TdxDBGridMaskColumn;
    dxDBGrid1Megrendelo: TdxDBGridMaskColumn;
    dxDBGrid1VevoRefSz: TdxDBGridMaskColumn;
    dxDBGrid1Kontakt: TdxDBGridMaskColumn;
    dxDBGrid1Arufogado: TdxDBGridMaskColumn;
    dxDBGrid1MegrendDatuma: TdxDBGridDateColumn;
    dxDBGrid1SzallHatarido: TdxDBGridDateColumn;
    dxDBGrid1RefBiz: TdxDBGridMaskColumn;
    dxDBGrid1HozzSzam: TdxDBGridMaskColumn;
    dxDBGrid1FizetesiMod: TdxDBGridMaskColumn;
    dxDBGrid1Incoterms1: TdxDBGridMaskColumn;
    dxDBGrid1Incoterms2: TdxDBGridMaskColumn;
    dxDBGrid1Penznem: TdxDBGridMaskColumn;
    dxDBGrid1Arfolyam: TdxDBGridMaskColumn;
    dxDBGrid1Szallitas: TdxDBGridMaskColumn;
    dxDBGrid1Csomagolas: TdxDBGridMaskColumn;
    dxDBGrid1SzerzPot: TdxDBGridMaskColumn;
    dxDBGrid1SzerzRab: TdxDBGridMaskColumn;
    dxDBGrid1SpecKtg1: TdxDBGridMaskColumn;
    dxDBGrid1SzerszamKtg: TdxDBGridMaskColumn;
    dxDBGrid1Cikkszam: TdxDBGridMaskColumn;
    dxDBGrid1Mennyiseg: TdxDBGridMaskColumn;
    dxDBGrid1Me: TdxDBGridMaskColumn;
    dxDBGrid1NettoAr: TdxDBGridMaskColumn;
    dxDBGrid1Hataratert: TdxDBGridMaskColumn;
    dxDBGrid1MennyCsok: TdxDBGridMaskColumn;
    dxDBGrid1Rabat: TdxDBGridMaskColumn;
    dxDBGrid1SpecKtg2: TdxDBGridMaskColumn;
    dxDBGrid1SpecCsom: TdxDBGridMaskColumn;
    dxDBGrid1UgynJut: TdxDBGridMaskColumn;
    dxDBGrid1Column36: TdxDBGridMaskColumn;
    dxDBGrid1Potlek: TdxDBGridMaskColumn;
    dxDBGrid1KikonyvDat: TdxDBGridDateColumn;
    dxDBGrid1SzamlaDat: TdxDBGridDateColumn;
    dxDBGrid1Kalkulalt: TdxDBGridMaskColumn;
    dxDBGrid1StndErtek: TdxDBGridMaskColumn;
    dxDBGrid1NettoArbHuf: TdxDBGridMaskColumn;
    dxDBGrid1AnyagNeve: TdxDBGridMaskColumn;
    dxDBGrid1Marking: TdxDBGridMaskColumn;
    dxDBGrid1Standard: TdxDBGridMaskColumn;
    dxDBGrid1StandardText: TdxDBGridMaskColumn;
    dxDBGrid1TypeOfPacking: TdxDBGridMaskColumn;
    dxDBGrid1InsideDia: TdxDBGridMaskColumn;
    dxDBGrid1Length: TdxDBGridMaskColumn;
    dxDBGrid1LengthUnit: TdxDBGridMaskColumn;
    dxDBGrid1Length2: TdxDBGridMaskColumn;
    dxDBGrid1TypeOfCoupling1: TdxDBGridMaskColumn;
    dxDBGrid1TypeOfCoupling1Text: TdxDBGridMaskColumn;
    dxDBGrid1TypeOfCoupling2: TdxDBGridMaskColumn;
    dxDBGrid1TypeOfCoupling2Text: TdxDBGridMaskColumn;
    dxDBGrid1SpecialImportOrder: TdxDBGridMaskColumn;
    dxDBGrid1PressureCategory: TdxDBGridMaskColumn;
    dxDBGrid1WorkingPressure: TdxDBGridMaskColumn;
    dxDBGrid1WorkingPressureUnit: TdxDBGridMaskColumn;
    dxDBGrid1DesignPressure: TdxDBGridMaskColumn;
    dxDBGrid1DesignPressureUnit: TdxDBGridMaskColumn;
    dxDBGrid1TestPressure: TdxDBGridMaskColumn;
    dxDBGrid1TestPressureUnit: TdxDBGridMaskColumn;
    dxDBGrid1SafetyFactor: TdxDBGridMaskColumn;
    dxDBGrid1Cover: TdxDBGridMaskColumn;
    dxDBGrid1OutsideProtection: TdxDBGridMaskColumn;
    dxDBGrid1InternalStripwoundTube: TdxDBGridMaskColumn;
    dxDBGrid1TypeOfLining: TdxDBGridMaskColumn;
    dxDBGrid1SafetyClamp: TdxDBGridMaskColumn;
    dxDBGrid1LiftingCollar: TdxDBGridMaskColumn;
    dxDBGrid1ElementC: TdxDBGridMaskColumn;
    dxDBGrid1MaxDesignTemperature: TdxDBGridMaskColumn;
    dxDBGrid1MinDesignTemperature: TdxDBGridMaskColumn;
    dxDBGrid1PBLCollarChain: TdxDBGridMaskColumn;
    dxDBGrid1Text1: TdxDBGridMaskColumn;
    dxDBGrid1Text2: TdxDBGridMaskColumn;
    dxDBGrid1Text3: TdxDBGridMaskColumn;
    dxDBGrid1LastUpdate: TdxDBGridDateColumn;
    dxDBGrid1OsszetettKulcs: TdxDBGridMaskColumn;
    PopupMenu1: TPopupMenu;
    FullExpand1: TMenuItem;
    FullCollapse1: TMenuItem;
    Oszlopokigaztsa1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FullExpand1Click(Sender: TObject);
    procedure FullCollapse1Click(Sender: TObject);
    procedure Oszlopokigaztsa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RendSyncForm: TRendSyncForm;

implementation

uses DmU;

{$R *.DFM}

procedure TRendSyncForm.BitBtn1Click(Sender: TObject);
begin
  Dm.qRendeles.Active := True ;
end;

procedure TRendSyncForm.FullExpand1Click(Sender: TObject);
begin
  dxDBGrid1.FullExpand ;  
end;

procedure TRendSyncForm.FullCollapse1Click(Sender: TObject);
begin
  dxDBGrid1.FullCollapse ;
end;

procedure TRendSyncForm.Oszlopokigaztsa1Click(Sender: TObject);
var
  i: integer ;
begin
  for i := 0 to dxDBGrid1.ColumnCount - 1 do dxDBGrid1.ApplyBestFit(dxDBGrid1.Columns[i]) ;
end;

end.
