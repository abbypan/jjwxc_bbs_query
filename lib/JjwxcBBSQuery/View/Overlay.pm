use strict;
use warnings;

package JjwxcBBSQuery::View::Overlay;
use base 'XUL::App::View::Base';
use Template::Declare::Tags

  #'HTML' => { namespace => 'html' },  # HTML namespace support
  'XUL';

template main => sub {
    show 'header';    # from XUL::App::View::Base
    overlay {
        attr {
            id    => "jjwxc-bbs-query-overlay",
            xmlns => $::XUL_NAME_SPACE,

            #'xmlns:html' => $::HTML_NAME_SPACE,  # HTML namespace support

          }

          # Add your elements here...
          popup {
            attr { id => "contentAreaContextMenu" } menu {
                attr {
                    image =>
                      "chrome://jjwxcbbsquery/content/hjj-logo-small.png",
                    id          => "right-click-jjwxc-bbs-query",
                    label       => _('jjwxcbbsquery'),
                    class       => "menu-iconic",
                    insertafter => "context-sep-selectall",

            #                    accesskey => "S",
            #                    oncommand => "contextjjwxc-bbs-query('$URI');",
                  } menupopup {
                    attr { id => "hjj-query-popup" } menuitem {
                        attr {
                            id        => "hjj-query-subject",
                            label     => _('subject'),
                            oncommand => 'hjj_query("subject");',
                        };
                    }
                    menuitem {
                        attr {
                            id        => "hjj-query-postbody",
                            label     => _('postbody'),
                            oncommand => 'hjj_query("postbody");',
                        };
                    }
                    menuitem {
                        attr {
                            id        => "hjj-query-poster",
                            label     => _('poster'),
                            oncommand => 'hjj_query("poster");',
                        };
                    }
                    menuitem {
                        attr {
                            id        => "hjj-query-comment",
                            label     => _('comment'),
                            oncommand => 'hjj_query("comment");',
                        };
                    }
                    menuitem {
                        attr {
                            id        => "hjj-query-commenter",
                            label     => _('commenter'),
                            oncommand => 'hjj_query("commenter");',
                        };
                    }
                }

            }
        }

    }
};
1;
