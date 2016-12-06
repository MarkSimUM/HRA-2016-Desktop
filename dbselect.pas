unit DBSelect;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  Buttons, StdCtrls, globals, DataModuleMain;

type

  { Tfrm_DBSelect }

  Tfrm_DBSelect = class(TForm)
    btnOK: TBitBtn;
    btnQuit: TBitBtn;
    edtServer: TEdit;
    rg_DBVersion: TRadioGroup;
    procedure btnOKClick(Sender: TObject);
    procedure btnQuitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure rg_DBVersionSelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_DBSelect: Tfrm_DBSelect;

implementation

{$R *.lfm}

{ Tfrm_DBSelect }

procedure Tfrm_DBSelect.btnOKClick(Sender: TObject);
begin
    globals.DBVersion := rg_DBVersion.itemindex ;




end;

procedure Tfrm_DBSelect.btnQuitClick(Sender: TObject);
begin
       globals.ExitApplication := true;
       globals.DBVersion := -1 ;
       application.terminate;
end;

procedure Tfrm_DBSelect.FormActivate(Sender: TObject);
begin
     rg_DBVersion.ItemIndex:= 1;
end;

procedure Tfrm_DBSelect.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
      if rg_DBVersion.itemindex < 0 then
      begin
        ShowMessage('Application terminating... you must select a database version');
        globals.ExitApplication := true;
        application.Terminate;
      end;
end;

procedure Tfrm_DBSelect.rg_DBVersionSelectionChanged(Sender: TObject);
begin
 btnOK.enabled := true;
 globals.DBVersion := rg_DBVersion.itemindex ;
 DM_Main.OraSessionMain.connected := false ;
 if globals.DBVersion = 0 then
 begin

     DM_MAIN.OraSessionMain := DM_MAIN.OraSession_DEV;
     globals.DBType:= 'DEV'
 end;
 if globals.DBVersion = 1 then
 begin
       DM_MAIN.OraSessionMain := DM_MAIN.OraSession_TEST;
          globals.DBType:= 'TEST';
 end;
 if globals.DBVersion = 2 then
 begin
       DM_Main.OraSessionMain :=  DM_Main.OraSession_PROD;
       globals.DBType:= 'PROD';
 end;
   edtServer.text := DM_MAIN.OraSessionMain.Server;

  //  DM_MAIN.OraSessionMain.Username := globals.UserName ;
    DM_MAIN.OraSessionMain.LoginPrompt:= false;
    Try
       DM_MAIN.OraSessionMain.Connected := true ;
    except
      ShowMessage('error');
    end;

   // DM_MAIN.OraSessionMain.Connected := true;



end;

end.

