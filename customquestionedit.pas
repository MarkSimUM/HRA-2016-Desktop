unit CustomQuestionEdit;

 {$ifdef fpc}
  {$mode delphi}
 {$else}
{$mode objfpc}{$H+}

{$endif}

interface
  uses
  {$ifdef fpc}
  // Free Pascal only units
  LCLIntf, LResources,
{$else}
  // Delphi only or Windows only units
  Windows, Messages,
{$endif}

  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, DataModuleSurveyLibrary;

type

  { Tfrm_CustomQuestionEdit }

  Tfrm_CustomQuestionEdit = class(TForm)
    PageControl1: TPageControl;
    PanelHeader: TPanel;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_CustomQuestionEdit: Tfrm_CustomQuestionEdit;

implementation

{$R *.lfm}

end.

