object PDFForm: TPDFForm
  Left = 0
  Top = 0
  Caption = 'PDF Viewer'
  ClientHeight = 516
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu
  TextHeight = 15
  object AcroPDF: TAcroPDF
    Left = 0
    Top = 0
    Width = 661
    Height = 516
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 262
    ExplicitTop = 172
    ExplicitWidth = 192
    ExplicitHeight = 192
    ControlData = {000E00005144000055350000}
  end
  object MainMenu: TMainMenu
    Left = 524
    Top = 46
    object File1: TMenuItem
      Caption = 'File'
      object OpenFile: TMenuItem
        Caption = 'Open...'
        OnClick = OpenFileClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ExitApplication: TMenuItem
        Caption = 'Exit'
        OnClick = ExitApplicationClick
      end
    end
    object Options: TMenuItem
      Caption = 'Options'
      Enabled = False
      object ToolbarVisibilty: TMenuItem
        Caption = 'Show Toolbar'
        OnClick = ToolbarVisibiltyClick
      end
    end
  end
  object OpenPDFDialog: TOpenDialog
    Filter = 'All PDF Files|*.pdf'
    Left = 530
    Top = 360
  end
end
