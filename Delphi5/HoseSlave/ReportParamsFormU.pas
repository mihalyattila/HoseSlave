unit ReportParamsFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls;

type
  TReportParamsForm = class(TForm)
    Panel1: TPanel;
    dxDBGrid1: TdxDBGrid;
    FormPlacement1: TFormPlacement;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportParamsForm: TReportParamsForm;

implementation

{$R *.DFM}

end.
