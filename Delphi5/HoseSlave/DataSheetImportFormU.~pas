unit DataSheetImportFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Mask, Db, DBTables, Grids, DBGrids,
  dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, dxCntner, RxMemDS, MyProcs,
  Buttons, Placemnt;

type
  TDataSheetImportForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    FormPlacement1: TFormPlacement;
    Panel2: TPanel;
    RxMemoryData1: TRxMemoryData;
    DataSource1: TDataSource;
    RxMemoryData1Id: TIntegerField;
    RxMemoryData1Kategoria: TStringField;
    RxMemoryData1Rajzszam: TStringField;
    RxMemoryData1Megnevezes: TStringField;
    RxMemoryData1accessoryType: TIntegerField;
    RxMemoryData1Checked: TBooleanField;
    AdatlapQry: TQuery;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    dxDBGrid2: TdxDBGrid;
    AdatlapQryDs: TDataSource;
    dxDBGrid2AdatlapId: TdxDBGridMaskColumn;
    dxDBGrid2AdatlapSzam: TdxDBGridMaskColumn;
    dxDBGrid2Valtozat: TdxDBGridMaskColumn;
    dxDBGrid2CegNev: TdxDBGridMaskColumn;
    dxDBGrid2OsztalyNev: TdxDBGridMaskColumn;
    dxDBGrid2Megnevezes: TdxDBGridMaskColumn;
    dxDBGrid2AltalanosNev: TdxDBGridMaskColumn;
    dxDBGrid2Szabvany: TdxDBGridMaskColumn;
    dxDBGrid2Id: TdxDBGridMaskColumn;
    dxDBGrid2Nyomas: TdxDBGridMaskColumn;
    dxDBGrid2Keszitette: TdxDBGridMaskColumn;
    dxDBGrid2KeszitesDatuma: TdxDBGridDateColumn;
    dxDBGrid2Ellenorizve: TdxDBGridCheckColumn;
    dxDBGrid2Ellenorizte: TdxDBGridMaskColumn;
    dxDBGrid2EllenorzesDatuma: TdxDBGridDateColumn;
    dxDBGrid2Egyedi: TdxDBGridCheckColumn;
    dxDBGrid2Kiadva: TdxDBGridCheckColumn;
    dxDBGrid2KiadasIdopontja: TdxDBGridDateColumn;
    dxDBGrid2Kiadta: TdxDBGridMaskColumn;
    dxDBGrid2Ervenyes: TdxDBGridCheckColumn;
    dxDBGrid2ErvenyesitesIdopontja: TdxDBGridDateColumn;
    dxDBGrid2Ervenyesitette: TdxDBGridMaskColumn;
    AdatlapQryCOLUMN1: TStringField;
    AdatlapQryAdatlapId: TIntegerField;
    AdatlapQryAdatlapSzam: TStringField;
    AdatlapQryValtozat: TSmallintField;
    AdatlapQryCegNev: TStringField;
    AdatlapQryOsztalyNev: TStringField;
    AdatlapQryMegnevezes: TStringField;
    AdatlapQryAltalanosNev: TStringField;
    AdatlapQrySzabvany: TStringField;
    AdatlapQryId: TFloatField;
    AdatlapQryNyomas: TFloatField;
    AdatlapQryKeszitette: TStringField;
    AdatlapQryKeszitesDatuma: TDateTimeField;
    AdatlapQryEllenorizve: TBooleanField;
    AdatlapQryEllenorizte: TStringField;
    AdatlapQryEllenorzesDatuma: TDateTimeField;
    AdatlapQryEgyedi: TBooleanField;
    AdatlapQryKiadva: TBooleanField;
    AdatlapQryKiadasIdopontja: TDateTimeField;
    AdatlapQryKiadta: TStringField;
    AdatlapQryErvenyes: TBooleanField;
    AdatlapQryErvenyesitesIdopontja: TDateTimeField;
    AdatlapQryErvenyesitette: TStringField;
    ItemsQry: TQuery;
    ItemsQryRajzszam: TStringField;
    ItemsQryMegnevezes: TStringField;
    ItemsQryaccessoryType: TIntegerField;
    RxMemoryData1KategoriaId: TIntegerField;
    ItemsGrid: TdxDBGrid;
    ItemsGridId: TdxDBGridMaskColumn;
    ItemsGridKategoria: TdxDBGridMaskColumn;
    ItemsGridKategoriaId: TdxDBGridMaskColumn;
    ItemsGridRajzszam: TdxDBGridMaskColumn;
    ItemsGridMegnevezes: TdxDBGridMaskColumn;
    ItemsGridaccessoryType: TdxDBGridMaskColumn;
    ItemsGridChecked: TdxDBGridCheckColumn;
    Splitter1: TSplitter;
    RxMemoryData1OsszeallRsz: TStringField;
    ItemsQryMegjegyzes: TStringField;
    RxMemoryData1Megjegyzes: TStringField;
    ItemsGridMegjegyzes: TdxDBGridColumn;
    ItemsQryOsszeallRsz: TStringField;
    RxMemoryData1accessoryTypeName: TStringField;
    ItemsGridaccessoryTypeName: TdxDBGridColumn;
    procedure Panel1Resize(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataSheetImportForm: TDataSheetImportForm;

implementation

uses HoseSlaveDmU, HoseSlaveU;

{$R *.DFM}

procedure TDataSheetImportForm.Panel1Resize(Sender: TObject);
begin
  SetButtons(Panel1, False) ;
end;

procedure TDataSheetImportForm.Panel3Resize(Sender: TObject);
begin
  SetButtons(Panel3, False) ;
end;

procedure TDataSheetImportForm.FormActivate(Sender: TObject);
begin
  try
    DataSheetImportForm.AdatlapQry.Active:=True ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

procedure TDataSheetImportForm.BitBtn3Click(Sender: TObject);
var
  Id, i: integer ;
  SqlTxt: string ;
begin
  try
    try
      Id:=AdatlapQryAdatlapId.AsInteger ;
      if RxMemoryData1.Active then RxMemoryData1.Active:=False ;
      RxMemoryData1.Active:=True ;
      //RxMemoryData1.DisableControls ;
      i:=0 ;
      // Konstrukciók
      SqlTxt:='select Rajzszam, Megnevezes, accessoryType = 0, Megjegyzes, OsszeallRsz = '''' from adatlapkonf '+
        'where AdatlapId = ' + IntToStr(Id) +' and Aktiv = 1 order by AdatlapId' ;
      ItemsQry.Active:=False ;
      ItemsQry.Sql.Clear ;
      ItemsQry.Sql.Add(SqlTxt) ;
      ItemsQry.Active:=True ;
      while not ItemsQry.Eof do begin
        inc(i) ;
        RxMemoryData1.Append ;
        RxMemoryData1Id.AsInteger:=i ;
        RxMemoryData1Kategoria.AsString:='1 - Konstrukció' ;
        RxMemoryData1KategoriaId.AsInteger:=1 ;
        RxMemoryData1Rajzszam.AsString:=ItemsQryRajzszam.AsString ;
        RxMemoryData1Megnevezes.AsString:=ItemsQryMegnevezes.AsString ;
        RxMemoryData1Megjegyzes.AsString:=ItemsQryMegjegyzes.AsString ;
        RxMemoryData1AccessoryType.AsInteger:=ItemsQryAccessoryType.AsInteger ;
        RxMemoryData1Checked.AsBoolean:=False ;
        RxMemoryData1.Post ;
        ItemsQry.Next ;
      end ;
      // Beépített, állandó alkatrészek
      SqlTxt:='select Rajzszam, Megnevezes, accessoryType, Megjegyzes, OsszeallRsz = '''' from AdatlapAllandoAlk '+
        'where AdatlapId = ' + IntToStr(Id) +' and Aktiv = 1 order by AdatlapId' ;
      ItemsQry.Active:=False ;
      ItemsQry.Sql.Clear ;
      ItemsQry.Sql.Add(SqlTxt) ;
      ItemsQry.Active:=True ;
      while not ItemsQry.Eof do begin
        inc(i) ;
        RxMemoryData1.Append ;
        RxMemoryData1Id.AsInteger:=i ;
        RxMemoryData1Kategoria.AsString:='2 - Beépített állandó alk.' ;
        RxMemoryData1KategoriaId.AsInteger:=2 ;
        RxMemoryData1Rajzszam.AsString:=ItemsQryRajzszam.AsString ;
        RxMemoryData1Megnevezes.AsString:=ItemsQryMegnevezes.AsString ;
        RxMemoryData1Megjegyzes.AsString:=ItemsQryMegjegyzes.AsString ;
        RxMemoryData1AccessoryType.AsInteger:=ItemsQryAccessoryType.AsInteger ;
        RxMemoryData1Checked.AsBoolean:=False ;
        RxMemoryData1.Post ;
        ItemsQry.Next ;
      end ;
      // Beépített, rendeléstõl függõ alkatrészek
      SqlTxt:='select Rajzszam, Megnevezes, accessoryType, Megjegyzes, OsszeallRsz = '''' from AdatlapValtozoAlk ' +
        'where '+'AdatlapId = ' + IntToStr(Id) +' and Aktiv = 1 order by AdatlapId' ;
      ItemsQry.Active:=False ;
      ItemsQry.Sql.Clear ;
      ItemsQry.Sql.Add(SqlTxt) ;
      ItemsQry.Active:=True ;
      while not ItemsQry.Eof do begin
        inc(i) ;
        RxMemoryData1.Append ;
        RxMemoryData1Id.AsInteger:=i ;
        RxMemoryData1Kategoria.AsString:='3 - Beépített változó alk.' ;
        RxMemoryData1KategoriaId.AsInteger:=3 ;
        RxMemoryData1Rajzszam.AsString:=ItemsQryRajzszam.AsString ;
        RxMemoryData1Megnevezes.AsString:=ItemsQryMegnevezes.AsString ;
        RxMemoryData1Megjegyzes.AsString:=ItemsQryMegjegyzes.AsString ;
        RxMemoryData1AccessoryType.AsInteger:=ItemsQryAccessoryType.AsInteger ;
        RxMemoryData1Checked.AsBoolean:=False ;
        RxMemoryData1.Post ;
        ItemsQry.Next ;
      end ;
      // Csatlakozó
      SqlTxt:='select Rajzszam = CsatlakozoRsz, Megnevezes, accessoryType = 1000, Megjegyzes,' +
        'OsszeallRsz = OsszeallitasiRsz ' + 'from AdatlapCsatl where AdatlapId = ' +
        IntToStr(Id) +' and Aktiv = 1 order by AdatlapId' ;
      ItemsQry.Active:=False ;
      ItemsQry.Sql.Clear ;
      ItemsQry.Sql.Add(SqlTxt) ;
      ItemsQry.Active:=True ;
      while not ItemsQry.Eof do begin
        inc(i) ;
        RxMemoryData1.Append ;
        RxMemoryData1Id.AsInteger:=i ;
        RxMemoryData1Kategoria.AsString:='4 - Csatlakozó' ;
        RxMemoryData1KategoriaId.AsInteger:=4 ;
        RxMemoryData1Rajzszam.AsString:=ItemsQryRajzszam.AsString ;
        RxMemoryData1Megnevezes.AsString:=ItemsQryMegnevezes.AsString ;
        RxMemoryData1AccessoryType.AsInteger:=ItemsQryAccessoryType.AsInteger ;
        RxMemoryData1Megjegyzes.AsString:=ItemsQryMegjegyzes.AsString ;
        RxMemoryData1OsszeallRsz.AsString:=ItemsQryOsszeallRsz.AsString ;
        RxMemoryData1Checked.AsBoolean:=False ;
        RxMemoryData1.Post ;
        ItemsQry.Next ;
      end ;
      RxMemoryData1.First ;
      HoseSlaveU.SetGridColWidth(ItemsGrid) ;
    finally
      ItemsQry.Active:=False ;
      RxMemoryData1.EnableControls ;
    end ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end;

end.
