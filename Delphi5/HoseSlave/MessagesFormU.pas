unit MessagesFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, MyProcs, Buttons, RxRichEd;

type
  TMessagesForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    MsgEdit: TRxRichEdit;
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MessagesForm: TMessagesForm;

implementation

{$R *.DFM}

procedure TMessagesForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

end.
