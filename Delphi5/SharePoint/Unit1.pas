unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, Psock, NMHttp;

type
  TForm1 = class(TForm)
    Button1: TButton;
    FilenameEdit1: TFilenameEdit;
    NMHTTP1: TNMHTTP;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

end.