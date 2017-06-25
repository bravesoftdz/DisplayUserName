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
    Label2: TLabel;
    EdtDomain: TEdit;
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

function CurrentDomain: String;
const
  DNLEN = 255;
var
  sid: PSID;
  sidSize: DWord;
  sidNameUse: DWord;
  domainNameSize: DWord;
  domainName: array [0 .. DNLEN] of Char;
begin
  Result := '';

  sidSize := 65536;
  GetMem(sid, sidSize);
  domainNameSize := DNLEN + 1;
  sidNameUse := SidTypeUser;
  try
    if LookupAccountName(nil, PChar(CurrentUserName), sid, sidSize, domainName,
      domainNameSize, sidNameUse) then
      Result := strpas(domainName);
  finally
    FreeMem(sid);
  end;
end;

procedure TFrmMain.FormCreate(Sender: TObject);
begin
  EdtUsername.Text := CurrentUserName();
  EdtDomain.Text := CurrentDomain();
end;

end.
