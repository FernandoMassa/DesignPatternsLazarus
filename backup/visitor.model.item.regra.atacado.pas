unit visitor.model.item.regra.atacado;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils, Visitor.Model.Interfaces;

type

   { TModelItemRegraAtacado }

   TModelItemRegraAtacado = class(TInterfacedObject, iItemRegras, iVisitor)
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

{ TModelItemRegraAtacado }

constructor TModelItemRegraAtacado.Create;
begin

end;

destructor TModelItemRegraAtacado.Destroy;
begin
   inherited Destroy;
end;

class function TModelItemRegraAtacado.New: iItemRegras;
begin

end;

function TModelItemRegraAtacado.PrecoVenda: currency;
begin
   Result := (FVisit.PrecoUnitario * 0.8);
end;

function TModelItemRegraAtacado.PrecoPromocao: currency;
begin
   Result := (FVisit.PrecoUnitario * 0.6);
end;

function TModelItemRegraAtacado.Visit(Value: iItem): iItemRegras;
begin
   FVisit := Value;
   Result := Self;
end;

function TModelItemRegraAtacado.Visitor: iVisitor;
begin
   Result := Self;
end;

end.
