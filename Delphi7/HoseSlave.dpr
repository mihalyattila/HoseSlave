program HoseSlave;

uses
  Forms,
  HoseSlaveFormU in 'HoseSlaveFormU.pas' {HoseSlaveForm},
  DmU in 'DmU.pas' {Dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(THoseSlaveForm, HoseSlaveForm);
  Application.Run;
end.
