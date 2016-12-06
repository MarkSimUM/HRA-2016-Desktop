unit newvalues;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls, Ora, DataModuleSurveyLibrary;

type

  { Tfrm_ItemNew }


  Tfrm_ItemNew = class(TForm)
    Button1: TButton;
    Button2: TButton;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBListBox1: TDBListBox;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    edt_Label: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    luItemType: TDBLookupListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_ItemNew: Tfrm_ItemNew;

implementation

{$R *.lfm}

{ Tfrm_ItemNew }

procedure Tfrm_ItemNew.FormCreate(Sender: TObject);
begin
  DM_SurveyLibrary.dataItem.Insert ;
end;

procedure Tfrm_ItemNew.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
var
   newID : integer ;
begin
  if button = nbPost then
  begin
       // add default label to itemlabel

       newID := DM_SurveyLibrary.dataItemITEM_ID.asInteger ;
     //with PR_UPSERT_ITEMLABEL  do
     //begin
     //  ParamByName('PItemId').Value:= newID ;
     //  ParamByName('PLANGUAGE_ID, ').Value:= 1 ;
     //
     //  ParamByName('PLabel').Value:= edt_Label.Text ;
     //  ExecProc;
     //
     //
     // end;
      //
  end;
end;

procedure Tfrm_ItemNew.Button2Click(Sender: TObject);
begin

end;

procedure Tfrm_ItemNew.Button1Click(Sender: TObject);
begin

end;

end.

