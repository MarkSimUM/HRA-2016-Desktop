unit surveyitemlist;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DBGrids,
  DbCtrls, StdCtrls, Ora, DataModuleSurveyLibrary, DataModuleMain, db;

type

  { Tfrm_SurveyItemList }

  Tfrm_SurveyItemList = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ds_ItemList: TOraDataSource;
    ds_SurveyTemplate: TOraDataSource;
    sql_ItemList: TOraQuery;
    sql_SurveyTemplate: TOraQuery;
    OraStoredProc1: TOraStoredProc;
    sql_SurveyTemplateCREATED_BY: TStringField;
    sql_SurveyTemplateCREATE_DT: TDateTimeField;
    sql_SurveyTemplateISDEFAULT: TFloatField;
    sql_SurveyTemplatePRODUCTVERSION_ID: TFloatField;
    sql_SurveyTemplateSURVEYTEMPLATE_ID: TFloatField;
    sql_SurveyTemplateTEMPLATEDESC: TStringField;
    sql_SurveyTemplateTEMPLATENAME: TStringField;
    sql_SurveyTemplateTEMPLATENOTES: TStringField;
    sql_SurveyTemplateUPDATED_BY: TStringField;
    sql_SurveyTemplateUPDATE_DT: TDateTimeField;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_SurveyItemList: Tfrm_SurveyItemList;

implementation

{$R *.lfm}

{ Tfrm_SurveyItemList }

procedure Tfrm_SurveyItemList.FormActivate(Sender: TObject);
begin
    //sql_ItemList.active := false ;
    //sql_ItemList.active := true;

   //sql_SurveyTemplate.Active := false ;
    sql_SurveyTemplate.Active := true ;


end;

procedure Tfrm_SurveyItemList.FormCreate(Sender: TObject);
begin
      //sql_ItemList.active := false ;
   // sql_ItemList.active := true;

    sql_SurveyTemplate.Active := false ;
   sql_SurveyTemplate.Active := true ;
end;

procedure Tfrm_SurveyItemList.Button1Click(Sender: TObject);
begin


    sql_ItemList.Active := false ;
    sql_ItemList.ParamByName('surveytemplate_ID').value := sql_SurveyTemplate.fieldbyName('surveytemplate_id').Value ;
        sql_ItemList.Active := true ;
   //     sql_SurveyTemplate.Active := true ;
end;

end.

