unit UFrmExercicios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TExercicios = class(TForm)
    MainMenu1: TMainMenu;
    Exerccio281: TMenuItem;
    Exerccio282: TMenuItem;
    Exerccio301: TMenuItem;
    Sair1: TMenuItem;
    lbTittle: TLabel;
    memResult: TMemo;
    procedure Exerccio281Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Exerccio282Click(Sender: TObject);
    procedure Exerccio301Click(Sender: TObject);
  private
  public
    procedure insertResult(aResult : String);
  end;

var
  Exercicios: TExercicios;

implementation

uses
  Uex28, Uex29, Uex30;

{$R *.dfm}

procedure TExercicios.insertResult(aResult: String);
begin
  memResult.Clear;
  memResult.Lines.Add(aResult);
end;

procedure TExercicios.Exerccio281Click(Sender: TObject);
begin
  if frmEx28 = nil then
    frmEx28 := TfrmEx28.Create(Self);

  frmEx28.Show;

end;

procedure TExercicios.Exerccio282Click(Sender: TObject);
begin
  if frmEx29 = nil then
    frmEx29 := TfrmEx29.Create(Self);

  frmEx29.Show;
end;

procedure TExercicios.Exerccio301Click(Sender: TObject);
begin
  if frmEx30 = nil then
    frmEx30 := TfrmEx30.Create(Self);

  frmEx30.Show;
end;

procedure TExercicios.Sair1Click(Sender: TObject);
begin
  Exercicios.Close;
end;

end.
