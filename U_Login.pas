unit U_Login;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, U_CadUsuario;

type
  TF_Login = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Label2: TLabel;
    edit_Login: TEdit;
    edit_Senha: TEdit;
    bnt_entrar: TButton;
    btn_cadastrar: TButton;
    procedure btn_cadastrarClick(Sender: TObject);
    procedure bnt_entrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;

implementation

{$R *.fmx}

uses U_Principal;

procedure TF_Login.bnt_entrarClick(Sender: TObject);
begin
  if not Assigned(F_Principal) then
    F_Principal := TF_Principal.Create(nil);
    F_Principal.ShowModal(
    procedure(ModalResult: TModalResult)
    begin

    end);
end;

procedure TF_Login.btn_cadastrarClick(Sender: TObject);
begin
 if not Assigned(F_CadUsuario) then
    F_CadUsuario := TF_CadUsuario.Create(nil);
    F_CadUsuario.ShowModal(
    procedure(ModalResult: TModalResult)
    begin

    end);
end;

end.
