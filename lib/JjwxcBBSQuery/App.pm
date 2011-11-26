use strict;
use warnings;

package JjwxcBBSQuery::App;
our $VERSION = "0.2";

use XUL::App::Schema;
use XUL::App schema {
    xulfile 'overlay.xul' =>
        generated from 'JjwxcBBSQuery::View::Overlay',
        includes qw(jjwxcbbsquery.js),
        overlays 'chrome://browser/content/browser.xul';

    xpifile "JjwxcBBSQuery.xpi" =>
        name is 'JjwxcBBSQuery',
        display_name is 'JjwxcBBSQuery',
        id is '{ec8030f7-c20a-464f-9b0e-13a3a9e97384}',
        version is '0.2',
        description is
        '红晋江(http://bbs.jjwxc.net)网站小说的右键查询菜单。',
        targets {
        Firefox => [ '2.0' => '4.0.*' ],
        Mozilla => [ '1.5' => '1.8' ],
        },
        creator is 'Abby Pan',
        developers are   ['abbypan'],
        contributors are [],
        homepageURL is
        'https://addons.mozilla.org/zh-CN/firefox/addon/10199',
        iconURL is 'chrome://jjwxcbbsquery/content/hjj-logo.png',
        updateURL is '',    # This should not set for AMO extensions.
        aboutURL is '';
};

1;
