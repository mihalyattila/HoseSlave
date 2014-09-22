program HoseSlave;

uses
  Forms,
  Windows,
  Messages,
  Dialogs,
  HoseSlaveU in 'HoseSlaveU.pas' {MainForm},
  HoseSlaveDmU in 'HoseSlaveDmU.pas' {Dm: TDataModule},
  KonstrJellFormU in 'KonstrJellFormU.pas' {KonstrJellForm},
  FindItemFormU in 'FindItemFormU.pas' {FindItemForm},
  CouplingQryFormU in 'CouplingQryFormU.pas' {CouplingQryForm},
  AccessoryQryFormU in 'AccessoryQryFormU.pas' {AccessoryQryForm},
  PackDevSelectFormU in 'PackDevSelectFormU.pas' {PackDevSelectForm},
  PackReportU in 'PackReportU.pas' {PackReport: TQuickRep},
  RevSelectFormU in 'RevSelectFormU.pas' {RevSelectForm},
  AdatlapReportU in 'AdatlapReportU.pas' {AdatlapReport: TQuickRep},
  DataSheetImportFormU in 'DataSheetImportFormU.pas' {DataSheetImportForm},
  AccTypeSelectFormU in 'AccTypeSelectFormU.pas' {AccTypeSelectForm},
  ItemChangesFormU in 'ItemChangesFormU.pas' {ItemChangesForm},
  QualificCompareFormU in 'QualificCompareFormU.pas' {QualificCompareForm},
  PrgFormU in 'PrgFormU.pas' {PrgForm},
  BizonylatInputFormU in 'BizonylatInputFormU.pas' {BizonylatInputForm},
  RendMinReportU in 'RendMinReportU.pas' {RendMinReport: TQuickRep},
  RendMinModReportU in 'RendMinModReportU.pas' {RendMinModReport: TQuickRep},
  NemKiadottFormU in 'NemKiadottFormU.pas' {NemKiadottForm},
  DataSheetSelectFormU in 'DataSheetSelectFormU.pas' {DataSheetSelectForm},
  ConstrSearchFormU in 'ConstrSearchFormU.pas' {ConstrSearchForm},
  MatNumSearchFormU in 'MatNumSearchFormU.pas' {MatNumSearchForm},
  OrderDmU in 'OrderDmU.pas' {OrderDm: TDataModule},
  LookupFormU in 'LookupFormU.pas' {LookupForm},
  NewOrderListFormU in 'NewOrderListFormU.pas' {NewOrderListForm},
  MessagesFormU in 'MessagesFormU.pas' {MessagesForm},
  InitFormU in 'InitFormU.pas' {InitForm},
  BiztEszkFormU in 'BiztEszkFormU.pas' {BiztEszkForm},
  SafetyItemSelectFormU in 'SafetyItemSelectFormU.pas' {SafetyItemSelectForm},
  MarkingFormU in 'MarkingFormU.pas' {MarkingForm},
  ToolsDmU in 'ToolsDmU.pas' {ToolsDm: TDataModule},
  RequiredPackListFormU in 'RequiredPackListFormU.pas' {RequiredPackListForm},
  ICDataExportFormU in 'ICDataExportFormU.pas' {ICDataExportForm},
  CompListExportFormU in 'CompListExportFormU.pas' {CompListExportForm},
  DrawSearchFormU in 'DrawSearchFormU.pas' {DrawSearchForm},
  BilincsFormU in 'BilincsFormU.pas' {BilincsForm},
  PathSelectionFormU in 'PathSelectionFormU.pas' {PathSelectionForm},
  HistoryFormU in 'HistoryFormU.pas' {HistoryForm},
  AtveteliOpenFormU in 'AtveteliOpenFormU.pas' {AtveteliOpenForm},
  HoseNameEditFormU in 'HoseNameEditFormU.pas' {HoseNameEditForm},
  BookmarkListFormU in 'BookmarkListFormU.pas' {DataSheetBmkListForm},
  PackBmkListFormU in 'PackBmkListFormU.pas' {PackBmkListForm},
  OpenAnyagszListFormU in 'OpenAnyagszListFormU.pas' {OpenAnyagszListForm},
  VisibleColumnsFormU in 'VisibleColumnsFormU.pas' {VisibleColumnsForm},
  SPDmU in 'SPDmU.pas' {SPDm: TDataModule},
  MessageFormU in 'MessageFormU.pas' {MessageForm},
  ElorendelesFormU in 'ElorendelesFormU.pas' {ElorendelesForm},
  ElorendelesReportU in 'ElorendelesReportU.pas' {ElorendelesReport: TQuickRep},
  ElorendelesEbBbOhReportU in 'ElorendelesEbBbOhReportU.pas' {ElorendelesEbBbOhReport: TQuickRep},
  ElorendelesOtherReportU in 'ElorendelesOtherReportU.pas' {ElorendelesOtherReport: TQuickRep},
  ChildNumInputFormU in 'ChildNumInputFormU.pas' {ChildNumInputForm},
  CouplingDependFormU in 'CouplingDependFormU.pas' {CouplingDependForm},
  SerialFormU in 'SerialFormU.pas' {SerialForm},
  OrderCommentFormU in 'OrderCommentFormU.pas' {OrderCommentForm},
  AboutBoxU in 'AboutBoxU.pas' {AboutBox},
  ElorendelesGridFormU in 'ElorendelesGridFormU.pas' {ElorendelesGridForm};

