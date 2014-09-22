unit InitFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, RXCtrls;

type
  TInitForm = class(TForm)
    ProgressBar1: TProgressBar;
    RxLabel1: TRxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    Counter: integer ;
  end;

var
  InitForm: TInitForm;

implementation

{$R *.DFM}

end.
