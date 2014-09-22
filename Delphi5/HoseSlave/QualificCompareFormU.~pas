unit QualificCompareFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, RxMemDS, Placemnt,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner;

type
  TQualificCompareForm = class(TForm)
    CompareData: TRxMemoryData;
    CompareDataData: TDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CompareDataTipusNev: TStringField;
    CompareDataMegnevezes: TStringField;
    CompareDataRajzszam: TStringField;
    CompareDataCikkszam: TStringField;
    CompareDataDarabszam: TIntegerField;
    CompareDataSelected: TBooleanField;
    QualificCompareGrid: TdxDBGrid;
    QualificCompareGridTipusNev: TdxDBGridMaskColumn;
    QualificCompareGridMegnevezes: TdxDBGridMaskColumn;
    QualificCompareGridRajzszam: TdxDBGridMaskColumn;
    QualificCompareGridCikkszam: TdxDBGridMaskColumn;
    QualificCompareGridDarabszam: TdxDBGridMaskColumn;
    QualificCompareGridSelected: TdxDBGridCheckColumn;
    FormPlacement1: TFormPlacement;
    QualificCompareGridTetelSrsz: TdxDBGridMaskColumn;
    CompareDataTetelSrsz: TIntegerField;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QualificCompareForm: TQualificCompareForm;

implementation

{$R *.DFM}

procedure TQualificCompareForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
