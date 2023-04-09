# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if User.count == 0
  [
    'tuan@tuanbb.com',
    'thai@tuanbb.com'
  ].each do |email|
    User.create(email: email, password: 'This#@9P@ss', role: 'admin')
  end
end

right_of_logo = [
  { title: 'Bảng Giá Sản Phẩm', position: 1, slug: 'bang-gia-san-pham' },
  { title: 'Dịch Vụ Sữa Chữa', position: 2, slug: 'dich-vu-sua-chua' },
  { title: 'Phụ Kiện', position: 3, slug: 'phu-kien' }
]

below_of_logo = [
  { title: 'Tư vấn mua hàng trả góp', position: 1, slug: 'tu-van-mua-hang-tra-gop',  },
  { title: 'Chế độ bảo hành', position: 2, slug: 'che-do-bao-hanh' },
  { title: 'Tuyển dụng', position: 3, slug: 'tuyen-dung' },
  { title: 'Các dịch vụ', position: 4, slug: 'cac-dich-vu' },
  { title: 'Bảng giá sỉ', position: 5, slug: 'bang-gia-si' },
  { title: 'Sim Số Đẹp', position: 6, slug: 'sim-so-dep' }
]

right_of_logo.each do |params|
  article = Article.where(params).first_or_create
  article.published = true
  article.published_at = Time.current
  article.save

  Menu.right_of_logo.where(article: article, position: article.position, title: article.title).first_or_create
end

below_of_logo.each do |params|
  article = Article.where(params).first_or_create
  article.published = true
  article.published_at = Time.current
  article.save

  Menu.below_of_logo.where(article: article, position: article.position, title: article.title).first_or_create
end
