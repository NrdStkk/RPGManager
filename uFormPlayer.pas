unit uFormPlayer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask;

type
  TFormPlayer = class(TForm)
    lblPlayerName: TLabel;
    lbl_AC: TLabel;
    lbl_HP: TLabel;
    lbl_STR: TLabel;
    lbl_DEX: TLabel;
    lbl_CON: TLabel;
    lbl_INT: TLabel;
    lbl_WIS: TLabel;
    lbl_CHA: TLabel;
    lblLVL: TLabel;
    dbePlayerName: TDBEdit;
    DBNavigator1: TDBNavigator;
    dbe_AC: TDBEdit;
    dbe_HP: TDBEdit;
    dbe_STR: TDBEdit;
    dbe_DEX: TDBEdit;
    dbe_CON: TDBEdit;
    dbe_INT: TDBEdit;
    dbe_WIS: TDBEdit;
    dbe_CHA: TDBEdit;
    dbeLVL: TDBEdit;
    lblCampaing: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPlayer: TFormPlayer;

implementation

{$R *.dfm}

uses uDataModule;

end.
