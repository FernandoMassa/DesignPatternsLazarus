unit visitor.model.item;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils, Visitor.Model.Interfaces,
   visitor.model.item.regra.varejos, visitor.model.item.regra.atacado;

type
   { TModelItem }
   TModelItem = class(TInterfacedObject, iItem, iItemRegras, iVisitable)
   private
      FPrecoUnitario: currency;
      FVisitor: iVisitor;
   public
      constructor Create;
      destructor Destroy; override;
      class function New: iItem;
      function SetPrecoUnitario(Value: currency): iItem;
      function PrecoUnitario: currency;
      function PrecoVenda: currency;
      function PrecoPromocao: currency;
      function Accept(Value: iVisitor): iItemRegras;
      function Visitor: iVisitor;
      function Regras: iVisitable;
   end;

implementation

{ TModelItem }

constructor TModelItem.Create;
begin
   FVisitor := TModelItemRegraVarejo.New.Visitor;
end;

destructor TModelItem.Destroy;
begin
   inherited Destroy;
end;

class function TModelItem.New: iItem;
begin

end;

function TModelItem.SetPrecoUnitario(Value: currency): iItem;
begin
   Result := Self;
   FPrecoUnitario := Value;
end;

function TModelItem.PrecoUnitario: currency;
begin
   Result := FPrecoUnitario;
end;

function TModelItem.PrecoVenda: currency;
begin
   Result := FVisitor.Visit(Self).PrecoVenda;
end;

function TModelItem.PrecoPromocao: currency;
begin
   Result := FVisitor.Visit(Self).PrecoPromocao;
end;

function TModelItem.Accept(Value: iVisitor): iItemRegras;
begin
   FVisitor := Value;
   Result := FVisitor.Visit(Self);
end;

function TModelItem.Visitor: iVisitor;
begin
   Result := FVisitor;
end;

function TModelItem.Regras: iVisitable;
begin
   Result := Self;
end;

end.
