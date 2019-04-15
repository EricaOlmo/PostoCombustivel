program Posto;

uses
  System.StartUpCopy,
  FMX.Forms,
  U_Posto in 'U_Posto.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
