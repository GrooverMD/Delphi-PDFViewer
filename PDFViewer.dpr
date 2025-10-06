program PDFViewer;

uses
  Vcl.Forms,
  PDFViewerMain in 'PDFViewerMain.pas' {PDFForm},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TPDFForm, PDFForm);
  Application.Run;
end.
