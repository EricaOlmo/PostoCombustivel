program Posto;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_Login in 'U_Login.pas' {F_Login},
  U_CadUsuario in 'U_CadUsuario.pas' {F_CadUsuario},
  U_CadPosto in 'U_CadPosto.pas' {F_CadPosto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_Login, F_Login);
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TF_CadUsuario, F_CadUsuario);
  Application.CreateForm(TF_CadPosto, F_CadPosto);
  Application.Run;
end.
