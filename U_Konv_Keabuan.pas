unit U_Konv_Keabuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ExtDlgs;

type
  TFormKonversiKeabuan = class(TForm)
    ImageSumber: TImage;
    ImageKonversi: TImage;
    ButtonProses: TButton;
    Button1: TButton;
    OpenPictureDialog: TOpenPictureDialog;
    procedure ButtonProsesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKonversiKeabuan: TFormKonversiKeabuan;

implementation

uses U_FormCitra;

{$R *.dfm}


