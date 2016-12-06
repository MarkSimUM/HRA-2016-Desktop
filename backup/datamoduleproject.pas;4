unit datamoduleproject;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DataModuleMain, db, Ora, OraScript;

type

  { TDM_Project }

  TDM_Project = class(TDataModule)
    countCurrentProject: TOraQuery;
    dataOrgNotInProject: TOraQuery;
    dataOrg_InAccount: TOraQuery;
    dataOrg_wProject: TOraQuery;
    dataOrg_wProjectACCOUNT_ID: TFloatField;
    dataOrg_wProjectALTERNATEID: TStringField;
    dataOrg_wProjectCREATE_BY: TStringField;
    dataOrg_wProjectCREATE_DT: TDateTimeField;
    dataOrg_wProjectDISPLAYNAME: TStringField;
    dataOrg_wProjectISDEFAULT: TFloatField;
    dataOrg_wProjectISINACTIVE: TIntegerField;
    dataOrg_wProjectISORGGROUP: TIntegerField;
    dataOrg_wProjectISPROXY: TIntegerField;
    dataOrg_wProjectISSUBGROUP: TIntegerField;
    dataOrg_wProjectISTEST: TIntegerField;
    dataOrg_wProjectNAICS: TFloatField;
    dataOrg_wProjectORGANIZATION_ID: TFloatField;
    dataOrg_wProjectORGFULLNAME: TStringField;
    dataOrg_wProjectORGNAME: TStringField;
    dataOrg_wProjectORGTYPE: TStringField;
    dataOrg_wProjectORG_LEGACYCODE: TStringField;
    dataOrg_wProjectORG_LEGACYID: TFloatField;
    dataOrg_wProjectPARENT_ID: TFloatField;
    dataOrg_wProjectPROJECTCONFIG_ID: TFloatField;
    dataOrg_wProjectPROJECT_ID: TFloatField;
    dataOrg_wProjectPROJPROJECT_ID: TFloatField;
    dataOrg_wProjectPROXYID: TStringField;
    dataOrg_wProjectSIC: TFloatField;
    dataOrg_wProjectUPDATE_BY: TStringField;
    dataOrg_wProjectUPDATE_DT: TDateTimeField;
    dataProdForOrgProject: TOraQuery;
    dataProject: TOraQuery;
    dataProjectACCOUNT_ID: TFloatField;
    dataProjectAUTOADDNEWORG_FLG: TIntegerField;
    dataProjectConfig: TOraQuery;
    dataProjectConfigACTIVE_DT: TDateTimeField;
    dataProjectConfigCSIM_METHOD: TFloatField;
    dataProjectConfigDATAFEED_BIOMETRIC_FLG: TIntegerField;
    dataProjectConfigDATAFEED_ELIGIBILITY_FLG: TIntegerField;
    dataProjectConfigDATAFEED_OTHER_FLG: TIntegerField;
    dataProjectConfigDATAOUT_AGGREPORT_FLG: TIntegerField;
    dataProjectConfigDATAOUT_CASE_FLG: TIntegerField;
    dataProjectConfigDATAOUT_INDCALC_FLG: TIntegerField;
    dataProjectConfigDATAOUT_INDREPORT_FLG: TIntegerField;
    dataProjectConfigDELETE_FLG: TIntegerField;
    dataProjectConfigForOrg: TOraQuery;
    dataProjectConfigForOrgISACTIVE: TFloatField;
    dataProjectConfigForOrgORGANIZATION_ID: TFloatField;
    dataProjectConfigForOrgPRODUCTCODE: TStringField;
    dataProjectConfigForOrgPROJECTCONFIG_ID: TFloatField;
    dataProjectConfigForOrgPROJECTNAME: TStringField;
    dataProjectConfigForOrgPROJECT_ID: TFloatField;
    dataProjectConfigForOrgPROJISACTIVE: TIntegerField;
    dataProjectConfigForOrgVERSION: TStringField;
    dataProjectConfigFRAMEWORKVERSION_ID: TFloatField;
    dataProjectConfigISACTIVE: TIntegerField;
    dataProjectConfigISCLOSED_FLG: TFloatField;
    dataProjectConfigISDEFAULT: TFloatField;
    dataProjectConfigORGANIZATION_ID: TFloatField;
    dataProjectConfigPAPER_BRE_FLG: TIntegerField;
    dataProjectConfigPAPER_BULKRETURN_FLG: TIntegerField;
    dataProjectConfigPRODUCTVERSION_ID: TFloatField;
    dataProjectConfigPROJECTCONFIG_ID: TFloatField;
    dataProjectConfigPROJECT_END_DATE: TDateTimeField;
    dataProjectConfigPROJECT_ID: TFloatField;
    dataProjectConfigPROJECT_START_DATE: TDateTimeField;
    dataProjectConfigREPORT_DOCTOR: TIntegerField;
    dataProjectConfigREPORT_LANGUAGES_MULTI_FLG: TIntegerField;
    dataProjectConfigRPTAGG_BENCHMARK_FLG: TIntegerField;
    dataProjectConfigRPTAGG_BIOMETRIC_FLG: TIntegerField;
    dataProjectConfigRPTAGG_DATE_BEG: TDateTimeField;
    dataProjectConfigRPTAGG_DATE_END: TDateTimeField;
    dataProjectConfigRPTAGG_P1P2_FLG: TIntegerField;
    dataProjectConfigRPTAGG_P1P3_FLG: TIntegerField;
    dataProjectConfigRPTAGG_T1T2_FLG: TIntegerField;
    dataProjectConfigRPTAGG_T1T3_FLG: TIntegerField;
    dataProjectConfigSTATUS_ID: TFloatField;
    dataProjectConfigSURVEYLOOK_CUSTOMCSS_FLG: TIntegerField;
    dataProjectConfigSURVEYLOOK_CUSTOM_FLG: TIntegerField;
    dataProjectConfigSURVEYLOOK_HMRCLOGO_HIDE_FLG: TIntegerField;
    dataProjectConfigSURVEYLOOK_LOGO_FILENAME: TStringField;
    dataProjectConfigSURVEYTEMPLATE_ID: TFloatField;
    dataProjectConfigSURVEYTYPE_CLIENTHOSTED_FLG: TIntegerField;
    dataProjectConfigSURVEYTYPE_PAPER_FLG: TIntegerField;
    dataProjectConfigSURVEYTYPE_WEB_FLG: TIntegerField;
    dataProjectConfigSURVEY_ANONYMOUS_FLG: TIntegerField;
    dataProjectConfigSURVEY_CLOSEDT: TDateTimeField;
    dataProjectConfigSURVEY_CUSTOMITEMS_FLG: TIntegerField;
    dataProjectConfigSURVEY_CUSTOMLOGO_FILENAME: TStringField;
    dataProjectConfigSURVEY_EXTBIOMETRICS_FLG: TIntegerField;
    dataProjectConfigSURVEY_GROUPPW: TStringField;
    dataProjectConfigSURVEY_LANGUAGES_MULTI_FLG: TIntegerField;
    dataProjectConfigSURVEY_LOCKOUT_DAYS: TFloatField;
    dataProjectConfigSURVEY_OPENDT: TDateTimeField;
    dataProjectConfigSURVEY_PRIVACYSTATEMENT_FLG: TIntegerField;
    dataProjectConfigSURVEY_RETURN_URL: TStringField;
    dataProjectConfigSURVEY_SPONSORURL: TStringField;
    dataProjectConfigSURVEY_SPOUSEELIGIBLE_FLG: TIntegerField;
    dataProjectConfigSURVEY_SUBMITDAYS: TFloatField;
    dataProjectConfigSURVEY_UNITOFMEASURE: TFloatField;
    dataProjectConfigSURVEY_URL: TStringField;
    dataProjectConfigSURVEY_URL_ALT: TStringField;
    dataProjectConfigSURVEY_WLG_HPQ: TFloatField;
    dataProjectConfigTIMESERIES_ID: TStringField;
    dataProjectConfigTIMEZONE: TStringField;
    dataProjectConfig_Default: TOraQuery;
    dataProjectConfig_Org: TOraQuery;
    dataProjectCREATE_BY: TStringField;
    dataProjectCREATE_DT: TDateTimeField;
    dataProjectDELETE_FLG: TIntegerField;
    dataProjectEVALANALYSIS_FLG: TIntegerField;
    dataProjectForOrg: TOraQuery;
    dataProjectForOrgACCOUNT_ID: TFloatField;
    dataProjectForOrgAUTOADDNEWORG_FLG: TIntegerField;
    dataProjectForOrgCREATE_BY: TStringField;
    dataProjectForOrgCREATE_DT: TDateTimeField;
    dataProjectForOrgDELETE_FLG: TIntegerField;
    dataProjectForOrgEVALANALYSIS_FLG: TIntegerField;
    dataProjectForOrgISACTIVE: TIntegerField;
    dataProjectForOrgISMULTIORG: TIntegerField;
    dataProjectForOrgISMULTIPRODUCT: TIntegerField;
    dataProjectForOrgISTEST: TIntegerField;
    dataProjectForOrgLINKEDPROJECT_ID: TFloatField;
    dataProjectForOrgLOCKSETTINGS_FLG: TIntegerField;
    dataProjectForOrgNOTES: TStringField;
    dataProjectForOrgPHASE: TStringField;
    dataProjectForOrgPRODUCTCODE: TStringField;
    dataProjectForOrgPRODUCTVERSION_ID: TFloatField;
    dataProjectForOrgPROJECTGROUP_ID: TFloatField;
    dataProjectForOrgPROJECTNAME: TStringField;
    dataProjectForOrgPROJECTNAME_1: TStringField;
    dataProjectForOrgPROJECT_END_DATE: TDateTimeField;
    dataProjectForOrgPROJECT_ID: TFloatField;
    dataProjectForOrgPROJECT_START_DATE: TDateTimeField;
    dataProjectForOrgSTATUS_ID: TFloatField;
    dataProjectForOrgUNIQUEIDFIELDNAME: TStringField;
    dataProjectForOrgVERSION: TStringField;
    dataProjectISACTIVE: TIntegerField;
    dataProjectISMULTIORG: TIntegerField;
    dataProjectISMULTIPRODUCT: TIntegerField;
    dataProjectISTEST: TIntegerField;
    dataProjectLINKEDPROJECT_ID: TFloatField;
    dataProjectLOCKSETTINGS_FLG: TIntegerField;
    dataProjectNOTES: TStringField;
    dataProjectPHASE: TStringField;
    dataProjectPRODUCTCODE: TStringField;
    dataProjectPRODUCTVERSION_ID: TFloatField;
    dataProjectPROJECTGROUP_ID: TFloatField;
    dataProjectPROJECTNAME: TStringField;
    dataProjectPROJECT_END_DATE: TDateTimeField;
    dataProjectPROJECT_ID: TFloatField;
    dataProjectPROJECT_START_DATE: TDateTimeField;
    dataProjectSTATUS_ID: TFloatField;
    dataProjectUNIQUEIDFIELDNAME: TStringField;
    dataProjectVERSION: TStringField;
    dsOrg_InAccount: TOraDataSource;
    dsOrg_wProject: TOraDataSource;
    dsProdForOrgProject: TOraDataSource;
    dsProject: TOraDataSource;
    dsProjectConfig: TOraDataSource;
    dsProjectConfigForOrg: TOraDataSource;
    dsProjectConfig_Default: TOraDataSource;
    dsProjectConfig_Org: TOraDataSource;
    dsProjectForOrg: TOraDataSource;
    dsProjectConfig_OrgInfo: TOraDataSource;
    luSurveyID: TOraQuery;
    ds_luSurveyID: TOraDataSource;
    dsSurveyID_Default: TOraDataSource;
    sqlSurveyID_Default: TOraQuery;
    sp_INSERT_PROJECTCONFIG_V1: TOraStoredProc;
    sp_upsert_project_V1: TOraStoredProc;
    sqlProjectConfig_OrgInfo: TOraQuery;
    sp_UPSERT_PROJECT: TOraStoredProc;
    procedure dataProjectAfterPost(DataSet: TDataSet);
    procedure dataProjectConfigNewRecord(DataSet: TDataSet);
    procedure dataProjectNewRecord(DataSet: TDataSet);
    procedure dsProjectConfig_DefaultDataChange(Sender: TObject; Field: TField);
    procedure dsProjectConfig_OrgInfoDataChange(Sender: TObject; Field: TField);
    procedure dsProjectDataChange(Sender: TObject; Field: TField);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DM_Project: TDM_Project;

