unit uQuestForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TQuestForm = class(TForm)
    lblName: TLabel;
    lblDesc: TLabel;
    lblReward: TLabel;
    lblActive: TLabel;
    lblCompleted: TLabel;
    dbeName: TDBEdit;
    dbmDesc: TDBMemo;
    dbeReward: TDBEdit;
    dbcCompleted: TDBCheckBox;
    dbcActive: TDBCheckBox;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuestForm: TQuestForm;

implementation

{$R *.dfm}

uses uDataModule;

end.
