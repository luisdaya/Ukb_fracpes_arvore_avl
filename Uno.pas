unit Uno;

interface
uses system.IOUtils,System.SysUtils,UFRameFracao;
type
  TNo=class
  public
    fracao:TFrame_Fracao;
    dir:TNo;
    esq:TNO;
    constructor Create(Avalor:TFrame_Fracao); overload;
  end;
implementation

{ TNo }

constructor TNo.Create(Avalor:TFrame_Fracao);
begin

  Fracao:=Avalor;
  esq:=nil;
  dir:=nil;
end;

end.
