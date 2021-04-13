unit uBattlerFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.ExtCtrls, uAddEnemy;

type
  TBattlerFrame = class(TFrame)
    pnl_BattlerMain: TPanel;
    btn_AddEnemy: TButton;
    btn_ClearEnemy: TButton;
    procedure btn_AddEnemyClick(Sender: TObject);
  private
  public
    var
      DefaultEnemyCount : string;
  end;

implementation

{$R *.dfm}

procedure TBattlerFrame.btn_AddEnemyClick(Sender: TObject);
begin
  AddEnemyForm.Show;
end;

end.
