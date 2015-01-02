unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvListEditor, StdCtrls, ImgList;

type
  TForm4 = class(TForm)
    GroupBox1: TGroupBox;
    AdvListEditor1: TAdvListEditor;
    GroupBox2: TGroupBox;
    AdvListEditor2: TAdvListEditor;
    GroupBox3: TGroupBox;
    AdvListEditor3: TAdvListEditor;
    ListBox1: TListBox;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ImageList1: TImageList;
    Label4: TLabel;
    Label5: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure AdvListEditor1ValueClick(Sender: TObject; ValueIndex: Integer);
    procedure AdvListEditor3ValueClick(Sender: TObject; ValueIndex: Integer);
    procedure AdvListEditor3ValueDelete(Sender: TObject; Value: TAdvListValue;
      var Allow: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.AdvListEditor1ValueClick(Sender: TObject; ValueIndex: Integer);
begin
  ShowMessage('Value '+ inttostr(ValueIndex)+' clicked. Display text = '+ AdvListEditor1.Values[ValueIndex].DisplayText);
end;

procedure TForm4.AdvListEditor3ValueClick(Sender: TObject; ValueIndex: Integer);
begin
  Label3.Caption := AdvListEditor3.Values[ValueIndex].DisplayText + '  http://' + AdvListEditor3.Values[ValueIndex].Value;
end;

procedure TForm4.AdvListEditor3ValueDelete(Sender: TObject;
  Value: TAdvListValue; var Allow: Boolean);
begin
  Allow := MessageDlg('Delete value?',mtConfirmation,[mbYes,mbNo],0) = mrYes;
end;

procedure TForm4.Button1Click(Sender: TObject);
var
  i: integer;
begin
  listbox1.Items.Clear;
  for i := 0 to AdvListEditor1.Values.Count - 1 do
  begin
    listbox1.Items.Add(AdvListEditor1.Values[i].DisplayText);
  end;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  AdvListEditor2.Lookup.AddPair('Embarcadero','www.embarcadero.com');
  AdvListEditor2.Lookup.AddPair('TMS software','www.tmssoftware.com');
  AdvListEditor2.Lookup.AddPair('Adobe','www.adobe.com');
  AdvListEditor2.Lookup.AddPair('Apple','www.apple.com');
  AdvListEditor2.Lookup.AddPair('Microsoft','www.microsoft.com');
  AdvListEditor2.Lookup.AddPair('Atozed','www.atozed.com');
  AdvListEditor2.Lookup.AddPair('Google','www.google.com');
  AdvListEditor2.Lookup.AddPair('Twitter','www.twitter.com');
  AdvListEditor2.Lookup.AddPair('Facebook','www.facebook.com');
  AdvListEditor2.Lookup.AddPair('Dell','www.dell.com');
  AdvListEditor2.Lookup.AddPair('Gnostice','www.gnostice.com');
  AdvListEditor2.Lookup.AddPair('RemObjects','www.remobjects.com');
  AdvListEditor2.Lookup.AddPair('McAfee','www.mcafee.com');
end;

procedure TForm4.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked then
    AdvListEditor2.LookupMethod := lmFromStart
  else
    AdvListEditor2.LookupMethod := lmFull;
end;

end.
