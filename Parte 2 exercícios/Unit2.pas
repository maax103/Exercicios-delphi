unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Cadastrar1: TMenuItem;
    Cadastrar2: TMenuItem;
    Fornecedores1: TMenuItem;
    Fornecedores2: TMenuItem;
    Clientes1: TMenuItem;
    procedure Cadastrar2Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UfrmClientes, UfrmFornecedores, UfrmProdutos;

{$R *.dfm}


procedure TForm2.Cadastrar2Click(Sender: TObject);
begin
  self.Close;
end;

procedure TForm2.Clientes1Click(Sender: TObject);
begin
  if frmClientes = nil then
    frmClientes := TfrmClientes.Create(Self);

  frmClientes.Show;

end;

procedure TForm2.Fornecedores1Click(Sender: TObject);
begin
  if frmFornecedores = nil then
    frmFornecedores := TfrmFornecedores.Create(Self);

  frmFornecedores.Show;

end;

procedure TForm2.Fornecedores2Click(Sender: TObject);
begin
  if frmProdutos = nil then
    frmProdutos := TfrmProdutos.Create(Self);

  frmProdutos.Show;
end;

end.
