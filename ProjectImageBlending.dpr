program ProjectImageBlending;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  U_TampilCitra in 'U_TampilCitra.pas' {F_TampilCitra},
  U_FormCitra in 'U_FormCitra.pas' {F_Citra},
  U_CobaInduk in 'U_CobaInduk.pas' {F_CobaInduk},
  U_CobaAnak in 'U_CobaAnak.pas' {F_CobaAnak},
  F_ImageBlendingBaru in 'F_ImageBlendingBaru.pas' {FormImageBlendingBaru},
  FormCitraBlending in 'FormCitraBlending.pas' {FormCitra},
  FormCitraBlending2 in 'FormCitraBlending2.pas' {FormCitra2},
  FormHasilBlending in 'FormHasilBlending.pas' {FormHasil},
  U_Rotasi in 'U_Rotasi.pas' {F_Rotasi},
  F_Flip in 'F_Flip.pas' {F_Flip_x},
  U_Combine in 'U_Combine.pas' {F_Combine};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormImageBlendingBaru, FormImageBlendingBaru);
  Application.CreateForm(TF_Flip_x, F_Flip_x);
  Application.CreateForm(TF_Combine, F_Combine);
  Application.Run;
end.
