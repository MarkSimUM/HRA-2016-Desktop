unit datamoduleMessaging;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DataModuleMain, db, Ora;

type

  { TDM_Messaging }

  TDM_Messaging = class(TDataModule)
    data_MessagingCriteriaAGECODEMAX: TFloatField;
    data_MessagingCriteriaAGECODEMIN: TFloatField;
    data_MessagingCriteriaBLOCKALPHA: TStringField;
    data_MessagingCriteriaBLOCKDESCRIPTION: TStringField;
    data_MessagingCriteriaBLOCKIMAGE: TStringField;
    data_MessagingCriteriaBLOCKORDER: TFloatField;
    data_MessagingCriteriaCRITERIA: TStringField;
    data_MessagingCriteriaCRITERIAALPHA: TStringField;
    data_MessagingCriteriaCRITGMSGID: TFloatField;
    data_MessagingCriteriaEVALORDER: TFloatField;
    data_MessagingCriteriaFRAMEWORKVERSION_ID: TFloatField;
    data_MessagingCriteriaGENDERCODE: TFloatField;
    data_MessagingCriteriaGROUPALPHA: TStringField;
    data_MessagingCriteriaGROUPDESC: TStringField;
    data_MessagingCriteriaGROUPORDER: TFloatField;
    data_MessagingCriteriaISDEFAULT: TFloatField;
    data_MessagingCriteriaISGROUPING: TFloatField;
    data_MessagingCriteriaMSGGROUP_ID: TFloatField;
    data_MessagingCriteriaRISKCRITERIA: TStringField;
    data_MessagingCriteriaSECTIONALPHA: TStringField;
    data_MessagingCriteriaSECTIONDESCRIPTION: TStringField;
    data_MessagingCriteriaSECTIONORDER: TFloatField;
    data_MessagingCriteriaTOPN: TFloatField;
    data_MessagingCriteria: TOraQuery;
    data_MessagingGroupBLOCKALPHA: TStringField;
    data_MessagingGroupBLOCKDESCRIPTION: TStringField;
    data_MessagingGroupBLOCKIMAGE: TStringField;
    data_MessagingGroupBLOCKORDER: TFloatField;
    data_MessagingGroupFRAMEWORKVERSION_ID: TFloatField;
    data_MessagingGroupGROUPALPHA: TStringField;
    data_MessagingGroupGROUPDESC: TStringField;
    data_MessagingGroupGROUPORDER: TFloatField;
    data_MessagingGroupMSGGROUP_ID: TFloatField;
    data_MessagingGroupSECTIONALPHA: TStringField;
    data_MessagingGroupSECTIONDESCRIPTION: TStringField;
    data_MessagingGroupSECTIONORDER: TFloatField;
    data_MessagingGroupTOPN: TFloatField;
    ds_MessagingCriteria: TOraDataSource;
    data_MessagingGroup: TOraQuery;
    ds_MessagingGroup: TOraDataSource;
    data_MsgCriteriaForGroup: TOraQuery;
    ds_MsgCriteriaForGroup: TOraDataSource;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DM_Messaging: TDM_Messaging;

implementation

{$R *.lfm}

end.

