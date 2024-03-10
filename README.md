# blog.stevenocchipinti.com

While my blog is/was hosted on blog.stevenocchipinti.com, I plan to move it all
to a new domain and want to use this repo to convert all indexed URLs to stub
pages that will perform an SEO-friendly redirect (using a meta tag to I don't
need to host a server)

## Status

- [x] Create files that will be hosted at the same URLs as anything already indexed
- [ ] Host the new version of all existing blog posts
- [ ] Decide whether or not to keep or delete each page (not sure about the category pages)
- [ ] Create the `<meta>` tags in each file to redirect it to the new version

## All indexed URLs

This is a list of indexed URLs that was exported from the Google Search Console:

```
https://blog.stevenocchipinti.com/2012/05/google-calendar-repeating-event-on-last.html
https://blog.stevenocchipinti.com/2013/10/18/rake-task-with-an-arbitrary-number-of-arguments/
https://blog.stevenocchipinti.com/2012/07/arduino-web-server-with-sd-card-reader.html
https://blog.stevenocchipinti.com/categories/tank/
https://blog.stevenocchipinti.com/2011/10/ruby-parallel-port-leds.html
https://blog.stevenocchipinti.com/2012/08/adding-network-printer-in-ubuntu-1204.html
https://blog.stevenocchipinti.com/categories/hardware/
https://blog.stevenocchipinti.com/categories/howto/
https://blog.stevenocchipinti.com/2011/04/intro-to-braindumping.html
https://blog.stevenocchipinti.com/2012/02/minecraft-exception-in-linux.html
https://blog.stevenocchipinti.com/categories/trailwalker/
https://blog.stevenocchipinti.com/categories/php/
https://blog.stevenocchipinti.com/categories/google/
https://blog.stevenocchipinti.com/categories/mac/
https://blog.stevenocchipinti.com/2012/05/password-management.html
https://blog.stevenocchipinti.com/travel/
https://blog.stevenocchipinti.com/2015/06/01/rewriting-author-and-email-in-every-commit/
https://blog.stevenocchipinti.com/categories/review/
https://blog.stevenocchipinti.com/2015/04/30/rewriting-indentation-in-every-file-and-every-commit/
https://blog.stevenocchipinti.com/2011/07/search-and-replace-in-multiple-files.html/
https://blog.stevenocchipinti.com/2015/04/04/configuring-a-hdmi-cec-remote-in-kodi/
https://blog.stevenocchipinti.com/2016/12/28/windows-starting-up-by-itself-at-random-times/
https://blog.stevenocchipinti.com/categories/ui/
https://blog.stevenocchipinti.com/2015/04/25/safely-rendering-newlines-in-html-with-css/
https://blog.stevenocchipinti.com/
https://blog.stevenocchipinti.com/categories/lamp/
https://blog.stevenocchipinti.com/categories/game/
https://blog.stevenocchipinti.com/categories/programming/
https://blog.stevenocchipinti.com/2011/06/bash-auto-complete.html
https://blog.stevenocchipinti.com/2011/04/minecraft-and-arch-linux-ftw.html
https://blog.stevenocchipinti.com/2014/03/10/completely-removing-a-git-commit-due-to-sensitive-information/
https://blog.stevenocchipinti.com/2011/09/meta-contacts-in-pidgin.html
https://blog.stevenocchipinti.com/2012/10/bluetooth-audio-streaming-from-phone-to.html
https://blog.stevenocchipinti.com/2015/03/24/git-reset-cheatsheet/
https://blog.stevenocchipinti.com/2011/06/cant-open-file-for-writing.html
https://blog.stevenocchipinti.com/categories/xbmc/
https://blog.stevenocchipinti.com/2011/06/vi-mode-for-bash.html
https://blog.stevenocchipinti.com/2012/02/copy-and-paste-over-ssh-with-xclip.html
https://blog.stevenocchipinti.com/2011/06/phpremoteadmin.html
https://blog.stevenocchipinti.com/categories/hacking/
https://blog.stevenocchipinti.com/2011/10/recursive-search-with-vimgrep.html
https://blog.stevenocchipinti.com/2016/12/28/search-and-replace-vim-and-git/
https://blog.stevenocchipinti.com/2012/03/xkcd-beyondpod.html
https://blog.stevenocchipinti.com/categories/
https://blog.stevenocchipinti.com/2011/05/search-and-replace-in-multiple-files.html/
https://blog.stevenocchipinti.com/posts/
https://blog.stevenocchipinti.com/categories/arch-linux/
https://blog.stevenocchipinti.com/2015/05/17/regex-lookaround-cheatsheet/
https://blog.stevenocchipinti.com/categories/ssh/
https://blog.stevenocchipinti.com/categories/github/
https://blog.stevenocchipinti.com/2012/03/rooting-htc-desire-hd-cyanogenmod-7.html
https://blog.stevenocchipinti.com/2013/03/how-to-make-tomato-sauce.html
https://blog.stevenocchipinti.com/categories/rails/
https://blog.stevenocchipinti.com/2011/09/git-diff-and-patch.html
https://blog.stevenocchipinti.com/categories/linux/
https://blog.stevenocchipinti.com/categories/android/
https://blog.stevenocchipinti.com/2013/05/safe-mode-on-samsung-galaxy-s3.html
https://blog.stevenocchipinti.com/2011/07/ssh-copy-id-with-alternative-port.html
https://blog.stevenocchipinti.com/2016/12/28/different-author-email-addresses-per-git-repository/
https://blog.stevenocchipinti.com/2012/03/spam-defence.html
https://blog.stevenocchipinti.com/2016/12/28/using-netrw-instead-of-nerdtree-for-vim/
https://blog.stevenocchipinti.com/archives/
https://blog.stevenocchipinti.com/2013/06/removing-previously-printed-lines.html
https://blog.stevenocchipinti.com/2015/05/26/how-to-keep-environment-variables-when-using-sudo/
https://blog.stevenocchipinti.com/categories/diff/
https://blog.stevenocchipinti.com/2011/09/code-review-workflow-with-github.html
https://blog.stevenocchipinti.com/2012/04/xbmc-eden-ubuntu.html
https://blog.stevenocchipinti.com/2014/03/17/introduction-to-vim-for-ide-users/
https://blog.stevenocchipinti.com/2011/09/gtalksms.html/
https://blog.stevenocchipinti.com/2012/09/changing-default-boot-option-with-grub2.html
https://blog.stevenocchipinti.com/categories/websites/
https://blog.stevenocchipinti.com/2013/01/script-to-transfer-photos-in-linux.html
https://blog.stevenocchipinti.com/2011/11/motion-detection.html
https://blog.stevenocchipinti.com/2011/05/cleaning-up-indicator-applet-in-ubuntu.html
https://blog.stevenocchipinti.com/2011/08/regex-substitution-101.html
https://blog.stevenocchipinti.com/2011/07/python-fu-for-gimp.html
https://blog.stevenocchipinti.com/categories/health/
https://blog.stevenocchipinti.com/categories/raspberrypi/
https://blog.stevenocchipinti.com/2013/11/10/installing-minecraft-in-linux/
https://blog.stevenocchipinti.com/2011/11/removing-geotag-data-from-jpgs.html
https://blog.stevenocchipinti.com/2011/10/disabling-unity-global-menu.html
https://blog.stevenocchipinti.com/categories/css/
https://blog.stevenocchipinti.com/2011/07/pencil-for-ui-design.html
https://blog.stevenocchipinti.com/categories/arduino/
https://blog.stevenocchipinti.com/categories/git/
https://blog.stevenocchipinti.com/categories/htpc/
https://blog.stevenocchipinti.com/2011/12/toshiba-portege-z830.html
https://blog.stevenocchipinti.com/2011/05/multi-monitor-keyboard-shortcuts-in.html
https://blog.stevenocchipinti.com/categories/unity/
https://blog.stevenocchipinti.com/categories/hiking/
https://blog.stevenocchipinti.com/2011/08/mounting-nfs-in-ubuntu.html
https://blog.stevenocchipinti.com/categories/toshiba-portege/
https://blog.stevenocchipinti.com/2012/09/getting-started-with-ruby-on-rails.html
https://blog.stevenocchipinti.com/categories/gnome3/
https://blog.stevenocchipinti.com/categories/webcam/
https://blog.stevenocchipinti.com/2011/05/tank-project.html
https://blog.stevenocchipinti.com/2011/05/dhcp-fixedhosts-to-etchosts-file.html
https://blog.stevenocchipinti.com/categories/minecraft/
https://blog.stevenocchipinti.com/categories/xclip/
https://blog.stevenocchipinti.com/2012/12/a-few-photography-tips.html
https://blog.stevenocchipinti.com/categories/printer/
https://blog.stevenocchipinti.com/categories/email/
https://blog.stevenocchipinti.com/categories/java/
https://blog.stevenocchipinti.com/2012/08/samsung-galaxy-s3.html/
https://blog.stevenocchipinti.com/categories/parallel-port/
https://blog.stevenocchipinti.com/categories/sudo/
https://blog.stevenocchipinti.com/categories/ubuntu/
https://blog.stevenocchipinti.com/2015/04/12/disabling-the-single-origin-policy-in-chrome/
https://blog.stevenocchipinti.com/categories/nfs/
https://blog.stevenocchipinti.com/2013/12/14/preparing-for-trailwalker/
https://blog.stevenocchipinti.com/categories/troubleshooting/
https://blog.stevenocchipinti.com/categories/vim/
https://blog.stevenocchipinti.com/categories/gimp/
https://blog.stevenocchipinti.com/2014/12/29/sending-email-from-the-command-line/
https://blog.stevenocchipinti.com/2011/08/poweroff-without-password.html
https://blog.stevenocchipinti.com/categories/windows/
https://blog.stevenocchipinti.com/categories/design/
https://blog.stevenocchipinti.com/categories/pidgin/
https://blog.stevenocchipinti.com/categories/compiz/
https://blog.stevenocchipinti.com/categories/patch/
https://blog.stevenocchipinti.com/categories/security/
https://blog.stevenocchipinti.com/2011/04/24-70mm-f28-vs-17-50mm-f28.html
https://blog.stevenocchipinti.com/categories/mysql/
https://blog.stevenocchipinti.com/categories/python/
https://blog.stevenocchipinti.com/2013/07/22/default-values-for-environment-variables/
https://blog.stevenocchipinti.com/categories/netduino/
https://blog.stevenocchipinti.com/categories/samsung-series-9/
https://blog.stevenocchipinti.com/categories/kodi/
https://blog.stevenocchipinti.com/2012/02/git-hub-github.html
https://blog.stevenocchipinti.com/categories/ruby/
https://blog.stevenocchipinti.com/2011/05/multiple-google-accounts-at-once.html/
https://blog.stevenocchipinti.com/categories/calendar/
https://blog.stevenocchipinti.com/categories/apache/
```
