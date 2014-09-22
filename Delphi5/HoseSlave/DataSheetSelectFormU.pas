unit DataSheetSelectFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, MyProcs, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid, Db, DBTables, dxCntner, Placemnt;

type
  TDataSheetSelectForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSheetSelectGrid: TdxDBGrid;
    qAdatlap: TQuery;
    qAdatlapCOLUMN1: TStringField;
    qAdatlapAdatlapId: TIntegerField;
    qAdatlapAdatlapSzam: TStringField;
    qAdatlapValtozat: TSmallintField;
    qAdatlapCegNev: TStringField;
    qAdatlapOsztalyNev: TStringField;
    qAdatlapMegnevezes: TStringField;
    qAdatlapAltalanosNev: TStringField;
    qAdatlapSzabvany: TStringField;
    qAdatlapId: TFloatField;
    qAdatlapNyomas: TFloatField;
    qAdatlapKeszitette: TStringField;
    qAdatlapKeszitesDatuma: TDateTimeField;
    qAdatlapEllenorizve: TBooleanField;
    qAdatlapEllenorizte: TStringField;
    qAdatlapEllenorzesDatuma: TDateTimeField;
    qAdatlapEgyedi: TBooleanField;
    qAdatlapKiadva: TBooleanField;
    qAdatlapKiadasIdopontja: TDateTimeField;
    qAdatlapKiadta: TStringField;
    qAdatlapErvenyes: TBooleanField;
    qAdatlapErvenyesitesIdopontja: TDateTimeField;
    qAdatlapErvenyesitette: TStringField;
    dsAdatlap: TDataSource;
    DataSheetSelectGridCOLUMN1: TdxDBGridMaskColumn;
    DataSheetSelectGridAdatlapId: TdxDBGridMaskColumn;
    DataSheetSelectGridAdatlapSzam: TdxDBGridMaskColumn;
    DataSheetSelectGridValtozat: TdxDBGridMaskColumn;
    DataSheetSelectGridCegNev: TdxDBGridMaskColumn;
    DataSheetSelectGridOsztalyNev: TdxDBGridMaskColumn;
    DataSheetSelectGridMegnevezes: TdxDBGridMaskColumn;
    DataSheetSelectGridAltalanosNev: TdxDBGridMaskColumn;
    DataSheetSelectGridSzabvany: TdxDBGridMaskColumn;
    DataSheetSelectGridId: TdxDBGridMaskColumn;
    DataSheetSelectGridNyomas: TdxDBGridMaskColumn;
    DataSheetSelectGridKeszitette: TdxDBGridMaskColumn;
    DataSheetSelectGridKeszitesDatuma: TdxDBGridDateColumn;
    DataSheetSelectGridEllenorizve: TdxDBGridCheckColumn;
    DataSheetSelectGridEllenorizte: TdxDBGridMaskColumn;
    DataSheetSelectGridEllenorzesDatuma: TdxDBGridDateColumn;
    DataSheetSelectGridEgyedi: TdxDBGridCheckColumn;
    DataSheetSelectGridKiadva: TdxDBGridCheckColumn;
    DataSheetSelectGridKiadasIdopontja: TdxDBGridDateColumn;
    DataSheetSelectGridKiadta: TdxDBGridMaskColumn;
    DataSheetSelectGridErvenyes: TdxDBGridCheckColumn;
    DataSheetSelectGridErvenyesitesIdopontja: TdxDBGridDateColumn;
    DataSheetSelectGridErvenyesitette: TdxDBGridMaskColumn;
    FormPlacement1: TFormPlacement;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSheetSelectForm: TDataSheetSelectForm;

implementation

{$R *.DFM}

procedure TDataSheetSelectForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
