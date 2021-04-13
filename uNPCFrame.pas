unit uNPCFrame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TNPCFrame = class(TFrame)
    pnlBackground: TPanel;
    lblName: TLabel;
    lblFunction: TLabel;
    lblLocation: TLabel;
    mmoDescr: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  type
   TNPC = record
     name: string;
     desc: string;
     location: string;
     func: string;
   end;

implementation

{$R *.dfm}

end.
