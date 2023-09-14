unit einterf.Controler.Pessoa;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils,
   eInterfaceModelFactoryPessoa,
   einterf.controler.Interfaces,
   eIntervace.Model.Interfaces;

type

   { TControlerPessoa }

   TControlerPessoa = class(TInterfacedObject, iControlerPessoa)
   private

   public

      constructor Create;
      destructor Destroy; override;

      class function New: iControlerPessoa;
      function Pessoa(Value: tTypePessoa): iPessoa;
   end;

implementation

{ TControlerPessoa }

constructor TControlerPessoa.Create;
begin

end;

destructor TControlerPessoa.Destroy;
begin
   inherited Destroy;
end;

class function TControlerPessoa.New: iControlerPessoa;
begin
   Result := Self.Create;
end;

function TControlerPessoa.Pessoa(Value: tTypePessoa): iPessoa;
begin
   case Value of
      tpFisica: Result := TPessoaFactory.new.PessoaFisica;
      tpJuridica: Result := TPessoaFactory.new.PessoaJuridica;
   end;
end;

end.
