unit addValues;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, DbCtrls,
  DBGrids, OraSmart, Ora, DataModuleSurveyLibrary, db;

type

  { Tfrm_AddValues }

  Tfrm_AddValues = class(TForm)
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupListBox1: TDBLookupListBox;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBText1: TDBText;
    OraDataSource1: TOraDataSource;
    OraTable1: TOraTable;
    OraTable1COPYFROMSTDCATEGORY: TFloatField;
    OraTable1CORESET: TIntegerField;
    OraTable1CREATED_BY: TStringField;
    OraTable1CREATE_DT: TDateTimeField;
    OraTable1DATA_FIELDNAME: TStringField;
    OraTable1DATA_POSITION: TFloatField;
    OraTable1DESCRIPTION: TStringField;
    OraTable1DOMAIN: TStringField;
    OraTable1DOMAINORDER: TFloatField;
    OraTable1FIELDNAME: TStringField;
    OraTable1ISCALCULATED: TFloatField;
    OraTable1ISCUSTOM: TFloatField;
    OraTable1ISSCALE: TFloatField;
    OraTable1ITEMLINK_ID: TFloatField;
    OraTable1ITEMTYPE_ID: TFloatField;
    OraTable1ITEM_ID: TFloatField;
    OraTable1MAXVALUE: TFloatField;
    OraTable1MEASUREMENTUNIT: TFloatField;
    OraTable1MINVALUE: TFloatField;
    OraTable1NOTES: TStringField;
    OraTable1ORGANIZATION_ID: TFloatField;
    OraTable1ROWID: TStringField;
    OraTable1STDCATEGORY_ID: TFloatField;
    OraTable1STDORDER: TIntegerField;
    OraTable1TABLENAME: TStringField;
    OraTable1TABLENAMELEGACY: TStringField;
    OraTable1TAGS: TStringField;
    OraTable1VARNAME: TStringField;
    SmartQuery1: TSmartQuery;
    SmartQuery1FIELDNAME: TStringField;
    SmartQuery1ITEM_ID: TFloatField;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_AddValues: Tfrm_AddValues;

implementation

{$R *.lfm}

end.

