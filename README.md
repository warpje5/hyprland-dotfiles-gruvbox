How it looks
![image](https://github.com/user-attachments/assets/74e536a8-e9c9-429b-b5d4-7c20327e749b)
you can disable dimming for inactive windows, if you want



05/09/24 - minor tweaks, remapping for qwerty, and changing mono font to JuliaMono. you still need ttf-nerd-fonts-symbols. also there's a new config for hypridle, but ill keep swayidle config in this repo just in case.

02/07/24 - getting back to gruvbox from solarized jorney. expect more fresh tweaks

18/04/24 - i broke hyrland config into pieces, minor tweaks

12/04/24 - now we need waybay-cava instead of regular waybar. waybar config cleaned a bit, fixing height to match gaps

05/04/24 - switching fonts again, now its IBM Plex Family (and BlexMono Nerd Font), i believe its the last stop for me. since fa icons changed a bit now, we fixing it. next, switch from redshift wayland for to gammastep, good thing is configs almost the same.

01/04/24 - changing commissioner font to inter, make sure to install it "yay -S ttf-inter", added some necessary window rules.

20/03/24 - iosevka was cool, but way too narrow. i decided to give a shot FantasqueSansM Nerd Font, make sure to install it, looks beautiful, nice for coding too. besides that i changed waybar layout to a bit more traditional look with clocks at right side. also dont forget about xcursor, now you cant set it via hyrpctl setcursor.

14/03/24 - i keep develope thin compact theme from previous update. now i decide to switch from hack font to iosevka. its a good way to make accent on thin theme. im fairly satisfied with result tbh. hope you like it too.

11/03/24 - another big style update. sorry guys but i cant keep these cool looking thick borders. i started to use master layout more and more and those pixels from borders and gaps, they are really crucial for working space. now overall look is lighter than ever before, its can be fine for some, try it anyway.

26/02/24 - added new modules to waybar: idle_inhibitor and keyboard-state, to be able to use keyboard state u need to add urself to input group "sudo usermod -aG input $USER"

04/02/24 - big update, we are moving to thinner, less rounded, and more light style. We have smaller fonts and less gaps. I think its time to move to more utilitary direction, big gaps and thick borders just take too much space, althought its looks good. I tried to save same aestetics, but make theme less heavy.

nvim files are not maintained, because i managed to fully switch to emacs somehow. sorry.

Cursors - capitaine cursors gruvbox (gnome-look.org)

Icons - gruvbox-plus-dark

Theme - gruvbox-dark-bl-lb

Fonts used - IBM Plex font family, BlexMono Nerd Font

Necessary apps - playerctl, grimshot, nm-applet, 
blueman-applet, nwg-look, swaylock-effects!!!, wlogout!!!, gammastep, starship, doom emacs (as ide), nvchad (for fast editing), cliphist and everything for it, 

keep in mind, theme looks way better with gammastep warm colors, place your location in config to switch between day/night modes automatically
