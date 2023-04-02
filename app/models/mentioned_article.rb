# frozen_string_literal: true

class MentionedArticle < ApplicationRecord
  belongs_to :other_article, class_name: 'Article'
  belongs_to :article
end
