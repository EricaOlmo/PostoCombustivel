unit U_Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Menus, FMX.Objects, FMX.Layouts,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  System.IOUtils,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FMX.MultiView,
  FMX.Edit, U_Login;

type
  TF_Principal = class(TForm)
    ToolBar1: TToolBar;
    Rectangle1: TRectangle;
    btn_Login: TButton;
    btn_Cadastro: TButton;
    btn_Consulta: TButton;
    btn_Indice: TButton;
    Image1: TImage;
    FDConnection1: TFDConnection;
    MultiView1: TMultiView;
    Layout1: TLayout;
    btn_Multi: TButton;
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure FDConnection1AfterConnect(Sender: TObject);
    procedure btn_LoginClick(Sender: TObject);
    procedure btn_MultiClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.fmx}

procedure TF_Principal.btn_LoginClick(Sender: TObject);
begin
  F_Login.ShowModal;
end;

procedure TF_Principal.btn_MultiClick(Sender: TObject);
begin
  MultiView1.ShowMaster;
end;

procedure TF_Principal.FDConnection1AfterConnect(Sender: TObject);
var
  strSQL : string;
begin

    strSQL := //
    'CREATE TABLE usuario ( '+//
    'idUsuario       INTEGER       PRIMARY KEY NOT NULL, '+//
    'nomeUsuario     VARCHAR (40)  NOT NULL,' +//
    'telefoneUsuario INTEGER (15)  NOT NULL,' +//
    'usuario         VARCHAR (45)  NOT NULL,' +//
    'cpf             INTEGER (11)  NOT NULL,' +//
    'email           VARCHAR (100) NOT NULL,' +//
    'senhaUsuario    VARCHAR (20)  NOT NULL)';
    FDConnection1.ExecSQL(strSQL);    

    strSQL := EmptyStr;

    strSQL := //
    'CREATE TABLE bandeiraPosto ('+//
    'idBandeiraPosto INTEGER       NOT NULL PRIMARY KEY,' +//
    'descricaoBP     VARCHAR (200) NOT NULL)';
    FDConnection1.ExecSQL(strSQL);

    strSQL := EmptyStr;
    
    strSQL := //
    'CREATE TABLE combustivel ( ' +//
    'idCombustivel INTEGER  NOT NULL PRIMARY KEY, ' +//
    'descricaoCombustivel VARCHAR (200) NOT NULL)';
    FDConnection1.ExecSQL(strSQL);
    
    strSQL := EmptyStr;

    strSQL := //
    'CREATE TABLE posto ( '+//
    'idPosto         INTEGER       PRIMARY KEY NOT NULL,'+//
    'nomePosto       VARCHAR (100) NOT NULL,' +//
    'endereco        VARCHAR (100) NOT NULL,' +//
    'telefonePosto   INTEGER (15)  NOT NULL,' +//
    'idBandeiraPosto INTEGER       NOT NULL REFERENCES bandeiraPosto (idBandeiraPosto),' +//
    'latitude        DECIMAL (0)   NOT NULL,' +//
    'longitude       DECIMAL (0) )';
    FDConnection1.ExecSQL(strSQL);

    strSQL := EmptyStr;

    strSQL := //
    'CREATE TABLE precoPosto (' +//
    'idPrecoPosto  INTEGER     NOT NULL,' +//
    'idPosto       INTEGER     NOT NULL REFERENCES posto (idPosto),' +//
    'data          DATE        NOT NULL, ' +//
    'fotoPlaca     BLOB        NOT NULL,'+//
    'idCombustivel INTEGER     NOT NULL REFERENCES combustivel (idCombustivel),' +//
    'valor         DECIMAL (0) NOT NULL)';
    FDConnection1.ExecSQL(strSQL);

    strSQL := EmptyStr;

end;

procedure TF_Principal.FDConnection1BeforeConnect(Sender: TObject);
var
  strPath: string;
begin
  {$IfDEF MSWINDOWS}
    strPath := System.IOUtils.TPath.combine
      ('C:\Delphi\PostoCombustivel\BD\posto.db','posto.db');
  {$ENDIF}
  {$IF DEFINED (iOS) or DEFINED(ANDROID)}
    strPath :=System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath, 'posto.db');
  {$ENDIF}
    FDConnection1.Params.Values['DATABASE'] := strPath;

end;


end.
