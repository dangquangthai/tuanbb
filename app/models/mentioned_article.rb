class MentionedArticle < ApplicationRecord
  belongs_to :other_article, class_name: 'Article', foreign_key: 'other_article_id'
  belongs_to :article
end
