unit AccessoryQryFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Placemnt,
  ExtCtrls, RxQuery, Db;

type
  TAccessoryQryForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    AccessoryQryGrid: TdxDBGrid;
    AccessoryQryGridCOLUMN1: TdxDBGridMaskColumn;
    AccessoryQryGridaccessoryCounter: TdxDBGridMaskColumn;
    AccessoryQryGridaccessoryANb: TdxDBGridMaskColumn;
    AccessoryQryGridaccessoryDNb: TdxDBGridMaskColumn;
    AccessoryQryGridAccDescriptionH: TdxDBGridMaskColumn;
    AccessoryQryGriddescription: TdxDBGridMaskColumn;
    AccessoryQryGriddescriptionH: TdxDBGridMaskColumn;
    AccessoryQryGriddate: TdxDBGridDateColumn;
    AccessoryQryGridweight: TdxDBGridMaskColumn;
    AccessoryQryGridpriceSAP: TdxDBGridMaskColumn;
    AccessoryQryGridprice: TdxDBGridMaskColumn;
    AccessoryQryGriddatePrice: TdxDBGridDateColumn;
    AccessoryQryGridmaterial: TdxDBGridMaskColumn;
    AccessoryQryGridSteel: TdxDBGridMaskColumn;
    AccessoryQryGridID: TdxDBGridMaskColumn;
    AccessoryQryGridOD: TdxDBGridMaskColumn;
    AccessoryQryGridL: TdxDBGridMaskColumn;
    AccessoryQryGridM1: TdxDBGridMaskColumn;
    AccessoryQryGridstatus: TdxDBGridMaskColumn;
    AccessoryQryGridnote: TdxDBGridMaskColumn;
    FormPlacement1: TFormPlacement;
    SpeedButton1: TSpeedButton;
    procedure Panel1Resize(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccessoryQryForm: TAccessoryQryForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TAccessoryQryForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TAccessoryQryForm.SpeedButton1Click(Sender: TObject);
var
  Query: TRxQuery ;
  bmk: TBookmark ;
begin
  Query := Nil ;
  try
    try
      Query := TRxQuery(AccessoryQryGrid.DataSource.DataSet) ;
      bmk := Query.GetBookmark ;
      Query.DisableControls ;
      Query.Active := False ;
      Query.Active := True ;
      if Query.BookmarkValid(bmk) then Query.GotoBookmark(bmk) ;
    finally
      Query.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TAccessoryQryForm.FormShow(Sender: TObject);
begin
  AccessoryQryGrid.SetFocus ;
  AccessoryQryGrid.FocusedField := AccessoryQryGrid.DataSource.DataSet.FieldByName('accessoryDNb') ; 
end;

end.