implementation

{$R *.lfm}

{ TDM_Project }

procedure TDM_Project.dsProjectDataChange(Sender: TObject; Field: TField);
begin
  {
  IF NOT ( dataProject.eof) then
    begin
      dataOrg_wProject.active := false ;
      dataOrg_wProject.ParamByName('Project_ID').value := dataProjectPROJECT_ID.value;
      dataOrg_wProject.active := true;

    end else
    begin
       if dataOrg_wProject.active = true then
       begin
          dataOrg_wProject.active := false ;
           dataOrg_wProject.ParamByName('Project_ID').value := null;
           dataOrg_wProject.active := true;
        end;
    end;
    }
end;

procedure TDM_Project.dataProjectAfterPost(DataSet: TDataSet);

  var
   defaultOrgID : integer;
   project_ID : integer ;
begin

   project_ID := dataProjectPROJECT_ID.asInteger ;
   // Not sure what this is for!
  { dataOrganizationDefault.active := false ;
   dataOrganizationDefault.ParamByName('Account_ID').AsInteger := dataProjectACCOUNT_ID.AsInteger ;
   dataOrganizationDefault.active := true ;
   defaultOrgID := dataOrganizationDefault.FieldByName('Organization_ID').asInteger ;

   if defaultOrgID > 0 then
   begin
       dataProjectConfig.Append ;
       dataProjectConfigPROJECT_ID.value := project_ID;
       dataProjectConfigOrganization_ID.value := defaultOrgID;
       dataProjectConfigISDEFAULT.asInteger := 1;

       dataProjectConfig.post ;

   end;
   }


end;

procedure TDM_Project.dataProjectConfigNewRecord(DataSet: TDataSet);
begin
      dataprojectConfigstatus_ID.value := 0;
    dataProjectConfigISDEFAULT.value := 0;
end;

procedure TDM_Project.dataProjectNewRecord(DataSet: TDataSet);
begin
    dataProjectISTEST.Value := 0;
  dataProjectISACTIVE.value := 1;
  dataProjectEVALANALYSIS_FLG.value := 0 ;
  dataProjectISMULTIORG.value := 0;
  dataProjectISMULTIPRODUCT.value := 0;
  dataProjectSTATUS_ID.value := 0;
  dataProjectLOCKSETTINGS_FLG.value := 0;
  dataProjectAUTOADDNEWORG_FLG.value := 0;
  dataProjectDELETE_FLG.value := 0;



end;

procedure TDM_Project.dsProjectConfig_DefaultDataChange(Sender: TObject;
  Field: TField);
begin
    sqlSurveyID_Default.active := true ;
end;

procedure TDM_Project.dsProjectConfig_OrgInfoDataChange(Sender: TObject;
  Field: TField);
begin

end;

end.

