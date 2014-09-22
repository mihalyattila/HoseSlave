unit FindItemFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, dxCntner, Placemnt, ExtCtrls, Menus ;

type
  TFindItemForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    FindItemGrid: TdxDBGrid;
    FindItemGridCOLUMN1: TdxDBGridMaskColumn;
    FindItemGridPackId: TdxDBGridMaskColumn;
    FindItemGridPackNum: TdxDBGridMaskColumn;
    FindItemGridPackRevision: TdxDBGridMaskColumn;
    FindItemGridPackVersion: TdxDBGridMaskColumn;
    FindItemGridIdent1: TdxDBGridMaskColumn;
    FindItemGridIdent2: TdxDBGridMaskColumn;
    FindItemGridName: TdxDBGridMaskColumn;
    FindItemGridOfferPerson: TdxDBGridMaskColumn;
    FindItemGridNote: TdxDBGridMaskColumn;
    FindItemGridStatuszNev: TdxDBGridMaskColumn;
    FindItemGridCreatorName: TdxDBGridMaskColumn;
    FindItemGridCreateDate: TdxDBGridDateColumn;
    FindItemGridPackItemId: TdxDBGridMaskColumn;
    FindItemGridDescription: TdxDBGridMaskColumn;
    FindItemGridPieces: TdxDBGridMaskColumn;
    FindItemGridBodyLength: TdxDBGridMaskColumn;
    FindItemGridBodyCode: TdxDBGridMaskColumn;
    FindItemGridBodyName: TdxDBGridMaskColumn;
    FindItemGridBodyOd: TdxDBGridMaskColumn;
    FindItemGridMBRstorage: TdxDBGridMaskColumn;
    FindItemGridBodyWeight: TdxDBGridMaskColumn;
    FindItemGridInnerSteel: TdxDBGridCheckColumn;
    FindItemGridFireResistant: TdxDBGridCheckColumn;
    FindItemGridOuterSteel: TdxDBGridCheckColumn;
    FindItemGridPa: TdxDBGridCheckColumn;
    FindItemGridHelix: TdxDBGridCheckColumn;
    FindItemGridHeatRaced: TdxDBGridCheckColumn;
    FindItemGridDragChain: TdxDBGridCheckColumn;
    FindItemGridLongHose: TdxDBGridCheckColumn;
    FindItemGridCouplingCode1: TdxDBGridMaskColumn;
    FindItemGridCouplingName1: TdxDBGridMaskColumn;
    FindItemGridCouplingWeight1: TdxDBGridMaskColumn;
    FindItemGridCouplingOd1: TdxDBGridMaskColumn;
    FindItemGridOdMax1: TdxDBGridMaskColumn;
    FindItemGridCouplingCode2: TdxDBGridMaskColumn;
    FindItemGridCouplingName2: TdxDBGridMaskColumn;
    FindItemGridCouplingWeight2: TdxDBGridMaskColumn;
    FindItemGridCouplingOd2: TdxDBGridMaskColumn;
    FindItemGridOdMax2: TdxDBGridMaskColumn;
    FindItemGridLiftingCollarExists: TdxDBGridCheckColumn;
    FindItemGridLiftingCollarName: TdxDBGridMaskColumn;
    FindItemGridLiftingCollarCode: TdxDBGridMaskColumn;
    FindItemGridLiftingCollarId: TdxDBGridMaskColumn;
    FindItemGridLiftingCollarOd: TdxDBGridMaskColumn;
    FindItemGridLiftingCollarWeight: TdxDBGridMaskColumn;
    FindItemGridLiftingCollarReinforced: TdxDBGridCheckColumn;
    FindItemGridLiftingCollarPieces: TdxDBGridMaskColumn;
    FindItemGridSafetyClampExists: TdxDBGridCheckColumn;
    FindItemGridSafetyClampName: TdxDBGridMaskColumn;
    FindItemGridSafetyClampCode: TdxDBGridMaskColumn;
    FindItemGridSafetyClampId: TdxDBGridMaskColumn;
    FindItemGridSafetyClampOd: TdxDBGridMaskColumn;
    FindItemGridSafetyClampWeight: TdxDBGridMaskColumn;
    FindItemGridSafetyClampPieces: TdxDBGridMaskColumn;
    FindItemGridSafetyChainExists: TdxDBGridCheckColumn;
    FindItemGridSafetyChainWeight: TdxDBGridMaskColumn;
    FindItemGridOtherAccExists: TdxDBGridCheckColumn;
    FindItemGridOtherAccessories: TdxDBGridMaskColumn;
    FindItemGridOtherAccWeight: TdxDBGridMaskColumn;
    FindItemGridSumWeight: TdxDBGridMaskColumn;
    FindItemGridItemCreatorName: TdxDBGridMaskColumn;
    FindItemGridSleeveExists: TdxDBGridCheckColumn;
    FindItemGridBodyId: TdxDBGridMaskColumn;
    FindItemGridCouplingExists: TdxDBGridCheckColumn;
    PopupMenu1: TPopupMenu;
    Oszlopokigaztsa1: TMenuItem;
    FindItemGridItemCreateDate: TdxDBGridColumn;
    procedure Panel1Resize(Sender: TObject);
    procedure Oszlopokigaztsa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FindItemForm: TFindItemForm;

implementation

uses HoseSlaveDmU, HoseSlaveU;

{$R *.DFM}

procedure TFindItemForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TFindItemForm.Oszlopokigaztsa1Click(Sender: TObject);
begin
  HoseSlaveU.SetGridColWidth(FindItemGrid) ;
end;

end.
