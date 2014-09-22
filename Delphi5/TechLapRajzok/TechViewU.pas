unit TechViewU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, Db, DBTables;

type
  TForm1 = class(TForm)
    Database1: TDatabase;
    Table1: TTable;
    Table1VegzodesId: TIntegerField;
    Table1Megnevezes: TStringField;
    Table1Picture: TBlobField;
    Table1Rogzitette: TStringField;
    Table1RogzIdopont: TDateTimeField;
    DataSource1: TDataSource;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    DBImage1: TDBImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Table1.Active := True ;
end;

end.
