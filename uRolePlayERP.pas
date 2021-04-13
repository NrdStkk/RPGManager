unit uRolePlayERP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.TabNotBk, uPlayerFrame, Data.DB, Vcl.Grids,
  Vcl.DBGrids, uNPCFrame;

type
  TMainForm = class(TForm)
    scrlbx_Menu: TScrollBox;
    lbl_Menu: TLabel;
    btn_Notes: TSpeedButton;
    btn_NPCs: TSpeedButton;
    btn_Battle: TSpeedButton;
    btn_Players: TSpeedButton;
    btn_Villages: TSpeedButton;
    btn_Quests: TSpeedButton;
    pagMain: TPageControl;
    pagBattler: TTabSheet;
    pagStoryNotes: TTabSheet;
    pagPlayers: TTabSheet;
    pnl_BattlerMenu: TPanel;
    btn_AddEnemy: TButton;
    btn_ClearEnemies: TButton;
    pagStarter: TTabSheet;
    pagNPCs: TTabSheet;
    pagLocations: TTabSheet;
    pagQuests: TTabSheet;
    PanelVersion: TPanel;
    scrlbx_Enemies: TScrollBox;
    pnlNotesController: TPanel;
    btnAddNote: TButton;
    btnDeleteNote: TButton;
    btnRenameNote: TButton;
    btnSaveNotes: TButton;
    pgcNotes: TPageControl;
    pgcPlayers: TPageControl;
    pnlPlayersControl: TPanel;
    btnNewPlayer: TButton;
    btnDeletePlayer: TButton;
    btnReloadPlayers: TButton;
    Panel1: TPanel;
    btnNewLocation: TButton;
    btnReloadLocations: TButton;
    sclbxLocations: TScrollBox;
    Panel3: TPanel;
    btnNewNPC: TButton;
    btnReloadNpcs: TButton;
    lblLocationID: TLabel;
    edtLocationID: TEdit;
    scrlbxNPCs: TScrollBox;
    Panel2: TPanel;
    btnManageQuests: TButton;
    btnReloadQuests: TButton;
    scrlbxQuests: TScrollBox;
    procedure btnAddNoteClick(Sender: TObject);
    procedure btnDeleteNoteClick(Sender: TObject);
    procedure btnDeletePlayerClick(Sender: TObject);
    procedure btnManageQuestsClick(Sender: TObject);
    procedure btnNewLocationClick(Sender: TObject);
    procedure btnNewNPCClick(Sender: TObject);
    procedure btnNewPlayerClick(Sender: TObject);
    procedure btnReloadLocationsClick(Sender: TObject);
    procedure btnReloadNpcsClick(Sender: TObject);
    procedure btnReloadPlayersClick(Sender: TObject);
    procedure btnReloadQuestsClick(Sender: TObject);
    procedure btnRenameNoteClick(Sender: TObject);
    procedure btnSaveNotesClick(Sender: TObject);
    procedure btn_BattleClick(Sender: TObject);
    procedure btn_AddEnemyClick(Sender: TObject);
    procedure btn_ClearEnemiesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_NotesClick(Sender: TObject);
    procedure btn_PlayersClick(Sender: TObject);
    procedure btn_NPCsClick(Sender: TObject);
    procedure btn_VillagesClick(Sender: TObject);
    procedure btn_QuestsClick(Sender: TObject);
    procedure ClearScrlbx(scrlbx: TScrollBox);
    procedure ClearTabs(pgcTarget: TPageControl);
    procedure CreateLocation(name, desc: string);
    procedure CreateNPCFrame(npc: TNPC);
    procedure CreatePlayerFrame(playerStats: TPlayer);
    procedure DBDeletePlayer(playerName: string);
    procedure GetLocations;
    function GetNoteMemo: TMemo;
    procedure GetNPCS(locationID: string);
    procedure GetPlayers;
    procedure GetQuests;
  private
    procedure CreateNewNoteTab(noteText: string = ''; noteName: string = '');
  public
    procedure DBDeleteNote(noteName: string);
    function GetEnemiesSB: TScrollBox;
    procedure GetNotes;
  end;

