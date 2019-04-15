unit U_Posto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Menus, FMX.Objects, FMX.Layouts;

type
  TForm4 = class(TForm)
    ToolBar1: TToolBar;
    MenuBar1: TMenuBar;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    btn_Login: TButton;
    btn_Cadastro: TButton;
    btn_Consulta: TButton;
    btn_Indice: TButton;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.fmx}

end.
