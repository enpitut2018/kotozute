# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8
#Lecture.create(:class_name => '情報社会と法制度', :class_id => 'GA10101', :evaluation => 'グループワーク、小テスト', :grade => '1', :module => '秋AB', :department => '情報科学類,情報メディア創成学類,知識情報・図書館学類',:room => '春日講堂', :period => '1,2', :attendance => '出席票')
#Lecture.create(:class_name => ‘知識情報概論’, :class_id => ‘GE10101’, :evaluation => ‘期末試験’, :grade => ‘1’, :module => ‘春AB’, :department => ‘知識情報・図書館学類’,:room => ‘7A205’, :day => ‘火’, :period => ‘3,4’, :attendance => ‘manaba’)
#lecture.create(:class_name => ‘哲学’, :class_id => ‘GE10201’, :evaluation => ‘期末試験’, :grade => ‘1’, :module => ‘秋AB’, :department => ‘知識情報・図書館学類’,:room => ‘7A205’, :day => ‘火’, :period => ‘3,4’, :attendance => ‘点呼(不定期)‘)
#lecture.create(:class_name => ‘情報基礎’, :class_id => ‘GE10301’, :evaluation => ‘出席,小テスト,期末試験’, :grade => ‘1’, :module => ‘春AB’, :department => ‘知識情報・図書館学類’,:room => ‘7A205’, :day => ‘火’, :period => ‘5,6’,:attendance => ‘小テスト‘)
#lecture.create(:class_name => ‘情報評価’, :class_id => ‘GE61301’, :evaluation => ‘小テスト,レポート,発表’, :grade => ‘3,4’, :module => ‘春AB’, :department => ‘知識情報・図書館学類’,:room => ‘7A103’, :day => ‘火’, :period => ‘1,2’, :attendance => ‘なし‘)
#lecture.create(:class_name => ‘ディジタルドキュメント’, :class_id => ‘GE70301,GC53401’, :evaluation => ‘レポート(4,5回)’, :grade => ‘3,4’, :module => ‘春AB’, :department => ‘情報メディア創成学類,知識情報・図書館学類‘,:room => ‘ユニオン講義室‘, :day => ‘木’, :period => ‘3,4’, :attendance => ‘manaba’)
#lecture.create(:class_name => ‘コンピュータシステムとOS’, :class_id => ‘GC13101’, :evaluation => ‘期末試験,実習課題’, :grade => ‘1’, :module => ‘秋AB’, :department => ‘情報メディア創成学類’, :room => ‘7C202’, :day => ‘木’, :period => ‘5,6’, :attendance => ‘レポート(manaba提出)‘)
#lecture.create(:class_name => ‘コンテンツ応用論’, :class_id => ‘GC14301’, :evaluation => ‘ミニレポート’, :grade => ‘1,2’, :module => ‘秋AB’, :department => ‘情報メディア創成学類‘, :room => ‘ユニオンメディアホール‘, :day => ‘月’, :period => ‘5,6’, :attendance => ’30ツイート(レポート)‘)
#lecture.create(:class_name => ‘コンテンツビジネスマーケティング’, :class_id => ‘GC20201’, :evaluation => ‘レポート’, :grade => ‘3,4’, :module => ‘秋C’, :department => ‘情報メディア創成学類’, :room => ‘7B106’, :day => ‘集中‘, :period => ‘集中‘, :attendance => ‘’)

#lecture.create(:class_name => ‘’, :class_id => ‘’, :evaluation => ‘’, :grade => ‘’, :module => ‘’, :department => ‘情報メディア創成学類‘, :room => ‘’, :day => ‘’, :period => ‘’, :attendance => ‘’)
#lecture.create(:class_name => ‘’, :class_id => ‘’, :evaluation => ‘’, :grade => ‘’, :module => ‘’, :department => ‘情報メディア創成学類‘, :room => ‘’, :day => ‘’, :period => ‘’, :attendance => ‘’)
#lecture.create(:class_name => , :class_id => , :evaluation => , :grade => , :module => , :department => ,:room => , :day => , :period => , :attendance => )
#lecture.create(:class_name => , :class_id => , :evaluation => , :grade => , :module => , :department => ,:room => , :day => , :period => , :attendance => )
#lecture.create(:class_name => , :class_id => , :evaluation => , :grade => , :module => , :department => ,:room => , :day => , :period => , :attendance => )
#lecture.create(:class_name => , :class_id => , :evaluation => , :grade => , :module => , :department => ,:room => , :day => , :period => , :attendance => )


#=begin
require 'csv'

CSV.foreach('db/master_data.csv', encoding: 'Shift_JIS:UTF-8') do |row|
  Lecture.create(:class_name => row[1], :class_id=> row[0])
end
#=end
