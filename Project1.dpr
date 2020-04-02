program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  U_TampilCitra in 'U_TampilCitra.pas' {F_TampilCitra},
  U_FormCitra in 'U_FormCitra.pas' {F_Citra},
  U_CobaInduk in 'U_CobaInduk.pas' {F_CobaInduk},
  U_CobaAnak in 'U_CobaAnak.pas' {F_CobaAnak},
  F_ImageBlending in 'F_ImageBlending.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_CobaInduk, F_CobaInduk);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