var
  MainForm: TMainForm;
  nimessage: string;
  playercount, locationcount, npccount, questcount, tabcount: integer;
  playerquery, notequery, npcquery, locationquery, questsquery : bool;

implementation

{$R *.dfm}

uses uAddEnemy, uDataModule, uFormPlayer, uLocationForm, uLocationFrame, uNPCForm,
 uQuestForm, uQuestFrame;

procedure TMainForm.btnAddNoteClick(Sender: TObject);                           // ADD NOTE //
begin
  CreateNewNoteTab;
end;

procedure TMainForm.btnDeleteNoteClick(Sender: TObject);                        // DELETE NOTE //
begin
  if Application.MessageBox('Are you sure you want to delete the active note?'
  ,'Warning!',mb_yesno + mb_iconquestion) = id_yes then
    begin
    DBDeleteNote(pgcNotes.ActivePage.Caption);
    pgcNotes.ActivePage.Destroy;
    showmessage('Note deleted!');
    end
  else
    showmessage('Process cancelled!');

end;

procedure TMainForm.btnDeletePlayerClick(Sender: TObject);                      // DELETE PLAYER
begin
if Application.MessageBox('Are you sure you want to delete the selected player?'
  ,'Warning!',mb_yesno + mb_iconquestion) = id_yes then
    begin
    DBDeletePlayer(pgcPlayers.ActivePage.Caption);
    pgcPlayers.ActivePage.Destroy;
    showmessage('Player deleted!');
    end
  else
    showmessage('Process cancelled!');
end;

procedure TMainForm.btnManageQuestsClick(Sender: TObject);
begin
  QuestForm.Show();
end;

procedure TMainForm.btnNewLocationClick(Sender: TObject);
begin
  LocationForm.Show;
end;

procedure TMainForm.btnNewNPCClick(Sender: TObject);
begin
  NPCForm.Show();
end;

procedure TMainForm.btnNewPlayerClick(Sender: TObject);                         // NEW PLAYER //
begin
  FormPlayer.Show;
end;

procedure TMainForm.btnReloadLocationsClick(Sender: TObject);                   // RELOAD LOCATIONS //
var i : integer; Obj : TFrame;
begin
  for I := sclbxLocations.ComponentCount-1 downto 0 do
  begin
    if ((sclbxLocations.Components[i] is TFrame)) then
    begin
      Obj:= TFrame(sclbxLocations.Components[i]);
      Obj.Parent:=nil;
      FreeAndNil(Obj);
    end;
  end;
  GetLocations;
end;

procedure TMainForm.btnReloadNpcsClick(Sender: TObject);
begin
  GetNPCS(edtLocationID.Text);
end;

procedure TMainForm.btnReloadPlayersClick(Sender: TObject);                     // RELOAD PLAYERS
begin
  if pgcPlayers.ComponentCount <> null then
    ClearTabs(pgcPlayers);

  GetPlayers;

end;

procedure TMainForm.btnReloadQuestsClick(Sender: TObject);                      // RELOAD QUESTS //
begin
  if scrlbxQuests.ComponentCount <> null then
    ClearScrlbx(scrlbxQuests);

  GetQuests();
end;

procedure TMainForm.btnRenameNoteClick(Sender: TObject);                        // RENAME NOTE //
var
  newName : string;
  memo: TMemo;
begin
  inputquery('Note Name', 'Please insert new note name!', newName);
  if newName <> null then
    begin
      pgcNotes.ActivePage.Caption := newName;

      memo := GetNoteMemo;
      memo.Name := newName;
    end
    else
      showmessage('Process canceled!');

end;

procedure TMainForm.btnSaveNotesClick(Sender: TObject);                         // SAVE NOTES //
var
 memo: TMemo;
