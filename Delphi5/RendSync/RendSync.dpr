program RendSync;

uses
  Forms,
  RendSyncFormU in 'RendSyncFormU.pas' {RendSyncForm},
  DmU in 'DmU.pas' {Dm: TDataModule};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TRendSyncForm, RendSyncForm);
  Application.CreateForm(TDm, Dm);
  Application.Run;
end.
