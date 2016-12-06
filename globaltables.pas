unit GlobalTables;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  ExtCtrls, DBGrids, StdCtrls, DbCtrls, globals, DataModuleMain;

type

  { Tfrm_GlobalTables }

  Tfrm_GlobalTables = class(TForm)
    DBGrid15: TDBGrid;
    DBGrid6: TDBGrid;
    DBGrid7: TDBGrid;
    DBGrid8: TDBGrid;
    DBGrid_Language: TDBGrid;
    DBNavigator_Language: TDBNavigator;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PageControl1: TPageControl;
    pnl_Header: TPanel;
    tab_Products: TTabSheet;
    tab_Messaging: TTabSheet;
    tab_Languages: TTabSheet;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_GlobalTables: Tfrm_GlobalTables;

implementation

{$R *.lfm}

end.

