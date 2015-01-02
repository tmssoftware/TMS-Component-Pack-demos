unit fmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TaskDialog, StdCtrls, Spin;

type
  TMainForm = class(TForm)
    Button1: TButton;
    cbFooter: TCheckBox;
    cbExpanded: TCheckBox;
    cbVerify: TCheckBox;
    cbRadioButtons: TCheckBox;
    cbBtnOK: TCheckBox;
    cbBtnYes: TCheckBox;
    cbBtnNo: TCheckBox;
    cbBtnCancel: TCheckBox;
    cbBtnRetry: TCheckBox;
    cbBtnClose: TCheckBox;
    edCustomButtons: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    memoRadiobuttons: TMemo;
    cbCustom: TCheckBox;
    edVerifyText: TEdit;
    cbCaption: TCheckBox;
    edCaption: TEdit;
    MemoFooter: TMemo;
    cbInstruction: TCheckBox;
    MemoInstruction: TMemo;
    cbContent: TCheckBox;
    MemoContent: TMemo;
    Label2: TLabel;
    MemoExpand: TMemo;
    edExpand: TEdit;
    edCollapse: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    spnDefButton: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure specialButtonClick(sender: tObject; buttonid: integer);
    procedure cbCaptionClick(Sender: TObject);
    procedure cbRadioButtonsClick(Sender: TObject);
    procedure cbCustomClick(Sender: TObject);
    procedure cbVerifyClick(Sender: TObject);
    procedure cbFooterClick(Sender: TObject);
    procedure cbInstructionClick(Sender: TObject);
    procedure cbContentClick(Sender: TObject);
    procedure cbExpandedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure tmsShowmessage(const Title,Instruction,content: string; icon: tTaskDialogIcon);
var
  td:  tAdvTaskDialog;
begin
  td := tAdvTaskDialog.Create(application);
  td.Title := title;
  td.Instruction := Instruction;
  td.Content := Content;
  td.icon := icon;
  td.Execute;
  td.Free;
end {ShowmessageEx};

procedure TMainForm.Button1Click(Sender: TObject);
var
  td : tAdvTaskDialog;
  msg: string;
  ButtonChecked: integer; // custom button number checked
  lab:     string;
  txt:     string;
  i:       Integer;
  inQuote: boolean;
  resname: string;
begin
  //
   td := tAdvTaskDialog.Create(self);
   td.Clear;
   td.DialogPosition := dpOwnerFormCenter;

   // Dialog box Caption or Title
   if cbCaption.checked then
     td.Title := edCaption.text;

   // Main Instruction field
   if cbInstruction.checked then
   begin
     // Note this field will not transform \n to #13#10
     td.Instruction := memoInstruction.lines.text;
   end;

   // Content -- relatively small black text
   if cbContent.checked then
     td.Content := MemoContent.lines.text;

   // Radio buttons optional
   if cbradioButtons.checked then
   begin
     td.RadioButtons.Add('Button 1');
     td.RadioButtons.Add('Button 2');
