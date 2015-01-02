unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants,
  Classes, Graphics, Controls, Forms, Dialogs, vCard, StdCtrls, ComCtrls,
  ExtCtrls, ExtDlgs;

type
  TForm6 = class(TForm)
    vCard1: TvCard;
    GroupBox1: TGroupBox;
    btAddContact: TButton;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Image1: TImage;
    GroupBox2: TGroupBox;
    lbContacts: TListBox;
    btImport: TButton;
    btExport: TButton;
    btExportAll: TButton;
    Label2: TLabel;
    meDetails: TMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Email: TTabSheet;
    Address: TTabSheet;
    Phone: TTabSheet;
    Label11: TLabel;
    edPhoto: TEdit;
    btLoadPhoto: TButton;
    edWebsite: TEdit;
    dtBirthDay: TDateTimePicker;
    Label9: TLabel;
    Label8: TLabel;
    edProfession: TEdit;
    edJobTitle: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    edCompany: TEdit;
    edNickName: TEdit;
    Label10: TLabel;
    Label5: TLabel;
    edLastName: TEdit;
    edFirstName: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edHomeEmail: TEdit;
    Label12: TLabel;
    edWorkEmail: TEdit;
    edWorkPhone: TEdit;
    edMobilePhone: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    edHomeStreet: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edHomeCode: TEdit;
    Label18: TLabel;
    edHomeCity: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    edWorkStreet: TEdit;
    edWorkCode: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    edWorkCity: TEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    Label23: TLabel;
    edFullName: TEdit;
    edHomeCountry: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    edWorkCountry: TEdit;
    procedure btAddContactClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lbContactsClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btExportClick(Sender: TObject);
    procedure btImportClick(Sender: TObject);
    procedure btExportAllClick(Sender: TObject);
    procedure btLoadPhotoClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DisplayContacts;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.btAddContactClick(Sender: TObject);
var
  vc: TvContact;
  em: TvEmail;
  tel: TvPhone;
  adr: TvAddress;
begin
  vc := vCard1.vContacts.Add;

  vc.vCardVersion := vv30;

  vc.FirstName := edFirstName.Text;
  vc.LastName := edLastName.Text;
  vc.FullName := vc.FirstName + ' ' + vc.LastName;
  vc.NickName := edNickName.Text;
  vc.Company := edCompany.Text;
  vc.JobTitle := edJobTitle.Text;
  vc.Profession := edProfession.Text;
  vc.BirthDay := dtBirthDay.Date;
  vc.WebsiteURL := edWebsite.Text;

  vc.Photo.Assign(image1.Picture);
  vc.PhotoType := itJPEG;
  vc.PhotoEncoding := feInternalBase64;

  em := vc.Emails.Add;
  em.EmailAddress := edWorkEmail.Text;
  em.EmailType := ftWork;
  em.Preferred := true;

  em := vc.Emails.Add;
  em.EmailAddress := edHomeEmail.Text;
  em.EmailType := ftHome;
  em.Preferred := false;

  tel := vc.PhoneNumbers.Add;
  tel.PhoneNumber := edWorkPhone.Text;
  tel.PhoneType := [ptVoice];
  tel.Preferred := false;

  tel := vc.PhoneNumbers.Add;
  tel.PhoneNumber := edMobilePhone.Text;
  tel.PhoneType := [ptCell, ptVoice, ptText];
  tel.Preferred := true;

  adr := vc.Addresses.Add;
  adr.AddressType := ftWork;
  adr.Preferred := true;
  adr.Street := edWorkStreet.Text;
  adr.City := edWorkCity.Text;
  adr.PostCode := edWorkCode.Text;
  adr.Country := edWorkCountry.Text;

  adr := vc.Addresses.Add;
  adr.AddressType := ftHome;
  adr.Preferred := false;
  adr.Street := edHomeStreet.Text;
  adr.City := edHomeCity.Text;
  adr.PostCode := edHomeCode.Text;
  adr.Country := edHomeCountry.Text;

  DisplayContacts;
end;

procedure TForm6.btExportAllClick(Sender: TObject);
begin
  vCard1.SaveToFile('contacts.vcf');
end;

procedure TForm6.btExportClick(Sender: TObject);
var
  vc: TvContact;
begin
  if lbContacts.ItemIndex >= 0 then
  begin
    vc := lbContacts.Items.Objects[lbContacts.ItemIndex] as TvContact;
    vCard1.SaveToFile(vc.FullName + '.vcf', vc);
  end;
end;

