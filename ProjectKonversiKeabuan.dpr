program ProjectKonversiKeabuan;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  U_TampilCitra in 'U_TampilCitra.pas' {F_TampilCitra},
  U_FormCitra in 'U_FormCitra.pas' {F_Citra},
  U_CobaInduk in 'U_CobaInduk.pas' {F_CobaInduk},
  U_CobaAnak in 'U_CobaAnak.pas' {F_CobaAnak},
  U_Konversi_Keabuan in 'U_Konversi_Keabuan.pas' {FormKonversiKeabuan};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormKonversiKeabuan, FormKonversiKeabuan);
  Application.Run;
end.