//     for i := 0 to MemoRadioButtons.Lines.count - 1 do
//       td.RadioButtons.Add(MemoRadioButtons.Lines[i]);
     td.DefaultRadioButton := -1;
   end;
   // verification checkbox: probably most used for 'Do Not Show again'
   if cbVerify.checked then
     td.VerificationText := edVerifytext.Text;

   // Expansiion text
   if cbExpanded.checked then
     td.ExpandedText := memoExpand.lines.text;
   // these don't show if expandedtext is blank
   td.ExpandControlText := edCollapse.text;
   td.CollapsControlText := edExpand.Text;

   // Programmer defined Custom Buttons
   if cbCustom.Checked and (length(edCustombuttons.text) > 0) then
   begin
     td.CommonButtons := [];
     txt := edCustomButtons.text;
     if length(txt) > 0 then
     begin
       lab := '';
       inquote := false;
       for i := 1 to length(txt) do
       begin
         if txt[i] = '"' then
           inQuote := not Inquote;
         if ((txt[i] = ' ') and (not inQuote)) or (i = length(txt)) then
         begin // have end of a button
            if (i = length(txt)) and (txt[i] <> ' ') then
              lab := lab + txt[i];
            if length(lab) > 0 then
              td.CustomButtons.add(lab);
            lab := '';
         end else if txt[i] <> '"' then
           lab := lab + txt[i];
       end;
     end;
   end;
   // Common buttons To be shown
   if cbBtnOK.checked then
     td.CommonButtons := td.CommonButtons + [cbOK];
   if cbBtnYes.checked then
     td.CommonButtons := td.CommonButtons + [cbYes];
   if cbBtnNo.checked then
     td.CommonButtons := td.CommonButtons + [cbNo];
   if cbBtnCancel.checked then
     td.CommonButtons := td.CommonButtons + [cbCancel];
   if cbBtnRetry.checked then
     td.CommonButtons := td.CommonButtons + [cbRetry];
   if cbBtnClose.checked then
     td.CommonButtons := td.CommonButtons + [cbClose];

   if spnDefButton.Value <> 0 then
     td.DefaultButton := spnDefButton.Value;

   // Footer message
   if cbFooter.checked then
   begin
     msg := '';
     for i := 0 to MemoFooter.Lines.count - 1 do
       msg := msg +memoFooter.lines[i]+ '\n';
     setlength(msg,length(msg)-2);
     td.Footer := msg;
   end;

   td.Icon := tiWarning;
   td.FooterIcon := tfiError;

   ButtonChecked := td.Execute;

   msg := '';
   if cbRadioButtons.checked then
     msg := 'Radio Button #'+IntToStr(td.RadioButtonResult-199)+' was selected.'+#13#10;
   if buttonChecked < 100 then
   begin // it's a standard button
     case ButtonChecked of
       id_OK:  resname := 'cbOK';
       id_YES: resname := 'cbYES';
       id_NO:  resname := 'cbNO';
       id_CANCEL: resname := 'cbCANCEL';
       id_RETRY:  resname := 'cbRETRY';
       id_ABORT:  resname := 'cbCLOSE';
     else
       resname := 'UNKNOWN';
     end;
   end else begin
     resName := td.CustomButtons[ButtonChecked-100];
   end;
   msg := msg +'<'+resname+'> Button (#'+IntToStr(ButtonChecked)+') was clicked.';
   if cbVerify.Checked then
   begin
     msg := msg + #13#10+'Verify box was ';
     if not td.VerifyResult then
       msg := msg +'NOT ';
     msg := msg + 'checked.';
   end;
   td.Free;
   tmsShowmessage('TaskDialog Espoerer',msg,'',tiInformation);

end;

procedure TMainForm.Button3Click(Sender: TObject);
begin
  tmsShowmessage('This is the Title','This is the Instruction','This is the content',tiWarning);
end;

procedure TMainForm.cbCaptionClick(Sender: TObject);
begin
  edCaption.Enabled := (sender as tCheckbox).checked;
  if edCaption.Enabled and (edCaption.Text = '') then
    edCaption.text := 'Test of AdvTaskDialog';
end;

procedure TMainForm.cbContentClick(Sender: TObject);
begin
  MemoContent.Enabled := (sender as tCheckbox).checked;
  if MemoContent.Enabled and (MemoContent.lines.count = 0) then
    memoContent.lines.text := 'This is the normal "content" of the dialog.'#13#10+
      'Notice it''s in relatively small print.';
end;

procedure TMainForm.cbCustomClick(Sender: TObject);
begin
  edCustomButtons.Enabled := (sender as tCheckbox).checked;
  if edCustomButtons.enabled and (edCustomButtons.Text = '') then
    edCustomButtons.text := '"Custom 1" "Custom 2"';
end;

procedure TMainForm.cbExpandedClick(Sender: TObject);
begin
  MemoExpand.enabled := (sender as tCheckbox).checked;
end;

procedure TMainForm.cbFooterClick(Sender: TObject);
begin
  MemoFooter.Enabled := (sender as tcheckbox).checked;
  if MemoFooter.Enabled and (MemoFooter.Lines.count = 0) then
    memoFooter.Lines.Text := 'Sample footer Message'#13#10+
      'For Example:  If you do this you will loose all unsaved changes.';
end;

procedure TMainForm.cbInstructionClick(Sender: TObject);
begin
  MemoInstruction.Enabled := (sender as tCheckbox).Checked;
  if MemoInstruction.Enabled and (memoInstruction.lines.count = 0) then
    MemoInstruction.Lines.text := 'This is the bold blue main instruction and'#1310+
       'can be mulitple lines.';
end;

procedure TMainForm.cbRadioButtonsClick(Sender: TObject);
begin
  memoRadioButtons.Enabled := (sender as tCheckbox).checked;
  if memoradioButtons.Enabled and (memoRadioButtons.lines.count = 0) then
  begin
    memoRadioButtons.Lines.Add('Test Radio Button #1');
    memoRadioButtons.Lines.Add('Test Radio button #2');
    MemoRadioButtons.Lines.Add('Test Radio Button #3');
  end;
end;

procedure TMainForm.cbVerifyClick(Sender: TObject);
begin
  edVerifyText.enabled := (sender as tCheckbox).Checked;
  if edverifyText.Enabled and (edVerifyText.Text = '') then
    edVerifyText.text := 'Check Box if you can read :)';
end;

procedure TMainForm.specialButtonClick(sender: tObject; buttonid: integer);
var
  td:  tAdvTaskDialog;
begin
  td := sender as tAdvTaskDialog;
  td.tag := buttonid;
end;

end.
