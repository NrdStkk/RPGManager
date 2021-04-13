unit uAddEnemy;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormListEnemy = class(TForm)
    Panel1: TPanel;
    btn_AddEnemy: TButton;
    dbg_Enemies: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure btn_AddEnemyClick(Sender: TObject);
    procedure dbg_EnemiesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
  enemycount : integer;
  end;

var
  FormListEnemy: TFormListEnemy;

implementation

{$R *.dfm}

uses uRolePlayERP ,uFormEnemy, uEnemyFrame, uDataModule;

procedure TFormListEnemy.FormCreate(Sender: TObject);
begin
enemycount := 0;
end;

procedure TFormListEnemy.btn_AddEnemyClick(Sender: TObject);
begin
  FormRecordEnemy.Show;
end;

procedure TFormListEnemy.dbg_EnemiesDblClick(Sender: TObject);                  //FIELD DOUBLE CLICK//
var
  newFrame : TEnemyFrame;
begin
  newFrame := TEnemyFrame.Create(MainForm.GetEnemiesSB);
  newFrame.Parent := MainForm.GetEnemiesSB;
  newFrame.Align := alTop;
  newFrame.Name := 'enemy' + IntToStr(enemycount);
  enemycount := enemycount + 1;


  newFrame.lbl_EnemyName.Caption := DM.TblEnemies.FieldByName('name').AsString;
  newFrame.lbl_HPtot.Caption := DM.TblEnemies.FieldByName('health').AsString;
  newFrame.lbl_HPcur.Caption := DM.TblEnemies.FieldByName('health').AsString;
  newFrame.lbl_STRval.Caption := DM.TblEnemies.FieldByName('str').AsString;
  newFrame.lbl_DEXval.Caption := DM.TblEnemies.FieldByName('dex').AsString;
  newFrame.lbl_CONval.Caption := DM.TblEnemies.FieldByName('con').AsString;
  newFrame.lbl_INTval.Caption := DM.TblEnemies.FieldByName('int').AsString;
  newFrame.lbl_WISval.Caption := DM.TblEnemies.FieldByName('wis').AsString;
  newFrame.lbl_CHAval.Caption := DM.TblEnemies.FieldByName('cha').AsString;
  newFrame.lbl_ACval.Caption := DM.TblEnemies.FieldByName('ac').AsString;
end;

end.
