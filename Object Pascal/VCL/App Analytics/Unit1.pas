//---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

//---------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppAnalytics, Unit2;

type
  TForm1 = class(TForm)
    AppAnalytics1: TAppAnalytics;
    Label1: TLabel;
    ControlFocusEdit: TEdit;
    LaunchForm2Btn: TButton;
    ExceptionBtn: TButton;
    EnableBtn: TButton;
    CheckPermissionBtn: TButton;
    procedure CheckPermissionBtnClick(Sender: TObject);
    procedure EnableBtnClick(Sender: TObject);
    procedure LaunchForm2BtnClick(Sender: TObject);
    procedure ExceptionBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckPermissionBtnClick(Sender: TObject);
begin
  AppAnalytics1.CheckPrivacy;
end;

procedure TForm1.EnableBtnClick(Sender: TObject);
begin
  AppAnalytics1.Active := True;
end;

procedure TForm1.ExceptionBtnClick(Sender: TObject);
var
  F: TForm;
begin
  F := nil;
  F.Show;
end;

procedure TForm1.LaunchForm2BtnClick(Sender: TObject);
begin
  Form2.Show;
end;

end.
