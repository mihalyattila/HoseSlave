unit PackDevSelectFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, MyProcs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Grids, DBGrids, RxLookup,
  Placemnt, dxDBGrid, dxTL, dxDBCtrl, dxCntner;

type
  TPackDevSelectForm = class(TForm)
    ScrollBox1: TScrollBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBImage1: TDBImage;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    PackDevTypeGrid: TDBGrid;
    DBNavigator1: TDBNavigator;
    PackDevGrid: TdxDBGrid;
    PackDevGridDeviceName: TdxDBGridMaskColumn;
    PackDevGridListOrder: TdxDBGridMaskColumn;
    PackDevGridTorolt: TdxDBGridColumn;
    Label1: TLabel;
    DBEdit14: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText11: TDBText;
    DBEdit11: TDBEdit;
    DBText12: TDBText;
    DBEdit12: TDBEdit;
    DBText13: TDBText;
    DBEdit13: TDBEdit;
    procedure Panel1Resize(Sender: TObject);
    procedure PackDevGridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PackDevSelectForm: TPackDevSelectForm;

implementation

uses HoseSlaveDmU;

{$R *.DFM}

procedure TPackDevSelectForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TPackDevSelectForm.PackDevGridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  i: integer ;
  Torolt: Boolean ;
begin
  i := TdxDBGrid(Sender).ColumnByFieldName('Torolt').Index ;
  if ANode.Values[i] = Null then Exit ;
  Torolt := Boolean(ANode.Values[i]) ;
  if Torolt then AColor := clGray ;
end;

end.
