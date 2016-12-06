unit SurveyData;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls;

type

  { TfrmSurveyData }


  TfrmSurveyData = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    TabSheet1: TTabSheet;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmSurveyData: TfrmSurveyData;

implementation

{$R *.lfm}

end.

