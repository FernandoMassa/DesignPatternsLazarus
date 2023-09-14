unit eInterfaceModelFactoryPessoa;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils, eIntervace.Model.Interfaces, eInterfaceJuridica,
   eInterfaceModelPessoa;

type

   { TPessoaFactory }

   TPessoaFactory = class(TInterfacedObject, iPessoaFactory)
   private

   public

      constructor Create;
      destructor Destroy; override;

      function PessoaFisica: iPessoa;
      function PessoaJuridica: iPessoa;

      class function New: iPessoaFactory;
   end;

implementation

{ TPessoaFactory }

constructor TPessoaFactory.Create;
begin

end;

destructor TPessoaFactory.Destroy;
begin
   inherited Destroy;
end;

function TPessoaFactory.PessoaFisica: iPessoa;
begin
   Result := tModelPessoaF.new;
end;

function TPessoaFactory.PessoaJuridica: iPessoa;
begin
   Result := tModelPessoaJ.new;
end;

class function TPessoaFactory.New: iPessoaFactory;
begin
   Result := Self.Create;
end;

end.
