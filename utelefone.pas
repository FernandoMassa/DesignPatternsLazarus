unit UTelefone;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, uTipoTelefone;

type

  { TTelefonw }

  TTelefone = class
    private
      FDDD: integer;
      FNumero: integer;
      FTipo: TTipoTelefone;

    public
       Constructor Create(aDDD, aNumero:integer; aTipo : TTipoTelefone);
       property DDD : integer read FDDD write FDDD;
       property Numero : integer read FNumero write FNumero;
       property Tipo : TTipoTelefone read FTipo write FTipo;
  end;

implementation

{ TTelefonw }

constructor TTelefone.Create(aDDD, aNumero: integer; aTipo: TTipoTelefone);
begin
   FDDD := aDDD;
   FNumero := aNumero;
   FTipo := aTipo;
end;

end.

