unit uPlayerFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TPlayerFrame = class(TFrame)
    pnlPlayer: TPanel;
    lblPlayer: TLabel;
    lblAC: TLabel;
    lblHPval: TLabel;
    lblACval: TLabel;
    lblHP: TLabel;
    lblLVL: TLabel;
    lblSTR: TLabel;
    lblDEX: TLabel;
    lblCON: TLabel;
    lblINT: TLabel;
    DBText4: TDBText;
    lblWIS: TLabel;
    lblCHA: TLabel;
    lblComingSoon: TLabel;
    lblSTRval: TLabel;
    lblDEXval: TLabel;
    lblCONval: TLabel;
    lblINTval: TLabel;
    lblWISval: TLabel;
    lblCHAval: TLabel;
    lblLVLval: TLabel;
    lblClass: TLabel;
    lblName: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

 type
   TPlayer = record
     name: string;
     health: string;
     ac: string;
     str: string;
     dex: string;
     con: string;
     int: string;
     wis: string;
     cha: string;
     lvl: string;
   end;

implementation

{$R *.dfm}

end.
