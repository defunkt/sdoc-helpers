sdoc-helpers
============

Some Rake tasks and hacks to let me easily generate documentation like
that found at <http://defunkt.github.com/mustache/>.

After installing it, put this in your Rakefile:

    begin
      require 'sdoc_helpers'
    rescue LoadError
      puts "sdoc support not enabled. Please gem install sdoc-helpers."
    end

Now (with a clean index) run `rake pages:init` to create and publish
your `gh-pages` branch.

It'll drop you back on master when it's done. Now in the future just
run `rake pages` to publish sdoc documentation to your `gh-pages`
branch.

Make sure you don't already have a `docs/` directory. If you do, this
won't work.

If you README (or any files) end in `md` or `markdown` they'll get
parsed by `RDiscount` and displayed as Markdown. This gives you a
nicely formatted README on GitHub as well as in your sdoc.

Enjoy.


Dependencies
------------

* rdiscount
* sdoc


Author
------

Chris Wanstrath // chris@ozmm.org
