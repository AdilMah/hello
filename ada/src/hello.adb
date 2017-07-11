with Gtk.Box;         use Gtk.Box;
with Gtk.Label;       use Gtk.Label;
with Gtk.Widget;      use Gtk.Widget;
with Gtk.Main;
with Gtk.Window;      use Gtk.Window;

procedure Hello is

   Win   : Gtk_Window;
   Label : Gtk_Label;
   Box   : Gtk_Vbox;
begin
   --  Initialize GtkAda.
   Gtk.Main.Init;

   --  Create a window with a size of 600x300
   Gtk_New (Win);
   Win.Set_Default_Size (600, 300);
   Win.Set_Title ("Hello!");

   --  Create a box to organize vertically the contents of the window
   Gtk_New_Vbox (Box);
   Win.Add (Box);

   --  Add a label
   Gtk_New (Label, "Hello, World!");
   Box.Add (Label);

   --  Show the window
   Win.Show_All;

   --  Start the Gtk+ main loop
   Gtk.Main.Main;
end Hello;