{$R *.RES}

var
  H: THandle ;
  Testing: Boolean ;
  i: integer ;
begin
  i := 0 ;
  Testing := True ;
  H := FindWindow('TMainForm', 'HoseSlave') ;
  if (H=0) or Testing then begin
    Application.Initialize;
    Application.Title := 'HoseSlave';
    with TInitForm.Create(nil) do
    try
      HsIsStarting := True ;

      Application.CreateForm(TDm, Dm);
      Application.CreateForm(TSPDm, SPDm);
      Dm.MainDb.Connected := False ;
      //Dm.HoseDb.Connected := False ;
      Application.CreateForm(TOrderDm, OrderDm);
      Application.CreateForm(TToolsDm, ToolsDm);
      ProgressBar1.Max := 24 ;
      Show;   // show a splash screen contain ProgressBar control
      Update; // force display of Form5

      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TMainForm, MainForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TAccessoryQryForm, AccessoryQryForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TKonstrJellForm, KonstrJellForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TCouplingQryForm, CouplingQryForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TPackDevSelectForm, PackDevSelectForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TPackReport, PackReport);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TFindItemForm, FindItemForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TRevSelectForm, RevSelectForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TAdatlapReport, AdatlapReport);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TDataSheetImportForm, DataSheetImportForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TAccTypeSelectForm, AccTypeSelectForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TItemChangesForm, ItemChangesForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TPrgForm, PrgForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TQualificCompareForm, QualificCompareForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TBizonylatInputForm, BizonylatInputForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TRendMinReport, RendMinReport);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TRendMinModReport, RendMinModReport);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TNemKiadottForm, NemKiadottForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TDataSheetSelectForm, DataSheetSelectForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TConstrSearchForm, ConstrSearchForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TMatNumSearchForm, MatNumSearchForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TLookupForm, LookupForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      Application.CreateForm(TMessagesForm, MessagesForm);
      inc(i) ;
      ProgressBar1.Position := i ;

      MainForm.TestRun := Testing ;

      HsIsStarting := False ;

    finally
      free ;
    end ;
    Application.Run ;
  end
  else begin
    MessageDlg('A programnak már fut egy példánya!', mtInformation, [mbOk], 0) ;
    if not IsWindowVisible(H) then PostMessage(H, wm_User, 0, 0) ;
    SetForegroundWindow(H) ;
  end ;
end.

