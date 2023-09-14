unit Visitor.View.Principal;

{$mode objfpc}{$H+}

interface

uses
   Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
   Visitor.Model.Interfaces, visitor.model.item, visitor.model.item.regra.atacado,
   visitor.model.item.regra.varejos;

type

   { TForm1 }

   TForm1 = class(TForm)
      btnNormal: TButton;
      btnPromocao: TButton;
      cbxTipo: TComboBox;
      edtPreco: TEdit;
      procedure btnNormalClick(Sender: TObject);
      procedure btnPromocaoClick(Sender: TObject);
      procedure FormCreate(Sender: TObject);
   private
      FItem: iItem;
      function TabelaPreco: iVisitor;
   public

   end;

var
   Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
   FItem := TModelItem.New;
end;

function TForm1.TabelaPreco: iVisitor;
begin
   case cbxTipo.ItemIndex of
      0: Result := TModelItemRegraVarejo.New.Visitor;
      1: Result := TModelItemRegraAtacado.New.Visitor;
   end;
end;

procedure TForm1.btnNormalClick(Sender: TObject);
begin
   ShowMessage(FormatCurr('R$ #,##0.00',
                           FItem.SetPrecoUnitario(StrToCurr(edtPreco.Text))
                              .Regras
                              .Accept(TabelaPreco)
                              .PrecoVenda));
end;

procedure TForm1.btnPromocaoClick(Sender: TObject);
begin
   ShowMessage(FormatCurr('R$ #,##0.00', FItem.SetPrecoUnitario(
      StrToCurr(edtPreco.Text)).Regras.Accept(TabelaPreco).PrecoPromocao));
end;

end.
