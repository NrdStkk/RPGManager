unit uLocationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TLocationForm = class(TForm)
    dbeLocationName: TDBEdit;
    dbmLocationDesc: TDBMemo;
    lblName: TLabel;
    lblDesc: TLabel;
    DBNavigator1: TDBNavigator;
    dbeCampaing: TDBEdit;
    lblCampaing: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LocationForm: TLocationForm;

implementation

{$R *.dfm}
uses uDataModule;
end.