begin
  memo := GetNoteMemo;

  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('INSERT INTO story_notes(title_story_note, desc_story_note, campaings_id) ');
  DM.FDQuery.SQL.Add('VALUES (' + QuotedStr(memo.Name) + ', ' + QuotedStr(memo.Text) + ', 1);' );
  DM.FDQuery.ExecSQL;

  showmessage('Active note saved!');
end;

procedure TMainForm.FormCreate(Sender: TObject);                                // FORM CREATE //
begin
  pagMain.ActivePage := pagStarter;
  tabcount := 1;
  playercount := 1;
  nimessage:= 'Not implemented yet!';
  playerquery := false;
  notequery := false;
end;

procedure TMainForm.btn_AddEnemyClick(Sender: TObject);                         // ENEMY ADD //
begin
  FormListEnemy.Show;
end;

procedure TMainForm.btn_BattleClick(Sender: TObject);                           // BATTLER //
begin
  pagMain.ActivePage := pagBattler;
end;

procedure TMainForm.btn_ClearEnemiesClick(Sender: TObject);                     // CLEAR BUTTON //
begin
  ClearScrlbx(scrlbx_Enemies);
end;

procedure TMainForm.btn_NotesClick(Sender: TObject);                            // STORY NOTES //
begin
  pagMain.ActivePage := pagStoryNotes;
  if notequery = false then
  begin
    GetNotes;
    notequery := true;
  end;

end;

procedure TMainForm.btn_NPCsClick(Sender: TObject);                             // NPCS //
begin
  pagMain.ActivePage := pagNPCs;
end;

procedure TMainForm.btn_PlayersClick(Sender: TObject);                          // PLAYERS //
begin
  pagMain.ActivePage := pagPlayers;
  if playerquery = false then
  begin
    GetPlayers;
    playerquery := true;
  end;
end;

procedure TMainForm.btn_QuestsClick(Sender: TObject);                           // QUESTS //
begin
  if questsquery = false then
    GetQuests();

  questsquery := true;
  pagMain.ActivePage := pagQuests;
end;

procedure TMainForm.btn_VillagesClick(Sender: TObject);                         // LOCATIONS //
begin
  pagMain.ActivePage := pagLocations;
  if locationquery = false then
  begin
    GetLocations;
    locationquery := true;
  end;
end;

procedure TMainForm.ClearScrlbx(scrlbx: TScrollBox);                            // CLEAR SCROLLBOX //
var i : integer; Obj : TFrame;
begin
  for I := scrlbx.ComponentCount-1 downto 0 do
  begin
    if ((scrlbx.Components[i] is TFrame)) then
    begin
      Obj:= TFrame(scrlbx.Components[i]);
      Obj.Parent:=nil;
      FreeAndNil(Obj);
    end;
  end;
end;

procedure TMainForm.ClearTabs(pgcTarget: TPageControl);                         // CLEAR TABS //
var i : integer; Obj : TFrame;
begin
  for I := pgcTarget.PageCount-1 downto 0 do
  begin
    Obj:= TFrame(pgcTarget.Pages[i]);
    Obj.Parent:=nil;
    FreeAndNil(Obj);
  end;
end;

procedure TMainForm.CreateLocation(name, desc: string);                         // CREATE LOCATION //
var
  tempFrame: TLocationFrame;
  newFrame: TMemo;
begin
  tempFrame := TLocationFrame.Create(sclbxLocations);
  tempFrame.Parent := sclbxLocations;
  tempFrame.Name := 'LocationFrame' + locationcount.ToString;
  tempFrame.lblName.Caption := name;
  tempFrame.mmoDesc.Text := desc;
  tempFrame.Align := alTop;
  locationcount := locationcount + 1;
end;

procedure TMainForm.DBDeleteNote(noteName: string);                              // DELETE NOTE DB //
begin
  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('DELETE FROM story_notes WHERE title_story_note =');
  DM.FDQuery.SQL.Add(' ' + QuotedStr(noteName) + ' ;');
  DM.FDQuery.ExecSQL;
end;

function TMainForm.GetEnemiesSB: TScrollBox;                                    // GET ENEMIES SCROLLBOX //
begin
  Result := scrlbx_Enemies;
