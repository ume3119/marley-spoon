module ContentfulConcern
  extend ActiveSupport::Concern
  def contentful_client
    @client = Contentful::Client.new(
      space: ENV['space_id'], 
      access_token: ENV['access_token']
    )
  end
end