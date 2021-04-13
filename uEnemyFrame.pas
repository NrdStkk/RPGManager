unit uEnemyFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnemyFrame = class(TFrame)
    pnl_EnemyStats: TPanel;
    lbl_EnemyName: TLabel;
    Button1: TButton;
    lbl_HPtot: TLabel;
    lbl_HPcur: TLabel;
    lbl_slash: TLabel;
    edt_Dmg: TEdit;
    btn_DealDmg: TButton;
    btn_Heal: TButton;
    lbl_STR: TLabel;
    lbl_DEX: TLabel;
    lbl_CON: TLabel;
    lbl_INT: TLabel;
    lbl_WIS: TLabel;
    lbl_CHA: TLabel;
    lbl_AC: TLabel;
    btn_Info: TButton;
    lbl_ACval: TLabel;
    lbl_STRval: TLabel;
    lbl_DEXval: TLabel;
    lbl_INTval: TLabel;
    lbl_CONval: TLabel;
    lbl_WISval: TLabel;
    lbl_CHAval: TLabel;
    procedure btn_DealDmgClick(Sender: TObject);
    procedure btn_HealClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FrameClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TEnemyFrame.btn_DealDmgClick(Sender: TObject);                        //DAMAGE//
var
  curHP, totHP, damage : integer;
begin
  curHP := StrToInt(lbl_HPcur.Caption);
  totHP := StrToInt(lbl_HPtot.Caption);
  damage := StrToInt(edt_Dmg.Text);

  curHP := curHP - damage;
  lbl_HPcur.Caption := IntToStr(curHP);

  if curHP <= 0 then
    Self.Destroy;
end;

procedure TEnemyFrame.btn_HealClick(Sender: TObject);                           //HEAL//
var
  curHP, totHP, heal : integer;
begin
  curHP := StrToInt(lbl_HPcur.Caption);
  totHP := StrToInt(lbl_HPtot.Caption);
  heal := StrToInt(edt_Dmg.Text);

  if (curHP = totHP)then
    showmessage('Entity is at Max HP!')
  else if ((curHP+heal)>totHP) then
    showmessage('Cannot overheal this character!')
  else
    begin
      curHP := curHP + heal;
      lbl_HPcur.Caption := IntToStr(curHP);
    end;
end;

procedure TEnemyFrame.Button1Click(Sender: TObject);                            //DELETE//
begin
  Self.Destroy;
end;

procedure TEnemyFrame.FrameClick(Sender: TObject);                              //FORM CREATE
begin
  edt_Dmg.NumbersOnly := true;
end;

end.
