program Project1;

uses
  Vcl.Forms,
  UFrmExercicios in 'UFrmExercicios.pas' {Exercicios},
  Uex28 in 'Uex28.pas' {frmEx28},
  Uex29 in 'Uex29.pas' {frmEx29},
  Uex30 in 'Uex30.pas' {frmEx30};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TExercicios, Exercicios);
  Application.Run;
end.
