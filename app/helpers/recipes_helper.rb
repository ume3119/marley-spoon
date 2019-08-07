module RecipesHelper
    def https_image_url(url)
        url.sub %r<\A//>, 'https://'
      end
end
