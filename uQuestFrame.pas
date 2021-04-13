unit uQuestFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls;

type
  TQuestFrame = class(TFrame)
    lblCompleted: TLabel;
    lblActive: TLabel;
    lblName: TLabel;
    mmoDesc: TMemo;
    lblReward: TLabel;
    mmoReward: TMemo;
    ckbxActive: TCheckBox;
    ckbxCompleted: TCheckBox;
    pnlBackground: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDataModule;

end.
