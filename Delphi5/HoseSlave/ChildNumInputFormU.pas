unit ChildNumInputFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FnpNumericEdit, Buttons, ExtCtrls;

type
  TChildNumInputForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    ChildNumEdit: TFnpNumericEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildNumInputForm: TChildNumInputForm;

implementation

{$R *.DFM}

end.