end;

function TMainForm.GetNoteMemo: TMemo;                                          // GET NOTE MEMO //
var
 memo: TMemo;
 i: integer;
 page: TTabSheet;
begin
  page := pgcNotes.ActivePage;

  for i := 0 to page.ComponentCount-1 do
  begin
    if (page.Components[i] is TMemo) then
      memo := (page.Components[i] as TMemo);
  end;

  Result := memo;
end;

procedure TMainForm.GetNotes;                                                   /// GET ALL NOTES //
begin
  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('SELECT * FROM story_notes WHERE campaings_id = 1');
  DM.FDQuery.Open;

  while not DM.FDQuery.Eof do
  begin
    CreateNewNoteTab(DM.FDQuery.FieldByName('desc_story_note').AsString,
      DM.FDQuery.FieldByName('title_story_note').AsString);

    DM.FDQuery.Next;
  end;
end;

procedure TMainForm.CreateNewNoteTab(noteText: string = ''; noteName: string =''); // CREATE NEW NOTE //
var
  tempTab: TTabSheet;
  newMemo: TMemo;
begin
  tempTab := TTabSheet.Create(pgcNotes);
  tempTab.PageControl := pgcNotes;
  newMemo := TMemo.Create(tempTab);
  newMemo.Parent := tempTab;
  newMemo.Align := alClient;
  if noteName = '' then
    begin
      newMemo.Name := 'NewTab' + tabcount.ToString;
      tempTab.Caption := 'NewTab' + tabcount.ToString;
    end
  else
    begin
      tempTab.Caption := noteName;
      newMemo.Name := noteName;
      newMemo.Text := noteText;
    end;
  tabcount := tabcount + 1;
end;

procedure TMainForm.CreateNPCFrame(npc: TNPC);                                  // CREATE NPC FRAME //
var
  npcFrame : TNPCFrame;
begin
  npcFrame := TNPCFrame.Create(scrlbxNPCs);
  npcFrame.Parent := scrlbxNPCs;
  npcFrame.Align := alTop;
  npcFrame.Name := 'NPCFrame' + npccount.ToString;
  npcFrame.lblName.Caption := npc.name;
  npcFrame.lblName.Caption := npc.name;
  npcFrame.lblFunction.Caption := npc.func;
  npcFrame.lblLocation.Caption := npc.location;
  npcFrame.mmoDescr.Text := npc.desc;
  npccount := npccount + 1;
end;

procedure TMainForm.CreatePlayerFrame(playerStats: TPlayer);                    // CREATE PLAYER FRAME //
var
  tempTab : TTabSheet;
  playerFrame : TPlayerFrame;
begin
  tempTab := TTabSheet.Create(pgcPlayers);
  tempTab.PageControl := pgcPlayers;
  tempTab.Caption := playerStats.name;
  tempTab.Name := 'playerTab' + playercount.ToString;

  playerFrame := TPlayerFrame.Create(tempTab);
  playerFrame.Parent := tempTab;
  playerFrame.Align := alClient;
  playerFrame.Name := 'playerFrame' + playercount.ToString;
  playerFrame.lblName.Caption := playerStats.name;
  playerFrame.lblACval.Caption := playerStats.ac;
  playerFrame.lblHPval.Caption := playerStats.health;
  playerFrame.lblLVLval.Caption := playerStats.lvl;
  playerFrame.lblClass.Caption := 'Unavaliable';
  playerFrame.lblSTRval.Caption := playerStats.str;
  playerFrame.lblDEXval.Caption := playerStats.dex;
  playerFrame.lblCONval.Caption := playerStats.con;
  playerFrame.lblINTval.Caption := playerStats.int;
  playerFrame.lblWISval.Caption := playerStats.wis;
  playerFrame.lblCHAval.Caption := playerStats.cha;
  playercount := playercount + 1;

end;

