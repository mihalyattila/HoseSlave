unit AboutBoxU;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, RXCtrls;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Version: TLabel;
    ProductDescription: TLabel;
    ProductName: TRxLabel;
    CreatedBy: TRxLabel;
    Image1: TImage;
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.DFM}

procedure TAboutBox.FormClick(Sender: TObject);
begin
  Close ;
end;

end.

