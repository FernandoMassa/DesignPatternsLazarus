unit eInterfaceModelPessoa;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils, eIntervace.Model.Interfaces;

type

   { tModelPessoaF }

   tModelPessoaF = class(TInterfacedObject, iPessoa)
   private
      FNome: string;
      FSobrenome: string;
      FDisplay: TEvDisplay;
      function Nome(Value: string): iPessoa;
      function Sobrenome(Value: string): iPessoa;
      function Nomecompleto: iPessoa;
      function Display(Value: TEvDisplay): iPessoa;

   public
      constructor Create;
      destructor Destroy; override;

      class function New: iPessoa;
   end;

implementation

{ tModelPessoaF }

constructor tModelPessoaF.Create;
begin

end;

destructor tModelPessoaF.Destroy;
begin
   inherited Destroy;
end;

class function tModelPessoaF.New: iPessoa;
begin
   Result := Self.Create;
end;

function tModelPessoaF.Nome(Value: string): iPessoa;
begin
   Result := Self;
   FNome := Value;
end;

function tModelPessoaF.Sobrenome(Value: string): iPessoa;
begin
   Result := Self;
   fSobrenome := Value;
end;

function tModelPessoaF.Nomecompleto: iPessoa;
begin
   Result := Self;
   FDisplay(FNome + ' ' + fSobrenome);
end;

function tModelPessoaF.Display(Value: TEvDisplay): iPessoa;
begin
   Result := Self;
   FDisplay := Value;
end;


end.
