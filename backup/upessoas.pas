unit UPessoas;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, fgl, UTelefone;

type

  { tPessoas }

  tPessoas = class
    private
      FDataNascimento: TDateTime;
      FNome: string;
      FSobreNome: string;
      FTelefone : TList<TTelefone>
    public
      property Nome : string read FNome write FNome;
      property SobreNome : string read FSobreNome write FSobreNome;
      property DataNascimento : TDateTime read FDataNascimento write FDataNascimento;
      property Telefone : TList<TTelefone> read FTelefone write FTelefone;

  end;


implementation

end.

