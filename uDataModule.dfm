object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 445
  Width = 638
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Nrd_Starkk\Documents\Embarcadero\Studio\Projec' +
        'ts\RolePlayERP\roleplayerp.db'
      'DriverID=SQLite'
      'SharedCache=False'
      'Synchronous=Normal'
      'LockingMode=Normal')
    UpdateOptions.AssignedValues = [uvLockWait]
    UpdateOptions.LockWait = True
    Connected = True
    LoginPrompt = False
    Left = 208
    Top = 136
  end
  object TblEnemies: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'enemies'
    TableName = 'enemies'
    Left = 40
    Top = 168
  end
  object DSEnemies: TDataSource
    DataSet = TblEnemies
    Left = 432
    Top = 32
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 208
    Top = 72
  end
  object TblNotes: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'story_notes'
    TableName = 'story_notes'
    Left = 40
    Top = 112
  end
  object FDQuery: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM enemies')
    Left = 208
    Top = 192
  end
  object TblPlayers: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'players'
    TableName = 'players'
    Left = 40
    Top = 224
  end
  object DSPlayers: TDataSource
    DataSet = TblPlayers
    Left = 432
    Top = 88
  end
  object TblCampaings: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'campaings'
    TableName = 'campaings'
    Left = 40
    Top = 280
  end
  object DSCampaings: TDataSource
    DataSet = TblCampaings
    Left = 432
    Top = 144
  end
  object TblLocations: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'locations'
    TableName = 'locations'
    Left = 40
    Top = 336
  end
  object DSLocations: TDataSource
    DataSet = TblLocations
    Left = 432
    Top = 200
  end
  object TblNPCs: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'npcs'
    TableName = 'npcs'
    Left = 40
    Top = 392
  end
  object DSNPCs: TDataSource
    DataSet = TblNPCs
    Left = 432
    Top = 256
  end
  object TblQuests: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'quests'
    TableName = 'quests'
    Left = 40
    Top = 56
  end
  object DSQuests: TDataSource
    DataSet = TblQuests
    Left = 432
    Top = 312
  end
end
