unit uNPCForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TNPCForm = class(TForm)
    lblName: TLabel;
    lblDesc: TLabel;
    dbeName: TDBEdit;
    dbmDesc: TDBMemo;
    DBNavigator1: TDBNavigator;
    dbeFunction: TDBEdit;
    lblFunction: TLabel;
    lblLocation: TLabel;
    dbeLocation: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NPCForm: TNPCForm;

implementation

{$R *.dfm}

uses uDataModule;
end.
