program RolePlayERP;

uses
  Vcl.Forms,
  uRolePlayERP in 'uRolePlayERP.pas' {MainForm},
  uAddEnemy in 'uAddEnemy.pas' {FormListEnemy},
  uEnemyFrame in 'uEnemyFrame.pas' {EnemyFrame: TFrame},
  uFormEnemy in 'uFormEnemy.pas' {FormRecordEnemy},
  uDataModule in 'uDataModule.pas' {DM: TDataModule},
  uPlayerFrame in 'uPlayerFrame.pas' {PlayerFrame: TFrame},
  uFormPlayer in 'uFormPlayer.pas' {FormPlayer},
  uLocationFrame in 'uLocationFrame.pas' {LocationFrame: TFrame},
  uLocationForm in 'uLocationForm.pas' {LocationForm},
  uNPCForm in 'uNPCForm.pas' {NPCForm},
  uNPCFrame in 'uNPCFrame.pas' {NPCFrame: TFrame},
  uQuestForm in 'uQuestForm.pas' {QuestForm},
  uQuestFrame in 'uQuestFrame.pas' {QuestFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormListEnemy, FormListEnemy);
  Application.CreateForm(TFormRecordEnemy, FormRecordEnemy);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormPlayer, FormPlayer);
  Application.CreateForm(TLocationForm, LocationForm);
  Application.CreateForm(TNPCForm, NPCForm);
  Application.CreateForm(TQuestForm, QuestForm);
  Application.Run;
end.
