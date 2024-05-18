program JacobiConsole;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils,
    JacobiUnit in 'JacobiUnit.pas';

var
    n     : Integer;
    a     : matrix;
    b     : vector;
    mit   : Integer;
    eps   : Extended;
    x     : vector;
    it,st : Integer;

begin
    n := 4;
    a[1,1] := -12.235;
    a[1,2] := 1.229;
    a[1,3] := 0.5597;
    a[1,4] := 0;
    a[2,1] := 1.229;
    a[2,2] := -6.78;
    a[2,3] := 0.765;
    a[2,4] := 0;
    a[3,1] := 0.5597;
    a[3,2] := 0.765;
    a[3,3] := 91.0096;
    a[3,4] := 2;
    a[4,1] := 0;
    a[4,2] := 0;
    a[4,3] := -2;
    a[4,4] := 5.5;

    b[1] := 0.956;
    b[2] := 51.5603;
    b[3] := 2;
    b[4] := 5.8;

    mit := 10;
    eps := 1e-14;
    x[1] := 2;
    x[2] := 0.75;
    x[3] := -1;
    x[4] := 0.9;


    Jacobi (n, a, b, mit, eps, x, it, st);

    Writeln('x1: ', x[1]);
    Writeln('x2: ', x[2]);
    Writeln('x3: ', x[3]);
    Writeln('x4: ', x[4]);
    Writeln('it: ', it);
    Writeln('st: ', st);
    Readln;
end.