procedure TForm6.btImportClick(Sender: TObject);
begin
  if (OpenDialog1.Execute) then
  begin
    vCard1.InsertFromFile(OpenDialog1.FileName);
    DisplayContacts;
    image1.Picture.Assign(vCard1.vContacts[vCard1.vContacts.Count - 1].Photo);
  end;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
 edFirstName.Text := 'FirstName';
 edLastName.Text := 'LastName';
 edNickName.Text := 'NickName';
 edCompany.Text := 'Company';
 edJobTitle.Text := 'JobTitle';
 edProfession.Text := 'Role';
 dtBirthDay.Date := StrToDate('01/01/2013');
 edWebsite.Text := 'www.tmssoftware.com';
 edPhoto.Text := '';

 edWorkEmail.Text := 'workmail@example.com';
 edHomeEmail.Text := 'homemail@example.com';

 edWorkPhone.Text := '0123456789';
 edMobilePhone.Text := '999999999';

 edWorkStreet.Text := 'Workstreet';
 edWorkCity.Text := 'Workcity';
 edWorkCode.Text := '1234';

 edHomeStreet.Text := 'Homestreet';
 edHomeCity.Text := 'Homecity';
 edHomeCode.Text := '5678';
end;

procedure TForm6.btLoadPhotoClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    edPhoto.Text := opendialog1.FileName;
    image1.Picture.LoadFromFile(opendialog1.FileName);
  end;
end;

procedure TForm6.DisplayContacts;
var
  I: Integer;
begin
  lbContacts.Clear;
  for I := 0 to vCard1.vContacts.Count - 1 do
  begin
    lbContacts.Items.AddObject(vCard1.vContacts[I].FullName, vCard1.vContacts[I])
  end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
 DisplayContacts;
end;

procedure TForm6.Image1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    edPhoto.Text := OpenPictureDialog1.FileName;
  end;
end;

procedure TForm6.lbContactsClick(Sender: TObject);
var
  vc: TvContact;
  adr: TvAddress;
  I: Integer;
begin
  meDetails.Clear;
  if lbContacts.ItemIndex >= 0 then
  begin
    vc := lbContacts.Items.Objects[lbContacts.ItemIndex] as TvContact;

    edFullName.Text := vc.FullName;
    edFirstName.Text := vc.FirstName;
    edLastName.Text := vc.LastName;
    edJobTitle.Text := vc.JobTitle;
    edCompany.Text := vc.Company;
    edNickName.Text := vc.NickName;
    edProfession.Text := vc.Profession;
    edWebsite.Text := vc.WebsiteURL;
    edNickName.Text := vc.NickName;
    dtBirthDay.Date := vc.BirthDay;

    meDetails.Lines.Add('VC Version: ' + IntToStr(Ord(vc.vCardVersion)));
    meDetails.Lines.Add('Updated: ' + DateTimeToStr(vc.Updated));

    for I := 0 to vc.Emails.Count - 1 do
    begin
      if vc.Emails[i].EmailType = ftHome then
        edHomeEmail.Text := vc.Emails[i].EmailAddress;

      if vc.Emails[i].EmailType = ftWork then
        edWorkEmail.Text := vc.Emails[i].EmailAddress;

      meDetails.Lines.Add('Email' + IntToStr(i) + ': ' + vc.Emails[i].EmailAddress
        + ' - ' + IntToStr(Ord(vc.Emails[i].EmailType)) + ' - ' + BoolToStr(vc.Emails[i].Preferred));
    end;

    for I := 0 to vc.PhoneNumbers.Count - 1 do
    begin
      if (ptCell in vc.PhoneNumbers[i].PhoneType) then
        edMobilePhone.Text := vc.PhoneNumbers[i].PhoneNumber;

      if not (ptCell in vc.PhoneNumbers[i].PhoneType) then
        edWorkPhone.Text := vc.PhoneNumbers[i].PhoneNumber;

      meDetails.Lines.Add('Phone' + IntToStr(i) + ': ' + vc.PhoneNumbers[i].PhoneNumber
       + ' - ' + BoolToStr(vc.PhoneNumbers[i].Preferred));
    end;

    for I := 0 to vc.Addresses.Count - 1 do
    begin
      adr := vc.Addresses[i];

      if adr.AddressType = ftHome then
      begin
        edHomeStreet.Text := adr.Street;
        edHomeCode.Text := adr.PostCode;
        edHomeCity.Text := adr.City;
        edHomeCountry.Text := adr.Country;
      end;

      if adr.AddressType = ftWork then
      begin
        edWorkStreet.Text := adr.Street;
        edWorkCode.Text := adr.PostCode;
        edWorkCity.Text := adr.City;
        edWorkCountry.Text := adr.Country;
      end;

      meDetails.Lines.Add('Adr' + IntToStr(i) + ': ' + adr.Street + ', ' + adr.City
       + ' - ' + IntToStr(Ord(vc.Addresses[i].AddressType)) + ' - ' + BoolToStr(vc.Addresses[i].Preferred));
      meDetails.Lines.Add('Label' + IntToStr(i) + ': ' + adr.MailingLabel.Text);
    end;

    image1.Picture.Assign(vc.Photo);
  end;
end;

end.
