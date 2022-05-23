const path = require('path')

module.exports = {
  siteMetadata: {
    pathPrefix: "/carlisia",
    // some SEO configs using by gatsby-theme-kb
    title: `Worklogs`, // Replace it with your site's title
    author: `Carlisia Thompson`, // Replace it with your name
    description: `What I'm working on`, // Replace it with your site's description
  },
  plugins: [
    {
      resolve: `gatsby-theme-kb`,
      options: {
        rootNote: '/README',
        contentPath: `${__dirname}/../..`,
        ignore: [
          '**/_layouts/**',
          '**/.git/**',
          '**/.github/**',
          '**/.vscode/**',
          '**/.cache/**',
          '**/.foam/**',
        ],
        // this is an option for extending `gatsby-plugin-mdx` options inside `gatsby-theme-kb`,
        getPluginMdx(defaultPluginMdx) {
          // so you can have your relative referenced files served, e.g. '../assets/img.png'.
          defaultPluginMdx.options.gatsbyRemarkPlugins.push({
            resolve: `gatsby-remark-copy-linked-files`,
            options: {
              ignoreFileExtensions: ['md', 'mdx'],
            },
          })

          // an example of syntax highlighting
          defaultPluginMdx.options.gatsbyRemarkPlugins.push({
            resolve: 'gatsby-remark-prismjs',
            options: {
              noInlineHighlight: true,
            },
          })

          // add math support
          defaultPluginMdx.options.remarkPlugins.push({
            resolve: 'remark-math',
          })

          if (!defaultPluginMdx.options.rehypePlugins) defaultPluginMdx.options.rehypePlugins = []
            defaultPluginMdx.options.rehypePlugins.push({
              resolve: 'rehype-katex',
            })
          return defaultPluginMdx
        },
      },
    },
    {
      // this plugin makes sure your static files will be served by gatsby,
      //  but of course you need to reference them by absolute path, e.g. '/assets/img.png'.
      // if you have multiple directories, copy this plugin section and specify other directory
      // check https://github.com/csath/gatsby-plugin-copy-files-enhanced to find docs for this plugin
      resolve: 'gatsby-plugin-copy-files-enhanced',
      options: {
        source: path.resolve(__dirname, `../assets`),
        destination: '/assets',
        purge: false,
      },
    },
    // this (optional) plugin enables Progressive Web App + Offline functionality
    // To learn more, visit: https://gatsby.dev/offline
    `gatsby-plugin-offline`,
  ],
}
