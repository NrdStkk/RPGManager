unit uLocationFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TLocationFrame = class(TFrame)
    lblName: TLabel;
    mmoDesc: TMemo;
    btnDelete: TButton;
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses uDataModule;

procedure TLocationFrame.btnDeleteClick(Sender: TObject);
begin
  if Application.MessageBox('Are you sure you want to delete this location?'
  ,'Warning!',mb_yesno + mb_iconquestion) = id_yes then
    begin
    DM.FDQuery.SQL.Clear;
    DM.FDQuery.SQL.Add('DELETE FROM locations WHERE name = ' + QuotedStr(lblName.Caption));
    DM.FDQuery.ExecSQL;
    showmessage('Note deleted!');
    FreeAndNil(Self);
    end
  else
    showmessage('Process cancelled!');
end;

end.
