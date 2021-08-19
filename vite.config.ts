import { defineConfig } from 'vite'
import RubyPlugin from 'vite-plugin-ruby'
import WindiCSS from 'vite-plugin-windicss'
import FullReload from 'vite-plugin-full-reload'

export default defineConfig({
  plugins: [
    RubyPlugin(),
    WindiCSS({
      root: __dirname,
      scan: {
        fileExtensions: ['erb', 'rb', 'haml', 'html', 'vue', 'js', 'ts', 'jsx', 'tsx'],
        dirs: ['apps/web/templates', 'apps/web/frontend', 'apps/web/views']
      }
    }),
    FullReload(['apps/web/config/routes.rb', 'apps/web/views/**/*', 'apps/web/templates/**/*'])
  ],
})
