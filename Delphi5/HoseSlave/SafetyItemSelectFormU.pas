unit SafetyItemSelectFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, DBTables, Buttons, ExtCtrls, RxLookup, RXSpin, MyProcs;

type
  TSafetyItemSelectForm = class(TForm)
    qEszkoz: TQuery;
    qEszkozEszkozfajta: TStringField;
    qBeszerzes: TQuery;
    qBeszerzesBeszerzes: TStringField;
    dsEszkoz: TDataSource;
    dsBeszerzes: TDataSource;
    EszkozLabel: TLabel;
    Label1: TLabel;
    EszkozCombo: TRxDBLookupCombo;
    BeszerzesCombo: TRxDBLookupCombo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DbEdit: TRxSpinEdit;
    Label2: TLabel;
    procedure EszkozComboChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SelectedType: string ;
  end;

var
  SafetyItemSelectForm: TSafetyItemSelectForm;

implementation

{$R *.DFM}

procedure TSafetyItemSelectForm.EszkozComboChange(Sender: TObject);
begin
  if EszkozCombo.Text = 'L�nc' then BeszerzesCombo.Enabled := False else BeszerzesCombo.Enabled := True ;
  SelectedType := EszkozCombo.Text ;
end;

end.
