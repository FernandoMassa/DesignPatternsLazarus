unit eInterfaceJuridica;

{$mode ObjFPC}{$H+}
interface

uses
   Classes, SysUtils, eIntervace.Model.Interfaces;

type

   { tModelPessoaJ }

   tModelPessoaJ = class(TInterfacedObject, iPessoa)
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

{ tModelPessoaJ }

constructor tModelPessoaJ.Create;
begin

end;

destructor tModelPessoaJ.Destroy;
begin
   inherited Destroy;
end;

class function tModelPessoaJ.New: iPessoa;
begin
   Result := Self.Create;
end;

function tModelPessoaJ.Nome(Value: string): iPessoa;
begin
   Result := Self;
   FNome := Value;
end;

function tModelPessoaJ.Sobrenome(Value: string): iPessoa;
begin
   Result := Self;
   fSobrenome := Value;
end;

function tModelPessoaJ.Nomecompleto: iPessoa;
begin
   Result := Self;
   FDisplay(FNome + ' ' + fSobrenome + ' ilimitado');
end;

function tModelPessoaJ.Display(Value: TEvDisplay): iPessoa;
begin
   Result := Self;
   FDisplay := Value;
end;


end.
