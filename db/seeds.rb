 User.create!(email: 'user@boost.co.nz', first_name: 'ray', last_name: 'tuth', password: '123123123', password_confirmation: '123123123')

@user = AdminUser.create!(email: 'yar@boost.co.nz', first_name: 'yar', last_name: 'htut', password: '123123123', password_confirmation: '123123123')
100.times do |post|
  Post.create(date: Date.today, rationale: "#{post} rational content", user_id:  @user.id)
end
puts '100 post has created'

100.times do |audit_log|
  AuditLog.create(user_id: User.last.id, status:0, start_date: (Date.today - 6.days))
end
puts '100 audit log have created'