procedure TMainForm.DBDeletePlayer(playerName: string);                         // DB DELETE PLAYER \\
begin
  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('DELETE FROM players WHERE name =');
  DM.FDQuery.SQL.Add(' ' + QuotedStr(playerName) + ' ;');
  DM.FDQuery.ExecSQL;
end;

procedure TMainForm.GetLocations;                                               // GET LOCATIONS //
begin
  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('SELECT * FROM locations WHERE campaings_id = 1');
  DM.FDQuery.Open;

  while not DM.FDQuery.Eof do
  begin
      CreateLocation(DM.FDQuery.FieldByName('name').AsString,
      DM.FDQuery.FieldByName('desc').AsString);

      DM.FDQuery.Next;
  end;
end;

procedure TMainForm.GetNPCS(locationID: string);                                // GET NPCS //
var
  npc : TNPC;
begin
  if scrlbxNPCs.ComponentCount <> null then
    ClearScrlbx(scrlbxNPCs);


  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('SELECT npcs.name, npcs.descr, npcs.function, locations.name ');
  DM.FDQuery.SQL.Add('as ' + QuotedStr('location') + ' ');
  DM.FDQuery.SQL.Add('FROM npcs, locations WHERE locations.id = npcs.locations_id ');
  DM.FDQuery.SQL.Add('AND locations.id = ' + QuotedStr(locationID));
  DM.FDQuery.Open();

  while not DM.FDQuery.Eof do
  begin
    npc.name := DM.FDQuery.FieldByName('name').AsString;
    npc.desc := DM.FDQuery.FieldByName('descr').AsString;
    npc.location := DM.FDQuery.FieldByName('location').AsString;
    npc.func := DM.FDQuery.FieldByName('function').AsString;

    CreateNPCFrame(npc);
    DM.FDQuery.Next;
  end;
end;


procedure TMainForm.GetPlayers;                                                 // GET ALL PLAYERS
var
  player : TPlayer;
begin
  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('SELECT * FROM players WHERE campaings_id = ' + QuotedStr('1'));
  DM.FDQuery.Open;

  while not DM.FDQuery.Eof do
  begin
    player.name := DM.FDQuery.FieldByName('name').AsString;
    player.health := DM.FDQuery.FieldByName('health').AsString;
    player.ac := DM.FDQuery.FieldByName('ac').AsString;
    player.str := DM.FDQuery.FieldByName('str').AsString;
    player.dex := DM.FDQuery.FieldByName('dex').AsString;
    player.con := DM.FDQuery.FieldByName('con').AsString;
    player.int := DM.FDQuery.FieldByName('int').AsString;
    player.wis := DM.FDQuery.FieldByName('wis').AsString;
    player.cha := DM.FDQuery.FieldByName('cha').AsString;
    player.lvl := DM.FDQuery.FieldByName('level').AsString;

    CreatePlayerFrame(player);
    DM.FDQuery.Next;
  end;
end;

procedure TMainForm.GetQuests;                                                  // GET QUESTS //
var
  questFrame : TQuestFrame;
begin
  DM.FDQuery.SQL.Clear;
  DM.FDQuery.SQL.Add('SELECT * FROM quests WHERE completed = 0');
  DM.FDQuery.Open;

  while not DM.FDQuery.Eof do
  begin
    questFrame := TQuestFrame.Create(scrlbxQuests);
    questFrame.Parent := scrlbxQuests;
    questFrame.Name := 'questframe' + IntToStr(questcount);
    questFrame.Align := alTop;
    questFrame.lblName.Caption := DM.FDQuery.FieldByName('name').AsString;
    questFrame.mmoDesc.Text := DM.FDQuery.FieldByName('desc').AsString;
    questFrame.mmoReward.Text := DM.FDQuery.FieldByName('reward').AsString;
    questFrame.ckbxActive.Checked := DM.FDQuery.FieldByName('active').AsBoolean;
    questFrame.ckbxCompleted.Checked := DM.FDQuery.FieldByName('completed').AsBoolean;
    questcount := questcount + 1;

    DM.FDQuery.Next;
  end;

end;

end.
