program DisplayUserName;

uses
  Vcl.Forms,
  MainU in 'MainU.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Your Username';
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
