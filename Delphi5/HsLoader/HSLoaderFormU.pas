unit HSLoaderFormU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Placemnt, Db, DBTables, StdCtrls, Registry, MyProcs, FileUtil, ComCtrls, Inifiles, RxVerInf ;

type
  THSLoaderForm = class(TForm)
    Database: TDatabase;
    Label1: TLabel;
    Label2: TLabel;
    PrgUpdateList: TStoredProc;
    spAddProgEvent: TStoredProc;
    PrgUpdateListProgCode: TIntegerField;
    PrgUpdateListProgGroup: TStringField;
    PrgUpdateListProgName: TStringField;
    PrgUpdateListExeName: TStringField;
    PrgUpdateListActualVersion: TStringField;
    PrgUpdateListProgUpdate: TBooleanField;
    PrgUpdateListSourceDir: TStringField;
    PrgUpdateListVersion: TStringField;
    PrgUpdateListFileDate: TDateTimeField;
    PrgUpdateListRogzitette: TStringField;
    PrgUpdateListRogzIdopont: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Versio: TVersionInfo ;
  public
    { Public declarations }
    DbName, WorkDir, ProgGroup: string ;
    function CheckUpdate(ExeName, Version: string; UpdaterFileDate: TDatetime): Boolean ;
    procedure AddEvent(EventName, FileName, Note: string) ;
  end;

var
  HSLoaderForm: THSLoaderForm;
  LogFile: Text ;
  RunnableExe: string ;

implementation

{$R *.DFM}

procedure THSLoaderForm.FormCreate(Sender: TObject);
var
 s: string ;
 Ini: TInifile ;
begin
  try
    try
      Versio := TVersionInfo.Create(Application.ExeName) ;
      WorkDir := SysUtils.ExtractFilePath(Application.ExeName) ;
      Label1.Caption := 'Munkak�nyvt�r: ' + WorkDir ;
      AssignFile(LogFile, 'Update.log') ;
      Ini := TIniFile.Create(WorkDir + 'Loader.ini');
      DbName := Ini.ReadString('Def', 'DbName', '') ;
      ProgGroup := Ini.ReadString('Def', 'ProgGroup', '') ;
      RunnableExe := Ini.ReadString('Def', 'RunnableExe', '') ;
      if not FileExists(WorkDir + 'Update.log') then Rewrite(Logfile) else Reset(LogFile) ;
      AddEvent('Program ind�t�sa', Versio.FileName, Versio.FileVersion) ;
      if RunnableExe <> '' then WriteLn(LogFile, 'Futtat�sra kijel�lt program: ' + RunnableExe) ;
      if (Trim(DbName) = '') then begin
        Append(LogFile) ;
        WriteLn(LogFile, 'Hib�s "ini" f�jl!') ;
        CloseFile(LogFile) ;
        Halt(0) ;
      end ;
      DataBase.Connected := False ;
      DataBase.AliasName := DbName ;
      DataBase.Connected := True ;
      Label2.Caption := 'Adatb�zis: ' + DbName ;
    finally
      //CloseFile(LogFile) ;
    end
  except
    On E: exception do begin
      //AddEvent(E.Message, Versio.FileName, Versio.FileVersion) ;
    end ;
  end ;
  Application.Terminate ;
end;

function THSLoaderForm.CheckUpdate(ExeName, Version: string;UpdaterFileDate: TDatetime): Boolean ;
var
  FVersionInfo: TFileVersionInfo ;
  FileVersion, s: string ;
  b: Boolean ;
  FileDate: TDatetime ;
begin
  Result := True ;
  FVersionInfo := FileVersionInfo(ExeName) ;
  FileVersion := FVersionInfo.FileVersion ;
  if FileVersion = '' then begin
    if FileExists(ExeName) then begin
      FileDate := FileDateToDateTime(FileAge(ExeName)) ;
      if FileDate < UpdaterFileDate then Result := False ;
    end
    else Result := False ;
  end
  else Result := CompVersion(Version, FileVersion) ;
end ;

procedure THSLoaderForm.FormShow(Sender: TObject);
var
  ExeName, Version, SourceDir: string ;
  UpdaterFileDate: TDatetime ;
  i: integer ;
  FileVersio: TVersionInfo ;
begin
  i := 0 ;
  try
    try
      if ProgGroup <> '' then PrgUpdateList.ParamByName('@ProgGroup').AsString := ProgGroup ;
      PrgUpdateList.Active := True ;
      while not PrgUpdateList.Eof do begin
        ExeName := PrgUpdateListExeName.AsString ;
        Version := PrgUpdateListActualVersion.AsString ;
        SourceDir := Trim(PrgUpdateListSourceDir.AsString) ;
        UpdaterFileDate := PrgUpdateListFileDate.AsDateTime ;
        if not CheckUpdate(ExeName, Version, UpdaterFileDate) then begin
          inc(i) ;
          CopyFile(SourceDir + '\' + ExeName, WorkDir + ExeName, Nil) ; //ProgressBar1) ;
          if Version <> '' then AddEvent('F�jl let�lt�se', ExeName, Version)
          else AddEvent('F�jl let�lt�se', ExeName, DateTimeToStr(UpdaterFileDate)) ;
        end ;
        PrgUpdateList.Next ;
      end ;
      PrgUpdateList.Active := False ;
      CloseFile(LogFile) ;
      if Trim(RunnableExe) <> '' then
      if ExecuteFile(RunnableExe, '', '', 0) = ERROR_FILE_NOT_FOUND then begin
        ErrMsg('Nem futtathat� a program !') ;
        AddEvent('Nem futtahat� az �llom�ny!', RunnableExe, '') ;
      end
      else begin
        FileVersio := TVersionInfo.Create(RunnableExe) ;
        AddEvent('A futtatott �llom�ny', RunnableExe, FileVersio.FileVersion) ;
        FileVersio.Free ;
      end ;
      Application.Terminate ;
    finally

    end ;
  except
    On E: exception do begin
      AddEvent(E.Message, Versio.FileName, '') ;
      CloseFile(LogFile) ;
    end ;
  end ;
end;

procedure THSLoaderForm.AddEvent(EventName, FileName, Note: string) ;
begin
  try
    Append(LogFile) ;
    WriteLn(LogFile, EventName + ';' + FileName + ';' + Note + ';' + DateTimeToStr(Now)) ;
    spAddProgEvent.ParamByName('@ProgEvent').AsString := EventName ;
    spAddProgEvent.ParamByName('@ProgName').AsString := FileName ;
    spAddProgEvent.ParamByName('@Note').AsString := Note ;
    spAddProgEvent.ExecProc ;
  except
    On E: exception do ErrMsg(E.Message) ;
  end ;
end ;

end.

