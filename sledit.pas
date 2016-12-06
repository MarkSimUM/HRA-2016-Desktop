unit SLEdit;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  StdCtrls, DBGrids, datamoduleSurveyLibrary;

type

  { Tfrm_SLibEdit }

  Tfrm_SLibEdit = class(TForm)
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBListBox1: TDBListBox;
    DBLookupComboBox1: TDBLookupComboBox;
    luItemType: TDBLookupListBox;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    isScale1: TLabel;
    isScale2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    isScale: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure DBEdit2Change(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject; Button: TDBNavButtonType
      );
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
    procedure FormActivate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_SLibEdit: Tfrm_SLibEdit;
  defItemType : integer ;
  defDomain : string ;
  defTableName : string ;
  defisScale : integer ;
  defisCalculated : integer ;
  defisCustom : integer ;


implementation

{$R *.lfm}

{ Tfrm_SLibEdit }

procedure Tfrm_SLibEdit.FormActivate(Sender: TObject);
begin
      DM_SurveyLibrary.dataItem.Active := true ;
    DM_SurveyLibrary.dataItemLabel.active := true ;
    DM_SurveyLibrary.dataItemValue.active := true ;
    DM_SurveyLibrary.dataItemValueLabel.active := true ;
    DM_SurveyLibrary.dataValueAndLabel.active := true ;
    DM_SurveyLibrary.luItemType.active := true ;
    DM_SurveyLibrary.dataStdCategory.active := true ;

end;

procedure Tfrm_SLibEdit.DBNavigator1Click(Sender: TObject;
  Button: TDBNavButtonType);
begin
    if nbEdit = button then
    //showmessage('button nbEdit');

    if nbPost = button then
    begin
        defItemType := DM_SurveyLibrary.dataItemITEMTYPE_ID.asInteger ;

    end;
    if nbInsert = button then
    begin
        DM_SurveyLibrary.dataItemITEMTYPE_ID.asInteger := defItemType;
        DM_SurveyLibrary.dataItemIsCalculated.asInteger := defisCalculated;
        DM_SurveyLibrary.dataItemDOMAIN.asString := defDomain     ;
          DM_SurveyLibrary.dataItemTABLENAME.asString   := defTableName ;
          DM_SurveyLibrary.dataItemISSCALE.asInteger  := defisScale ;
         DM_SurveyLibrary.dataItemISCUSTOM.AsInteger  := defisCustom ;
    end;
end;

procedure Tfrm_SLibEdit.DBNavigator1BeforeAction(Sender: TObject;
  Button: TDBNavButtonType);
begin
   if nbPost = button then
    begin
        defItemType := DM_SurveyLibrary.dataItemITEMTYPE_ID.asInteger ;

        defDomain :=    DM_SurveyLibrary.dataItemDOMAIN.asString;
          defTableName :=   DM_SurveyLibrary.dataItemTABLENAME.asString;
          defisScale := DM_SurveyLibrary.dataItemISSCALE.asInteger ;
          defisCalculated := DM_SurveyLibrary.dataItemISCALCULATED.AsInteger ;
          defisCustom := DM_SurveyLibrary.dataItemISCUSTOM.AsInteger  ;
    end;
end;

procedure Tfrm_SLibEdit.DBEdit2Change(Sender: TObject);
begin

end;

end.

