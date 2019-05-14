unit U_CadUsuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TF_CadUsuario = class(TForm)
    Login: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Email: TLabel;
    Edit3: TEdit;
    Senha: TLabel;
    Edit4: TEdit;
    Label2: TLabel;
    Edit5: TEdit;
    ToolBar1: TToolBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_CadUsuario: TF_CadUsuario;

implementation

{$R *.fmx}

end.
