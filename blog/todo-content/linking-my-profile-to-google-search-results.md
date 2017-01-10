Title: Linking My Profile to Google Search Results
Date: 2011-08-13 13:07
Author: GeekFortyTwo
Category: Blogs
Tags: about, author, blog, google, google plus, google spider, rel=author, signature, wordpress
Slug: linking-my-profile-to-google-search-results
Status: published

So, I've noticed in Google search results that sometimes an article will
have a link to the author's Google profile page on the right. This
interested me, mostly at a technical level, as it's something new, and I
appreciate the idea of linking information together. Therefore, I
decided to see if I could get this setup on my personal blog, and maybe
later on some of my other sites. First I had to find out what this was
even called. A bit of Google-Fu and I came up with "rel=author" as the
appropriate search term/information. A few short searches later and I
now have information on how to get this going(many thanks to AJ Kohn who
has written a great
[article](http://www.blindfiveyearold.com/how-to-implement-rel-author)
on this). This will be rather WordPress specific, as I use a self hosted
copy running the latest updates at the time of this post.<!--more-->

First, a description of what we are trying to achieve. We need to link
any articles written by a given author(myself in this case, but on
multi-publisher blogs we can easily work with multiple authors) to a
central page for that person. Usually this is an about page on the blog,
and so easily created or already setup. Next we need to link that page
to our Google Profile, which you can learn about setting up anywhere you
want, they are easy. Finally, we will link our Google Profile back to
our about page, to ensure that Google knows the trust is two way and can
therefore setup to link the profile to search results.

Step 1: Setup An About Page for Each Blog Author
------------------------------------------------

I created an About page in the WordPress admin area and populated it.
Note the address as we will be directing all our links here in a way.
Make the address pretty if you blog supports it. For my site this it the
[about page](http://jaredyoung.net/?page_id=133). If you have multiple
authors, have each one setup an about page for themselves.

Step 2: Link About Page from Posts
----------------------------------

We need a way to have a link with `rel="author"` included on each page
and linking to the About page we just created. One way to do this is to
create an About menu in WordPress. Go to the Appearance settings and
select Menus. Add a new menu called About and add your recently created
About page to the menu. Now for the magic. Click on the Screen Options
button hidden in the upper right beside help. Add a check to the "Link
Relationship (XFN)" box. Now click the down arrow next to the page you
have added to your menu. There is now a Link Relationship field,
populate that with "author" and save your settings. There is now a menu
on all pages that links to the about page directly and has
`rel="author"` added into the link.

Step 3: Link Your About Page to Your Google Profile
---------------------------------------------------

There are a couple of ways of doing this, you can add a [Google+
button](http://www.google.com/webmasters/profilebutton/) or you can link
to your Google Profile with a `rel="me"` added to the link. I have gone
with the latter option and updated my About page, created earlier, with
the following link:  
`<a rel="me" href="https://plus.google.com/113159363217035561480">Jared</a>`

Step 4: Link Your Google Profile to Your About Page
---------------------------------------------------

So now the Google Spiders know that you believe you are the person in
the Google Profile you linked to, but that could be a lie. They need to
see a link back from the profile to know that the trust is two way. In
order to achieve this we need to edit our Google profile and add a link
to our About page. To do this we need to Edit Profile, click on Links
and Add custom link to our about page. Now, the key part here is that we
need to include a check in the box that says "This page is specifically
about me". This creates a link back to your About page that Google now
trusts.![](data:image/png;base64,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){.alignleft
width="331" height="144"}

Step 5: Test
------------

Using the [rich snippet testing
tool](http://www.google.com/webmasters/tools/richsnippets) you can enter
the page of one of your posts and see if there are any problems. Mine
shows an Extracted Author for this page. It lists that as verified, this
should allow the Google Spiders to find all the information they need to
create the links.

Step 6: Wait
------------

The spiders move at different speeds. This blog is unknown and boring,
so it could take a long time to get this data updated. We will see.
Hopefully yours is more interesting and will update quicker.
