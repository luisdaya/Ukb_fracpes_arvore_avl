unit UFRameFracao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts;

type
  TFrame_Fracao = class(TFrame)
    Layout1: TLayout;
    Line1: TLine;
    Edit1: TEdit;
    Edit2: TEdit;
    Rectangle1: TRectangle;
    procedure FrameResize(Sender: TObject);
    procedure Edit1ChangeTracking(Sender: TObject);
  private
    Fnumerador: double;
    Fdenominador: double;
    Fquociente: double;
    Fmargem: boolean;
    procedure Setdenominador(const Value: double);
    procedure Setnumerador(const Value: double);
    procedure Setquociente(const Value: double);
    procedure Setmargem(const Value: boolean);
    { Private declarations }
  public
    { Public declarations }
    property numerador:double read Fnumerador write Setnumerador;
    property denominador:double read Fdenominador write Setdenominador;
    property quociente:double read Fquociente write Setquociente;
    property margem:boolean read Fmargem write Setmargem;
    function enumero(numero:string):boolean;
  end;

implementation

{$R *.fmx}

procedure TFrame_Fracao.Edit1ChangeTracking(Sender: TObject);
begin
  if enumero(tedit(sender).text) then
  begin
    if tedit(sender).tag = 1 then
      numerador:=tedit(sender).Text.ToDouble()
    else
       denominador:=tedit(sender).Text.ToDouble();

    quociente:=numerador/denominador;

  end
  else
    tedit(sender).text:='';
end;

function TFrame_Fracao.enumero(numero: String): boolean;
begin
  try
    numero.ToDouble;
    Result:=true;
  except
  begin
    result:=false;
  end;

  end;
end;

procedure TFrame_Fracao.FrameResize(Sender: TObject);
begin
  edit1.Height:=trunc(self.Height/2);
end;

procedure TFrame_Fracao.Setdenominador(const Value: double);
begin

  Fdenominador := Value;
end;

procedure TFrame_Fracao.Setmargem(const Value: boolean);
begin
  Fmargem := Value;
  Rectangle1.Visible:=Value;
end;

procedure TFrame_Fracao.Setnumerador(const Value: double);
begin
  Fnumerador := Value;
end;

procedure TFrame_Fracao.Setquociente(const Value: double);
begin
  Fquociente := Value;
end;

end.
