unit ICDataExportFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Placemnt, dxCntner, dxTL, dxDBCtrl, dxDBGrid, StdCtrls, Buttons, MyProcs, DB;

type
  TICDataExportForm = class(TForm)
    FormPlacement1: TFormPlacement;
    Panel1: TPanel;
    ICDataExportGrid: TdxDBGrid;
    Panel2: TPanel;
    ICDataExportGridMeo_Az: TdxDBGridMaskColumn;
    ICDataExportGridRendSz: TdxDBGridMaskColumn;
    ICDataExportGridTetelSrsz: TdxDBGridMaskColumn;
    ICDataExportGridAssetNumber: TdxDBGridMaskColumn;
    ICDataExportGridCategoryID: TdxDBGridMaskColumn;
    ICDataExportGridItemDescription: TdxDBGridMaskColumn;
    ICDataExportGridDistributorID: TdxDBGridMaskColumn;
    ICDataExportGridClientID: TdxDBGridMaskColumn;
    ICDataExportGridLocationID: TdxDBGridMaskColumn;
    ICDataExportGridChipID: TdxDBGridMaskColumn;
    ICDataExportGridCertificationStatus: TdxDBGridMaskColumn;
    ICDataExportGridCertificationInterval: TdxDBGridMaskColumn;
    ICDataExportGridBoreSize: TdxDBGridMaskColumn;
    ICDataExportGridNominalLegth: TdxDBGridMaskColumn;
    ICDataExportGridDesignPressure: TdxDBGridMaskColumn;
    ICDataExportGridTestPressure: TdxDBGridMaskColumn;
    ICDataExportGridInternalStripwoundTube: TdxDBGridMaskColumn;
    ICDataExportGridEndCoupling1: TdxDBGridMaskColumn;
    ICDataExportGridEndCoupling2: TdxDBGridMaskColumn;
    ICDataExportGridMaxDesignTemp: TdxDBGridMaskColumn;
    ICDataExportGridMinDesignTemp: TdxDBGridMaskColumn;
    ICDataExportGridManufacturer: TdxDBGridMaskColumn;
    ICDataExportGridHoseType: TdxDBGridMaskColumn;
    ICDataExportGridHoseStandard: TdxDBGridMaskColumn;
    ICDataExportGridHoseCover: TdxDBGridMaskColumn;
    ICDataExportGridOutsideProtection: TdxDBGridMaskColumn;
    ICDataExportGridOpDynamicMBR: TdxDBGridMaskColumn;
    ICDataExportGridStorageMBR: TdxDBGridMaskColumn;
    ICDataExportGridOpStaticMBR: TdxDBGridMaskColumn;
    ICDataExportGridNotes: TdxDBGridMaskColumn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure Panel1Resize(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ICDataExportForm: TICDataExportForm;
  f: Text ;

implementation

uses OrderDmU;

{$R *.DFM}

procedure TICDataExportForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TICDataExportForm.BitBtn1Click(Sender: TObject);
var
  ds: TDataSet ;
  List: TStringList ;
  i, Meo_az: integer ;
  ExportFieldName, FileName, s: string ;
begin
  List := Nil ;
  try
    try
      if SaveDialog1.Execute then begin
        FileName := SaveDialog1.FileName ;
      end
      else Exit ;

      AssignFile(f, FileName) ;
      Rewrite(f) ;

      ds := ICDataExportGrid.DataSource.DataSet ;
      List := TStringList.Create ;
      for i := 0 to ICDataExportGrid.Bands.Count - 1 do begin
        ExportFieldName := Trim(ICDataExportGrid.Bands[i].Caption) ;
        List.Add(ExportFieldName) ;
      end ;
      ds.First ;
      while not ds.Eof do begin
        Meo_az := ds.FieldByName('Meo_az').AsInteger ;
        s := '' ;
        for i := 0 to ds.FieldCount - 1 do begin
          if List.Strings[i] <> '' then begin
            s := s + List.Strings[i] + '=' + ds.Fields[i].AsString + #9 ;
          end ;
        end ;
        Delete(s, Length(s), 1) ;
        WriteLn(f, s) ;
        OrderDm.spSetMeoExportDate.ParamByName('@Meo_az').AsInteger := Meo_az ;
        OrderDm.spSetMeoExportDate.ExecProc ;
        ds.Next ;
      end ;
    finally
      if List <> Nil then List.Free ;
      CloseFile(f) ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

end.
