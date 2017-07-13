{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLabels  #-}

import qualified GI.Gio as Gio
import qualified GI.Gtk as Gtk
import Control.Monad (void)
import Data.GI.Base
import Data.Text
import System.Environment (getArgs)

main :: IO ()
main = do
  app <- Gtk.applicationNew (Just "com.example.hello") [Gio.ApplicationFlagsFlagsNone]

  Gio.onApplicationActivate app (onActivate app)

  args <- getArgs
  void $ #run app (Just $ pack <$> args)

  where
    onActivate :: Gtk.Application -> IO ()
    onActivate app = do
      win <- new Gtk.Window [ #type := Gtk.WindowTypeToplevel ]
      #setDefaultSize win 600 300
      #addWindow app win
      
      headerBar <- Gtk.headerBarNew
      #setTitle headerBar (Just "Hello, World!")
      #setShowCloseButton headerBar True
      #show headerBar
      #setTitlebar win (Just headerBar)

      label <- new Gtk.Label [ #label := "<span weight=\"bold\" size=\"larger\">Hello, World!</span>" ]
      #setUseMarkup label True
      #show label
      #add win label

      #present win
