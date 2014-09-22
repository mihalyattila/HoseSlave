program HSLoader;

uses
  Forms,
  HSLoaderFormU in 'HSLoaderFormU.pas' {HSLoaderForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'HSLoader';
  Application.CreateForm(THSLoaderForm, HSLoaderForm);
  Application.Run;
end.
