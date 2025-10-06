unit PDFViewerMain;

interface

uses
  AcroPDFLib_TLB,
  System.Classes,
  System.SysUtils,
  System.Variants,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Menus,
  Vcl.OleCtrls,
  Winapi.Messages,
  Winapi.Windows;

type
  TPDFForm = class( TForm )
    AcroPDF: TAcroPDF;
    MainMenu: TMainMenu;
    File1: TMenuItem;
    OpenFile: TMenuItem;
    ExitApplication: TMenuItem;
    N1: TMenuItem;
    Options: TMenuItem;
    ToolbarVisibilty: TMenuItem;
    OpenPDFDialog: TOpenDialog;

    procedure ExitApplicationClick( Sender : TObject );
    procedure OpenFileClick( Sender : TObject );
    procedure ToolbarVisibiltyClick( Sender : TObject );
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PDFForm: TPDFForm;

implementation

{$R *.dfm}

procedure TPDFForm.ExitApplicationClick( Sender : TObject );
  begin
    Self.Close();
  end;

procedure TPDFForm.OpenFileClick( Sender : TObject );
  begin
    if( OpenPDFDialog.Execute ) then
      if not( AcroPDF.LoadFile( OpenPDFDialog.FileName ) ) then
        MessageDlg( 'Error opening PDF', TMsgDlgType.mtError, mbOKCancel, 0 )
      else
        AcroPDF.LoadFile( OpenPDFDialog.FileName );

      PDFForm.Caption := 'PDF Viewer - ' + ExtractFileName( OpenPDFDialog.FileName );
      Options.Enabled := True;
  end;

procedure TPDFForm.ToolbarVisibiltyClick( Sender : TObject );
  begin
    if( ToolbarVisibilty.Caption = '&Show Toolbar' ) then
      begin
        AcroPDF.setShowToolbar( True );
        ToolbarVisibilty.Caption := '&Hide Toolbar';
      end
    else
      begin
        AcroPDF.setShowToolbar( False );
        ToolbarVisibilty.Caption := '&Show Toolbar';
      end;
  end;

end.
