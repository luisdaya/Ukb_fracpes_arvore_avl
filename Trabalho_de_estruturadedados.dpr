program Trabalho_de_estruturadedados;

uses
  System.StartUpCopy,
  FMX.Forms,
  FMX.Skia,
  UInicial in 'UInicial.pas' {Form1},
  UFRameFracao in 'UFRameFracao.pas' {Frame_Fracao: TFrame},
  uarvore in 'uarvore.pas',
  Uno in 'Uno.pas';

{$R *.res}

begin
  GlobalUseSkia := True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
