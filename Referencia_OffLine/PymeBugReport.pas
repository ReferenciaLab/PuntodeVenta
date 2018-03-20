unit PymeBugReport;

interface

uses PymeConst;

implementation

uses madExcept, SysUtils, Classes, madStrings, Types, DataModule, Main, Forms;

procedure LayoutExceptHandler(frozen          : boolean;
                              exceptObject    : TObject;
                              exceptAddr      : pointer;
                              crashedThreadId : dword;
                              var bugReport   : string;
                              var screenShot  : string;
                              var canContinue : boolean;
                              var handled     : boolean);
var
  bugMessage: String;
begin
  if Assigned(frmMain) then begin
    bugMessage := ( exceptObject As Exception ).Message;
    //MailSubject := SReporteDeInsidenci + Application.Title;
    //TitleBar := SReporteDeInsidenci + Application.Title;
    //MailAddr := DM.SupporteMail;
    DM.AppError(bugMessage, frozen, exceptObject, exceptAddr, crashedThreadId, bugReport, screenShot, canContinue,handled );
    handled := True;
  end;
end;

initialization
  //RegisterExceptionHandler( LayoutExceptHandler, stDontSync );
end.
