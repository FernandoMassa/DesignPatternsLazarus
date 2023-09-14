unit Visitor.Model.Interfaces;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils;

type
   iVisitor = interface;
   iVisitable = interface;

   iItem = interface
      ['{13731DE9-2BEA-4E27-B832-C3A53D85F81C}']
      function SetPrecoUnitario(Value: currency): iItem;
      function PrecoUnitario: currency;
      function Regras: iVisitable;
   end;

   iItemRegras = interface
      ['{3A2D5180-E02E-41A0-BC1D-E427D02FEF48}']
      function PrecoVenda: currency;
      function PrecoPromocao: currency;
      function Visitor: iVisitor;
   end;

   iVisitor = interface
      ['{C1E1AF0B-60B4-4B53-A869-AAC4A7E66B51}']
      function Visit(Value: iItem): iItemRegras;
   end;

   iVisitable = interface
      ['{E1BE7ACB-F7D4-48ED-806E-5B1D3D792759}']
      function Accept(Value: iVisitor): iItemRegras;
   end;



implementation

end.
