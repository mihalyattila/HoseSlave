program InspEdit;

uses
  Forms,
  InspEditU in 'InspEditU.pas' {InspEditForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TInspEditForm, InspEditForm);
  Application.Run;
end.
