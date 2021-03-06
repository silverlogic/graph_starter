module GraphStarter
  class Image
    include Neo4j::ActiveNode
    self.mapped_label_name = 'Image'
    include Neo4jrb::Paperclip

    property :title
    property :description
    property :details
    property :original_url
    serialize :details

    has_neo4jrb_attached_file :source
    validates_attachment_content_type :source, content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']

    def source_url
      default_style = GraphStarter.configuration.default_image_style
      source.present? ? source.url(default_style) : original_url
    end
  end
end
