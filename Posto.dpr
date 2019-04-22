program Posto;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Posto in 'U_Posto.pas' {Form4},
  U_Login in 'U_Login.pas' {F_Login};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Login, F_Login);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
