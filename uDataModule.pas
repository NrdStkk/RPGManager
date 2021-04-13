unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    TblEnemies: TFDTable;
    DSEnemies: TDataSource;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    TblNotes: TFDTable;
    FDQuery: TFDQuery;
    TblPlayers: TFDTable;
    DSPlayers: TDataSource;
    TblCampaings: TFDTable;
    DSCampaings: TDataSource;
    TblLocations: TFDTable;
    DSLocations: TDataSource;
    TblNPCs: TFDTable;
    DSNPCs: TDataSource;
    TblQuests: TFDTable;
    DSQuests: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  FDConnection1.Connected := True;

  TblEnemies.Active := True;
  TblNotes.Active := True;
  TblPlayers.Active := True;
  TblLocations.Active := True;
  TblCampaings.Active := True;
  TblNPCs.Active := True;
  TblQuests.Active := True;

  FDQuery.Active := True;
end;


end.
