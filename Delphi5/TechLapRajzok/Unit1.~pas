unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Db, DBTables, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  StdCtrls, Mask, MyDbCtrl, Barcode, dxTL, dxDBCtrl, dxDBGrid, ADODB,
  dxDBTLCl, dxGrClms, Buttons, MyProcs, Ole2Auto, ExtDlgs ;

type

  TEndPicUploaderForm = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBImage1: TDBImage;
    ADOTable1VegzodesId: TIntegerField;
    ADOTable1Megnevezes: TStringField;
    ADOTable1Picture: TBlobField;
    ADOTable1Rogzitette: TStringField;
    ADOTable1RogzIdopont: TDateTimeField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc1UserName: TStringField;
    ADOStoredProc1UserId: TIntegerField;
    ADOStoredProc1SPID: TSmallintField;
    ADOStoredProc1Ident: TBCDField;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ADOTable1BeforePost(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CurrentUserName : string ;
    //DBTypeImage: TDBTypeImage ;
  end;

var
  EndPicUploaderForm: TEndPicUploaderForm;

implementation

{$R *.DFM}

procedure TEndPicUploaderForm.FormCreate(Sender: TObject);
var
  DBTypeImage: TDBImage ;
  ProgName: string ;
begin
  try
    try
      ProgName := 'EndPicUploader' ;
      AdoTable1.Active := True ;
      ADOStoredProc1.Parameters.Refresh ;
      ADOStoredProc1.Parameters.ParamByName('@ProgramName').Value := ProgName ;
      ADOStoredProc1.Prepared := True ;
      ADOStoredProc1.Active := True ;
      CurrentUserName := ADOStoredProc1UserName.AsString ;
      Label3.Caption := ADOConnection1.ConnectionString ;
    finally
      ADOStoredProc1.Active := False ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TEndPicUploaderForm.SpeedButton1Click(Sender: TObject);
var
  fn: string ;
begin
  if not (AdoTable1.State in [dsInsert, dsEdit]) then AdoTable1.Edit ;
  AdoTable1Picture.Clear ;
end;

procedure TEndPicUploaderForm.ADOTable1BeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('Rogzitette').AsString := CurrentUserName ;
  DataSet.FieldByName('RogzIdopont').AsDatetime := Now ;
end;

procedure TEndPicUploaderForm.SpeedButton2Click(Sender: TObject);
var
  fn: string ;
begin
  if OpenPictureDialog1.Execute then begin
    fn := OpenPictureDialog1.FileName ;
    if not (ADOTable1.State in [dsInsert, dsEdit]) then ADOTable1.Edit ;
    ADOTable1Picture.LoadFromFile(fn) ;
  end ;
end;

end.
