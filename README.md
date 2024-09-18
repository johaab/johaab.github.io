## Local development

### Using Dev Container and Visual Studio Code

1. Install [Dev Container](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension

1. Press `shift`+`command`+`p` and type "Open folder in container"

1. Select "From 'Dockerfile'"

1. Click "OK"

1. Click "OK"

1. Wait (this can take a few minutes for the first build)

1. In the VSCode, open the terminal and type
    ```
    bundle update
    bundle install
    bundle exec jekyll serve --livereload --baseurl ''
    ```

1. Visit localhost:4000

1. You can now modify the posts in VSCode and see the changes instantly in your browser

**References**

- [Developing inside a Container](https://code.visualstudio.com/docs/devcontainers/containers)
- [How to use Develop Jekyll (and GitHub Pages) locally using Docker containers](https://github.com/BillRaymond/my-jekyll-docker-website/tree/main)

### Directly on local machine
Note: You might face Ruby and Jekyll version conflicts when installing dependencies directly on your machine. Using Docker containers is a good way to separate your different projects environments.

```
bundle install
bundle exec jekyll serve --livereload
```
**References**

- [Testing your GitHub Pages site locally with Jekyll](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll)

## License

This theme is licensed under the [MIT license](https://opensource.org/licenses/mit-license.php) © JeffreyTse.

<!-- External links -->

[jekyll]: https://jekyllrb.com/
[yat-git-repo]: https://github.com/jeffreytse/jekyll-theme-yat/
[yat-live-demo]: https://jeffreytse.github.io/jekyll-theme-yat/
[jekyll-spaceship]: https://github.com/jeffreytse/jekyll-spaceship
[jekyll-seo-tag]: https://github.com/jekyll/jekyll-seo-tag
[jekyll-sitemap]: https://github.com/jekyll/jekyll-sitemap
[jekyll-feed]: https://github.com/jekyll/jekyll-feed
[highlight-js]: https://github.com/highlightjs/highlight.js
