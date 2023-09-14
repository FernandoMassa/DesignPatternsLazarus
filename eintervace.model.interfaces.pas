unit eIntervace.Model.Interfaces;

{$mode ObjFPC}{$H+}

interface

uses
   Classes, SysUtils;

type
   TEvDisplay = procedure(Value: string) of object;

   iPessoa = interface
      ['{3E3D9320-94A5-48C7-937D-66189487E03E}']
      function Nome(Value: string): iPessoa;
      function Sobrenome(Value: string): iPessoa;
      function Nomecompleto: iPessoa;
      function Display(Value: TEvDisplay): iPessoa;
   end;

   iPessoaFactory = interface
      ['{E85CF57F-1E60-4292-9303-6A354CBA8FA3}']
      function PessoaFisica: iPessoa;
      function PessoaJuridica: iPessoa;
   end;

implementation

end.
