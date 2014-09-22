unit EventsFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TEventsForm = class(TForm)
    EventListBox: TListBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EventsForm: TEventsForm;

implementation

{$R *.DFM}

end.
