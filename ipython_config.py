from IPython.core import ultratb

ultratb.VerboseTB._tb_highlight = "bg:ansired"

c = get_config()
c.TerminalInteractiveShell.highlighting_style = "monokai"
