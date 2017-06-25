unit MainU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmMain = class(TForm)
    Label1: TLabel;
    EdtUsername: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

function CurrentUserName: String;
var
  nSize: DWord;
begin
  nSize := 1024;
  SetLength(Result, nSize);
  if GetUserName(PChar(Result), nSize) then
    SetLength(Result, nSize - 1)
  else
    RaiseLastOSError;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  EdtUsername.Text := CurrentUserName();
end;

end.
