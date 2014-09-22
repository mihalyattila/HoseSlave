unit ElorendGridFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxTL, dxDBCtrl, dxDBGrid;

type
  TElorendGridForm = class(TForm)
    dxDBGrid1: TdxDBGrid;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ElorendGridForm: TElorendGridForm;

implementation

{$R *.DFM}

end.
