unit View.Principal;

{$mode objfpc}{$H+}

interface

uses
   Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
   einterf.Controler.Pessoa,
   einterf.controler.Interfaces,
   eInterfaceModelFactoryPessoa,
   eIntervace.Model.Interfaces;

type

   { TForm1 }

   TForm1 = class(TForm)
      btnExecuta: TButton;
      cbxTipoPessoa: TComboBox;
      edtNome: TEdit;
      edtSobrenome: TEdit;
      memResult: TMemo;
      procedure btnExecutaClick(Sender: TObject);
      procedure cbxTipoPessoaChange(Sender: TObject);
      procedure FormCreate(Sender: TObject);
   private
      FPessoa: iPessoa;
      procedure ExibeResultado(Value: string);
   public

   end;

var
   Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnExecutaClick(Sender: TObject);
begin
   FPessoa.Nome(edtNome.Text).Sobrenome(edtSobrenome.Text).Display(@ExibeResultado).Nomecompleto;
end;

procedure TForm1.cbxTipoPessoaChange(Sender: TObject);
begin
   case cbxTipoPessoa.ItemIndex of
      0: FPessoa := TControlerPessoa.New.Pessoa(tpFisica);
      1: FPessoa := TControlerPessoa.New.Pessoa(tpJuridica);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   cbxTipoPessoa.OnChange(self);
end;

procedure TForm1.ExibeResultado(Value: string);
begin
   memResult.Lines.Add(Value);
end;

end.
