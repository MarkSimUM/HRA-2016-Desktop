unit Project;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynMemo, SynGutterBase, SynGutterMarks,
  SynGutterLineNumber, SynGutterChanges, SynGutter, SynGutterCodeFolding,
  TAStyles, TAGraph, TASeries, TARadialSeries, TASources, TADbSource, Forms,
  Controls, Graphics, Dialogs, ComCtrls, DBGrids, DbCtrls, StdCtrls, ExtCtrls,
  Arrow, ButtonPanel, DataModuleMain, db, process, Ora, OraSmart, globals,
  VirtualTable;

type

  { Tfrm_Project }

  Tfrm_Project = class(TForm)
    btnSelectProjectOk: TButton;
    btnSave: TButton;
    Button5: TButton;
    Button7: TButton;
    DataSource1: TDataSource;
    DBCalendar1: TDBCalendar;
    DBCheckBox_AutoOrg: TDBCheckBox;
    DBCheckBox_IsActive2: TDBCheckBox;
    DBCheckBox_IsActive3: TDBCheckBox;
    DBCheckBox_IsTest1: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit_ProjectName1: TDBEdit;
    DBGrid19: TDBGrid;
    DBGrid20: TDBGrid;
    DBGrid21: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid_Project: TDBGrid;
    DBGrid4: TDBGrid;
    DBLookup_ProductVersion: TDBLookupComboBox;
    DBlu_ProjectStatus1: TDBLookupComboBox;
    DBMemo_ProjectNotes1: TDBMemo;
    DBNavGlobal: TDBNavigator;
    DBNavigator_Acct12: TDBNavigator;
    DBNavigator_Acct13: TDBNavigator;
    DBNavigator_Acct16: TDBNavigator;
    DBNavigator_Acct2: TDBNavigator;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    labelProject2: TLabel;
    labelAccount: TLabel;
    lblStatus2: TLabel;
    lblStatus3: TLabel;
    lblStatus4: TLabel;
    lblStatus5: TLabel;
    luStatus: TOraDataSource;

    OraTable1: TOraTable;
    PageControl1: TPageControl;
    pnlHeader: TPanel;
    pnl_Top: TPanel;
    pnl_Left: TPanel;
    StatusBar2: TStatusBar;
    SynMemo1: TSynMemo;
    tbNewProject: TTabSheet;
    tbs_ConfigDefault: TTabSheet;
    TabSheet6: TTabSheet;
    VirtualTable1: TVirtualTable;
    procedure btnSelectProjectOkClick(Sender: TObject);
    procedure btn_AddProductClick(Sender: TObject);
    procedure btn_AllowProjEditClick(Sender: TObject);
    procedure btn_Filter1Click(Sender: TObject);
    procedure btn_OKClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource1UpdateData(Sender: TObject);
    procedure DBEdit_ProjectName1Change(Sender: TObject);
    procedure DBEdit_ProjectName1EditingDone(Sender: TObject);
    procedure DBLookup_ProductVersionChange(Sender: TObject);
    procedure DBLookup_ProductVersionCloseUp(Sender: TObject);
    procedure DBNavGlobalClick(Sender: TObject; Button: TDBNavButtonType);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure tbNewProjectExit(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
     product_ID : integer ;
  end;

var
  frm_Project: Tfrm_Project;

implementation

{$R *.lfm}

{ Tfrm_Project }

procedure Tfrm_Project.btn_Filter1Click(Sender: TObject);
begin

end;

procedure Tfrm_Project.btn_AllowProjEditClick(Sender: TObject);
begin

end;

procedure Tfrm_Project.btn_AddProductClick(Sender: TObject);
begin

end;

procedure Tfrm_Project.btnSelectProjectOkClick(Sender: TObject);
begin

      DBGrid_Project.Enabled:= true;
      DBGrid_Project.Visible:= false;
       btnSelectProjectOk.visible := false ;
end;

procedure Tfrm_Project.btn_OKClick(Sender: TObject);
begin


end;

procedure Tfrm_Project.Button1Click(Sender: TObject);
begin
  with DM_Main do
  begin
     countCurrentProject.active := false;
     countCurrentProject.ParamByName('Account_ID').value := dataAccountACCOUNT_ID.value ;
     countCurrentProject.ParamByName('Product_ID').value := 0 ;
  end;
end;

procedure Tfrm_Project.Button3Click(Sender: TObject);
begin

end;

procedure Tfrm_Project.Button5Click(Sender: TObject);
begin


end;

procedure Tfrm_Project.Button6Click(Sender: TObject);
begin

end;

procedure Tfrm_Project.Button7Click(Sender: TObject);
begin

end;

procedure Tfrm_Project.Button9Click(Sender: TObject);
begin

end;

procedure Tfrm_Project.DataSource1DataChange(Sender: TObject; Field: TField);
begin


  //labelProject.caption := 'PROJECT: '+ DM_Main.dataProject.fieldbyname('projectname').AsString ;
  //labelProject1.caption := 'PROJECT: '+ DM_Main.dataProject.fieldbyname('projectname').AsString ;
  //labelProduct.caption := 'PRODUCT: '+ DM_Main.dataProjectPRODUCTCODE.asString;
  //labelProduct2.caption := labelProduct.caption;
  //
  //labelOrg.caption := 'ORGANIZATION: '+DM_Main.dataOrg_wProject.FieldByName('DisplayName').AsString;

end;

procedure Tfrm_Project.DataSource1UpdateData(Sender: TObject);
begin


end;

procedure Tfrm_Project.DBEdit_ProjectName1Change(Sender: TObject);
begin

end;

procedure Tfrm_Project.DBEdit_ProjectName1EditingDone(Sender: TObject);
begin
    if (DM_Main.dataProject.fieldbyname('projectname').AsString <> '') AND
       (DM_Main.dataProjectPRODUCTVERSION_ID.AsString <> '') then

  begin
       btnSave.enabled := true;

  end else
         btnSave.enabled := false;
end;

procedure Tfrm_Project.DBLookup_ProductVersionChange(Sender: TObject);
begin

end;

procedure Tfrm_Project.DBLookup_ProductVersionCloseUp(Sender: TObject);
var
   iCount : integer ;
begin
    with DM_Main do
  begin


     if  dataProjectPRODUCTVERSION_ID.AsInteger > 0 then
      begin
      DBLookup_ProductVersion.ListSource.DataSet.Locate('productversion_id',  dataProjectPRODUCTVERSION_ID.AsInteger ,[]);
      product_Id :=  DBLookup_ProductVersion.ListSource.DataSet.fieldbyname('product_id').asInteger;

         countCurrentProject.active := false ;
         countCurrentProject.ParamByName('Account_ID').value := dataAccountACCOUNT_ID.value ;
         countCurrentProject.ParamByName('product_id').value := product_Id;
         countCurrentProject.active := true ;
         iCount := countCurrentProject.FieldByName('CurrentCount').asinteger ;
         if iCount > 0 then
          begin

              if  MessageDlg('WARNING', 'Already an active Project using this Product...Ok or Cancel?'+ #13#10+' (recommend to cancel and make other project inactive)',mtWarning,[mbOk,mbCancel],0) = mrCancel then
               begin
                   dataProject.Cancel;
                   close ;
               end;
           end;


      end;
  end;

    if (DM_Main.dataProject.fieldbyname('projectname').AsString <> '') AND
      (DM_Main.dataProjectPRODUCTVERSION_ID.AsString <> '') then
  begin
       btnSave.enabled := true;

  end else
         btnSave.enabled := false;
end;

procedure Tfrm_Project.DBNavGlobalClick(Sender: TObject;
  Button: TDBNavButtonType);
var
    bOk : boolean ;
begin
  if button = button.nbCancel then
   begin
    // ShowMessage('cancelling changes...');
     ModalResult:= mrCancel;
   end;
   if button = button.nbPost then
    begin
     //ShowMessage('Saving new project...');
      bOk := true ;
     if DM_Main.dataProjectPROJECTNAME.asString = '' then
      begin
         ShowMessage('Complete project name');
          bOk := false ;
      end;
     if bOk then
      begin
         ModalResult := mrOK;
         globals.tProject_ID := DM_Main.dataProjectPROJECT_ID.AsInteger ;
         globals.tAccount_ID := DM_Main.dataAccountACCOUNT_ID.asInteger ;

      end;
    end;


end;

procedure Tfrm_Project.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
   if NOT(DM_Main.dataProject.state in [dsBrowse]) then
    begin
        CanClose := false ;
        ShowMessage('Please save or cancel changes');
    end;
end;

procedure Tfrm_Project.FormCreate(Sender: TObject);
begin
    With DM_Main do
  begin

    dataProject.active := true ;
    dataProjectConfig_DEFAULT.Active := true ;
     dataProjectConfig.Active := true ;

    dataSurvey_SurveyItem_DEFAULT.active := true ;

    // dataProjectConfig_HRA.active := true ;
     dataSurvey_SurveyItem.active := true ;

     labelAccount.caption := 'ACCOUNT: '+dataAccount.fieldbyName('AccountName').value ;


      //virtualtable1.

  end;
   PageControl1.ActivePage := tbNewProject;
end;

procedure Tfrm_Project.PageControl1Change(Sender: TObject);
begin

end;

procedure Tfrm_Project.tbNewProjectExit(Sender: TObject);
begin

end;

end.

