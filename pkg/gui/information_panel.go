package gui

import (
	"fmt"

	"github.com/mattn/go-runewidth"
)

func (gui *Gui) informationStr() string {
	if activeMode, ok := gui.helpers.Mode.GetActiveMode(); ok {
		return activeMode.Description()
	}

	if gui.g.Mouse {
		return fmt.Sprintf("%s", gui.Config.GetVersion())
	} else {
		return gui.Config.GetVersion()
	}
}

func (gui *Gui) handleInfoClick() error {
	if !gui.g.Mouse {
		return nil
	}

	view := gui.Views.Information

	cx, _ := view.Cursor()
	width, _ := view.Size()

	if activeMode, ok := gui.helpers.Mode.GetActiveMode(); ok {
		if width-cx > runewidth.StringWidth(gui.c.Tr.ResetInParentheses) {
			return nil
		}
		return activeMode.Reset()
	}

	return nil
}
