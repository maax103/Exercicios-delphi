program Project1;

uses
  Vcl.Forms,
  Unit2 in 'Unit2.pas' {Form2},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmClientes in 'UfrmClientes.pas' {frmClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
