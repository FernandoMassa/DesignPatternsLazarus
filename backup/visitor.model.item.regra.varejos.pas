unit visitor.model.item.regra.varejos;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils, Visitor.Model.Interfaces;

type

   { TModelItemRegraVarejo }

   TModelItemRegraVarejo = class(TInterfacedObject, iItemRegras, iVisitor)
   private
      FVisit: iItem;
   public
      constructor Create;
      destructor Destroy; override;
      class function New: iItemRegras;
      function PrecoVenda: currency;
      function PrecoPromocao: currency;
      function Visit(Value: iItem): iItemRegras;
      function Visitor: iVisitor;
   end;

implementation

{ TModelItemRegraVarejo }

constructor TModelItemRegraVarejo.Create;
begin

end;

destructor TModelItemRegraVarejo.Destroy;
begin
   inherited Destroy;
end;

class function TModelItemRegraVarejo.New: iItemRegras;
begin

end;

function TModelItemRegraVarejo.PrecoVenda: currency;
begin
   Result := FVisit.PrecoUnitario;
end;

function TModelItemRegraVarejo.PrecoPromocao: currency;
begin
   Result := (FVisit.PrecoUnitario * 0.8);
end;

function TModelItemRegraVarejo.Visit(Value: iItem): iItemRegras;
begin
   FVisit := Value;
   Result := Self;
end;

function TModelItemRegraVarejo.Visitor: iVisitor;
begin
   Result := Self;
end;

end.
