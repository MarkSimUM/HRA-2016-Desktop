unit Messaging;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, DBGrids, datamoduleMessaging;

type

  { TfrmMessaging }

  TfrmMessaging = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    TabSheet1: TTabSheet;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMessaging: TfrmMessaging;

implementation

{$R *.lfm}

{ TfrmMessaging }

procedure TfrmMessaging.FormActivate(Sender: TObject);
begin

end;

procedure TfrmMessaging.FormCreate(Sender: TObject);
begin
  With DM_Messaging do
  begin
  data_MessagingCriteria.active := false;
  data_MessagingGroup.active := false;
  data_MessagingGroup.ParamByName('FID').AsInteger := 1;
  data_MsgCriteriaForGroup.active := false;

  data_MessagingGroup.active := true;
    data_MsgCriteriaForGroup.active := true;

  //data_MessagingCriteria.active := true;

  end;
end;

end.

