unit SurveyLibrary;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, ListFilterEdit, DividerBevel, Forms, Controls,
  Graphics, Dialogs, DBGrids, DbCtrls, ExtCtrls, StdCtrls, CheckLst, ValEdit,
  DataModuleSurveyLibrary, Ora, MemData, OraSmart, OraScript, SLEdit, newvalues, DB;

type

  { Tfrm_SurveyLibrary }

  Tfrm_SurveyLibrary = class(TForm)
    Bevel1: TBevel;
    btn_Edit1: TButton;
    btn_Edit2: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    btn_Edit: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    CheckListBox1: TCheckListBox;
    clist_values: TCheckListBox;
    clist_values2: TCheckListBox;
    DBChk_CoreSet: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupListBox1: TDBLookupListBox;
    DBLookupListBox2: TDBLookupListBox;
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    DBText1: TDBText;
    DividerBevel1: TDividerBevel;
    edtTestLabel: TEdit;
    edtDelimText: TEdit;
    edt_Filter: TEdit;
    edt_LanguageID: TEdit;
    Label1: TLabel;
    LU_ValueAndLabel: TOraDataSource;
    OraQuery1: TOraQuery;
    OraSQL1: TOraSQL;
    PR_UPSERT_ITEMLABEL: TOraStoredProc;
    rg_values1: TRadioGroup;
    rg_values2: TRadioGroup;
    procedure btn_Edit1Click(Sender: TObject);
    procedure btn_Edit2Click(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckListBox1DblClick(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure edt_FilterChange(Sender: TObject);
    procedure edt_FilterChangeBounds(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rg_values1SelectionChanged(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frm_SurveyLibrary: Tfrm_SurveyLibrary;

implementation

{$R *.lfm}

{ Tfrm_SurveyLibrary }

procedure Tfrm_SurveyLibrary.FormActivate(Sender: TObject);
begin
    DM_SurveyLibrary.dataItem.Active := true ;
    DM_SurveyLibrary.dataItemLabel.active := true ;
    DM_SurveyLibrary.dataItemValue.active := true ;
    DM_SurveyLibrary.dataItemValueLabel.active := true ;
    DM_SurveyLibrary.dataValueAndLabel.active := true ;
        DM_SurveyLibrary.luItemType.active := true ;

  DM_SurveyLibrary.dataItemLabel.ParamByName('Language_ID').AsInteger := 1;

end;

procedure Tfrm_SurveyLibrary.rg_values1SelectionChanged(Sender: TObject);
var i, sel : integer ;
begin
  sel := rg_values1.ItemIndex ;

  rg_values2.items.clear ;
  if sel < rg_values1.items.count then
  For i := sel+1 to rg_values1.Items.count - 1 do
  begin
     rg_values2.items.add(rg_values1.items[i]);
  end;

end;

procedure Tfrm_SurveyLibrary.edt_FilterChangeBounds(Sender: TObject);
begin

end;

procedure Tfrm_SurveyLibrary.edt_FilterChange(Sender: TObject);
begin
  with DM_SurveyLibrary.dataItem    do
  begin
     //DM_SurveyLibrary.dataItem.locateEX('fieldname', edt_Filter.text,   [lxPartialKey, lxCaseInsensitive]);

  end;
end;

procedure Tfrm_SurveyLibrary.Button1Click(Sender: TObject);
begin
   //DM_SurveyLibrary.OraStoredProc1.params.parambyname('pfieldname').value := 'x';
     //DM_SurveyLibrary.dataItemLabel.params.parambyname('Language_ID').value = edt_LanguageID.text;
     DM_SurveyLibrary.dataItemLabel.ParamByName('Language_ID').AsString := edt_LanguageID.text;
     DM_SurveyLibrary.dataItemLabel.Refresh ;
end;

procedure Tfrm_SurveyLibrary.btn_EditClick(Sender: TObject);
begin
     frm_SLibEdit := Tfrm_SLibEdit.create(nil);

   frm_SLibEdit.ShowModal;

   FreeAndNil(frm_SLibEdit);

end;

procedure Tfrm_SurveyLibrary.btn_Edit1Click(Sender: TObject);
begin
    frm_itemnew := Tfrm_itemnew.create(nil);

   frm_itemnew.ShowModal;

   FreeAndNil(frm_itemnew);
end;

procedure Tfrm_SurveyLibrary.btn_Edit2Click(Sender: TObject);
begin



         DM_SurveyLibrary.dataItem.Refresh;
    DM_SurveyLibrary.dataItemLabel.Refresh ;
    DM_SurveyLibrary.dataItemValue.refresh ;
    DM_SurveyLibrary.dataItemValueLabel.refresh ;
    DM_SurveyLibrary.dataValueAndLabel.refresh;
        DM_SurveyLibrary.luItemType.refresh ;

end;

procedure Tfrm_SurveyLibrary.Button2Click(Sender: TObject);
begin
     DM_SurveyLibrary.dataItem.Filter := edt_Filter.text ;
   DM_SurveyLibrary.dataItem.Filtered := true ;
end;

procedure Tfrm_SurveyLibrary.Button3Click(Sender: TObject);
var i : integer ;
begin
   checklistbox1.items.clear ;
  // With DM_SurveyLibrary.dataItem do
  // begin
       For i := 0 to DM_SurveyLibrary.dataItem.fields.count - 1 do
       begin
           //checklistbox1.items.Add(DM_SurveyLibrary.dataItem.fields[i].AsString);
          // checklistbox1.items.Add(DM_SurveyLibrary.dataItem.fields[i].DisplayName);
           checklistbox1.items.Add(DM_SurveyLibrary.dataItem.fields[i].FieldName);


       end;
  // end;
end;

procedure Tfrm_SurveyLibrary.Button4Click(Sender: TObject);
var i : integer ;
begin
   clist_values.items.clear ;
   DM_SurveyLibrary.LUValueAndLabel.active := false ;
   DM_SurveyLibrary.LUValueAndLabel.params.parambyname('Item_ID').AsInteger :=
     DM_SurveyLibrary.dataItemITEM_ID.AsInteger ;
      DM_SurveyLibrary.LUValueAndLabel.active := true ;
  // With DM_SurveyLibrary.dataItem do
  // begin
       DM_SurveyLibrary.LUValueAndLabel.First;
       While not DM_SurveyLibrary.LUValueAndLabel.eof do

       begin
           //checklistbox1.items.Add(DM_SurveyLibrary.dataItem.fields[i].AsString);
          // checklistbox1.items.Add(DM_SurveyLibrary.dataItem.fields[i].DisplayName);
           clist_values.items.Add(DM_SurveyLibrary.LUValueAndLabelVALUE.asString+' ['+DM_SurveyLibrary.LUValueAndLabelVALUELABEL.AsString+']');
          DM_SurveyLibrary.LUValueAndLabel.Next ;

       end;
       clist_values2.items.clear ;
       clist_values2.items.addStrings(clist_values.items);
       rg_values1.items.clear ;
       rg_values1.Items.AddStrings(clist_values.items);
        rg_values2.items.clear ;
       rg_values2.Items.AddStrings(clist_values.items);

end;

procedure Tfrm_SurveyLibrary.Button5Click(Sender: TObject);
var
  clist : TStringList;            // Define our string list variable
  i, j , pos1   : Integer;
  item, itemN, DelimN : string ;
begin
  // Define a string list object, and point our variable at it
  clist := TStringList.Create;

  // Now add some cars to our list - using the DelimitedText property
  // with overriden control variables
  clist.Delimiter := ',';        // Each list item will be blank separated
  clist.QuoteChar := '"';        // And each item will be quoted with |'s
  clist.DelimitedText := edtDelimText.Caption;

  // Now display these cars
  clist_values.ClearSelection;
   for j := 0 to clist_values.items.count - 1 do
     begin
        clist_values.checked[j] := false ;

     end;

  for i := 0 to clist.Count-1 do
  begin
     for j := 0 to clist_values.items.count - 1 do
     begin
        item :=clist_values.items[j];
        pos1 := Pos ('[', item ) ;
        if (pos1 > 1) then
        begin
           itemN := COPY(item,1,Pos1-1) ;
           DelimN := clist[i];
           if TRIM(itemN) = TRIM(DelimN) then
           begin
              clist_values.Selected[j] := true;
              clist_values.Checked[j] := true;
              break;
           end;
        end;
       end;
  end;
   // ShowMessage(clist[i]);       // cars[i] equates to cars.Strings[i]

  // Free up the list object
  clist.Free;
end;

procedure Tfrm_SurveyLibrary.Button6Click(Sender: TObject);
var
   i, pos1, pos2: integer ;
   item : string ;
begin
  if clist_values.SelCount > 1 then
  begin
  edtDelimText.caption := '';
  for i := 0 to clist_values.items.count - 1 do
  begin
       if cList_Values.Selected[i] then
       begin
        item :=clist_values.items[i];
        pos1 := Pos ('[', item ) ;
        if pos1 > 1 then
           edtDelimText.caption := edtDelimText.caption + COPY(item,1,Pos1-1) + ',' ;
       end;
  end;

  end;

end;

procedure Tfrm_SurveyLibrary.Button7Click(Sender: TObject);

var
  WS: WideString;

begin
  WS := 'TESTWS 年龄（在过去的生日';
  with OraQuery1 do begin
    Close;
    SQL.Text:=
     'update SLIB_ITEMLABEL'  +
     ' SET label = :Label '     +
     ' WHERE ITEMLABEL_ID  = 379';

    ParamByName('Label').DataType := ftFixedWideChar;
    ParamByName('Label').AsWideString :=  WS;
    execute;
  end;
     exit;

  ORASQL1.execute;
    with PR_UPSERT_ITEMLABEL  do
     begin
       ParamByName('PITEMLABEL_ID').Value:= 379 ;
       ParamByName('PLANGUAGE_ID').Value:= 1 ;

       ParamByName('PLABEL').AsString := edtTestLabel.Text  ;
       PR_UPSERT_ITEMLABEL.Execute;

       ShowMessage(ParambyName('VRETURNCODE').AsString);


      end;


end;



procedure Tfrm_SurveyLibrary.CheckListBox1DblClick(Sender: TObject);
begin
  edt_Filter.text := edt_Filter.text + ' ' +checklistBox1.Items[checklistbox1.ItemIndex] + ' LIKE "A%" ';
end;

procedure Tfrm_SurveyLibrary.DBRadioGroup2Change(Sender: TObject);
begin

end;

end.

